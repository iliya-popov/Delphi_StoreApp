{ Aouthor Iliya Popov 21.05.2023 }
unit ModelFrmUnt;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.DBCtrls, Vcl.ExtCtrls, Data.DB,
  Vcl.Grids, Vcl.DBGrids, Vcl.StdCtrls;

type
  TModelFrm = class(TForm)
    NavContentPnl: TPanel;
    DBNavigator: TDBNavigator;
    ContentPnl: TPanel;
    ContentGrbx: TGroupBox;
    DataDbGrd: TDBGrid;
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  ModelFrm: TModelFrm;

implementation

uses DMStoreUnt;
{$R *.dfm}

procedure TModelFrm.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  //
end;

procedure TModelFrm.FormShow(Sender: TObject);
begin
  DMStore.SMCModelsTbl.Active := True;
end;

end.
