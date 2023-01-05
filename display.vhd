entity display is 
port(
Number : in integer;
S : out bit_vector(6 downto 0));
end display;

architecture hardware of display is
begin 
 S <= "1111110" when Number = 0 else
	  "0110000" when Number = 1 else
	  "1101101" when Number = 2 else
	  "1111001" when Number = 3 else
	  "0110011" when Number = 4 else
	  "1011011" when Number = 5 else
	  "1011111" when Number = 6 else
	  "1110000" when Number = 7 else
	  "1111111" when Number = 8 else
	  "1111011" when Number = 9;
 
end hardware;