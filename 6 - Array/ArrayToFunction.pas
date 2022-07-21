program ArrayParaFuncao;
const size = 5;
type
	a = array[1..size] of integer;
var
	balance: a = (500, 2, 3, 17, 50);
	avarage: real;

function avg(var arr: a): real;
var
	i: 1..size;
	sum: integer;
begin
	sum := 0;
	for i:=1 to size do
		sum := sum + arr[i];
	avg := sum / size;
end;

begin
 avarage := avg(balance);
 writeln('Avarage value is: ', avarage:7:2);
end.
