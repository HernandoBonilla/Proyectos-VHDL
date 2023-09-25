library	IEEE;
use IEEE.std_logic_1164.all;

-- Entity (Interface)
entity dmux8way is
	port(
		x	:	in 	std_logic;
		s1	:	in		std_logic;
		s2 :  in    std_logic;
		s3 : 	in		std_logic;
		a	:	out 	std_logic;
		b	:	out	std_logic;
		c	: 	out 	std_logic;
		d	: 	out 	std_logic;
		e	:	out 	std_logic;
		f	:	out	std_logic;
		g	: 	out 	std_logic;
		h	: 	out 	std_logic
	);
end entity;

-- Architecture (Implementation)
architecture arch of dmux8way is
begin
	a <= (not s1) and (not s2) and (not s3) and x;
	b <= (not s1) and (not s2) and s3 and x;
	c <= (not s1) and s2 and (not s3) and x;
	d <= (not s1) and s2 and s3 and x;
	e <=  s1 and (not s2) and (not s3) and x;
	f <=  s1 and (not s2) and s3 and x;
	g <=  s1 and s2 and (not s3) and x;
	h <=  s1 and s2 and s3 and x;
end architecture;	