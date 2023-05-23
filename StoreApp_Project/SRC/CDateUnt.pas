unit CDateUnt;

interface
uses System.SysUtils;

type
  TDate = class
    tde: TDateTime;
  private
    //
  public
    function retCrDt(): String;
  end;

implementation

{ TDate }

function TDate.retCrDt: String;
begin
  tde := now;
  Result := DateTostr(tde);
end;

end.
