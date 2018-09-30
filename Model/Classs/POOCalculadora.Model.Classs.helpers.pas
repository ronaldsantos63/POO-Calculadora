unit POOCalculadora.Model.Classs.helpers;

interface

uses
  Vcl.Controls, System.SysUtils;

type
  TCaptionHelper = record helper for TCaption
    function ToCurrency : Currency;
  end;

  TStringHelper = record helper for String
    function ToCurrency : Currency;
  end;

implementation

{ TCaptionHelper }

function TCaptionHelper.ToCurrency: Currency;
begin
  Result := StrToCurr(Self);
end;

{ TStringHelper }

function TStringHelper.ToCurrency: Currency;
begin
  Result := StrToCurr(Self);
end;

end.
