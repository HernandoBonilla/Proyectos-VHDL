-- Library and packages 
library	IEEE;
use IEEE.std_logic_1164.all;

-- Entity (empty)
entity dmux_gate_test is	
end entity;

-- Architecture (test process)
architecture arch_test of dmux_gate_test is

	-- Component declaration
	component dmux_gate
		port(
		x	:	in 	std_logic;
		s1	:	in		std_logic;
		a	:	out 	std_logic;
		b	:	out	std_logic
		);
	end component;
	
	-- Signal declaration
	signal x_test		: std_logic := '0';
	signal s1_test		: std_logic := '0';
	signal a_test  	: std_logic;
	signal b_test		: std_logic;
	
	begin
	
	-- DUT instantiation
	dut1	: dmux_gate
		port map (
			x 		=> x_test,
			s1 	=> s1_test,
			a 	   => a_test,
			b 		=> b_test
		);

	-- Stimulus generation
	Stimulus	: process
	begin
	  
	   report "Start of the test of Dmux"	  
		severity note;
		
		x_test 	<= '0';
		s1_test  <= '0';
		wait for 1 ns;
		assert a_test = '0';
		assert b_test = '0';
		  report "Failure for {x,s1} = {0,0}"
		  severity failure;
		  
		x_test 	<= '0';
		s1_test  <= '1';
		wait for 1 ns;
		assert a_test = '0';
		assert b_test = '0';
		  report "Failure for {x,s1} = {0,0}"
		  severity failure;
		
		x_test 	<= '1';
		s1_test  <= '0';
		wait for 1 ns;
		assert a_test = '0';
		assert b_test = '1';
		  report "Failure for {x,s1} = {0,1}"
		  severity failure;
		
		x_test 	<= '1';
		s1_test  <= '1';
		wait for 1 ns;
		assert a_test = '1';
		assert b_test = '0';
		  report "Failure for {x,s1} = {1,0}"
		  severity failure;
		 
		report "Test successful"
		severity note;
		wait;
		
	end process;

end architecture;