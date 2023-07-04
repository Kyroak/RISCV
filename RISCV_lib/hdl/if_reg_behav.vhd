--
-- VHDL Architecture RISCV_lib.if_reg.behav
--
-- Created:
--          by - flxpuchr.meyer (pc032)
--          at - 15:45:06 05/09/23
--
-- using Mentor Graphics HDL Designer(TM) 2022.3 Built on 14 Jul 2022 at 13:56:12
--
library RISCV_lib;
USE RISCV_lib.opcode_word.ALL;
ARCHITECTURE behav OF if_reg IS
BEGIN
  process(clk, res_n) is begin
   
    if res_n='0' then
      instr_dc <= (others => '0');
      pc_dec <= (others => '0');
  
    else
      if clk'event and clk = '1' then 
        instr_dc <= if_u_instr; 
        pc_dec <= pc_if;
        
      end if;
    end if;
  end process;
END ARCHITECTURE behav;

