--
-- VHDL Architecture RISCV_lib.SOC.struct
--
-- Created:
--          by - flxpuchr.meyer (pc032)
--          at - 15:24:03 05/09/23
--
-- Generated by Mentor Graphics' HDL Designer(TM) 2022.3 Built on 14 Jul 2022 at 13:56:12
--
LIBRARY ieee;
USE ieee.std_logic_1164.all;

LIBRARY RISCV_lib;

ARCHITECTURE struct OF SOC IS

   -- Architecture declarations

   -- Internal signal declarations


   -- Component Declarations
   COMPONENT peripherie_01
   END COMPONENT;
   COMPONENT riscv
   PORT (
      clk   : IN     std_logic ;
      res_n : IN     std_logic 
   );
   END COMPONENT;

   -- Optional embedded configurations
   -- pragma synthesis_off
   FOR ALL : peripherie_01 USE ENTITY RISCV_lib.peripherie_01;
   FOR ALL : riscv USE ENTITY RISCV_lib.riscv;
   -- pragma synthesis_on


BEGIN

   -- Instance port mappings.
   U_1 : peripherie_01;
   risv5_one : riscv
      PORT MAP (
         clk   => clk,
         res_n => res_n
      );

END struct;
