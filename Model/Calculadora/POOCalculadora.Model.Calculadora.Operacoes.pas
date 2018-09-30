unit POOCalculadora.Model.Calculadora.Operacoes;

interface

uses
  POOCalculadora.Model.Calculadora.Interfaces, System.Generics.Collections,
  POOCalculadora.Model.Classs.Eventos;

type
  TOperacoes = class(TInterfacedObject, iOperacoes, iOperacoesDisplay)
  private
  public
    constructor Create(var Value: TList<Double>); // adicionando var antes no nome da variável estamos informando o compilador para passar a referência da lista e não criar uma cópia da mesma
    destructor Destroy; override;
    class function New(var Value: TList<Double>) : iOperacoes;

    function Executar: String; virtual;
    function Display  : iOperacoesDisplay;
    function Resultado(Value : TEvDisplayTotal) : iOperacoesDisplay;
    function EndDisplay : iOperacoes;
  protected
    FLista : TList<Double>;
    FEvDisplayTotal : TEvDisplayTotal;
    procedure DisplayTotal(Value : String);
  end;

implementation

{ TOperacoes }

constructor TOperacoes.Create(var Value: TList<Double>);
begin
  FLista := Value;
end;

destructor TOperacoes.Destroy;
begin

  inherited;
end;

function TOperacoes.Display: iOperacoesDisplay;
begin
  Result := Self;
end;

procedure TOperacoes.DisplayTotal(Value: String);
begin
  if Assigned(FEvDisplayTotal) then
    FEvDisplayTotal(Value);
end;

function TOperacoes.EndDisplay: iOperacoes;
begin
  Result := Self;
end;

function TOperacoes.Executar: String;
begin
  FLista.Clear;
end;

class function TOperacoes.New(var Value: TList<Double>) : iOperacoes;
begin
  Result := Self.Create(Value);
end;

function TOperacoes.Resultado(Value: TEvDisplayTotal): iOperacoesDisplay;
begin
  Result := Self;
  FEvDisplayTotal := Value;
end;

end.
