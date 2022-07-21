program PonteiroNulo;

var
	number: integer;
	iptr: ^integer;
	y: ^word;
	
begin
	iptr := nil;
	y := addr(iptr);
	writeln('O valor do iptr é: ', y^);
end.
