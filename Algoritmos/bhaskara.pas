program Bhaskara;

uses crt, Math;

var
	a, b, c: integer;
	delta: real;
	x1, x2: real;

begin

	{ Fórmula de Bháskara }
	
	writeln('Entre com o valor de a: ');
	readln(a);
	
	writeln('Entre com o valor de b: ');
	readln(b);
	
	writeln('Entre com o valor de c: ');
	readln(c);
	
	writeln('A equação configura dessa forma');
	writeln(a, '.x² + ', b, '.x + ', c, ' = 0');
	
	if(a = 0) then
		writeln('Não existe função do segundo grau')
	else if(a > 0) then
		begin
			delta := b*b - 4*a*c;
			writeln('O delta é: ', delta:5:2);
			
			x1 := (-b + sqrt(delta)) / 2;
			x2 := (-b - sqrt(delta)) / 2;
			
			writeln('As raízes da equação são: ', x1:5:2, ' e ', x2:5:2);
		end
	else
		writeln('Não existe raízes no campo dos reais');

end.
