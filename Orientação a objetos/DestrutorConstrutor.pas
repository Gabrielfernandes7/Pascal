program DestrutorConstrutor;

type
	Retangulo = object
	private
		comprimento, largura: integer;
	public
		constructor init(c, l: integer);
		destructor done;
		procedure setcomprimento(c: integer);
		function getcomprimento(): integer;
		procedure setlargura(l: integer);
		function getlargura(): integer;
		procedure draw;
end;
var
	r1: Retangulo;
	pr1: ^Retangulo;
constructor Retangulo.init(c, l: integer);
begin
	comprimento := c;
	largura := l;
end;

destructor Retangulo.done;
begin
	writeln('Destrutor chamado');
end;

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
	r1.init(3, 7);
	writeln('Desenhe um retângulo:', r1.getcomprimento(), ' por ' , r1.getlargura());
	r1.draw;
	new(pr1, init(5, 4));
	writeln('Desenhe um retângulo:', pr1^.getcomprimento(), ' por ',pr1^.getlargura());
	pr1^.draw;
	pr1^.init(7, 9);
	writeln('Desenhe um retângulo:', pr1^.getcomprimento(), ' por ' ,pr1^.getlargura());
	pr1^.draw;
	dispose(pr1);
	r1.done;
end.
