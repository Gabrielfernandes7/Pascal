program Ponteiros;

uses crt;

var
	number: integer;
	iptr: ^integer;

begin
	number := 10;
	writeln('Número é :', number);
	iptr := @number;
	writeln('iptr aponta para o valor: ', iptr^);
	
	iptr^ := 200;
	writeln('Número é: ', number);
	writeln('iptr aponta para o valor: ', iptr^);
end.
