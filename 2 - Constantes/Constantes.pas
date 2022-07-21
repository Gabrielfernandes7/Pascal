program Constantes;

uses Crt, Math;

const
  PI = 3.141592;

var
  raio, perimetro, volume: real;

begin

  writeln('Entre com o raio para calcular o perimetro do circulo e o volume da esfera');
  readln(raio);
  
  perimetro := 2*PI*raio;
  
  {Está dando erro de compilação na função exp()}
  volume := (4/3)*PI*(exp(raio, 3));
  
  writeln('O perimetro da circulo e ', perimetro:7:2);
	writeln('O volume da esfera e ', volume:7:2);
  
end.
