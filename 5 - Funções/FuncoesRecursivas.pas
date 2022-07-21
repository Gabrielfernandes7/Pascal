program FuncoesRecursivas;

uses crt;

var 
  num, f: integer;
  i: integer; {fibonacci}

function fatorial(x: integer): integer;
begin
  if(x = 0) then
    fatorial := 1
  else
    fatorial := x * fatorial(x-1);
end;

function fibonacci(n: integer): integer;
begin
  if(n = 1) then
    fibonacci := 0
  else if(n = 2) then
    fibonacci := 1
  else
    fibonacci := fibonacci(n - 1) + fibonacci(n - 2);
end;

begin
  { Fatorial }
  writeln('Fatorial');
  writeln('Entre com um numero');
  readln(num);
  f := fatorial(num);
  writeln('Fatorial de ', num, ' e ', f);
  
  { Fibonacci }
  writeln('Sequencia de fibonacci');
  for i:=1 to 10 do
    write(fibonacci(i), ' ');
  
  readkey();
end.
