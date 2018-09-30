unit POOCalculadora.Model.Calculadora.Interfaces;

interface

uses
  POOCalculadora.Model.Classs.Eventos;

type
  iCalculadora = interface;
  iOperacoesDisplay = interface;

  iOperacoes = interface
    ['{88A2272D-6A95-4ABC-8D90-56938EC99A13}']
    function Executar : String;
    function Display  : iOperacoesDisplay;
  end;

  iOperacoesDisplay = interface
    ['{631E54F5-E23E-4733-A86A-F3E527C1914D}']
    function Resultado(Value : TEvDisplayTotal) : iOperacoesDisplay;
    function EndDisplay : iOperacoes;
  end;

  iCalculadoraDisplay = interface
    ['{3DEC7066-968C-447C-B2D2-7A84310CA96E}']
    function Resultado(Value : TEvDisplayTotal) : iCalculadoraDisplay;
    function EndDisplay : iCalculadora;
  end;

  iCalculadora = interface
    ['{4F4847FC-6D24-412C-AE29-E6ECCFE48795}']
    function Add(Value : String)   : iCalculadora; overload;
    function Add(Value : Integer)  : iCalculadora; overload;
    function Add(Value : Currency) : iCalculadora; overload;
    function Somar                 : iOperacoes;
    function Subtrair              : iOperacoes;
    function Multiplicar           : iOperacoes;
    function Dividir               : iOperacoes;
    function Display               : iCalculadoraDisplay;
  end;

implementation

end.
