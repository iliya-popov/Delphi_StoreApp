{ Aouthor Iliya Popov 20.05.2023 }
unit CmpFrameUnt;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes,
  Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Buttons,
  Vcl.Mask, Vcl.DBCtrls, Vcl.ExtCtrls;

type
  TFrameCmp = class(TFrame)
    CompanyDataGrpBox: TGroupBox;
    CloseBtn: TBitBtn;
    NavPnl: TPanel;
    DBNavigator: TDBNavigator;
    MolInfoGrbx: TGroupBox;
    Label1: TLabel;
    Label2: TLabel;
    SecondNameDbEdt: TDBEdit;
    Label3: TLabel;
    LastNameDbEdt: TDBEdit;
    FirstNameLookUpEdt: TDBLookupComboBox;
    AddEmpSpBtn: TSpeedButton;
    ActDBBtnContent: TGroupBox;
    InsertSpBtn: TSpeedButton;
    PostSpBtn: TSpeedButton;
    CancelSpBtn: TSpeedButton;
    DelSpBtn: TSpeedButton;
    EdtSpBtn: TSpeedButton;
    FContentPnl: TPanel;
    CmpNameLbl: TLabel;
    CmpNameDbEdt: TDBEdit;
    PopulatedPlaceLbl: TLabel;
    CityDbLookUp: TDBLookupComboBox;
    PostCodeLbl: TLabel;
    PostCodeTbl: TDBEdit;
    AddPopulatedPlaceSpBtn: TSpeedButton;
    AddressLbl: TLabel;
    AddressDbEdt: TDBEdit;
    EikBulstatDbEdt: TDBEdit;
    EikBulstatLbl: TLabel;
    BankGrbx: TGroupBox;
    BankNameLbl: TLabel;
    BankNameDbLookUp: TDBLookupComboBox;
    BICLbl: TLabel;
    BICDbEdt: TDBEdit;
    IBANLbl: TLabel;
    IBANDbEdt: TDBEdit;
    BankSpBtn: TSpeedButton;
    procedure CloseBtnClick(Sender: TObject);
    procedure BankSpBtnClick(Sender: TObject);
    procedure AddEmpSpBtnClick(Sender: TObject);
    procedure AddPopulatedPlaceSpBtnClick(Sender: TObject);

  private
    { Private declarations }
  public
    { Public declarations }
    constructor Create(TheOwner: TComponent); override;
    destructor Destroy; override;

  end;

implementation

uses DMStoreUnt, BankUnt, StoreUnt, EmployeFrmUnt, PopulatedPlaceFrmUnt;
{$R *.dfm}
{ TFrameCmp }

procedure TFrameCmp.AddEmpSpBtnClick(Sender: TObject);
var
  empFrm: TEmpFrm;
begin
  empFrm := TEmpFrm.Create(self);
  empFrm.ShowModal;
  empFrm.Free;
end;

procedure TFrameCmp.AddPopulatedPlaceSpBtnClick(Sender: TObject);
var
  pPlaceFrm: TPplaceFrm;
begin
  pPlaceFrm := TPplaceFrm.Create(self);
  pPlaceFrm.ShowModal;
  pPlaceFrm.Free;
end;

procedure TFrameCmp.BankSpBtnClick(Sender: TObject);
var
  bankFrm: TBankFrm;
begin
  bankFrm := TBankFrm.Create(self);
  bankFrm.ShowModal;
  bankFrm.Free;
end;

procedure TFrameCmp.CloseBtnClick(Sender: TObject);
begin
  Destroy;
end;

constructor TFrameCmp.Create(TheOwner: TComponent);
begin

  inherited Create(TheOwner);

end;

destructor TFrameCmp.Destroy;
begin
  inherited Destroy;
end;

end.
