--
-- VHDL Architecture RISCV_lib.im.behav
--
-- Created:
--          by - flxpuchr.meyer (pc032)
--          at - 17:32:42 05/02/23
--
-- using Mentor Graphics HDL Designer(TM) 2022.3 Built on 14 Jul 2022 at 13:56:12
--
library ieee;
use ieee.numeric_std.all;
ARCHITECTURE behav OF im IS


type memory_type is array(0 to 15) of word;


constant memory: memory_type:= (0 => x"02a00313", 1 => x"02100393", others => x"00000013"); -- x steht für Hexadezimal

BEGIN
  
process(pc_if) is begin

if_u_instr <= memory(to_integer(unsigned(pc_if(31 downto 2))));

end process;
  
  
  
  
  
  
END ARCHITECTURE behav;

