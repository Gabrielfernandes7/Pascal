program MultidimensionArray;

uses crt;

var
  a: array[0..3, 0..3] of integer;
  i, j: integer;

begin
  { Ciclo for para percorrer toda matriz}
  for i:=0 to 3 do
    for j:=0 to 3 do
      a[i,j] := i*j;
  
  for i:=0 to 3 do
    begin
      for j:=0 to 3 do
        write(a[i,j]:2,'');
      writeln;
    end;
end.