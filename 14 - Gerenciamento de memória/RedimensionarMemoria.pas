program RedimensionarMemoria;

(*
	Redimensionamento e liberar memória
*)

var
	nome: array[1..100] of char;
	descricao: ^string;
	desp: string;

begin

	nome := 'Algum nome';
	desp := 'Estudante de Engenharia';
	descricao := getmem(30);
	
	if not assigned(descricao) then
		writeln('Erro - Incapaz de alocar memória necessária')
	else
		descricao^ := desp;
		
	(*
		Suponha que você quer armazenar uma descrição maior
	*)
	
	descricao := reallocmem(descricao, 100);
	desp := desp + ' Qualquer descrição a mais.';
	descricao^ := desp;
	writeln('Nome: ', nome);
	writeln('Descrição: ', descricao^);
	freemem(descricao);

end.
