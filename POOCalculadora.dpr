program POOCalculadora;

uses
  Vcl.Forms,
  POOCalculadora.View.Principal in 'View\POOCalculadora.View.Principal.pas' {FrmPrincipal},
  POOCalculadora.Model.Calculadora.Calculadora in 'Model\Calculadora\POOCalculadora.Model.Calculadora.Calculadora.pas',
  POOCalculadora.Model.Classs.helpers in 'Model\Classs\POOCalculadora.Model.Classs.helpers.pas',
  POOCalculadora.Model.Classs.Eventos in 'Model\Classs\POOCalculadora.Model.Classs.Eventos.pas',
  POOCalculadora.Model.Calculadora.Dividir in 'Model\Calculadora\POOCalculadora.Model.Calculadora.Dividir.pas',
  POOCalculadora.Model.Calculadora.Interfaces in 'Model\Calculadora\POOCalculadora.Model.Calculadora.Interfaces.pas',
  POOCalculadora.Model.Calculadora.Multiplicar in 'Model\Calculadora\POOCalculadora.Model.Calculadora.Multiplicar.pas',
  POOCalculadora.Model.Calculadora.Operacoes in 'Model\Calculadora\POOCalculadora.Model.Calculadora.Operacoes.pas',
  POOCalculadora.Model.Calculadora.Somar in 'Model\Calculadora\POOCalculadora.Model.Calculadora.Somar.pas',
  POOCalculadora.Model.Calculadora.Subtrair in 'Model\Calculadora\POOCalculadora.Model.Calculadora.Subtrair.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TFrmPrincipal, FrmPrincipal);
  Application.Run;
end.
