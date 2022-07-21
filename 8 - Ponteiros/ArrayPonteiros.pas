program ArrayDePonteiros;

const MAX = 3;

type
  iptr = ^integer;
  
var
	arr: array[1..MAX] of integer = (10, 100, 200);
	i: integer;
	parray: array[1..MAX] of iptr;

begin
	for i:=1 to MAX do
		parray[i] := @arr[i];
	
	for i:=1 to MAX do
		writeln('Valor do arr[',i,'] = ', parray[i]^); 
end.
