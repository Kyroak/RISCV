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
constant R_TYPE: std_logic_vector(OPCODE_RANGE):= "0110011";
constant S_TYPE: std_logic_vector(OPCODE_RANGE):= "0100011";
constant U_Type_LUI: std_logic_vector(OPCODE_RANGE):= "0110111";
constant U_Type_AUIPC: std_logic_vector(OPCODE_RANGE):= "0010111";
constant LOAD_I_TYPE: std_logic_vector(OPCODE_RANGE):= "0000011";
SUBTYPE I_diff is natural range  31 downto 25;
SUBTYPE reg_addr is std_logic_vector(4 downto 0);
CONSTANT x_0: reg_addr:= "00000"; 
SUBTYPE word IS std_logic_vector(xlength-1 downto 0);
SUBTYPE IMM_I_TYPE_KONST is std_logic_vector(11 downto 0);
SUBTYPE RS1_RANGE is natural range 19 downto 15;
SUBTYPE RS2_RANGE is natural range 24 downto 20;
SUBTYPE RD_RANGE is natural range 11 downto 7;
SUBTYPE I_IMM_RANGE is natural range 31 downto 20;
SUBTYPE IMM_TYPE is std_logic_vector (11 downto 0);
SUBTYPE REGISTER_TYPE is std_logic_vector (31 downto 0);


TYPE alu_mode_type is (add,sub,and_cmd,idle,or_cmd,xor_cmd,sll_cmd,srl_cmd,sra_cmd,slt_cmd,sltu_cmd,lui_cmd);-- enumaration type
TYPE mem_mode_type is (idle,lw_mode,sw_mode,lb_mode,lh_mode,lbu_mode,lhu_mode,sb_mode,sh_mode);

TYPE   instr_decode_out is record
  alu_mode: alu_mode_type;
  sela: reg_addr;
  selb: reg_addr;
  targetreg_wb: reg_addr;
  imm_DC: word;
  imm_to_alu_dc: std_logic;
  imm_dec_control_mux: std_logic;
  mem_mode: mem_mode_type;
  end record;
  
constant INIT_TYPE_RECORD: instr_decode_out := (idle, (others => '0'),(others => '0'),(others => '0'),(others => '0'),'0','0',idle);

function to_instr (w: word) return instr_decode_out;

function imm_to_w(mode:string;w:word) return word;

function big_endian_to_little(w:word) return word;

function little_endian_to_big(w:word) return word;

  
END opcode_word;
