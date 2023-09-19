library	IEEE;
use IEEE.std_logic_1164.all;

-- Entity (Interface)
entity dmux_gate is
	port(
		x	:	in 	std_logic;
		s1	:	in		std_logic;
		a	:	out 	std_logic;
		b	:	out	std_logic
	);
end entity;

-- Architecture (Implementation)
architecture arch of dmux_gate is
begin
	a <= (not s1) and x;
	b <= s1 and x;
end architecture;	