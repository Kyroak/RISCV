-- VHDL Entity RISCV_lib.au.symbol
--
-- Created:
--          by - flxpuchr.meyer (pc032)
--          at - 16:18:17 05/23/23
--
-- Generated by Mentor Graphics' HDL Designer(TM) 2022.3 Built on 14 Jul 2022 at 13:56:12
--
LIBRARY ieee;
USE ieee.std_logic_1164.all;
library RISCV_lib;
USE RISCV_lib.opcode_word.ALL;

ENTITY au IS
   PORT( 
      au_x    : IN     word;
      au_y    : IN     word;
      control : IN     std_logic;
      c_flag  : OUT    std_logic;
      n_flag  : OUT    std_logic;
      result  : OUT    word;
      v_flag  : OUT    std_logic;
      z_flag  : OUT    std_logic
   );

-- Declarations

END au ;

