--Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
--Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
----------------------------------------------------------------------------------
--Tool Version: Vivado v.2023.2.2 (win64) Build 4126759 Thu Feb  8 23:53:51 MST 2024
--Date        : Thu Jun 13 11:14:03 2024
--Host        : DonGun running 64-bit major release  (build 9200)
--Command     : generate_target design_1_wrapper.bd
--Design      : design_1_wrapper
--Purpose     : IP block netlist
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_wrapper is
  port (
    DDR_addr : inout STD_LOGIC_VECTOR ( 14 downto 0 );
    DDR_ba : inout STD_LOGIC_VECTOR ( 2 downto 0 );
    DDR_cas_n : inout STD_LOGIC;
    DDR_ck_n : inout STD_LOGIC;
    DDR_ck_p : inout STD_LOGIC;
    DDR_cke : inout STD_LOGIC;
    DDR_cs_n : inout STD_LOGIC;
    DDR_dm : inout STD_LOGIC_VECTOR ( 3 downto 0 );
    DDR_dq : inout STD_LOGIC_VECTOR ( 31 downto 0 );
    DDR_dqs_n : inout STD_LOGIC_VECTOR ( 3 downto 0 );
    DDR_dqs_p : inout STD_LOGIC_VECTOR ( 3 downto 0 );
    DDR_odt : inout STD_LOGIC;
    DDR_ras_n : inout STD_LOGIC;
    DDR_reset_n : inout STD_LOGIC;
    DDR_we_n : inout STD_LOGIC;
    FIXED_IO_ddr_vrn : inout STD_LOGIC;
    FIXED_IO_ddr_vrp : inout STD_LOGIC;
    FIXED_IO_mio : inout STD_LOGIC_VECTOR ( 53 downto 0 );
    FIXED_IO_ps_clk : inout STD_LOGIC;
    FIXED_IO_ps_porb : inout STD_LOGIC;
    FIXED_IO_ps_srstb : inout STD_LOGIC;
    shield_spi_io0_io : inout STD_LOGIC;
    shield_spi_io1_io : inout STD_LOGIC;
    shield_spi_sck_io : inout STD_LOGIC;
    shield_spi_ss_io : inout STD_LOGIC
  );
end design_1_wrapper;

architecture STRUCTURE of design_1_wrapper is
  component design_1 is
  port (
    DDR_cas_n : inout STD_LOGIC;
    DDR_cke : inout STD_LOGIC;
    DDR_ck_n : inout STD_LOGIC;
    DDR_ck_p : inout STD_LOGIC;
    DDR_cs_n : inout STD_LOGIC;
    DDR_reset_n : inout STD_LOGIC;
    DDR_odt : inout STD_LOGIC;
    DDR_ras_n : inout STD_LOGIC;
    DDR_we_n : inout STD_LOGIC;
    DDR_ba : inout STD_LOGIC_VECTOR ( 2 downto 0 );
    DDR_addr : inout STD_LOGIC_VECTOR ( 14 downto 0 );
    DDR_dm : inout STD_LOGIC_VECTOR ( 3 downto 0 );
    DDR_dq : inout STD_LOGIC_VECTOR ( 31 downto 0 );
    DDR_dqs_n : inout STD_LOGIC_VECTOR ( 3 downto 0 );
    DDR_dqs_p : inout STD_LOGIC_VECTOR ( 3 downto 0 );
    FIXED_IO_mio : inout STD_LOGIC_VECTOR ( 53 downto 0 );
    FIXED_IO_ddr_vrn : inout STD_LOGIC;
    FIXED_IO_ddr_vrp : inout STD_LOGIC;
    FIXED_IO_ps_srstb : inout STD_LOGIC;
    FIXED_IO_ps_clk : inout STD_LOGIC;
    FIXED_IO_ps_porb : inout STD_LOGIC;
    shield_spi_io0_i : in STD_LOGIC;
    shield_spi_io0_o : out STD_LOGIC;
    shield_spi_io0_t : out STD_LOGIC;
    shield_spi_io1_i : in STD_LOGIC;
    shield_spi_io1_o : out STD_LOGIC;
    shield_spi_io1_t : out STD_LOGIC;
    shield_spi_sck_i : in STD_LOGIC;
    shield_spi_sck_o : out STD_LOGIC;
    shield_spi_sck_t : out STD_LOGIC;
    shield_spi_ss_i : in STD_LOGIC;
    shield_spi_ss_o : out STD_LOGIC;
    shield_spi_ss_t : out STD_LOGIC
  );
  end component design_1;
  component IOBUF is
  port (
    I : in STD_LOGIC;
    O : out STD_LOGIC;
    T : in STD_LOGIC;
    IO : inout STD_LOGIC
  );
  end component IOBUF;
  signal shield_spi_io0_i : STD_LOGIC;
  signal shield_spi_io0_o : STD_LOGIC;
  signal shield_spi_io0_t : STD_LOGIC;
  signal shield_spi_io1_i : STD_LOGIC;
  signal shield_spi_io1_o : STD_LOGIC;
  signal shield_spi_io1_t : STD_LOGIC;
  signal shield_spi_sck_i : STD_LOGIC;
  signal shield_spi_sck_o : STD_LOGIC;
  signal shield_spi_sck_t : STD_LOGIC;
  signal shield_spi_ss_i : STD_LOGIC;
  signal shield_spi_ss_o : STD_LOGIC;
  signal shield_spi_ss_t : STD_LOGIC;
