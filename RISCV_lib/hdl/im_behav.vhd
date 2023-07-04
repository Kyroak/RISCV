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


type memory_type is array(0 to 31) of word;


constant memory: memory_type:= (
   0 => x"00500083",
   1 => x"00100123",
   2 => x"00108113",
   3 => x"00000013", 
   4 => x"00000013",
   5 => x"00000013", 
   6 => x"00000013",
   7 => x"00000013", 
   8 => x"00000013", 
   9 => x"00000013",
   10=> x"00000013",
   11=> x"00000013", 
   12=> x"00000013",
   13=> x"00000013",
   14=> x"00000013",
   15=> x"00000013",

   others => x"00000013"
   );
    -- x steht für Hexadezimal
-- Befehl: x"02a00313", Bedeutung: addi x6,x0,42
-- Befehl: x"02100393", Bedeutung: addi x7,x0,33
-- 3 NOP Befehle eingefügt für nachfolgenden Befehl!
-- Befehl: x007300b3   add x1 , x6,   x7
-- Befehl: x"40608133" Bedeutung: sub x2, x1,x6
--sub x2, x7,x6 40638133
--and x1,x7,x6 0063f0b3
--andi x1,x7,1 0013f093
--or x1,x7,1 0013e093
--ori x2,x6,16 01036113
--xori x1,x6,16 01034093
--xor x2,x6,x7 00734133
BEGIN
  
process(res_n, pc_if) is begin
if res_n = '0' then
  if_u_instr <= (others => '0');
else

  if_u_instr <= memory(to_integer(unsigned(pc_if(5 downto 2))));
end if;
end process;



  
END ARCHITECTURE behav;



