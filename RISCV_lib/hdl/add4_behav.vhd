--
-- VHDL Architecture RISCV_lib.add4.behav
--
-- Created:
--          by - flxpuchr.meyer (pc032)
--          at - 17:56:12 05/02/23
--
-- using Mentor Graphics HDL Designer(TM) 2022.3 Built on 14 Jul 2022 at 13:56:12
--

library ieee;
use ieee.numeric_std.all;

ARCHITECTURE behav OF add4 IS
BEGIN
  


if_u_next_pc <= std_logic_vector(unsigned(pc_if)+4);




END ARCHITECTURE behav;

