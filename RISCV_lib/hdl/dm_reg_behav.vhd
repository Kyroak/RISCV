--
-- VHDL Architecture RISCV_lib.dm_reg.behav
--
-- Created:
--          by - flxpuchr.meyer (pc032)
--          at - 16:49:48 05/16/23
--
-- using Mentor Graphics HDL Designer(TM) 2022.3 Built on 14 Jul 2022 at 13:56:12
--
ARCHITECTURE behav OF dm_reg IS
BEGIN
  process(clk, res_n) is begin
   
    if res_n='0' then
      reg_value_wb <= (others => '0');
      reg_addr_wb <= (others => '0');
  
    else
      if clk'event and clk = '1' then  
         
        reg_value_wb <= me_out_me;
       reg_addr_wb <=  target_reg_me;  
      end if;
    end if;
  end process;
END ARCHITECTURE behav;

