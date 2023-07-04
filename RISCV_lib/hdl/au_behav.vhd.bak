--
-- VHDL Architecture RISCV_lib.au.behav
--
-- Created:
--          by - flxpuchr.meyer (pc032)
--          at - 14:52:58 05/23/23
--
-- using Mentor Graphics HDL Designer(TM) 2022.3 Built on 14 Jul 2022 at 13:56:12
--

library ieee;
use ieee.numeric_std.all;
ARCHITECTURE behav OF au IS
  
  
BEGIN
  process(all) is 
       variable au_l: word;
       variable au_h: std_logic_vector(1 downto 0);
       variable zw_result : word; 
    begin
      if control = '1' then 
        au_l := std_logic_vector(
          unsigned ('0' & au_x(au_x'left - 1 downto au_x'right))+
          unsigned ('0' & au_y(au_y'left - 1 downto au_y'right)));
        au_h := std_logic_vector(
          unsigned('0' & au_x(au_x'left downto au_x'left)) +
          unsigned('0' & au_y(au_y'left downto au_y'left)) +
          unsigned('0' & au_l(au_l'left downto au_l'left)));
    
      else 
        au_l := std_logic_vector(
          unsigned ('0' & au_x(au_x'left - 1 downto au_x'right))-
          unsigned ('0' & au_y(au_y'left - 1 downto au_y'right)));
        au_h := std_logic_vector(
          unsigned('0' & au_x(au_x'left downto au_x'left)) -
          unsigned('0' & au_y(au_y'left downto au_y'left)) -
          unsigned('0' & au_l(au_l'left downto au_l'left)));
    

      end if;
      
      
      c_flag <= au_h(au_h'left);
      v_flag <= au_h(au_h'left) xor au_l(au_l'left);
      zw_result := au_h(au_h'right)& au_l(au_l'left - 1 downto au_l'right);
      result <= au_h(au_h'right)& au_l(au_l'left - 1 downto au_l'right);
      n_flag <= zw_result(zw_result'left); 
        if zw_result = x"00000000" then
          z_flag <= '1'; 
        else 
          z_flag <= '0';
        end if;
    
    end process; 
END ARCHITECTURE behav;

