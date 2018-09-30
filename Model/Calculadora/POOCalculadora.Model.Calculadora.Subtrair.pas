unit POOCalculadora.Model.Calculadora.Subtrair;

interface

uses
  System.SysUtils,
  POOCalculadora.Model.Calculadora.Interfaces,
  POOCalculadora.Model.Calculadora.Operacoes, System.Generics.Collections;

type
  TSubtrair = class sealed(TOperacoes)
  private
  public
    constructor Create(var Value: TList<Double>); // adicionando var antes no nome da vari�vel estamos informando o compilador para passar a refer�ncia da lista e n�o criar uma c�pia da mesma
    destructor Destroy; override;
    class function New(var Value: TList<Double>) : iOperacoes;

    function Executar : String; override;
  end;

implementation

{ TSubtrair }

constructor TSubtrair.Create(var Value: TList<Double>);
begin
  FLista := Value;
end;

destructor TSubtrair.Destroy;
begin

  inherited;
end;

function TSubtrair.Executar: String;
var
  I: Integer;
begin
  Result := FLista[0].ToString;
  for I := 1 to Pred(FLista.Count) do
    Result := (Result.ToDouble - FLista[I]).ToString;
  DisplayTotal(Result);
  inherited;
end;

class function TSubtrair.New(var Value: TList<Double>) : iOperacoes;
begin
  Result := Self.Create(Value);
end;

end.
