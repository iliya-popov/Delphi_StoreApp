unit ProfessionUnt;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.DBCtrls, Vcl.ExtCtrls, Vcl.StdCtrls,
  Data.DB, Vcl.Grids, Vcl.DBGrids;

type
  TProfessionFrm = class(TForm)
    NavContentPnl: TPanel;
    DBNavigator: TDBNavigator;
    ContentPnl: TPanel;
    ContentGrbx: TGroupBox;
    DataDbGrd: TDBGrid;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  ProfessionFrm: TProfessionFrm;

implementation
 uses DMStoreUnt;
{$R *.dfm}

end.
