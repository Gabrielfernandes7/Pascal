program Arrays;

uses crt;

{declarar array}
var
  n: array[1..10] of integer; {n é um array de 10 inteiros}
  i, j: integer;
begin
  { Inicializa os elementos do array para 0}
  
  for i:=1 to 10 do
  	n[i] := i + 100;
  
  { Output cada valor do array }
  for j:=1 to 10 do
  	writeln('Elemento[',j,'] = ', n[j]);
end.
