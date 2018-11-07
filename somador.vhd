entity somador is port (
	--Entradas
	x, y: in bit_vector(3 downto 0);
	transportedeentrada: in bit;
	
	--Saidas
	saida: out bit_vector(3 downto 0);
	transportedesaida: out bit);
end somador;

architecture hardware of somador is

	component soma port (
		a, b, tentrada: in bit;
		saida, tsaida: out bit);
	end component;
	
	--Sinal interno para o transporte de entrada ("vai um")
	signal vetor: bit_vector(3 downto 1);
	
	begin
	--Port map da a lista dos componentes
		x0: soma PORT MAP( x(0), y(0), transportedeentrada, saida(0), vetor(1));
		x1: soma PORT MAP( x(1), y(1), vetor(1), 				 saida(1), vetor(2));
		x2: soma PORT MAP( x(2), y(2), vetor(2), 				 saida(2), vetor(3));
		x3: soma PORT MAP( x(3), y(3), vetor(3), 				 saida(3), transportedesaida);
	
	end hardware;