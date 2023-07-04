--
-- VHDL Architecture RISCV_lib.mx_alu_ex.behav
--
-- Created:
--          by - flxpuchr.meyer (pc032)
--          at - 15:59:04 05/23/23
--
-- using Mentor Graphics HDL Designer(TM) 2022.3 Built on 14 Jul 2022 at 13:56:12
--

library RISCV_lib;
USE RISCV_lib.opcode_word.ALL;

ARCHITECTURE behav OF mx_alu_ex IS
BEGIN
    process(all) is 
      begin 
        if imm_to_alu_ex = '0' then
            value_b <= reg_B_ex;
        else
            value_b <= imm_ex;
        end if; 
        end process;
END ARCHITECTURE behav;

