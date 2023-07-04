--
-- VHDL Architecture RISCV_lib.fwd_2.behav
--
-- Created:
--          by - flxpuchr.meyer (pc032)
--          at - 19:57:10 06/27/23
--
-- using Mentor Graphics HDL Designer(TM) 2022.3 Built on 14 Jul 2022 at 13:56:12
--

library RISCV_lib;
USE RISCV_lib.opcode_word.ALL;

ARCHITECTURE behav OF fwd_2 IS
BEGIN
  
    process(all) is 
      begin 
        if fwd_selb_ex = "00" then
            reg_B_ex <= reg_B_ex_1; --Default
        elsif fwd_selb_ex = "01" then
            reg_B_ex <= alu_out_me;
        elsif fwd_selb_ex = "10" then
            reg_B_ex <= reg_value_wb;
        else
            reg_B_ex <= reg_B_ex_1;
        end if; 
    end process;
  
END ARCHITECTURE behav;




  