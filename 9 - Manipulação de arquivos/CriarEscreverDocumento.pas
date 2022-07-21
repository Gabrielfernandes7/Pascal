program CriarEscreverArquivo;

{ Criando e escrevendo em arquivos }

uses crt;

type RegistroEstudante = record
	s_nome : string;
	s_endereco: string;
	s_batchcode: string;
end;

var
	Estudante: RegistroEstudante;
	f: file of RegistroEstudante;

begin
	assign(f, 'estudantes.txt');
	rewrite(f);
	
	Estudante.s_nome := 'Fulano';
	Estudante.s_endereco := 'Rua Algum Lugar';
	Estudante.s_batchcode := 'Ciência da Computação';
	
	write(f, Estudante);
	
	close(f);
end.
