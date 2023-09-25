library	IEEE;
use IEEE.std_logic_1164.all;

-- Entity (empty)
entity compuerta_xor_test is	
end entity;

-- Architecture (test process)
architecture arch_test of compuerta_xor_test is

-- Component declaration
	component compuerta_xor
		port(
			a	:	in 	std_logic;
			b	:	in 	std_logic;
			c	:	out	std_logic
		);
	end component;
	
-- Signal declaration
	signal a_test	: std_logic := '0';
	signal b_test	: std_logic := '0';
	signal c_test  : std_logic := '0';
	signal w_test  : std_logic := '0';
	signal x_test  : std_logic;
	signal y_test	: std_logic;
	signal z_test  : std_logic;
	
	begin
	
-- DUT instantiation
	dut1	: compuerta_xor
		port map (
			a => a_test,
			b => b_test,
			c => c_test
		);

	-- Stimulus generation
	Stimulus	: process
	begin
	  
	  report "Inicio de la prueba de la compuerta xor"	  
		severity note;
		
		a_test <= '0'; 
		b_test <= '0'; 
		wait for 1 ns;
		assert c_test = '0'
		  report "Falla para x = 0"
		  severity failure;
		  
		a_test <= '0'; 
		b_test <= '1'; 
		wait for 1 ns;
		assert c_test = '1'
		  report "Falla para x = 0"
		  severity failure;
		  
		a_test <= '1'; 
		b_test <= '0'; 
		wait for 1 ns;
		assert c_test = '1'
		  report "Falla para x = 0"
		  severity failure;
		  
		a_test <= '1'; 
		b_test <= '1'; 
		wait for 10 ns;
		assert c_test = '0'
		  report "Falla para x = 0"
		  severity failure;
		 
		report "Test successful"
		severity note;
		wait;
		
	end process;

end architecture;