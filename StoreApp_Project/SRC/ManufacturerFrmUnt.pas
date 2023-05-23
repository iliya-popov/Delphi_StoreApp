{ Aouthor Iliya Popov 21.05.2023 }
unit ManufacturerFrmUnt;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.DBCtrls, Vcl.ExtCtrls, Data.DB,
  Vcl.Grids, Vcl.DBGrids, Vcl.StdCtrls;

type
  TManufacturerFrm = class(TForm)
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
  ManufacturerFrm: TManufacturerFrm;

implementation

uses DMStoreUnt;
{$R *.dfm}

procedure TManufacturerFrm.FormClose(Sender: TObject; var Action: TCloseAction);
begin
 //
end;

procedure TManufacturerFrm.FormShow(Sender: TObject);
begin
  DMStore.ManufacturesTbl.Active := True;
end;

end.
