unit WharehouseFrameUnit;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes,
  Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.DBCtrls, Vcl.ExtCtrls,
  Vcl.StdCtrls, Vcl.Mask, Vcl.Buttons;

type
  TWharehouseFrame = class(TFrame)
    NavPnl: TPanel;
    DBNavigator: TDBNavigator;
    CompanyDataGrpBox: TGroupBox;
    CloseBtn: TBitBtn;
    ActDBBtnContent: TGroupBox;
    InsertSpBtn: TSpeedButton;
    PostSpBtn: TSpeedButton;
    CancelSpBtn: TSpeedButton;
    DelSpBtn: TSpeedButton;
    EdtSpBtn: TSpeedButton;
    FContentPnl: TPanel;
    CmpNameLbl: TLabel;
    AddressLbl: TLabel;
    CmpNameDbEdt: TDBEdit;
    AddressDbEdt: TDBEdit;
    ContentGrbx: TGroupBox;
    CNameLbl: TLabel;
    PhoneLbl: TLabel;
    PhoneDBEdit: TDBEdit;
    EmailLbl: TLabel;
    EmailDbEdt: TDBEdit;
    EikBulstatDbEdt: TDBEdit;
    EikBulstatLbl: TLabel;
    CNameLookUp: TDBLookupComboBox;
    AddCmpSpBtn: TSpeedButton;
    procedure AddCmpSpBtnClick(Sender: TObject);
    procedure CloseBtnClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    constructor Create(TheOwner: TComponent); override;
    destructor Destroy; override;
  end;

implementation

uses DMStoreUnt, CompanyFrmUnit;
{$R *.dfm}

procedure TWharehouseFrame.AddCmpSpBtnClick(Sender: TObject);
var
  CompanyFrm: TCompanyFrm;
begin
  CompanyFrm := TCompanyFrm.Create(self);
  CompanyFrm.ShowModal;
  CompanyFrm.Free;
end;

procedure TWharehouseFrame.CloseBtnClick(Sender: TObject);
begin
  Destroy;
end;

constructor TWharehouseFrame.Create(TheOwner: TComponent);
begin
  inherited Create(TheOwner);

end;

destructor TWharehouseFrame.Destroy;
begin

  inherited Destroy;
end;

end.
