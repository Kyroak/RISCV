--
-- VHDL Architecture RISCV_lib.dec_add_one.behav
--
-- Created:
--          by - flxpuchr.meyer (pc032)
--          at - 15:41:52 06/13/23
--
-- using Mentor Graphics HDL Designer(TM) 2022.3 Built on 14 Jul 2022 at 13:56:12
--


LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.numeric_std.all;

ARCHITECTURE behav OF dec_add_one IS
BEGIN
  dec_add2mux <=  std_logic_vector(signed(imm_dc) + signed(pc_dec));
END ARCHITECTURE behav;



