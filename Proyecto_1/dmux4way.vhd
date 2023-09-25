library	IEEE;
use IEEE.std_logic_1164.all;

-- Entity (Interface)
entity dmux4way is
	port(
		x	:	in 	std_logic;
		s1	:	in		std_logic;
		s2 :  in    std_logic;
		a	:	out 	std_logic;
		b	:	out	std_logic;
		c	: 	out 	std_logic;
		d	: 	out 	std_logic
	);
end entity;

-- Architecture (Implementation)
architecture arch of dmux4way is
begin
	a <= (not s1) and (not s2) and x;
	b <= (not s1) and s2 and x;
	c <=  s1 and (not s2) and x;
	d <=  s1 and s2 and x;
end architecture;	