begin
design_1_i: component design_1
     port map (
      DDR_addr(14 downto 0) => DDR_addr(14 downto 0),
      DDR_ba(2 downto 0) => DDR_ba(2 downto 0),
      DDR_cas_n => DDR_cas_n,
      DDR_ck_n => DDR_ck_n,
      DDR_ck_p => DDR_ck_p,
      DDR_cke => DDR_cke,
      DDR_cs_n => DDR_cs_n,
      DDR_dm(3 downto 0) => DDR_dm(3 downto 0),
      DDR_dq(31 downto 0) => DDR_dq(31 downto 0),
      DDR_dqs_n(3 downto 0) => DDR_dqs_n(3 downto 0),
      DDR_dqs_p(3 downto 0) => DDR_dqs_p(3 downto 0),
      DDR_odt => DDR_odt,
      DDR_ras_n => DDR_ras_n,
      DDR_reset_n => DDR_reset_n,
      DDR_we_n => DDR_we_n,
      FIXED_IO_ddr_vrn => FIXED_IO_ddr_vrn,
      FIXED_IO_ddr_vrp => FIXED_IO_ddr_vrp,
      FIXED_IO_mio(53 downto 0) => FIXED_IO_mio(53 downto 0),
      FIXED_IO_ps_clk => FIXED_IO_ps_clk,
      FIXED_IO_ps_porb => FIXED_IO_ps_porb,
      FIXED_IO_ps_srstb => FIXED_IO_ps_srstb,
      shield_spi_io0_i => shield_spi_io0_i,
      shield_spi_io0_o => shield_spi_io0_o,
      shield_spi_io0_t => shield_spi_io0_t,
      shield_spi_io1_i => shield_spi_io1_i,
      shield_spi_io1_o => shield_spi_io1_o,
      shield_spi_io1_t => shield_spi_io1_t,
      shield_spi_sck_i => shield_spi_sck_i,
      shield_spi_sck_o => shield_spi_sck_o,
      shield_spi_sck_t => shield_spi_sck_t,
      shield_spi_ss_i => shield_spi_ss_i,
      shield_spi_ss_o => shield_spi_ss_o,
      shield_spi_ss_t => shield_spi_ss_t
    );
shield_spi_io0_iobuf: component IOBUF
     port map (
      I => shield_spi_io0_o,
      IO => shield_spi_io0_io,
      O => shield_spi_io0_i,
      T => shield_spi_io0_t
    );
shield_spi_io1_iobuf: component IOBUF
     port map (
      I => shield_spi_io1_o,
      IO => shield_spi_io1_io,
      O => shield_spi_io1_i,
      T => shield_spi_io1_t
    );
shield_spi_sck_iobuf: component IOBUF
     port map (
      I => shield_spi_sck_o,
      IO => shield_spi_sck_io,
      O => shield_spi_sck_i,
      T => shield_spi_sck_t
    );
shield_spi_ss_iobuf: component IOBUF
     port map (
      I => shield_spi_ss_o,
      IO => shield_spi_ss_io,
      O => shield_spi_ss_i,
      T => shield_spi_ss_t
    );
end STRUCTURE;
