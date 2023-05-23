{ Aouthor Iliya Popov 20.05.2023 }
unit BankUnt;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.DBCtrls, Vcl.ExtCtrls, Data.DB,
  Vcl.Grids, Vcl.DBGrids, Vcl.StdCtrls;

type
  TBankFrm = class(TForm)
    NavContentPnl: TPanel;
    DBNavigator: TDBNavigator;
    BankListPnl: TPanel;
    BankListGrbx: TGroupBox;
    BankListDbgr: TDBGrid;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  BankFrm: TBankFrm;

implementation

uses DMStoreUnt;
{$R *.dfm}

end.
