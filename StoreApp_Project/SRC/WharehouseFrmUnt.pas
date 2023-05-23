{ Aouthor Iliya Popov 21.05.2023 }
unit WharehouseFrmUnt;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.DBCtrls, Vcl.ExtCtrls, Data.DB,
  Vcl.Grids, Vcl.DBGrids, Vcl.StdCtrls;

type
  TWharehouseFrm = class(TForm)
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
  WharehouseFrm: TWharehouseFrm;

implementation

uses DMStoreUnt;
{$R *.dfm}

procedure TWharehouseFrm.FormShow(Sender: TObject);
begin
  if DMStore.WharehouseTbl.Active = False then
  begin
    DMStore.WharehouseTbl.Active := True;
  end;

end;

end.
