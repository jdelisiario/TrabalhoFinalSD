entity soma is port ( 
	a, b, tentrada: in bit;
	saida, tsaida: out bit);
end soma;

architecture somador of soma is
begin
	saida <= a XOR b XOR tentrada;
	tsaida <= (a AND b) OR (a AND tentrada) OR (b AND tentrada);
end somador;
