-- Library and packages 
library	IEEE;
use IEEE.std_logic_1164.all;

-- Entity (empty)
entity dmux4way_test is	
end entity;

-- Architecture (test process)
architecture arch_test of dmux4way_test is

	-- Component declaration
	component dmux4way
		port(
		x	:	in 	std_logic;
		s1	:	in		std_logic;
		s2 :	in		std_logic;
		a	:	out 	std_logic;
		b	:	out	std_logic;
		c	: 	out	std_logic;
		d  : 	out 	std_logic
		);
	end component;
	
	-- Signal declaration
	signal x_test		: std_logic := '0';
	signal s1_test		: std_logic := '0';
	signal s2_test		: std_logic := '0';
	signal a_test  	: std_logic;
	signal b_test		: std_logic;
	signal c_test		: std_logic;
	signal d_test		: std_logic;
	
	begin
	
	-- DUT instantiation
	dut1	: dmux4way
		port map (
			x 		=> x_test,
			s1 	=> s1_test,
			s2		=> s2_test,
			a 	   => a_test,
			b 		=> b_test,
			c 		=> c_test,
			d		=> d_test
		);
	-- Stimulus generation
	Stimulus	: process
	begin
	  
	   report "Start of the test of Dmux4way"	  
		severity note;
		
		x_test 	<= '0';
		s1_test  <= '0';
		s2_test  <= '0';
		wait for 1 ns;
		assert a_test = '0';
		assert b_test = '0';
		assert c_test = '0';
		assert d_test = '0';
		  report "Failure for {x,s1,s2} = {0,0,0,0}"
		  severity failure;
		  
		x_test 	<= '1';
		s1_test  <= '0';
		s2_test  <= '0';
		wait for 1 ns;
		assert a_test = '1';
		assert b_test = '0';
		assert c_test = '0';
		assert d_test = '0';
		  report "Failure for {x,s1,s2} = {1,0,0,0}"
		  severity failure;
		
		x_test 	<= '1';
		s1_test  <= '0';
		s2_test  <= '1';
		wait for 1 ns;
		assert a_test = '0';
		assert b_test = '1';
		assert c_test = '0';
		assert d_test = '0';
		  report "Failure for {x,s1,s2} = {0,1,0,0}"
		  severity failure;
		
		x_test 	<= '1';
		s1_test  <= '1';
		s2_test  <= '0';
		wait for 1 ns;
		assert a_test = '0';
		assert b_test = '0';
		assert c_test = '1';
		assert d_test = '0';
		  report "Failure for {x,s1,s2} = {0,0,1,0}"
		  severity failure;
		  
		x_test 	<= '1';
		s1_test  <= '1';
		s2_test  <= '1';
		wait for 1 ns;
		assert a_test = '0';
		assert b_test = '0';
		assert c_test = '0';
		assert d_test = '1';
		  report "Failure for {x,s1,s2} = {0,0,0,1}"
		  severity failure;
		  
		report "Test successful"
		severity note;
		wait;
		
	end process;

end architecture;