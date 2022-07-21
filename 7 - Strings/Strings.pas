program Strings;

uses
  crt, sysutils;

var
  name: packed array[1..10] of char;
  organization: string[10];
  
begin
  { Strings }
  writeln('Por favor, entre com o seu nome');
  readln(name);
  writeln('Por favor, entre com o nome da organizacao que voce trabalha');
  readln(organization);
  writeln('Ola, meu nome e ', name, ' da ', organization);
end.
