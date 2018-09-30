object FrmPrincipal: TFrmPrincipal
  Left = 0
  Top = 0
  Caption = 'Calculadora'
  ClientHeight = 83
  ClientWidth = 635
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object lblIgual: TLabel
    Left = 382
    Top = 12
    Width = 14
    Height = 13
    Caption = ' = '
  end
  object edtNum1: TEdit
    Left = 128
    Top = 8
    Width = 121
    Height = 21
    TabOrder = 0
    Text = 'edtNum1'
  end
  object edtNum2: TEdit
    Left = 255
    Top = 8
    Width = 121
    Height = 21
    TabOrder = 1
    Text = 'edtNum2'
  end
  object btnSomar: TButton
    Left = 161
    Top = 44
    Width = 75
    Height = 25
    Caption = 'Somar'
    TabOrder = 2
    OnClick = btnSomarClick
  end
  object btnSubtrair: TButton
    Left = 242
    Top = 44
    Width = 75
    Height = 25
    Caption = 'Subtrair'
    TabOrder = 3
    OnClick = btnSubtrairClick
  end
  object btnMultiplicar: TButton
    Left = 323
    Top = 44
    Width = 75
    Height = 25
    Caption = 'Multiplicar'
    TabOrder = 4
    OnClick = btnMultiplicarClick
  end
  object btnDividir: TButton
    Left = 404
    Top = 44
    Width = 75
    Height = 25
    Caption = 'Dividir'
    TabOrder = 5
    OnClick = btnDividirClick
  end
  object edtResultado: TEdit
    Left = 402
    Top = 8
    Width = 121
    Height = 21
    TabOrder = 6
    Text = 'edtResultado'
  end
end
