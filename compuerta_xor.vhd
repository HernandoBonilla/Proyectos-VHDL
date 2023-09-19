library ieee;
use ieee.std_logic_1164.all;

entity compuerta_xor is 
port (
a : in std_logic;
b : in std_logic;
c : out std_logic
);
end entity;
architecture arch of compuerta_xor is 
	signal w : std_logic := '0';
	signal x : std_logic := '0';
	signal y : std_logic := '0';
	signal z : std_logic := '0';
begin 
w <= not a;
x <= not b;
y <= w and b;
z <= x and a;
c <= y or z;
end architecture;