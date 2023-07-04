--
-- VHDL Architecture RISCV_lib.proofer.behav
--
-- Created:
--          by - flxpuchr.meyer (pc032)
--          at - 17:40:29 06/20/23
--
-- using Mentor Graphics HDL Designer(TM) 2022.3 Built on 14 Jul 2022 at 13:56:12
--
ARCHITECTURE behav OF proofer IS
BEGIN
  
  process(alu_out_me) is 
  begin
    case mem_mode_me is 
      when lw_mode => 
        assert alu_out_me(1 downto 0) = "00" report "Adress-Value is not a word" severity error;
        --if alu_out_me(1 downto 0) = "00" then 
        alu_out_me_b <= alu_out_me;
        --else
          
        --end if;
      when lhu_mode =>
        assert alu_out_me(0) ='0' report "Adress-Value is not a half-word" severity error;
        if alu_out_me(0) ='0' then 
          alu_out_me_b <= alu_out_me;
        else
          
        end if;        

      when others =>
        alu_out_me_b <= alu_out_me;
    end case;
  end process;
  
END ARCHITECTURE behav;

