Unit MinMax;
interface
  function Min (A,B:Integer):Integer;
  function Max (A,B:Integer):Integer;
implementation
  function Min (A,B:Integer):Integer;
    begin
      if A < B
        then Min:=A
        else Min:=B;
    end;

  function Max (A,B:Integer):Integer;
    begin
      if A > B
        then Max:=A
        else Max:=B;
    end;
end.

{
  Para a unit funcionar ela deve ser compilada fpc UnitName.pas
  Dessa forma, gerando um arquivo com extensão: .ppu
}