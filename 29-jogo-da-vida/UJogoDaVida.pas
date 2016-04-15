unit UJogoDaVida;

interface

type Tarr = array of char;
type TJogoDaVida = class
  private
    estadoatual : Tarr;
  public
    constructor Create(estadoinicial : Tarr);
    procedure Ciclo;
    function estado : Tarr;

end;

implementation

{ TJogoDaVida }

procedure TJogoDaVida.Ciclo;
var
  novoestado: Tarr;
  I : integer;
begin
    setlength(novoestado, length(self.estadoatual));

    if length(self.estadoatual) > 0 then
    begin
      novoestado[0] := 'M';
      novoestado[length(self.estadoatual) - 1] := 'M';
    end;
    for I := 1 to length(self.estadoatual) - 2 do
    begin
      if (self.estadoatual[I-1] <> 'V') or (self.estadoatual[I+1] <> 'V') then
        novoestado[I] := 'M'
      else
        novoestado[I] := self.estadoatual[I];
    end;

    self.estadoatual := novoestado;
end;

constructor TJogoDaVida.Create(estadoinicial : Tarr);
begin
    self.estadoatual := estadoinicial;
end;

function TJogoDaVida.estado: Tarr;
begin
    Result := self.estadoatual;
end;

end.
