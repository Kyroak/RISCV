--
-- VHDL Architecture RISCV_lib.little_to_big_endian.behav
--
-- Created:
--          by - flxpuchr.meyer (pc032)
--          at - 16:18:38 06/20/23
--
-- using Mentor Graphics HDL Designer(TM) 2022.3 Built on 14 Jul 2022 at 13:56:12
--
library RISCV_lib;
USE RISCV_lib.opcode_word.ALL;

ARCHITECTURE behav OF little_to_big_endian IS
BEGIN
  
  value_big_end_dm <= little_endian_to_big(value_little_end_dm);
  
END ARCHITECTURE behav;

