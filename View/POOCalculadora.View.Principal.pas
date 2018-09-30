unit POOCalculadora.View.Principal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls,
  POOCalculadora.Model.Calculadora.Interfaces,
  POOCalculadora.Model.Classs.Helpers;

type
  TFrmPrincipal = class(TForm)
    edtNum1: TEdit;
    edtNum2: TEdit;
    btnSomar: TButton;
    btnSubtrair: TButton;
    btnMultiplicar: TButton;
    btnDividir: TButton;
    lblIgual: TLabel;
    edtResultado: TEdit;
    procedure btnSomarClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure btnSubtrairClick(Sender: TObject);
    procedure btnMultiplicarClick(Sender: TObject);
    procedure btnDividirClick(Sender: TObject);
  private
    { Private declarations }
    FCalculadora: iCalculadora;
    procedure ExibeResultado(Value : string);
  public
    { Public declarations }
    property Calculadora : iCalculadora read FCalculadora write FCalculadora;
  end;

var
  FrmPrincipal: TFrmPrincipal;

implementation

uses
  POOCalculadora.Model.Calculadora.Calculadora;

{$R *.dfm}

{ TFrmPrincipal }

{ TFrmPrincipal }

procedure TFrmPrincipal.btnDividirClick(Sender: TObject);
begin
  Calculadora     //Calculadora.Dividir.Operacao(edtNum1.Text, edtNum2.Text);
    .Add(edtNum1.Text)
    .Add(edtNum2.Text)
    .Dividir
      .Executar;
end;

procedure TFrmPrincipal.btnMultiplicarClick(Sender: TObject);
begin
  Calculadora    //Calculadora.Multiplicar.Operacao(edtNum1.Text, edtNum2.Text);
    .Add(edtNum1.Text)
    .Add(edtNum2.Text)
    .Multiplicar
      .Executar;
end;

procedure TFrmPrincipal.btnSomarClick(Sender: TObject);
begin
  Calculadora     //Calculadora.Somar.Operacao(edtNum1.Text, edtNum2.Text);
    .Add(edtNum1.Text)
    .Add(edtNum2.Text)
    .Somar
      .Executar;
end;

procedure TFrmPrincipal.btnSubtrairClick(Sender: TObject);
begin
  Calculadora     //Calculadora.Subtrair.Operacao(edtNum1.Text, edtNum2.Text);
    .Add(edtNum1.Text)
    .Add(edtNum2.Text)
    .Subtrair
      .Executar;
end;

procedure TFrmPrincipal.ExibeResultado(Value: string);
begin
  edtResultado.Text := Value;
end;

procedure TFrmPrincipal.FormCreate(Sender: TObject);
begin
  ReportMemoryLeaksOnShutdown := True;
  Calculadora := TCalculadora.New.Display.Resultado(ExibeResultado).EndDisplay;
end;

end.
