--
-- VHDL Architecture RISCV_lib.dm_mux.behav
--
-- Created:
--          by - flxpuchr.meyer (pc032)
--          at - 16:59:54 06/13/23
--
-- using Mentor Graphics HDL Designer(TM) 2022.3 Built on 14 Jul 2022 at 13:56:12
--

library RISCV_lib;
USE RISCV_lib.opcode_word.ALL;

ARCHITECTURE behav OF dm_mux IS
BEGIN
process(alu_out_me,value_dm) is
begin
  if mem_mode_me = lw_mode or  mem_mode_me =lh_mode or mem_mode_me = lb_mode or mem_mode_me = lbu_mode or mem_mode_me = lhu_mode then 
      me_out_me <= value_dm;
    else 
      me_out_me <= alu_out_me;
  end if;
  
end process;
  
END ARCHITECTURE behav;

