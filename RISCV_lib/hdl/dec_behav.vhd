--
-- VHDL Architecture RISCV_lib.dec.behav
--
-- Created:
--          by - flxpuchr.meyer (pc032)
--          at - 14:43:05 05/16/23
--
-- using Mentor Graphics HDL Designer(TM) 2022.3 Built on 14 Jul 2022 at 13:56:12
--
library RISCV_lib;
USE RISCV_lib.opcode_word.ALL;
ARCHITECTURE behav OF dec IS
  signal activate_nop: std_logic;
  signal current_status: instr_decode_out := INIT_TYPE_RECORD;
  
BEGIN
  decode: process(instr_dc,current_status,activate_nop) is 
    
    begin
      if activate_nop = '1' then 
        current_status <= to_instr(x"00000013"); --f�gt nop ein
      else
        current_status <= to_instr(instr_dc);
      end if;
      alu_mode_dc <= current_status.alu_mode;
      sela_dec <= current_status.sela;
      selb_dec <= current_status.selb;
      imm_dc <= current_status.imm_DC;
      imm_to_alu_dc <= current_status.imm_to_alu_dc;
      target_reg_dc <= current_status.targetreg_wb;
      imm_dec_control_mux <= current_status.imm_dec_control_mux;
      mem_mode_dc <= current_status.mem_mode;
      activate_nop <= '0'; -- R�cksetzen des Nops
end process decode;

fwd: process (target_reg_me,target_reg_ex,mem_mode_ex,current_status) is
Begin
  
  
  if current_status.sela = target_reg_ex and target_reg_ex /= "00000" then  
    fwd_sela_dc <= "01";
  elsif current_status.sela = target_reg_me and target_reg_me /= "00000" then  
    fwd_sela_dc <= "10";
  else 
    fwd_sela_dc <= "00"; --Default
  end if;
  
  if current_status.selb = target_reg_ex and target_reg_ex /= "00000" then
    fwd_selb_dc <= "01";
  elsif current_status.selb = target_reg_me and target_reg_me /= "00000" then  
    fwd_selb_dc <= "10";
  else 
    fwd_selb_dc <= "00"; --Default
  end if;
  --Store after Load
  if current_status.mem_mode = sw_mode or current_status.mem_mode =sb_mode or current_status.mem_mode =sh_mode then
    if mem_mode_ex = lw_mode or mem_mode_ex = lb_mode or mem_mode_ex = lh_mode or mem_mode_ex = lbu_mode then
      if current_status.selb = target_reg_ex then 
        fwd_selsd_dc <= '1';
      else
        fwd_selsd_dc <= '0';
      end if;
    else
      fwd_selsd_dc <= '0';
    end if;
  else
    fwd_selsd_dc <= '0';
  end if;
  --Read after Load
  if mem_mode_ex = lw_mode or mem_mode_ex = lb_mode or mem_mode_ex = lh_mode or mem_mode_ex = lbu_mode then
    if current_status.sela = target_reg_ex or current_status.selb = target_reg_ex then
      activate_nop <= '1';--F�gt einen NOP ein
    
    else 
    
    end if;
  else
  end if;
-- wenn target_reg_ex UND target_reg_me was hat Priorit�t?


end process fwd;
  
END ARCHITECTURE behav;

