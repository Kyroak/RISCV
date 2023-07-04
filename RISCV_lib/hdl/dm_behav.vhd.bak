--
-- VHDL Architecture RISCV_lib.dm.behav
--
-- Created:
--          by - flxpuchr.meyer (pc032)
--          at - 16:27:47 06/13/23
--
-- using Mentor Graphics HDL Designer(TM) 2022.3 Built on 14 Jul 2022 at 13:56:12
--
library RISCV_lib;
USE RISCV_lib.opcode_word.ALL;
library ieee;
use ieee.numeric_std.all;

ARCHITECTURE behav OF dm IS
type memory_type is array(0 to 31) of std_logic_vector(31 downto 0);
signal memory: memory_type:= (
   0 => x"00000000",
   1 => x"FFFFFFFF",
   2 => x"BEBAFECA",
   3 => x"00000000",
   4 => x"00000000",
   others => x"00000000");

  
BEGIN
  
  lesen:process(mem_mode_me,alu_out_me_b) is
  variable zeile: std_logic_vector(29 downto 0); -- schneide letzten zwei bits ab um auf word zu kommen
  variable zwischen_schritt_01 : std_logic_vector (31 downto 0);
  variable halfword: std_logic_vector(15 downto 0);
  begin
    zeile := alu_out_me_b(word'length -1 downto 2);
    value_dm <= (others => '0');
    zwischen_schritt_01:= memory(to_integer(unsigned(zeile))); -- little endian to big endian umwandeln
    report "1.lese prozess erreicht";
    case mem_mode_me is 
      when lw_mode =>
        value_dm <= little_endian_to_big(zwischen_schritt_01); 
      when lhu_mode =>
        case alu_out_me_b(1) is 
          when '1' =>
            value_dm(15 downto 0) <=  (7 downto 0 => zwischen_schritt_01(15 downto 8),15 downto 8 => zwischen_schritt_01(7 downto 0));
       -- if alu_out_me_b(1) = '1' then
          when '0' =>
            value_dm(15 downto 0) <=  (7 downto 0 => zwischen_schritt_01(31 downto 24), 15 downto 8 => zwischen_schritt_01(23 downto 16)); 
          when others =>
        end case;
      when lbu_mode =>
        report "2.lbu-mode erreicht";
        case alu_out_me_b(1 downto 0) is
          when "11" =>
            value_dm(7 downto 0) <= zwischen_schritt_01(7 downto 0);
          when "10" =>
            value_dm(7 downto 0) <= zwischen_schritt_01(15 downto 8);
          when "01" =>
            value_dm(7 downto 0) <= zwischen_schritt_01(23 downto 16);
          when "00" =>
            value_dm(7 downto 0) <= zwischen_schritt_01(31 downto 24);
          when others =>
        --if alu_out_me_b(1) = '1' then
          --if alu_out_me_b(0) = '1' then
            
         -- else
          --  value_dm(7 downto 0) <= zwischen_schritt_01(15 downto 8);
          --end if;
       -- else
          --if alu_out_me_b(0)= '1' then
           -- value_dm(7 downto 0) <= zwischen_schritt_01(23 downto 16);
          --else
           -- value_dm(7 downto 0) <= zwischen_schritt_01(31 downto 24);
          --end if;    
       -- end if;
         end case;
      when lb_mode =>
        report "2.lb-mode erreicht";
        case alu_out_me_b(1 downto 0) is
          when "11" =>
  
            value_dm <= (31 downto 8 => zwischen_schritt_01(7), 7 downto 0 => zwischen_schritt_01(7 downto 0));
          when "10" =>
            value_dm <= (31 downto 8 => zwischen_schritt_01(15) ,7 downto 0 => zwischen_schritt_01(15 downto 8));
            
          when "01" =>
            value_dm <= (31 downto 8 => zwischen_schritt_01(23), 7 downto 0 => zwischen_schritt_01(23 downto 16));
          when "00" =>
            value_dm <= (31 downto 8 => zwischen_schritt_01(31) , 7 downto 0 => zwischen_schritt_01(31 downto 24));
          when others =>
        --if alu_out_me_b(1) = '1' then
          --if alu_out_me_b(0) = '1' then
            
         -- else
          --  value_dm(7 downto 0) <= zwischen_schritt_01(15 downto 8);
          --end if;
       -- else
          --if alu_out_me_b(0)= '1' then
           -- value_dm(7 downto 0) <= zwischen_schritt_01(23 downto 16);
          --else
           -- value_dm(7 downto 0) <= zwischen_schritt_01(31 downto 24);
          --end if;    
       -- end if;
         end case;         
    when lh_mode =>
        case alu_out_me_b(1) is 
          when '1' =>
            value_dm <= (31 downto 16 => zwischen_schritt_01(7)  ,15 downto 8 => zwischen_schritt_01(7 downto 0), 7 downto 0 =>zwischen_schritt_01(15 downto 8));
       -- if alu_out_me_b(1) = '1' then
          when '0' =>
            value_dm <=  (31 downto 16 => zwischen_schritt_01(23) , 15 downto 8 => zwischen_schritt_01(23 downto 16),7 downto 0 => zwischen_schritt_01(31 downto 24)); 
          when others =>
        end case;
      when others =>
        value_dm <= (others => '0');
    end case;
  end process lesen;

  schreiben:process(clk, res_n) is 
  variable zeile: std_logic_vector(29 downto 0);
  variable spalte: std_logic_vector(1 downto 0); 
  begin
    zeile := alu_out_me_b(word'length -1 downto 2);
    spalte:= alu_out_me_b(1 downto 0);
    if res_n='0' then 
    else
      if clk'event and clk = '1'  then
        case mem_mode_me is
          when sw_mode =>
            memory(to_integer(unsigned(zeile))) <= big_endian_to_little(store_data_2_dm);
          when sh_mode =>
            case spalte(1) is              
              when '0' =>
                memory(to_integer(unsigned(zeile)))(31 downto 16) <=  (31 downto 24 => store_data_2_dm(7 downto 0), 23 downto 16 => store_data_2_dm(15 downto 8));
              when '1' =>
                memory(to_integer(unsigned(zeile)))(15 downto 0)<=  (31 downto 24 => store_data_2_dm(7 downto 0), 23 downto 16 => store_data_2_dm(15 downto 8));
              when others =>
            end case;
          when sb_mode =>
            case spalte is
              when "11" =>
                memory(to_integer(unsigned(zeile)))(7 downto 0)  <=  store_data_2_dm(7 downto 0);    
              when "10" =>
                memory(to_integer(unsigned(zeile)))(15 downto 8) <=  store_data_2_dm(7 downto 0);
              when "01" =>
                memory(to_integer(unsigned(zeile)))(23 downto 16) <=  store_data_2_dm(7 downto 0);              
              when "00" =>
                memory(to_integer(unsigned(zeile)))(31 downto 24) <=  store_data_2_dm(7 downto 0);--31 downto 24
              when others =>
            end case;
            
       -- if mem_mode_me = sw_mode then        
       --   memory(to_integer(unsigned(zeile))) <= big_endian_to_little(store_data_2_dm);
       -- else
       -- end if;
          when others =>
        end case;
      else 
      end if;
    end if;
  end process schreiben;

END ARCHITECTURE behav;

