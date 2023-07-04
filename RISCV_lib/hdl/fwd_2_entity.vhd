-- VHDL Entity RISCV_lib.fwd_2.interface
--
-- Created:
--          by - flxpuchr.meyer (pc032)
--          at - 20:06:44 06/27/23
--
-- Generated by Mentor Graphics' HDL Designer(TM) 2022.3 Built on 14 Jul 2022 at 13:56:12
--
LIBRARY ieee;
USE ieee.std_logic_1164.all;
LIBRARY RISCV_lib;
USE RISCV_lib.opcode_word.ALL;

ENTITY fwd_2 IS
   PORT( 
      alu_out_me   : IN     word;
      fwd_selb_ex  : IN     std_logic_vector (1 DOWNTO 0);
      reg_B_ex_1   : IN     word;
      reg_value_wb : IN     word;
      reg_B_ex     : OUT    word
   );

-- Declarations

END fwd_2 ;
