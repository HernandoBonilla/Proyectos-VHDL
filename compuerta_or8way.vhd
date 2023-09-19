library ieee;
use ieee.std_logic_1164.all;

entity compuerta_or8way is 
port (
a : in std_logic;
b : in std_logic;
c : in std_logic;
d : in std_logic;
e : in std_logic;
f : in std_logic;
g : in std_logic;
h : in std_logic;
z : out std_logic
);
end entity;
architecture arch of compuerta_or8way is 
	signal t : std_logic := '0';
	signal u : std_logic := '0';
	signal v : std_logic := '0';
	signal w : std_logic := '0';
	signal x : std_logic := '0';
	signal y : std_logic := '0';
begin 
t <= (not a) nand (not b);
u <= (not c) nand (not d);
v <= (not e) nand (not f);
w <= (not g) nand (not h);
x <= (not t) nand (not u);
y <= (not v) nand (not w);
z <= (not x) nand (not y);
end architecture;