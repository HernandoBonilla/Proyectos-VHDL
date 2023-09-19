
-- Library and packages
library ieee;
use ieee.std_logic_1164.all;

-- mux_gate16_gate(a= ,b= ,sel= ,out= ) /* Selects between two 16-bit inputs */

entity mux16_gate is
	Port(
		a 	: in std_logic_vector(15 downto 0);
		b 	: in std_logic_vector(15 downto 0);
		sel: in std_logic;	
		o 	: out std_logic_vector(15 downto 0)
	);
end entity;

architecture arch of mux16_gate is
	component mux_gate is
		Port(
			a	:	in 	std_logic;
			b	:	in		std_logic;
			sel:	in 	std_logic;
			o	:	out	std_logic
		);
	end component;
begin
	mux_gate15: mux_gate
		Port map(
			a => a(15),
			b => b(15),
			sel => sel,
			o => o(15)
		);
	mux_gate14: mux_gate
		Port map(
			a => a(14),
			b => b(14),
			sel => sel,
			o => o(14)
		);
	mux_gate13: mux_gate
		Port map(
			a => a(13),
			b => b(13),
			sel => sel,
			o => o(13)
		);
	mux_gate12: mux_gate
		Port map(
			a => a(12),
			b => b(12),
			sel => sel,
			o => o(12)
		);
	mux_gate11: mux_gate
		Port map(
			a => a(11),
			b => b(11),
			sel => sel,
			o => o(11)
		);
	mux_gate10: mux_gate
		Port map(
			a => a(10),
			b => b(10),
			sel => sel,
			o => o(10)
		);
	mux_gate9: mux_gate
		Port map(
			a => a(9),
			b => b(9),
			sel => sel,
			o => o(9)
		);
	mux_gate8: mux_gate
		Port map(
			a => a(8),
			b => b(8),
			sel => sel,
			o => o(8)
		);
	mux_gate7: mux_gate
		Port map(
			a => a(7),
			b => b(7),
			sel => sel,
			o => o(7)
		);
	mux_gate6: mux_gate
		Port map(
			a => a(6),
			b => b(6),
			sel => sel,
			o => o(6)
		);
	mux_gate5: mux_gate
		Port map(
			a => a(5),
			b => b(5),
			sel => sel,
			o => o(5)
		);
	mux_gate4: mux_gate
		Port map(
			a => a(4),
			b => b(4),
			sel => sel,
			o => o(4)
		);
	mux_gate3: mux_gate
		Port map(
			a => a(3),
			b => b(3),
			sel => sel,
			o => o(3)
		);
	mux_gate2: mux_gate
		Port map(
			a => a(2),
			b => b(2),
			sel => sel,
			o => o(2)
		);
	mux_gate1: mux_gate
		Port map(
			a => a(1),
			b => b(1),
			sel => sel,
			o => o(1)
		);
	mux_gate0: mux_gate
		Port map(
			a => a(0),
			b => b(0),
			sel => sel,
			o => o(0)
		);

end architecture;