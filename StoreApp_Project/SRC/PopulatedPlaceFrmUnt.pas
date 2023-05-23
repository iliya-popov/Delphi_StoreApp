{ Aouthor Iliya Popov 21.05.2023 }
unit PopulatedPlaceFrmUnt;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.DBCtrls, Vcl.ExtCtrls, Data.DB,
  Vcl.Grids, Vcl.DBGrids, Vcl.StdCtrls;

type
  TPplaceFrm = class(TForm)
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
  PplaceFrm: TPplaceFrm;

implementation
uses DMStoreUnt;
{$R *.dfm}

end.
