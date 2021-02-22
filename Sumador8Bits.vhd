
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity SumadorRestador8 is
    Port ( x : in STD_LOGIC_VECTOR (7 downto 0);
           y : in STD_LOGIC_VECTOR (7 downto 0);
           S : out STD_LOGIC_VECTOR (7 downto 0);
           Cout : out STD_LOGIC;
           overflow : out STD_LOGIC;
           selector : in STD_LOGIC);
end SumadorRestador8;

architecture Behavioral of SumadorRestador8 is

component sumador1 is
    port (a, b, cin : in std_logic;
                 s, cout : out std_logic);
end component;

signal C1, C2, C3, C4, C5, C6, C7, C8: std_logic;
signal TMP: std_logic_vector(7 downto 0);

begin
TMP(0) <= y(0) xor selector;
TMP(1) <= y(1) xor selector;
TMP(2) <= y(2) xor selector;
TMP(3) <= y(3) xor selector;
TMP(4) <= y(4) xor selector;
TMP(5) <= y(5) xor selector;
TMP(6) <= y(6) xor selector;
TMP(7) <= y(7) xor selector;

FA0:sumador1 port map(x(0), TMP(0), selector , S(0) , C1);
FA1:sumador1 port map(x(1), TMP(1), C1 , S(1) , C2);
FA2:sumador1 port map(x(2), TMP(2), C2 , S(2) , C3);
FA3:sumador1 port map(x(3), TMP(3), C3 , S(3) , C4);
FA4:sumador1 port map(x(4), TMP(4), C4 , S(4) , C5);
FA5:sumador1 port map(x(5), TMP(5), C5 , S(5) , C6);
FA6:sumador1 port map(x(6), TMP(6), C6 , S(6) , C7);
FA7:sumador1 port map(x(7), TMP(7), C7 , S(7) , C8);
overflow <= C7 XOR C8 ;
Cout <= C8;

end Behavioral;
