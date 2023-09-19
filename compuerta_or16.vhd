library ieee;
use ieee.std_logic_1164.all;

entity compuerta_or16 is 
port (
a : in std_logic_vector(15 downto 0);
b : in std_logic_vector(15 downto 0);
z : out std_logic_vector(15 downto 0)
);
end entity;

architecture arch of compuerta_or16 is 
	signal x : std_logic_vector(15 downto 0);
	signal y : std_logic_vector(15 downto 0);
	
begin 
x(0) <= not a(0);
x(1) <= not a(1);
x(2) <= not a(2);
x(3) <= not a(3);
x(4) <= not a(4);
x(5) <= not a(5);
x(6) <= not a(6);
x(7) <= not a(7);
x(8) <= not a(8);
x(9) <= not a(9);
x(10) <= not a(10);
x(11) <= not a(11);
x(12) <= not a(12);
x(13) <= not a(13);
x(14) <= not a(14);
x(15) <= not a(15);

y(0) <= not b(0);
y(1) <= not b(1);
y(2) <= not b(2);
y(3) <= not b(3);
y(4) <= not b(4);
y(5) <= not b(5);
y(6) <= not b(6);
y(7) <= not b(7);
y(8) <= not b(8);
y(9) <= not b(9);
y(10) <= not b(10);
y(11) <= not b(11);
y(12) <= not b(12);
y(13) <= not b(13);
y(14) <= not b(14);
y(15) <= not b(15);

z(0) <= x(0) nand y(0);
z(1) <= x(1) nand y(1);
z(2) <= x(2) nand y(2);
z(3) <= x(3) nand y(3);
z(4) <= x(4) nand y(4);
z(5) <= x(5) nand y(5);
z(6) <= x(6) nand y(6);
z(7) <= x(7) nand y(7);
z(8) <= x(8) nand y(8);
z(9) <= x(9) nand y(9);
z(10) <= x(10) nand y(10);
z(11) <= x(11) nand y(11);
z(12) <= x(12) nand y(12);
z(13) <= x(13) nand y(13);
z(14) <= x(14) nand y(14);
z(15) <= x(15) nand y(15);
end architecture; 