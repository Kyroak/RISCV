-- VHDL Entity RISCV_lib.mx_alu_ex.interface
--
-- Created:
--          by - flxpuchr.meyer (pc032)
--          at - 19:57:10 06/27/23
--
-- Generated by Mentor Graphics' HDL Designer(TM) 2022.3 Built on 14 Jul 2022 at 13:56:12
--
LIBRARY ieee;
USE ieee.std_logic_1164.all;
LIBRARY RISCV_lib;
USE RISCV_lib.opcode_word.ALL;

ENTITY mx_alu_ex IS
   PORT( 
      imm_ex        : IN     word;
      imm_to_alu_ex : IN     std_logic;
      reg_B_ex      : IN     word;
      value_b       : OUT    word
   );

-- Declarations

END mx_alu_ex ;
