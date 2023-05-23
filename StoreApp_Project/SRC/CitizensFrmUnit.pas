{ Aouthor Iliya Popov 21.05.2023 }
unit CitizensFrmUnit;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.DBCtrls, Vcl.ExtCtrls, Data.DB,
  Vcl.Grids, Vcl.DBGrids, Vcl.StdCtrls;

type
  TCitizensFrm = class(TForm)
    NavContentPnl: TPanel;
    DBNavigator: TDBNavigator;
    ContentPnl: TPanel;
    ContentGrbx: TGroupBox;
    DataDbGrd: TDBGrid;
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  CitizensFrm: TCitizensFrm;

implementation

uses DMStoreUnt;
{$R *.dfm}

procedure TCitizensFrm.FormShow(Sender: TObject);
begin
  DMStore.CitizensTbl.Active := True;
end;

end.
