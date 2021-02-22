library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity TB_SumadorRestador is
--  Port ( );
end TB_SumadorRestador;

architecture Behavioral of TB_SumadorRestador is
component SumadorRestador8 is 
 Port ( x : in STD_LOGIC_VECTOR (7 downto 0);
          y : in STD_LOGIC_VECTOR (7 downto 0);
          S : out STD_LOGIC_VECTOR (7 downto 0);
          Cout : out STD_LOGIC;
          overflow : out STD_LOGIC;
          selector : in STD_LOGIC);
end component;

---------Creación de señales de estimulación y monitoreo--------------
signal x_s : STD_LOGIC_VECTOR (7 downto 0);
signal y_s : STD_LOGIC_VECTOR (7 downto 0);
signal S_s : STD_LOGIC_VECTOR (7 downto 0);
signal Cout_s : STD_LOGIC;
signal overflow_s : STD_LOGIC;
signal selector_s : STD_LOGIC;

begin
--------Mapeo de entradas y salidas a señales del TB----------------

DUT: SumadorRestador8 port map(
   x => x_s,
   y => y_s,
   S => S_s,
   Cout => Cout_s,
   overflow => overflow_s,
   selector =>selector_s);

process 

begin

----  Caso 1 Suma  -----

selector_s <= '0';
x_s(0) <= '0';
x_s(1) <='0';
x_s(2) <='0';
x_s(3) <= '0'; 
x_s(4) <= '0';
x_s(5) <='0';
x_s(6) <='0';
x_s(7) <= '0'; 

y_s(0) <= '0';
y_s(1) <='0';
y_s(2) <='0';
y_s(3) <= '0'; 
y_s(4) <= '0';
y_s(5) <='0';
y_s(6) <='0';
y_s(7) <= '0'; 

wait for 10 ns; 

----  Caso 2 Suma  -----
selector_s <= '0';
x_s(0) <= '1';
x_s(1) <='0';
x_s(2) <='0';
x_s(3) <= '0'; 
x_s(4) <= '0';
x_s(5) <='0';
x_s(6) <='0';
x_s(7) <= '0'; 

y_s(0) <= '1';
y_s(1) <='0';
y_s(2) <='0';
y_s(3) <= '0'; 
y_s(4) <= '0';
y_s(5) <='0';
y_s(6) <='0';
y_s(7) <= '0'; 

wait for 10 ns; 

---- Caso 3 Suma -----
selector_s <= '0';
x_s(0) <= '0';
x_s(1) <='1';
x_s(2) <='0';
x_s(3) <= '0'; 
x_s(4) <= '0';
x_s(5) <='0';
x_s(6) <='0';
x_s(7) <= '0'; 

y_s(0) <= '0';
y_s(1) <='1';
y_s(2) <='0';
y_s(3) <= '0'; 
y_s(4) <= '0';
y_s(5) <='0';
y_s(6) <='0';
y_s(7) <= '0'; 

wait for 10 ns;

---- Caso 4 Suma -----
selector_s <= '0';
x_s(0) <= '0';
x_s(1) <='1';
x_s(2) <='0';
x_s(3) <= '1'; 
x_s(4) <= '0';
x_s(5) <='1';
x_s(6) <='1';
x_s(7) <= '1'; 

y_s(0) <= '1';
y_s(1) <='1';
y_s(2) <='0';
y_s(3) <= '0'; 
y_s(4) <= '0';
y_s(5) <='1';
y_s(6) <='1';
y_s(7) <= '1'; 

wait for 10 ns;

---- Caso 5 Suma -----
selector_s <= '0';
x_s(0) <= '1';
x_s(1) <='1';
x_s(2) <='1';
x_s(3) <= '1'; 
x_s(4) <= '1';
x_s(5) <='1';
x_s(6) <='1';
x_s(7) <= '1'; 

y_s(0) <= '1';
y_s(1) <='1';
y_s(2) <='1';
y_s(3) <= '1'; 
y_s(4) <= '1';
y_s(5) <='1';
y_s(6) <='1';
y_s(7) <= '1'; 

wait for 10 ns; 

----- Caso 1: Resta  ------
selector_s <= '1';
x_s(0) <= '0';
x_s(1) <='0';
x_s(2) <='0';
x_s(3) <= '0'; 
x_s(4) <= '0';
x_s(5) <='0';
x_s(6) <='0';
x_s(7) <= '0'; 

y_s(0) <= '0';
y_s(1) <='0';
y_s(2) <='0';
y_s(3) <= '0'; 
y_s(4) <= '0';
y_s(5) <='0';
y_s(6) <='0';
y_s(7) <= '0'; 

wait for 10 ns; 

----- Caso 2: Resta  ------
selector_s <= '1';
x_s(0) <= '1';
x_s(1) <='0';
x_s(2) <='0';
x_s(3) <= '0'; 
x_s(4) <= '0';
x_s(5) <='0';
x_s(6) <='0';
x_s(7) <= '0'; 

y_s(0) <= '1';
y_s(1) <='0';
y_s(2) <='0';
y_s(3) <= '0'; 
y_s(4) <= '0';
y_s(5) <='0';
y_s(6) <='0';
y_s(7) <= '0'; 

wait for 10 ns;

----- Caso 3: Resta  ------
selector_s <= '1';
x_s(0) <= '0';
x_s(1) <='1';
x_s(2) <='0';
x_s(3) <= '0'; 
x_s(4) <= '0';
x_s(5) <='0';
x_s(6) <='0';
x_s(7) <= '0'; 

y_s(0) <= '1';
y_s(1) <='0';
y_s(2) <='0';
y_s(3) <= '0'; 
y_s(4) <= '0';
y_s(5) <='0';
y_s(6) <='0';
y_s(7) <= '0'; 

wait for 10 ns;

----- Caso 4: Resta  ------
selector_s <= '1';
x_s(0) <= '1';
x_s(1) <='1';
x_s(2) <='1';
x_s(3) <= '1'; 
x_s(4) <= '1';
x_s(5) <='1';
x_s(6) <='1';
x_s(7) <= '1'; 

y_s(0) <= '1';
y_s(1) <='1';
y_s(2) <='1';
y_s(3) <= '1'; 
y_s(4) <= '1';
y_s(5) <='1';
y_s(6) <='1';
y_s(7) <= '1'; 

wait for 10 ns;

----- Caso 5: Resta  ------
selector_s <= '1';
x_s(0) <= '0';
x_s(1) <='1';
x_s(2) <='0';
x_s(3) <= '0'; 
x_s(4) <= '1';
x_s(5) <='0';
x_s(6) <='0';
x_s(7) <= '1'; 

y_s(0) <= '1';
y_s(1) <='1';
y_s(2) <='0';
y_s(3) <= '0'; 
y_s(4) <= '0';
y_s(5) <='1';
y_s(6) <='1';
y_s(7) <= '0'; 

wait for 10 ns;

wait;
end process;

end Behavioral;
