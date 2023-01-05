library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity counter is
GENERIC ( F : integer := 8; -- numero de pulsos do clock 
		  N : integer := 9); -- numero maximo a ser contado
port(
clk : in bit;
rst : in bit;
D : out integer;
U : out integer);
end counter;

architecture hardware of counter is
begin
process (clk, rst)
variable dez,uni,cont_clk : integer :=0;
begin
	if (rst = '1') then	
		uni := 0;
		dez := 0;
		cont_clk := 0;
	elsif(clk'event and clk = '1') then
		if(cont_clk < F) then 
			cont_clk := cont_clk + 1;
		else	
			cont_clk := 0; 
			uni := uni+1;
			if(uni = N+1) then 
				uni :=0;
				dez := dez+1;
				end if;
			if (dez = 6) then
				dez := dez;
				uni := 0;
				end if;
			end if;
		end if;
	U <= uni;
	D <= dez;
end process;
end hardware;