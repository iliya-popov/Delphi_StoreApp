{ Aouthor Iliya Popov 21.05.2023 }
unit InventoryFrameUnt;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes,
  Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.DBCtrls, Vcl.ExtCtrls,
  Vcl.StdCtrls, Vcl.Mask, Vcl.Buttons;

type
  TInventoryFrame = class(TFrame)
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
    SMCLbl: TLabel;
    CategoryLbl: TLabel;
    AddCategrorySpBtn: TSpeedButton;
    UnitPrice: TLabel;
    CategoryLookup: TDBLookupComboBox;
    UntPriceDBEdit: TDBEdit;
    AvailabilityLbl: TLabel;
    Label1: TLabel;
    DBLookupComboBox1: TDBLookupComboBox;
    AddWhSpBtn: TSpeedButton;
    PhoneDBEdit: TDBEdit;
    PhoneLbl: TLabel;
    EmailDBEdit: TDBEdit;
    EmailLbl: TLabel;
    AvailabilityDbCombox: TDBComboBox;
    SmcNameLookUp: TDBLookupComboBox;
    procedure CloseBtnClick(Sender: TObject);
    procedure AddWhSpBtnClick(Sender: TObject);
    procedure AddCategrorySpBtnClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    constructor Create(TheOwner: TComponent); override;
    destructor Destroy; override;
  end;

implementation
uses DMStoreUnt, WharehouseFrmUnt, CategoryFrmUnt;
{$R *.dfm}
{ TInventoryFrame }

procedure TInventoryFrame.AddCategrorySpBtnClick(Sender: TObject);
var
  CategoryFrm: TCategoryFrm;
begin
  CategoryFrm := TCategoryFrm.Create(self);
  CategoryFrm.ShowModal;
  CategoryFrm.Free;
end;

procedure TInventoryFrame.AddWhSpBtnClick(Sender: TObject);
var
  WharehouseFrm: TWharehouseFrm;
begin
  WharehouseFrm := TWharehouseFrm.Create(self);
  WharehouseFrm.ShowModal;
  WharehouseFrm.Free;
end;

procedure TInventoryFrame.CloseBtnClick(Sender: TObject);
begin
  Destroy;
end;

constructor TInventoryFrame.Create(TheOwner: TComponent);
begin
  inherited Create(TheOwner);

end;

destructor TInventoryFrame.Destroy;
begin

  inherited Destroy;
end;

end.
