--
-- VHDL Package Header RISCV_lib.opcode_word
--
-- Created:
--          by - flxpuchr.meyer (pc032)
--          at - 17:14:01 05/02/23
--
-- using Mentor Graphics HDL Designer(TM) 2022.3 Built on 14 Jul 2022 at 13:56:12
--
LIBRARY ieee;
USE ieee.std_logic_1164.all;
PACKAGE opcode_word IS
CONSTANT  xlength : natural:= 32;




SUBTYPE OPCODE_RANGE is natural range  6 downto 0;


constant ARITH_I_TYPE: std_logic_vector(OPCODE_RANGE):= "0010011";
SUBTYPE I_diff is natural range  31 downto 25;
SUBTYPE reg_addr is std_logic_vector(4 downto 0);
SUBTYPE word IS std_logic_vector(xlength-1 downto 0);
SUBTYPE IMM_I_TYPE_KONST is std_logic_vector(11 downto 0);
SUBTYPE RS1_RANGE is natural range 19 downto 15;
SUBTYPE RS2_RANGE is natural range 24 downto 0;
SUBTYPE RD_RANGE is natural range 11 downto 7;
SUBTYPE I_IMM_RANGE is natural range 31 downto 20;




TYPE alu_mode_type is (add,idle);-- enumaration type


TYPE   instr_decode_out is record
  alu_mode: alu_mode_type;
  sela: reg_addr;
  selb: reg_addr;
  targetreg_wb: reg_addr;
  imm_to_alu_DC: IMM_I_TYPE_KONST;
  end record;
  
constant INIT_TYPE_RECORD: instr_decode_out := (idle, (others => '0'),(others => '0'),(others => '0'),(others => '0'));

function decode (w: word) return instr_decode_out;


  
END opcode_word;
