-- This file is part of the Circuitos Digitales II
-- by Carlos Hernan Tobar Arteaga
-- File name: project_01/Mux_test.vhdl

-- Mux gate:
-- o = a, if sel = 0
--     b, in other case


-- Library and packages 
library	IEEE;
use IEEE.std_logic_1164.all;

-- Entity (empty)
entity mux4way_test is	
end entity;

-- Architecture (test process)
architecture arch_test of mux4way_test is

	-- Component declaration
	component mux4way
		port(
			a	:	in 	std_logic;
			b	:	in		std_logic;
			c 	: 	in 	std_logic;
			d	: 	in 	std_logic;
			s1 :	in 	std_logic;
			s2 : 	in 	std_logic;
			o	:	out	std_logic
		);
	end component;
	
	-- Signal declaration
	signal a_test		: std_logic := '0';
	signal b_test		: std_logic := '0';
	signal c_test		: std_logic := '0';
	signal d_test		: std_logic := '0';
	signal s1_test	   : std_logic := '0';
	signal s2_test		: std_logic := '0';
	signal o_test		: std_logic;
	
	begin
	
	-- DUT instantiation
	dut1	: mux4way 
		port map (
			a 		=> a_test,
			b 		=> b_test,
			c		=> c_test,
			d 		=> d_test,
			s1		=> s1_test,
			s2 	=> s2_test,
			o 		=> o_test
		);

	-- Stimulus generation
	Stimulus	: process
	begin
	  
	   report "Start of the test of mux4way"	  
		severity note;
		
		a_test 	<= '0';
		b_test 	<= '0';
		c_test 	<= '0';
		d_test   <= '0';
		s1_test  <= '0';
		s2_test	<= '0';
		wait for 1 ns;
		assert o_test = '0'
		  report "Failure for {a,b,c,d,s1,s2} = {0,0,0,0,0,0}"
		  severity failure;
		  
		a_test 	<= '0';
		b_test 	<= '0';
		c_test 	<= '0';
		d_test   <= '1';
		s1_test  <= '0';
		s2_test	<= '0';
		wait for 1 ns;
		assert o_test = '0'
		  report "Failure for {a,b,c,d,s1,s2} = {0,0,0,1,0,0}"
		  severity failure;
		
		a_test 	<= '0';
		b_test 	<= '0';
		c_test 	<= '1';
		d_test   <= '0';
		s1_test  <= '0';
		s2_test	<= '0';
		wait for 1 ns;
		assert o_test = '0'
		  report "Failure for {a,b,c,d,s1,s2} = {0,0,1,0,0,0}"
		  severity failure;
		  
		a_test 	<= '1';
		b_test 	<= '0';
		c_test 	<= '0';
		d_test   <= '0';
		s1_test  <= '0';
		s2_test	<= '0';
		wait for 1 ns;
		assert o_test = '1'
		  report "Failure for {a,b,c,d,s1,s2} = {1,0,0,0,0,0}"
		  severity failure;
		 
		a_test 	<= '0';
		b_test 	<= '0';
		c_test 	<= '0';
		d_test   <= '0';
		s1_test  <= '0';
		s2_test	<= '1';
		wait for 1 ns;
		assert o_test = '0'
		  report "Failure for {a,b,c,d,s1,s2} = {0,0,0,0,0,1}"
		  severity failure;
		  
		a_test 	<= '0';
		b_test 	<= '0';
		c_test 	<= '0';
		d_test   <= '1';
		s1_test  <= '0';
		s2_test	<= '1';
		wait for 1 ns;
		assert o_test = '0'
		  report "Failure for {a,b,c,d,s1,s2} = {0,0,0,1,0,1}"
		  severity failure;
		
		a_test 	<= '0';
		b_test 	<= '0';
		c_test 	<= '1';
		d_test   <= '0';
		s1_test  <= '0';
		s2_test	<= '1';
		wait for 1 ns;
		assert o_test = '0'
		  report "Failure for {a,b,c,d,s1,s2} = {0,0,1,0,0,1}"
		  severity failure;
		  
		a_test 	<= '0';
		b_test 	<= '1';
		c_test 	<= '0';
		d_test   <= '0';
		s1_test  <= '0';
		s2_test	<= '1';
		wait for 1 ns;
		assert o_test = '1'
		  report "Failure for {a,b,c,d,s1,s2} = {0,1,0,0,0,1}"
		  severity failure;

		a_test 	<= '0';
		b_test 	<= '0';
		c_test 	<= '0';
		d_test   <= '0';
		s1_test  <= '1';
		s2_test	<= '0';
		wait for 1 ns;
		assert o_test = '0'
		  report "Failure for {a,b,c,d,s1,s2} = {0,0,0,0,1,0}"
		  severity failure;

		a_test 	<= '0';
		b_test 	<= '0';
		c_test 	<= '0';
		d_test   <= '1';
		s1_test  <= '0';
		s2_test	<= '0';
		wait for 1 ns;
		assert o_test = '0'
		  report "Failure for {a,b,c,d,s1,s2} = {0,0,0,1,1,0}"
		  severity failure;
	
		a_test 	<= '0';
		b_test 	<= '0';
		c_test 	<= '1';
		d_test   <= '0';
		s1_test  <= '1';
		s2_test	<= '0';
		wait for 1 ns;
		assert o_test = '1'
		  report "Failure for {a,b,c,d,s1,s2} = {0,0,1,0,1,0}"
		  severity failure;
		
		a_test 	<= '0';
		b_test 	<= '1';
		c_test 	<= '0';
		d_test   <= '0';
		s1_test  <= '0';
		s2_test	<= '1';
		wait for 1 ns;
		assert o_test = '1'
		  report "Failure for {a,b,c,d,s1,s2} = {0,1,0,0,0,1}"
		  severity failure;
		  
		a_test 	<= '0';
		b_test 	<= '0';
		c_test 	<= '0';
		d_test   <= '0';
		s1_test  <= '1';
		s2_test	<= '1';
		wait for 1 ns;
		assert o_test = '0'
		  report "Failure for {a,b,c,d,s1,s2} = {0,0,0,0,1,1}"
		  severity failure;		  
		  
		a_test 	<= '0';
		b_test 	<= '0';
		c_test 	<= '0';
		d_test   <= '1';
		s1_test  <= '1';
		s2_test	<= '1';
		wait for 1 ns;
		assert o_test = '1'
		  report "Failure for {a,b,c,d,s1,s2} = {0,0,0,1,1,1}"
		  severity failure;		  
		  
		a_test 	<= '0';
		b_test 	<= '0';
		c_test 	<= '1';
		d_test   <= '0';
		s1_test  <= '1';
		s2_test	<= '1';
		wait for 1 ns;
		assert o_test = '0'
		  report "Failure for {a,b,c,d,s1,s2} = {0,0,1,0,1,1}"
		  severity failure;		  
		  
		report "Test successful"
		severity note;
		wait;
		
	end process;

end architecture;