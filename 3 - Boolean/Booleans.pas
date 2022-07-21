program Booleans;

uses crt;

var
  escolha: char;
  gosta: boolean;
  
begin
  writeln('Você gosta de sorvete ? (Y/n)');
  readln(escolha);
  
  if(escolha = 'y') then
    gosta := true
  else if(escolha = 'n') then
    gosta := false
  else
    writeln('A resposta só é y ou n');
    
  if(gosta) then
    writeln('GOSTA')
  else
    writeln('NÃO GOSTA');
end.
