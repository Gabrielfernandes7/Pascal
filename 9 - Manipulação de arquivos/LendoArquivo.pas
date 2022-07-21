program LendoArquivo;

uses crt;

type RegistroEstudante = record
	s_nome: string;
	s_endereco: string;
	s_batchcode: string;
end;

var
	Estudante: RegistroEstudante;
	f: file of RegistroEstudante;

begin
	assign(f, 'estudantes.dat');
	reset(f);
	
	while not eof(f) do
		begin
			read(f, Estudante);
			writeln('Estudante: ', Estudante.s_nome);
			writeln('Endereço: ', Estudante.s_endereco);
			writeln('Curso: ', Estudante.s_batchcode);
		end;
		
	close(f);
end.
