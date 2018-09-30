unit POOCalculadora.Model.Calculadora.Multiplicar;

interface

uses
  System.SysUtils,
  POOCalculadora.Model.Calculadora.Interfaces,
  POOCalculadora.Model.Calculadora.Operacoes, System.Generics.Collections;

type
  TMultiplicar = class sealed(TOperacoes)
  private
  public
    constructor Create(var Value: TList<Double>); // adicionando var antes no nome da variável estamos informando o compilador para passar a referência da lista e não criar uma cópia da mesma
    destructor Destroy; override;
    class function New(var Value: TList<Double>) : iOperacoes;

    function Executar : String; override;
  end;

implementation

{ TMultiplicar }

constructor TMultiplicar.Create(var Value: TList<Double>);
begin
  FLista := Value;
end;

destructor TMultiplicar.Destroy;
begin

  inherited;
end;

function TMultiplicar.Executar: String;
var
  I: Integer;
begin
  Result := FLista[0].ToString;
  for I := 1 to Pred(FLista.Count) do
    Result := (Result.ToDouble * FLista[I]).ToString;
  DisplayTotal(Result);
  inherited;
end;

class function TMultiplicar.New(var Value: TList<Double>) : iOperacoes;
begin
  Result := Self.Create(Value);
end;

end.
