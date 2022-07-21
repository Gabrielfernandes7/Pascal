program Variantes;

uses variants, crt;
(*
	É um tipo de dado que permite uma variável
	armazenar valores de vários tipos
	
	Isso dar ao Pascal alguma felxibilidade
	na tipagem de suas variáveis
*)

type
	color = (red, yellow, blue, green);


var
	v: variant;
	i: integer;
	r: real;
	c: color;
	
begin
	i := 100;
	v := i;
	writeln('Variante como inteiro: ', v);
	
	r := 230.40;
	v := r;
	writeln('Variante como real: ', v);
	
	c := red;
	v := c;
	writeln('Variante como cor: ', v);
end.
