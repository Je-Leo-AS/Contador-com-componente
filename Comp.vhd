library IEEE;
use IEEE.std_logic_1164.all;

entity Comp is 
port(
clk : in bit;
rst : in bit;
P1 : out bit_vector(6 downto 0);
P2 : out bit_vector(6 downto 0));
end Comp;

architecture hardware of Comp is 
signal dez, uni : integer;


component counter is
port(
clk : in bit;
rst : in bit;
D : out integer;
U : out integer);
end component;

component display is
 
port(
Number : in integer;
S : out bit_vector(6 downto 0));
end component;

 
begin 

Contador : counter port map (clk, rst, dez, uni);
D1 : display port map(uni,P1);
D2 : display port map(dez,P2);


end hardware;