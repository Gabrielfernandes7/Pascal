program FuncoesStrings;

uses crt, sysutils;

var
  str1, str2, str3: ansistring;
  str4: string;
  len: integer;
  
begin
  str1 := 'Ola ';
  str2 := 'Mundo';
  
  (* Copiar str1 na str3 *)
  str3 := str1;
  
  writeln('appendstr(str1, str3): ', str3);
  
  (* Concatenar str1 e str2 *)
  appendstr(str1, str2);
  writeln('appendstr(str1, str2): ', str1);
  str4 := str1 + str2;
  writeln('Agora str4 e: ', str4);
  
  (* Número total de letras de str4 depois da concatenação *)
  len := byte(str4[0]);
  writeln('str4 possui ', len, ' caracteres');
  
  (* Compara 2 strings *)
  writeln(AnsiCompareStr(str1, str2));
  
  (* Último caractere da string *)
  writeln('O ultimo caractere da str1 e : ', AnsiLastChar(str1));
  
  (* 
    Portanto, é possível observar que a linguagem
    Pascal possui várias funções para manipular strings 
  *)
  readkey();
end.
