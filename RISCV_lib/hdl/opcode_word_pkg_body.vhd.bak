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
  
  
  function to_instr (w: word) return instr_decode_out IS
  variable return_value: instr_decode_out := INIT_TYPE_RECORD;
  BEGIN
  return_value := INIT_TYPE_RECORD;
  case w(OPCODE_RANGE) is 
   
    when ARITH_I_TYPE => --I_type
      return_value.sela:= w(RS1_RANGE);
      return_value.targetreg_wb:= w(RD_RANGE);
      return_value.imm_to_alu_DC := '1';
      return_value.mem_mode := idle;
      case w(14 downto 12) is
        when "000" => -- Addi
          return_value.alu_mode:= add;
          return_value.imm_DC:= imm_to_w("",w);
        when "111" => -- Andi
          return_value.alu_mode:= and_cmd;
          return_value.imm_DC:= imm_to_w("",w);
        when "110" => 
          return_value.alu_mode:= or_cmd;
          return_value.imm_DC:= imm_to_w("",w);
        when "100" =>
          return_value.alu_mode:= xor_cmd;
          return_value.imm_DC:= imm_to_w("",w);
       when "001" =>
          return_value.alu_mode := sll_cmd;
          return_value.imm_DC:= imm_to_w("shamt",w);
       when "101" =>
          if w(31 downto 25) = "0000000" then
          return_value.alu_mode :=srl_cmd;
          return_value.imm_DC:= imm_to_w("shamt",w);
          else
            return_value.alu_mode := sra_cmd;
            return_value.imm_DC:= imm_to_w("shamt",w);
          end if;
      when "010" => 
            return_value.alu_mode := slt_cmd;
            return_value.imm_DC:= imm_to_w("",w);
      when "011" =>
            return_value.alu_mode := sltu_cmd;
            return_value.imm_DC:= imm_to_w("u_type",w);
      
       
          
          
           
        when others =>
      end case;
      
    when LOAD_I_TYPE =>
      return_value.sela:= w(RS1_RANGE);
      return_value.targetreg_wb:= w(RD_RANGE);
      return_value.imm_to_alu_DC := '1';
      case w(14 downto 12) is
        when "010" =>
          return_value.imm_DC:= imm_to_w("",w);
          return_value.alu_mode := add;
          return_value.mem_mode := lw_mode;
        when "001" =>
          return_value.imm_DC:= imm_to_w("",w);
          return_value.alu_mode := add;
          return_value.mem_mode := lh_mode;      
        when "000" =>
          return_value.imm_DC:= imm_to_w("",w);
          return_value.alu_mode := add;
          return_value.mem_mode := lb_mode;         
        when "100" =>
          return_value.imm_DC:= imm_to_w("",w);
          return_value.alu_mode := add;
          return_value.mem_mode := lbu_mode;      
        when "101" =>
          return_value.imm_DC:= imm_to_w("",w);
          return_value.alu_mode := add;
          return_value.mem_mode := lhu_mode;               
         
        
      when others =>
      end case;
    
    
    
    when S_TYPE => 
      case w(14 downto 12) is
        when "010" =>
          return_value.sela:= w(RS1_RANGE);
          return_value.selb:= w(RS2_RANGE);
          return_value.imm_DC:= imm_to_w("s_type",w);
          return_value.imm_to_alu_DC := '1';
          return_value.alu_mode := add;
          return_value.mem_mode := sw_mode;
        when "000" =>
          return_value.sela:= w(RS1_RANGE);
          return_value.selb:= w(RS2_RANGE);
          return_value.imm_DC:= imm_to_w("s_type",w);
          return_value.imm_to_alu_DC := '1';
          return_value.alu_mode := add;
          return_value.mem_mode := sb_mode;          
        when "001" =>
          return_value.sela:= w(RS1_RANGE);
          return_value.selb:= w(RS2_RANGE);
          return_value.imm_DC:= imm_to_w("s_type",w);
          return_value.imm_to_alu_DC := '1';
          return_value.alu_mode := add;
          return_value.mem_mode := sh_mode;          
      
      
      
        when others =>
        end case;
      
       
    when U_TYPE_LUI =>
         return_value.targetreg_wb:= w(RD_RANGE);
         return_value.imm_to_alu_DC := '1';
         return_value.imm_DC:= imm_to_w("u_type",w);
         return_value.alu_mode :=lui_cmd;
         return_value.mem_mode := idle;
    when U_TYPE_AUIPC =>
         return_value.targetreg_wb:= w(RD_RANGE);
         return_value.imm_to_alu_DC := '1';
         return_value.imm_dec_control_mux:= '1';
         return_value.imm_DC:= imm_to_w("u_type",w);
         return_value.alu_mode :=lui_cmd;
         return_value.mem_mode := idle;
    
         
         
         
         
         
          
          
          
          
    when R_TYPE => --R-Type
      return_value.sela:= w(RS1_RANGE);
      return_value.selb:= w(RS2_RANGE);
      return_value.targetreg_wb:= w(RD_RANGE);
      return_value.imm_to_alu_DC := '0';--Mux in EX (value b ist vom Register)
      return_value.mem_mode := idle;
      case w(14 downto 12) is
        when "000" => 
          if w(31 downto 25) = "0000000" then-- add
            return_value.alu_mode:= add;
          else
            return_value.alu_mode:= sub;--sub  
          end if;  
        
        when "111" =>
            return_value.alu_mode:= and_cmd;--and
        when "110" =>
            return_value.alu_mode:=or_cmd;
        when "100" =>
            return_value.alu_mode:=xor_cmd;
    
        when "001" => 
            return_value.alu_mode:=sll_cmd;
        when "101" => 
          if w(31 downto 25) = "0000000" then
            return_value.alu_mode:=srl_cmd;
          else
            return_value.alu_mode:= sra_cmd;
        end if;
        when "010" =>
            return_value.alu_mode:=slt_cmd;
        when "011" =>
            return_value.alu_mode:=sltu_cmd;
    
    
        when others =>
      end case;      
            
      
            
      


      
        
    

    when others =>
  end case;  
  return return_value;
    
  END ;
  
  function imm_to_w(mode:string;w:word) return word is
  variable result:word;
  variable imm_a:std_logic_vector(4 downto 0);
  variable imm_b:std_logic_vector (11 downto 0);
  variable imm_c:std_logic_vector (19 downto 0);
  variable imm_d:std_logic_vector (6 downto 0);
  begin 
    if mode = "shamt" then 
      imm_a := w(24 downto 20);
      result := (31 downto 5 =>  imm_a(4), 4 downto 0 =>  imm_a);
     
    elsif mode = "u_type" then 
      imm_c := w(31 downto 12);
      result:= (31 downto 12 =>  imm_c, others => '0');
    
    elsif mode = "s_type" then 
      imm_a := w(11 downto 7);
      imm_d := w(31 downto 25);
      result:= (31 downto 12 => imm_d(6), 11 downto 5 =>  imm_d, 4 downto 0 => imm_a );
    
      
    else
      imm_b := w(I_IMM_RANGE);
      result := (31 downto 12 => imm_b(11), 11 downto 0 =>  imm_b);
     end if;
     return result;
   end;
  
    
  function big_endian_to_little(w:word) return word is
  variable result:word;
  
  begin
    
    
    result := (31 downto 24 => w(7 downto 0 ), 23 downto 16 => w(15 downto 8), 15 downto 8 => w(23 downto 16), 7 downto 0 => w(31 downto 24));   
    return result;

  end;

  function little_endian_to_big(w:word) return word is
  variable result:word;
  
  begin
    
    
    result := (7 downto 0  => w(31 downto 24), 15 downto 8 => w(23 downto 16), 23 downto 16 => w(15 downto 8), 31 downto 24 => w(7 downto 0));   
    return result;

  end;
  
  
  
  
END opcode_word;
