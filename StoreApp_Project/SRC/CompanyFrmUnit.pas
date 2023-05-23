unit CompanyFrmUnit;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.DBCtrls, Vcl.ExtCtrls, Data.DB,
  Vcl.Grids, Vcl.DBGrids, Vcl.StdCtrls, Vcl.Mask, Vcl.Buttons;

type
  TCompanyFrm = class(TForm)
    NavContentPnl: TPanel;
    DBNavigator: TDBNavigator;
    ContentPnl: TPanel;
    ContentGrbx: TGroupBox;
    DataDbGrd: TDBGrid;
    MolInfoGrbx: TGroupBox;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    AddEmpSpBtn: TSpeedButton;
    SecondNameDbEdt: TDBEdit;
    LastNameDbEdt: TDBEdit;
    FirstNameLookUpEdt: TDBLookupComboBox;
    BankGrbx: TGroupBox;
    BankNameLbl: TLabel;
    BICLbl: TLabel;
    IBANLbl: TLabel;
    BankSpBtn: TSpeedButton;
    BankNameDbLookUp: TDBLookupComboBox;
    BICDbEdt: TDBEdit;
    IBANDbEdt: TDBEdit;
    GroupBox1: TGroupBox;
    PostCodeTbl: TDBEdit;
    PostCodeLbl: TLabel;
    CityDbLookUp: TDBLookupComboBox;
    PopulatedPlaceLbl: TLabel;
    AddPopulatedPlaceSpBtn: TSpeedButton;
    procedure AddEmpSpBtnClick(Sender: TObject);
    procedure AddPopulatedPlaceSpBtnClick(Sender: TObject);
    procedure BankSpBtnClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  CompanyFrm: TCompanyFrm;

implementation

uses DMStoreUnt, EmployeFrmUnt, BankUnt, PopulatedPlaceFrmUnt;
{$R *.dfm}

procedure TCompanyFrm.AddEmpSpBtnClick(Sender: TObject);
var
  empFrm: TEmpFrm;
begin
  empFrm := TEmpFrm.Create(self);
  empFrm.ShowModal;
  empFrm.Free;
end;

procedure TCompanyFrm.AddPopulatedPlaceSpBtnClick(Sender: TObject);
var
  pPlaceFrm: TPplaceFrm;
begin
  pPlaceFrm := TPplaceFrm.Create(self);
  pPlaceFrm.ShowModal;
  pPlaceFrm.Free;
end;

procedure TCompanyFrm.BankSpBtnClick(Sender: TObject);
var
  bankFrm: TBankFrm;
begin
  bankFrm := TBankFrm.Create(self);
  bankFrm.ShowModal;
  bankFrm.Free;
end;

end.
