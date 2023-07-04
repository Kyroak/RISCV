--
-- VHDL Architecture RISCV_lib.fwd_1.behav
--
-- Created:
--          by - flxpuchr.meyer (pc032)
--          at - 19:57:28 06/27/23
--
-- using Mentor Graphics HDL Designer(TM) 2022.3 Built on 14 Jul 2022 at 13:56:12
--

library RISCV_lib;
USE RISCV_lib.opcode_word.ALL;

ARCHITECTURE behav OF fwd_1 IS
BEGIN

    process(all) is 
      begin 
        if fwd_sela_ex = "00" then
            value_a <= value_a_1; --Default
        elsif fwd_sela_ex = "01" then
            value_a <= alu_out_me;
        elsif fwd_sela_ex = "10" then
            value_a <= reg_value_wb;
        else
            value_a <= value_a_1;
        end if; 
    end process;
  



  
END ARCHITECTURE behav;


