library ieee;
use ieee.std_logic_1164.all;

entity compuerta_nand is 
port (
a : in std_logic;
b : in std_logic;
y : out std_logic
);
end entity;
architecture arch of compuerta_nand is 
	signal x : std_logic := '0';
begin 
x <= a and b;
y <= not x;
end architecture;