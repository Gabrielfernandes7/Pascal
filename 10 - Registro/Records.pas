program Records;

type
Books = record
		title: packed array[1..50] of char;
		author: packed array[1..50] of char;
		subject: packed array[1..10] of char;
		book_id: longint;
end;

var
	(*Declara Book1, Book2 do tipo Book*)
	Book1, Book2: Books;

begin
	Book1.title := 'Programação';
	Book1.author := 'Desconhecido';
	Book1.subject := 'Linguagem Pacal';
	Book1.book_id := 5674454;
	
	Book2.title := 'Telecom Billing';
	Book2.author := 'Zara Ali';
	Book2.subject := 'Telecom Billing Tutorial';
	Book2.book_id := 6495700;
	
	(* Informações do livro 1 *)
	writeln('Book1 title: ', Book1.title);
	writeln('Book 1 author : ', Book1.author);
	writeln('Book 1 subject : ', Book1.subject);
	writeln('Book 1 book_id : ', Book1.book_id);
	writeln;
	
	(* Informações do livro 2 *)
	writeln ('Book 2 title : ', Book2.title);
	writeln('Book 2 author : ', Book2.author);
	writeln('Book 2 subject : ', Book2.subject);
	writeln('Book 2 book_id : ', Book2.book_id);
	
end.
