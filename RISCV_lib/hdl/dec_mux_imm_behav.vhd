--
-- VHDL Architecture RISCV_lib.dec_mux_imm.behav
--
-- Created:
--          by - flxpuchr.meyer (pc032)
--          at - 15:51:46 06/13/23
--
-- using Mentor Graphics HDL Designer(TM) 2022.3 Built on 14 Jul 2022 at 13:56:12
--
ARCHITECTURE behav OF dec_mux_imm IS
BEGIN
  process(imm_dc,dec_add2mux) is
  begin
    if imm_dec_control_mux = '1' then 
      imm_bta_dc <= dec_add2mux;
    else 
      imm_bta_dc <= imm_dc;
    end if;
  end process;
END ARCHITECTURE behav;

