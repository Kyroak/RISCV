--
-- VHDL Architecture RISCV_lib.ex_reg.behav
--
-- Created:
--          by - flxpuchr.meyer (pc032)
--          at - 16:37:30 05/16/23
--
-- using Mentor Graphics HDL Designer(TM) 2022.3 Built on 14 Jul 2022 at 13:56:12
--
ARCHITECTURE behav OF ex_reg IS
BEGIN
   process(clk, res_n) is begin
   
    if res_n='0' then
      alu_out_me <= (others => '0');
      target_reg_me <= (others => '0');
      
  
    else
      if clk'event and clk = '1' then  
         
        alu_out_me <= alu_out_ex;
        target_reg_me <=  target_reg_ex; 
        mem_mode_me <= mem_mode_ex; 
        store_data_dm <= reg_B_ex;
        fwd_selsd_me <=fwd_selsd_ex;
      end if;
    end if;
  end process;
END ARCHITECTURE behav;




