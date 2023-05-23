{ Aouthor Iliya Popov 21.05.2023 }
unit BringingFrameUnt;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes,
  Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.DBCtrls, Vcl.ExtCtrls,
  Vcl.StdCtrls, Vcl.Mask, Vcl.Buttons, Data.DB, Vcl.Grids, Vcl.DBGrids;

type
  TBringingFrame = class(TFrame)
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
    ProffesionGrbx: TGroupBox;
    EIKDBEdit: TDBEdit;
    EIKLbl: TLabel;
    ClientLookUP: TDBLookupComboBox;
    ClientLbl: TLabel;
    DocContentGrbx: TGroupBox;
    DocumentNumberDBEdit: TDBEdit;
    DocNumberLbl: TLabel;
    FrDateDBEdit: TDBEdit;
    FrDateLbl: TLabel;
    DocTypeDbCmBx: TDBComboBox;
    DocTypeLbl: TLabel;
    AdressClLbl: TLabel;
    ClAdrDBEdit: TDBEdit;
    WhContentGrbx: TGroupBox;
    EmpPhoneLbl: TLabel;
    WhNameLbl: TLabel;
    AddWhSpBtn: TSpeedButton;
    AddrLbl: TLabel;
    EmpPhoneDBEdit: TDBEdit;
    WhNameDbLookUp: TDBLookupComboBox;
    AddrDBEdit: TDBEdit;
    GroupBox1: TGroupBox;
    SNameLbl: TLabel;
    FNameLbl: TLabel;
    AddEmpSpBtn: TSpeedButton;
    LNameLbl: TLabel;
    SNameDBEdit: TDBEdit;
    FNameLookUp: TDBLookupComboBox;
    LNameDBEdit: TDBEdit;
    SmcContent: TGroupBox;
    DataDbGrd: TDBGrid;
    GroupBox2: TGroupBox;
    PaymentWeyLookUp: TDBLookupComboBox;
    AddPaymentWaySpBtn: TSpeedButton;
    procedure AddWhSpBtnClick(Sender: TObject);
    procedure AddEmpSpBtnClick(Sender: TObject);
    procedure CloseBtnClick(Sender: TObject);
    procedure AddPaymentWaySpBtnClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    constructor Create(TheOwner: TComponent); override;
    destructor Destroy; override;
  end;

implementation

uses DMStoreUnt, WharehouseFrmUnt, EmployeFrmUnt, PaymentWayFrmUnt;
{$R *.dfm}
{ TBringingFrame }

procedure TBringingFrame.AddPaymentWaySpBtnClick(Sender: TObject);
var
  PaymentWayFrm: TPaymentWayFrm;
begin
  PaymentWayFrm := TPaymentWayFrm.Create(self);
  PaymentWayFrm.ShowModal;
  PaymentWayFrm.Free;
end;

procedure TBringingFrame.AddWhSpBtnClick(Sender: TObject);
var
  WharehouseFrm: TWharehouseFrm;
begin
  WharehouseFrm := TWharehouseFrm.Create(self);
  WharehouseFrm.ShowModal;
  WharehouseFrm.Free;
end;

procedure TBringingFrame.CloseBtnClick(Sender: TObject);
begin
 Destroy;
end;

constructor TBringingFrame.Create(TheOwner: TComponent);
begin
  inherited Create(TheOwner);

end;

destructor TBringingFrame.Destroy;
begin

  inherited Destroy;
end;

procedure TBringingFrame.AddEmpSpBtnClick(Sender: TObject);
var
  empFrm: TEmpFrm;
begin
  empFrm := TEmpFrm.Create(self);
  empFrm.ShowModal;
  empFrm.Free;
end;

end.
