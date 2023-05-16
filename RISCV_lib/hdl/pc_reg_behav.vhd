--
-- VHDL Architecture RISCV_lib.pc_reg.behav
--
-- Created:
--          by - flxpuchr.meyer (pc032)
--          at - 14:39:15 05/09/23
--
-- using Mentor Graphics HDL Designer(TM) 2022.3 Built on 14 Jul 2022 at 13:56:12
--
ARCHITECTURE behav OF pc_reg IS
 
BEGIN
  process(clk, res_n) is begin
   
    if res_n='0' then
      pc_if <= (others => '0');
  
    else
      if clk'event and clk = '1' then 
        pc_if <= if_u_next_pc;
      else 
      end if;
    end if;
  end process;
    
END ARCHITECTURE behav;

