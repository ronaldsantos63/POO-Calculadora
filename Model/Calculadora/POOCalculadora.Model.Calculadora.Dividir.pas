unit POOCalculadora.Model.Calculadora.Dividir;

interface

uses
  POOCalculadora.Model.Calculadora.Operacoes,
  POOCalculadora.Model.Calculadora.Interfaces, System.Generics.Collections;

type
  TDividir = class sealed(TOperacoes)
  private
  public
    constructor Create(var Value: TList<Double>); // adicionando var antes no nome da variável estamos informando o compilador para passar a referência da lista e não criar uma cópia da mesma
    destructor Destroy; override;
    class function New(var Value: TList<Double>) : iOperacoes;

    function Executar : String; override;
  end;

implementation

uses
  System.SysUtils;

{ TDividir }

constructor TDividir.Create(var Value: TList<Double>);
begin
  FLista := Value;
end;

destructor TDividir.Destroy;
begin

  inherited;
end;

function TDividir.Executar: String;
var
  I: Integer;
begin
  Result := FLista[0].ToString;
  for I := 1 to Pred(FLista.Count) do
    Result := (Result.ToDouble / FLista[I]).ToString;
  DisplayTotal(Result);
  inherited;
end;

class function TDividir.New(var Value: TList<Double>) : iOperacoes;
begin
  Result := self.Create(Value);
end;

end.
