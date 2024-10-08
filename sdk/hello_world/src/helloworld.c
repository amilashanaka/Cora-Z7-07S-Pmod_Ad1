/******************************************************************************
 * Copyright (C) 2023 Advanced Micro Devices, Inc. All Rights Reserved.
 * SPDX-License-Identifier: MIT
 ******************************************************************************/
/*
 * helloworld.c: simple test application
 *
 * This application configures UART 16550 to baud rate 9600.
 * PS7 UART (Zynq) is not initialized by this application, since
 * bootrom/bsp configures it to baud rate 115200
 *
 * ------------------------------------------------
 * | UART TYPE   BAUD RATE                        |
 * ------------------------------------------------
 *   uartns550   9600
 *   uartlite    Configurable only in HW design
 *   ps7_uart    115200 (configured by bootrom/bsp)
 */

#include "platform.h"
#include "xil_printf.h"
#include "xspi.h"
#include "xspi_l.h"
#include <stdio.h>
#include <xparameters_ps.h>

// SPI device ID defined in xparameters.h
#define SPI_DEVICE_ID 0
#define BUFFER_SIZE 3
#define NUM_SAMPLES 8000

static XSpi SpiInstance;

int SpiInit(u16 DeviceId);
void SpiTransfer(u8 *SendBuf, u8 *RecvBuf, int ByteCount);
void Delay(volatile int count);

int x = 0;

int main() {
  init_platform();
  int Status;
  u8 SendBuffer[BUFFER_SIZE];
  u8 RecvBuffer[BUFFER_SIZE];

  u16 samples[NUM_SAMPLES];

  // Initialize the SPI driver
  Status = SpiInit(SPI_DEVICE_ID);
  if (Status != XST_SUCCESS) {
    xil_printf("SPI Initialization failed!\n");
    return XST_FAILURE;
  }

  // Initialize the send buffer with example data
  for (int i = 0; i < BUFFER_SIZE; i++) {
    SendBuffer[i] = i;
  }

  while (1) {

    // Collect 1000 samples from Pmod AD1
    for (int i = 0; i < NUM_SAMPLES; i++) {

      // Perform SPI transfer
      SpiTransfer(SendBuffer, RecvBuffer, BUFFER_SIZE);

      // Print received data in integer format

      x = RecvBuffer[1];
      x |= (RecvBuffer[0] << 8);

      samples[i] = x; // or use data1 depending on your needs
    }

    // Send samples via UART
    for (int i = 0; i < NUM_SAMPLES / 20; i++) {

      xil_printf("%d ", samples[i]);
      xil_printf("\r ");
    }
  }

  cleanup_platform();
  return XST_SUCCESS;
}

int SpiInit(u16 DeviceId) {
  int Status;
  XSpi_Config *ConfigPtr;

  // Look up the device configuration
  ConfigPtr = XSpi_LookupConfig(DeviceId);
  if (ConfigPtr == NULL) {
    return XST_FAILURE;
  }

  // Initialize the SPI driver
  Status = XSpi_CfgInitialize(&SpiInstance, ConfigPtr, ConfigPtr->BaseAddress);
  if (Status != XST_SUCCESS) {
    return XST_FAILURE;
  }

  // Set the SPI options: Master mode, manual slave select
  Status = XSpi_SetOptions(&SpiInstance,
                           XSP_MASTER_OPTION | XSP_MANUAL_SSELECT_OPTION);
  if (Status != XST_SUCCESS) {
    return XST_FAILURE;
  }

  // Start the SPI driver
  XSpi_Start(&SpiInstance);

  // Disable global interrupt, as this is a polling example
  XSpi_IntrGlobalDisable(&SpiInstance);

  // Select the slave device (assuming SS0)
  XSpi_SetSlaveSelect(&SpiInstance, 1);

  return XST_SUCCESS;
}

void SpiTransfer(u8 *SendBuf, u8 *RecvBuf, int ByteCount) {
  // Perform the SPI transfer
  XSpi_Transfer(&SpiInstance, SendBuf, RecvBuf, ByteCount);
}

