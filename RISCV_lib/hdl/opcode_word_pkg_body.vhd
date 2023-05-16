--
-- VHDL Package Body RISCV_lib.opcode_word
--
-- Created:
--          by - flxpuchr.meyer (pc032)
--          at - 16:52:03 05/09/23
--
-- using Mentor Graphics HDL Designer(TM) 2022.3 Built on 14 Jul 2022 at 13:56:12
--
PACKAGE BODY opcode_word IS
  
  
  function decode (w: word) return instr_decode_out IS
    variable return_value: instr_decode_out := INIT_TYPE_RECORD;
  BEGIN
  return_value := INIT_TYPE_RECORD;
  case w(OPCODE_RANGE) is 
   
    when ARITH_I_TYPE => 
      case w(14 downto 12) is
        when "000" => -- Addi
          return_value.alu_mode:= add;
          return_value.sela:= w(RS1_RANGE);
          return_value.targetreg_wb:= w(RD_RANGE);
          return_value.imm_to_alu_DC:= w(I_IMM_RANGE);
        when others =>
    end case;
    

    when others =>
      
  end case;  
  return return_value;
    
  END ;
  
  
  
  
  

  
  
  
  
END opcode_word;
