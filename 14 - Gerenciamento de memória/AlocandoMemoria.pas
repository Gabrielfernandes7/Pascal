program AlocandoMemoriaDinamica;

{ Gerenciamento de memória }

var
	nome: array[1..100] of char;
	descricao: ^string;

begin

	nome := 'Algum nome';
	//new(descricao);
	
	(*
		getmem reserva memória size bytes no heap (pilhas)
		e retorna um ponteiro para essa memória em p
	*)
	
	descricao := getmem(200);
	
	if not assigned(descricao) then
		writeln('Erro - Incapaz de alocar memória necessária')
	else
		descricao^ := 'Algum nome é estudante';
	
	writeln('Nome = ', nome);
	writeln('Descrição: ', descricao^);
	
	freemem(descricao); { Libera a memória alocada }
end.
