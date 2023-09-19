library	IEEE;
use IEEE.std_logic_1164.all;

-- Entity (empty)
entity and16_test is	
end entity;

-- Architecture (test process)
architecture arch_test of and16_test is

	-- Component declaration
	component and16
		port(
			a	:	in 	std_logic_vector(15 downto 0);
			b	:	in 	std_logic_vector(15 downto 0);
			z	:	out	std_logic_vector(15 downto 0)
		);
	end component;
	
	-- Signal declaration
	signal a_test	: std_logic_vector(15 downto 0) := "0000000000000000";
	signal b_test	: std_logic_vector(15 downto 0) := "0000000000000000";
	signal x_test	: std_logic_vector(15 downto 0) := "0000000000000000";
	signal y_test	: std_logic_vector(15 downto 0) := "0000000000000000";
	signal z_test	: std_logic_vector(15 downto 0);
	
	begin
	
	-- DUT instantiation
	dut1	: and16 
		port map (
			a => a_test,
			b => b_test,
			z => z_test
		);

	-- Stimulus generation
	Stimulus	: process
	begin
	  
	  report "Start of the test of and16"	  
		severity note;
		
		a_test <= "0000000000000000"; 
		b_test <= "0000000000000000"; 
		wait for 1 ns;
		assert z_test = "0000000000000000"
		  report "Failure para x = [0000000000000000]"
		  severity failure;
		
		a_test <= "0000000000000000";
		b_test <= "1111111111111111"; 	
		wait for 1 ns;
		assert z_test = "0000000000000000"
		  report "Failure para a = [0000000000000000]"
		  severity failure;
		
		a_test <= "1111111111111111"; 
		b_test <= "0000000000000000";
		wait for 1 ns;
		assert z_test = "0000000000000000"
		  report "Failure para a = [1111111111111111]"
		  severity failure;
		
		a_test <= "1111111111111111";   
		b_test <= "1111111111111111";
		wait for 1 ns;
		assert z_test = "1111111111111111"
		  report "Failure para x = [1111111111111111]"
		  severity failure;
		  
		a_test <= "1011000110001101";   
		b_test <= "0100010110101011";
		wait for 1 ns;
		assert z_test = "0000000110001001"
		  report "Failure para x = [1011000110001101]"
		  severity failure;
		 
		a_test <= "0100010011011000";   
		b_test <= "0010010110101011";
		wait for 1 ns;
		assert z_test = "0000010010001000"
		  report "Failure para x = [0100010011011000]"
		  severity failure;
		report "Test successful"
		severity note;
		wait;
		
	end process;

end architecture;