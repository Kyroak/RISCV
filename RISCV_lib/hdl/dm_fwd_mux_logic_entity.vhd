-- VHDL Entity RISCV_lib.dm_fwd_mux_logic.interface
--
-- Created:
--          by - flxpuchr.meyer (pc032)
--          at - 19:58:54 06/27/23
--
-- Generated by Mentor Graphics' HDL Designer(TM) 2022.3 Built on 14 Jul 2022 at 13:56:12
--
LIBRARY ieee;
USE ieee.std_logic_1164.all;
LIBRARY RISCV_lib;
USE RISCV_lib.opcode_word.ALL;

ENTITY dm_fwd_mux_logic IS
   PORT( 
      fwd_selsd_me    : IN     std_logic;
      reg_value_wb    : IN     word;
      store_data_dm   : IN     word;
      store_data_2_dm : OUT    word
   );

-- Declarations

END dm_fwd_mux_logic ;

