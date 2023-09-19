library	IEEE;
use IEEE.std_logic_1164.all;

-- Entity (Interface)
entity mux8way is
	port(
		a	:	in 	std_logic;
		b	:	in		std_logic;
		c	: 	in 	std_logic;
		d  :	in 	std_logic;
		e	: 	in 	std_logic;
		f	:	in		std_logic;
		g	:	in		std_logic;
		h	:	in		std_logic;
		s1 :	in 	std_logic;
		s2 : 	in 	std_logic;
		s3 :	in		std_logic;
		o	:	out	std_logic
	);
end entity;

-- Architecture (Implementation)
architecture arch of mux8way is
signal x1, x2, x3, x4, x5, x6, x7, x8 : std_logic;

begin
	x1 <= (not s1) and (not s2) and (not s3) and a;
	x2 <= (not s1) and (not s2) and s3 and b;
	x3 <= (not s1) and s2 and (not s3) and c;
	x4 <= (not s1) and s2 and s3 and d;
	x5 <= s1 and (not s2) and (not s3) and e;
	x6 <= s1 and (not s2) and s3 and f;
	x7 <= s1 and s2 and (not s3) and g;
	x8 <= s1 and s2 and s3 and h;
	o <= x1 or x2 or x3 or x4 or x5 or x6 or x6 or x7 or x8;
end architecture;	