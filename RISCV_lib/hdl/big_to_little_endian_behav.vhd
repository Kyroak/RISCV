--
-- VHDL Architecture RISCV_lib.big_to_little_endian.behav
--
-- Created:
--          by - flxpuchr.meyer (pc032)
--          at - 16:16:29 06/20/23
--
-- using Mentor Graphics HDL Designer(TM) 2022.3 Built on 14 Jul 2022 at 13:56:12
--


library RISCV_lib;
USE RISCV_lib.opcode_word.ALL;

ARCHITECTURE behav OF big_to_little_endian IS
BEGIN
  
  
 store_data_2_little_end_dm <= big_endian_to_little(store_data_2_big_end_dm);
  
  
  
  
END ARCHITECTURE behav;

