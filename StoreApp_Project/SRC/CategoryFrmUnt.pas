{ Aouthor Iliya Popov 21.05.2023 }
unit CategoryFrmUnt;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.DBCtrls, Vcl.ExtCtrls, Data.DB,
  Vcl.Grids, Vcl.DBGrids, Vcl.StdCtrls;

type
  TCategoryFrm = class(TForm)
    NavContentPnl: TPanel;
    DBNavigator: TDBNavigator;
    ContentPnl: TPanel;
    ContentGrbx: TGroupBox;
    DataDbGrd: TDBGrid;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  CategoryFrm: TCategoryFrm;

implementation

uses DMStoreUnt;
{$R *.dfm}

procedure TCategoryFrm.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  //
end;

procedure TCategoryFrm.FormShow(Sender: TObject);
begin
  DMStore.CategoryTbl.Active := True;
end;

end.
