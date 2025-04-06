library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity multiplexer8to3_TB is
end multiplexer8to3_TB;

architecture Behavioral of multiplexer8to3_TB is

component multiplexer8to3 is
Port ( 
        E1 : in STD_LOGIC;
        I : in STD_LOGIC_VECTOR(7 downto 0);
        O : out STD_LOGIC_VECTOR(2 downto 0);
        GS : out STD_LOGIC;
        E0 : out STD_LOGIC);
end component;
    signal E1_Signal : STD_LOGIC;
    signal I_Signal : STD_LOGIC_VECTOR(7 downto 0);
    signal O_Signal : STD_LOGIC_VECTOR(2 downto 0);
    signal GS_Signal : STD_LOGIC;
    signal E0_Signal : STD_LOGIC;

begin

    uut: multiplexer8to3
    port map ( E1 => E1_Signal,
                I => I_Signal,
                O => O_Signal,
                GS => GS_Signal,
                E0 => E0_Signal);
             
             
    stimulation: process
    begin
        E1_Signal <= '1';
        I_Signal(0) <= 'Z';
        I_Signal(1) <= 'Z';
        I_Signal(2) <= 'Z';
        I_Signal(3) <= 'Z';
        I_Signal(4) <= 'Z';
        I_Signal(5) <= 'Z';
        I_Signal(6) <= 'Z';
        I_Signal(7) <= 'Z';
        wait for 20 ns;
        
        E1_Signal <= '0';
        I_Signal(0) <= '1';
        I_Signal(1) <= '1';
        I_Signal(2) <= '1';
        I_Signal(3) <= '1';
        I_Signal(4) <= '1';
        I_Signal(5) <= '1';
        I_Signal(6) <= '1';
        I_Signal(7) <= '1';
        wait for 20 ns;
        
        E1_Signal <= '0';
        I_Signal(0) <= '0';
        I_Signal(1) <= 'Z';
        I_Signal(2) <= 'Z';
        I_Signal(3) <= 'Z';
        I_Signal(4) <= 'Z';
        I_Signal(5) <= 'Z';
        I_Signal(6) <= 'Z';
        I_Signal(7) <= 'Z';
        wait for 20 ns;
        
        E1_Signal <= '0';
        I_Signal(0) <= '1';
        I_Signal(1) <= '0';
        wait for 20 ns;
        
        E1_Signal <= '0';
        I_Signal(0) <= '1';
        I_Signal(1) <= '1';
        I_Signal(2) <= '0';
        wait for 20 ns;
        
        E1_Signal <= '0';
        I_Signal(0) <= '1';
        I_Signal(1) <= '1';
        I_Signal(2) <= '1';
        I_Signal(3) <= '0';
        wait for 20 ns;
        
        E1_Signal <= '0';
        I_Signal(0) <= '1';
        I_Signal(1) <= '1';
        I_Signal(2) <= '1';
        I_Signal(3) <= '1';
        I_Signal(4) <= '0';
        wait for 20 ns;
        
        E1_Signal <= '0';
        I_Signal(0) <= '1';
        I_Signal(1) <= '1';
        I_Signal(2) <= '1';
        I_Signal(3) <= '1';
        I_Signal(4) <= '1';
        I_Signal(5) <= '0';
        wait for 20 ns;
        
        E1_Signal <= '0';
        I_Signal(0) <= '1';
        I_Signal(1) <= '1';
        I_Signal(2) <= '1';
        I_Signal(3) <= '1';
        I_Signal(4) <= '1';
        I_Signal(5) <= '1';
        I_Signal(6) <= '0';
        wait for 20 ns;
        
        E1_Signal <= '0';
        I_Signal(0) <= '1';
        I_Signal(1) <= '1';
        I_Signal(2) <= '1';
        I_Signal(3) <= '1';
        I_Signal(4) <= '1';
        I_Signal(5) <= '1';
        I_Signal(6) <= '1';
        I_Signal(7) <= '0';
        wait for 20 ns;
        
end process;
end Behavioral;
