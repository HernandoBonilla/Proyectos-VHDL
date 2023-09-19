library ieee;
use ieee.std_logic_1164.all;

entity compuerta_and is 
port (
a : in std_logic;
b : in std_logic;
z : out std_logic
);
end entity;
architecture arch of compuerta_and is 
	signal x : std_logic := '0';
	signal y : std_logic := '0';
	
begin 
x <= not a;
y <= not b;
z <= x nor y;
end architecture;