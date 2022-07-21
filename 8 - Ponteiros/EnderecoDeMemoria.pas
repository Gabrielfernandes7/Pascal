program PonteirosEnderecoMemoria;

{ Printar na tela o endereço de memória}

var
	number: integer;
	iptr: ^integer;
	y: ^word;

begin
	number := 100;
	writeln('Numero é: ', number);
	iptr := @number;
	writeln('iptr aponta para o valor: ', iptr^);
	
	iptr^ := 200;
	
	writeln('Número é: ', number);
	writeln('iptr aponta para o valor: ', iptr^);
	y := addr(iptr);
	writeln(y^);
end.
