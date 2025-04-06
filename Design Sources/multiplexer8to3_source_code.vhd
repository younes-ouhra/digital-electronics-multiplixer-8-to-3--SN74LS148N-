library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity multiplexer8to3 is
Port ( 
        E1 : in STD_LOGIC;
        I : in STD_LOGIC_VECTOR(7 downto 0);
        O : out STD_LOGIC_VECTOR(2 downto 0);
        GS : out STD_LOGIC;
        E0 : out STD_LOGIC);
end multiplexer8to3;

architecture Behavioral of multiplexer8to3 is
    signal signalOutput : STD_LOGIC_VECTOR(2 downto 0) := "111";
    signal signalGS : STD_LOGIC := '1';
    signal signalE0 : STD_LOGIC := '1';
begin
    O <= signalOutput;
    GS <= signalGS;
    E0 <= signalE0;
    
-- SN74LS148 / FUNCTION TABLE

    -- DAS SIGNAL signalOutput:
        signalOutput <= "111" when (I = "11111111" and E1 = '0') else
        "000" when (I(0) = '0' and E1 = '0') else
        "001" when (I(1) = '0' and I(0) = '1' and E1 = '0') else
        "010" when (I(2) = '0' and I(1) = '1' and I(0) = '1' and E1 = '0') else
        "011" when (I(3) = '0' and I(2) = '1' and I(1) = '1' and I(0) = '1' and E1 = '0') else
        "100" when (I(4) = '0' and I(3) = '1' and I(2) = '1' and I(1) = '1' and I(0) = '1' and E1 = '0') else
        "101" when (I(5) = '0' and I(4) = '1' and I(3) = '1' and I(2) = '1' and I(1) = '1' and I(0) = '1' and E1 = '0') else
        "110" when (I(6) = '0' and I(5) = '1' and I(4) = '1' and I(3) = '1' and I(2) = '1' and I(1) = '1' and I(0) = '1' and E1 = '0') else
        "111";

    -- DAS SIGNAL signalGS:
        signalGS <= '1' when ((I = "11111111" and E1 = '0') or (E1 = '1')) else
        '0';

    -- DAS SIGNAL signalE0:
        signalE0 <= '0' when (I = "11111111" and E1 = '0') else
        '1';
    
end Behavioral;
