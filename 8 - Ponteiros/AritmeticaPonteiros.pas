program PonteirosAritmetica;

const
	MAX = 3;
	
{ Aritmética dos ponteiros }

var
	arr: array[1..MAX] of integer = (10, 100, 200);
	i: integer;
	iptr: ^integer;
	y: ^word;

begin
	iptr := @arr[1];
	for i := 1 to MAX do
		begin
			y := addr(iptr);
			writeln('Endereço de arr[',i,'] = ', y^);
			writeln('Valor de arr[',i,'] = ', iptr^);
			
			{incremento}
			inc(iptr);
			
			{decremento}
			dec(iptr);
		end;
end.
