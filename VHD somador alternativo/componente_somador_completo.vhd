Library ieee; 
use ieee.std_logic_1164.all;

entity componente_somador_completo is
  port(x, y: in bit;
       z: in bit;
       soma: out bit;
       carry: out  bit);
end componente_somador_completo;

architecture operacao of 
componente_somador_completo is
begin
  soma <= x xor y xor z;
  carry <= ((x and y) or (x and z) or (y and z));
end operacao;