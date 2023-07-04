--
-- VHDL Architecture RISCV_lib.dm_fwd_mux_logic.behav
--
-- Created:
--          by - flxpuchr.meyer (pc032)
--          at - 17:02:52 06/13/23
--
-- using Mentor Graphics HDL Designer(TM) 2022.3 Built on 14 Jul 2022 at 13:56:12
--

library RISCV_lib;
USE RISCV_lib.opcode_word.ALL;

ARCHITECTURE behav OF dm_fwd_mux_logic IS
BEGIN
  
  
    process(all) is 
      begin 
        if fwd_selsd_me = '0' then
            store_data_2_dm <= store_data_dm; --Default
        elsif fwd_selsd_me = '1' then
            store_data_2_dm <= reg_value_wb;
        else
            store_data_2_dm <= store_data_dm;
        end if; 
    end process;




END ARCHITECTURE behav;

