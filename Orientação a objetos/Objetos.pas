{ Definindo objetos em Pascal }
type 
	Retangulo = object
	private
		comprimento, largura: integer;
	public
		procedure setcomprimento(c: integer);
		function getcomprimento(): integer;
		procedure setlargura(l: integer);
		function getlargura(): integer;
		procedure draw;
end;
var
	r1: Retangulo;
	pr1: ^Retangulo;
	
procedure Retangulo.setcomprimento(c: integer);
begin
	comprimento := c;
end;

procedure Retangulo.setlargura(l: integer);
begin
	largura := l;
end;

function Retangulo.getcomprimento(): integer;
begin
	getcomprimento := comprimento;
end;

function Retangulo.getlargura(): integer;
begin
	getlargura := largura;
end;

procedure Retangulo.draw;
var i, j: integer;
begin
	for i:=1 to comprimento do
		begin
			for j:=1 to largura do
				write('*');
			writeln;
		end; 
end;
	
begin
	r1.setcomprimento(4);
	r1.setlargura(6);
	
	writeln('Desenhe um retângulo: ', r1.getcomprimento(), ' por ', r1.getlargura());
	r1.draw;
	new(pr1);
	
	pr1^.setcomprimento(5);
	pr1^.setlargura(10);
	writeln('Desenhe um retângulo: ', pr1^.getcomprimento(), ' por ', pr1^.getlargura());
	pr1^.draw;
	dispose(pr1);
	
end.
