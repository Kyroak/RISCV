-- VHDL Entity RISCV_lib.rf.interface
--
-- Created:
--          by - flxpuchr.meyer (pc032)
--          at - 18:49:54 06/13/23
--
-- Generated by Mentor Graphics' HDL Designer(TM) 2022.3 Built on 14 Jul 2022 at 13:56:12
--
LIBRARY ieee;
USE ieee.std_logic_1164.all;
LIBRARY RISCV_lib;
USE RISCV_lib.opcode_word.ALL;

ENTITY rf IS
   PORT( 
      clk          : IN     std_logic;
      reg_addr_wb  : IN     reg_addr;
      reg_value_wb : IN     word;
      res_n        : IN     std_logic;
      sela_dec     : IN     reg_addr;
      selb_dec     : IN     reg_addr;
      reg_A_dc     : OUT    word;
      reg_B_dc     : OUT    word
   );

-- Declarations

END rf ;

