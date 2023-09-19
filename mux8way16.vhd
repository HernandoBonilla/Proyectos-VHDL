-- Library and packages
library ieee;
use ieee.std_logic_1164.all;

entity mux8way16 is 
	Port(
		a 	: in std_logic_vector(15 downto 0);
		b 	: in std_logic_vector(15 downto 0);
		c	: in std_logic_vector(15 downto 0);
		d 	: in std_logic_vector(15 downto 0);
		e 	: in std_logic_vector(15 downto 0);
		f 	: in std_logic_vector(15 downto 0);
		g	: in std_logic_vector(15 downto 0);
		h 	: in std_logic_vector(15 downto 0);
		s1 : in std_logic;	
		s2 : in std_logic;
		s3 : in std_logic;
		o 	: out std_logic_vector(15 downto 0)
	);
end entity;

architecture arch of mux8way16 is
	component mux8way is
		Port(
			a	:	in 	std_logic;
			b	:	in		std_logic;
			c	: 	in		std_logic;
			d	: 	in 	std_logic;
			e	:	in 	std_logic;
			f	:	in		std_logic;
			g	: 	in		std_logic;
			h	: 	in 	std_logic;
			s1 : 	in 	std_logic;
			s2	:	in 	std_logic;
			s3 : 	in 	std_logic;
			o	:	out	std_logic
		);
	end component;
begin
	mux15: mux8way
		Port map(
			a  => a(15),
			b  => b(15),
			c  => c(15),
			d  => d(15),
			e  => e(15),
			f  => f(15),
			g  => g(15),
			h  => h(15),
			s1 => s1,
			s2 => s2,
			s3 => s3,
			o  => o(15)
		);
	mux14: mux8way
		Port map(
			a  => a(14),
			b  => b(14),
			c  => c(14),
			d  => d(14),
			e  => e(14),
			f  => f(14),
			g  => g(14),
			h  => h(14),
			s1 => s1,
			s2 => s2,
			s3 => s3,
			o  => o(14)
		);
	mux13: mux8way
		Port map(
			a  => a(13),
			b  => b(13),
			c  => c(13),
			d  => d(13),
			e  => e(13),
			f  => f(13),
			g  => g(13),
			h  => h(13),
			s1 => s1,
			s2 => s2,
			s3 => s3,
			o  => o(13)
		);
	mux12: mux8way
		Port map(
			a  => a(12),
			b  => b(12),
			c  => c(12),
			d  => d(12),
			e  => e(12),
			f  => f(12),
			g  => g(12),
			h  => h(12),
			s1 => s1,
			s2 => s2,
			s3 => s3,
			o  => o(12)
		);
	mux11: mux8way
		Port map(
			a  => a(11),
			b  => b(11),
			c  => c(11),
			d  => d(11),
			e  => e(11),
			f  => f(11),
			g  => g(11),
			h  => h(11),
			s1 => s1,
			s2 => s2,
			s3 => s3,
			o  => o(11)
		);
	mux10: mux8way
		Port map(
			a  => a(10),
			b  => b(10),
			c  => c(10),
			d  => d(10),
			e  => e(10),
			f  => f(10),
			g  => g(10),
			h  => h(10),
			s1 => s1,
			s2 => s2,
			s3 => s3,
			o  => o(10)
		);
	mux9: mux8way
		Port map(
			a  => a(9),
			b  => b(9),
			c  => c(9),
			d  => d(9),
			e  => e(9),
			f  => f(9),
			g  => g(9),
			h  => h(9),
			s1 => s1,
			s2 => s2,
			s3 => s3,
			o  => o(9)
		);
	mux8: mux8way
		Port map(
			a  => a(8),
			b  => b(8),
			c  => c(8),
			d  => d(8),
			e  => e(8),
			f  => f(8),
			g  => g(8),
			h  => h(8),
			s1 => s1,
			s2 => s2,
			s3 => s3,
			o  => o(8)
		);
	mux7: mux8way
		Port map(
			a  => a(7),
			b  => b(7),
			c  => c(7),
			d  => d(7),
			e  => e(7),
			f  => f(7),
			g  => g(7),
			h  => h(7),
			s1 => s1,
			s2 => s2,
			s3 => s3,
			o  => o(7)
		);
	mux6: mux8way
		Port map(
			a  => a(6),
			b  => b(6),
			c  => c(6),
			d  => d(6),
			e  => e(6),
			f  => f(6),
			g  => g(6),
			h  => h(6),
			s1 => s1,
			s2 => s2,
			s3 => s3,
			o  => o(6)
		);
	mux5: mux8way
		Port map(
			a  => a(5),
			b  => b(5),
			c  => c(5),
			d  => d(5),
			e  => e(5),
			f  => f(5),
			g  => g(5),
			h  => h(5),
			s1 => s1,
			s2 => s2,
			s3 => s3,
			o  => o(5)
		);
	mux4: mux8way
		Port map(
			a  => a(4),
			b  => b(4),
			c  => c(4),
			d  => d(4),
			e  => e(4),
			f  => f(4),
			g  => g(4),
			h  => h(4),
			s1 => s1,
			s2 => s2,
			s3 => s3,
			o  => o(4)
		);
	mux3: mux8way
		Port map(
			a  => a(3),
			b  => b(3),
			c  => c(3),
			d  => d(3),
			e  => e(3),
			f  => f(3),
			g  => g(3),
			h  => h(3),
			s1 => s1,
			s2 => s2,
			s3 => s3,
			o  => o(3)
		);
	mux2: mux8way
		Port map(
			a  => a(2),
			b  => b(2),
			c  => c(2),
			d  => d(2),
			e  => e(2),
			f  => f(2),
			g  => g(2),
			h  => h(2),
			s1 => s1,
			s2 => s2,
			s3 => s3,
			o  => o(2)
		);
	mux1: mux8way
		Port map(
			a  => a(1),
			b  => b(1),
			c  => c(1),
			d  => d(1),
			e  => e(1),
			f  => f(1),
			g  => g(1),
			h  => h(1),
			s1 => s1,
			s2 => s2,
			s3 => s3,
			o  => o(1)
		);
	mux0: mux8way
		Port map(
			a  => a(0),
			b  => b(0),
			c  => c(0),
			d  => d(0),
			e  => e(0),
			f  => f(0),
			g  => g(0),
			h  => h(0),
			s1 => s1,
			s2 => s2,
			s3 => s3,
			o  => o(0)
		);

end architecture;