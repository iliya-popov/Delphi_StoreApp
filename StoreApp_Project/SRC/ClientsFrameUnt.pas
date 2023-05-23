{ Aouthor Iliya Popov 21.05.2023 }
unit ClientsFrameUnt;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes,
  Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.DBCtrls, Vcl.ExtCtrls,
  Vcl.StdCtrls, Vcl.Mask, Vcl.Buttons;

type
  TClientFrame = class(TFrame)
    NavPnl: TPanel;
    DBNavigator: TDBNavigator;
    CompanyDataGrpBox: TGroupBox;
    CloseBtn: TBitBtn;
    MolInfoGrbx: TGroupBox;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    AddEmpSpBtn: TSpeedButton;
    SecondNameDbEdt: TDBEdit;
    LastNameDbEdt: TDBEdit;
    FirstNameLookUpEdt: TDBLookupComboBox;
    ActDBBtnContent: TGroupBox;
    InsertSpBtn: TSpeedButton;
    PostSpBtn: TSpeedButton;
    CancelSpBtn: TSpeedButton;
    DelSpBtn: TSpeedButton;
    EdtSpBtn: TSpeedButton;
    FContentPnl: TPanel;
    CmpNameLbl: TLabel;
    PopulatedPlaceLbl: TLabel;
    PostCodeLbl: TLabel;
    AddPopulatedPlaceSpBtn: TSpeedButton;
    AddressLbl: TLabel;
    EikBulstatLbl: TLabel;
    CmpNameDbEdt: TDBEdit;
    CityDbLookUp: TDBLookupComboBox;
    PostCodeTbl: TDBEdit;
    AddressDbEdt: TDBEdit;
    EikBulstatDbEdt: TDBEdit;
    BankGrbx: TGroupBox;
    PhoneLbl: TLabel;
    FaxLbl: TLabel;
    EmailLbl: TLabel;
    FaxDbEdt: TDBEdit;
    EmailDbEdt: TDBEdit;
    PhoneDBEdit: TDBEdit;
    WebLbl: TLabel;
    WebDBEdit: TDBEdit;
    procedure AddPopulatedPlaceSpBtnClick(Sender: TObject);
    procedure AddEmpSpBtnClick(Sender: TObject);
    procedure CloseBtnClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    constructor Create(TheOwner: TComponent); override;
    destructor Destroy; override;
  end;

implementation

uses DMStoreUnt, PopulatedPlaceFrmUnt, CitizensFrmUnit;

{$R *.dfm}

procedure TClientFrame.AddEmpSpBtnClick(Sender: TObject);
var
  citizensFrm: TCitizensFrm;
begin
  citizensFrm := TCitizensFrm.Create(self);
  citizensFrm.ShowModal;
  citizensFrm.Free;
end;

procedure TClientFrame.AddPopulatedPlaceSpBtnClick(Sender: TObject);
var
  pPlaceFrm: TPplaceFrm;
begin
  pPlaceFrm := TPplaceFrm.Create(self);
  pPlaceFrm.ShowModal;
  pPlaceFrm.Free;
end;

procedure TClientFrame.CloseBtnClick(Sender: TObject);
begin
  Destroy;
end;

constructor TClientFrame.Create(TheOwner: TComponent);
begin
  inherited Create(TheOwner);

end;

destructor TClientFrame.Destroy;
begin

  inherited Destroy;
end;

end.
