Library ieee; 
use ieee.std_logic_1164.all;

entity componente_somador is
  port(x0,x1, x2, x3, y0, y1, y2, y3: in bit;
       s0, s1, s2, s3, c3, c2, c1: out bit;
       carry0, carry1, carry2, carry3: buffer bit);
end componente_somador;


architecture operacao of
 componente_somador is

component componente_meio_somador
  port( x,y:in bit;
        soma:out bit;
        carry:out bit);
end component;
  
component componente_somador_completo
  port(x, y: in bit;
       z: in bit;
       soma: out bit;
       carry: out bit);
end component;



begin
  
   somador0: componente_meio_somador port map(x0, y0, s0, carry0);
   somador1: componente_somador_completo port map(x1, y1, carry0, s1, carry1);
   somador2: componente_somador_completo port map(x2, y2, carry1, s2, carry2);
   somador3: componente_somador_completo port map(x3, y3, carry2, s3, carry3); 
  
end operacao;