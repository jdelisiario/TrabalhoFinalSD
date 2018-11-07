Library ieee; 
use ieee.std_logic_1164.all;

entity componente_meio_somador is
  port( x,y:in bit;
        soma:out bit;
        carry:out bit);
end componente_meio_somador;

architecture operacao of
 componente_meio_somador is
begin
    soma <= x xor y;
    carry <= x and y;
end operacao;