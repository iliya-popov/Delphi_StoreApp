{ Aouthor Iliya Popov 21.05.2023 }
unit OrderFrameUnt;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes,
  Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.DBCtrls, Vcl.ExtCtrls,
  Data.DB, Vcl.Grids, Vcl.DBGrids, Vcl.StdCtrls, Vcl.Mask, Vcl.Buttons;

type
  TOrderFrame = class(TFrame)
    NavPnl: TPanel;
    DBNavigator: TDBNavigator;
    ContentDataGrpBox: TGroupBox;
    CloseBtn: TBitBtn;
    ActDBBtnContent: TGroupBox;
    InsertSpBtn: TSpeedButton;
    PostSpBtn: TSpeedButton;
    CancelSpBtn: TSpeedButton;
    DelSpBtn: TSpeedButton;
    EdtSpBtn: TSpeedButton;
    FContentPnl: TPanel;
    ProffesionGrbx: TGroupBox;
    EIKLbl: TLabel;
    ClientLbl: TLabel;
    AdressClLbl: TLabel;
    EIKDBEdit: TDBEdit;
    ClientLookUP: TDBLookupComboBox;
    ClAdrDBEdit: TDBEdit;
    DocContentGrbx: TGroupBox;
    DocNumberLbl: TLabel;
    FrDateLbl: TLabel;
    DocTypeLbl: TLabel;
    DocumentNumberDBEdit: TDBEdit;
    FrDateDBEdit: TDBEdit;
    DocTypeDbCmBx: TDBComboBox;
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
    AddPaymentWaySpBtn: TSpeedButton;
    PaymentWeyLookUp: TDBLookupComboBox;
    procedure CloseBtnClick(Sender: TObject);
    procedure AddWhSpBtnClick(Sender: TObject);
    procedure AddEmpSpBtnClick(Sender: TObject);
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
{ TOrderFrame }

procedure TOrderFrame.AddEmpSpBtnClick(Sender: TObject);
var
  empFrm: TEmpFrm;
begin
  empFrm := TEmpFrm.Create(self);
  empFrm.ShowModal;
  empFrm.Free;
end;

procedure TOrderFrame.AddPaymentWaySpBtnClick(Sender: TObject);
var
  PaymentWayFrm: TPaymentWayFrm;
begin
  PaymentWayFrm := TPaymentWayFrm.Create(self);
  PaymentWayFrm.ShowModal;
  PaymentWayFrm.Free;
end;

procedure TOrderFrame.AddWhSpBtnClick(Sender: TObject);
var
  WharehouseFrm: TWharehouseFrm;
begin
  WharehouseFrm := TWharehouseFrm.Create(self);
  WharehouseFrm.ShowModal;
  WharehouseFrm.Free;
end;

procedure TOrderFrame.CloseBtnClick(Sender: TObject);
begin
  Destroy;
end;

constructor TOrderFrame.Create(TheOwner: TComponent);
begin
  inherited Create(TheOwner);

end;

destructor TOrderFrame.Destroy;
begin

  inherited Destroy;
end;

end.
