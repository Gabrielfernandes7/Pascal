program Funcoes;

uses crt;

var x, y: Integer;

procedure dizOla();
{procedure retorna void}
begin
  writeln('Ola, seja bem vindo');
end;

function soma(a, b: integer): integer; 
{function a função retorna um tipo}
var sum: integer;
begin
  writeln('Escreva o primeiro numero');
  readln(a);
  writeln('Escreva o segundo numero');
  readln(b);
  sum := a + b;
  writeln(sum);
end;

function subtracao(a, b: integer): integer; 
{function a função retorna um tipo}
var sub: integer;
begin
  writeln('Escreva o primeiro numero');
  readln(a);
  writeln('Escreva o segundo numero');
  readln(b);
  sub := a - b;
  writeln(sub);
end;

begin
  dizOla();
  soma(x, y);
  subtracao(x, y);
end.
