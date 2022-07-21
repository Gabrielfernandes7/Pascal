program Condicionais;

uses crt;

var
	nota1, nota2: real;
	media: real;

begin
	writeln('Entre com a nota da primeira etapa: ');
	readln(nota1);
	
	writeln('Entre com a segunda nota');
	readln(nota2);
	
	media := (nota1 + nota2) / 2;
	
	if(media >= 7.0) then
		writeln('Você passou ! Com média ', media:5:2)
	else
		writeln('Você reprovou ! Com média ', media:5:2);
end.
