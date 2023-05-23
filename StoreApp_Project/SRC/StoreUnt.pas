{ Aouthor Iliya Popov 20.05.2023 }
unit StoreUnt;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.StdCtrls, Vcl.Buttons,
  CDateUnt, System.ImageList, Vcl.ImgList;

type
  TStoreFrm = class(TForm)
    BtnPnl: TPanel;
    ContentPnl: TPanel;
    StatusPnl: TPanel;
    DateTimeGrbx: TGroupBox;
    DtLbl: TLabel;
    TmLbl: TLabel;
    SysGrbx: TGroupBox;
    PcLbl: TLabel;
    DbFileNmLbl: TLabel;
    CIStm: TTimer;
    CmpSpBtn: TSpeedButton;
    EmpSpBtn: TSpeedButton;
    ImageList: TImageList;
    ClientsSpBtn: TSpeedButton;
    WhareHouseSpBtn: TSpeedButton;
    SMCSpBtn: TSpeedButton;
    IventorySpBtn: TSpeedButton;
    BringingSpBtn: TSpeedButton;
    OrderSpBtn: TSpeedButton;
    SettingsSpBtn: TSpeedButton;
    procedure FormCreate(Sender: TObject);
    procedure CIStmTimer(Sender: TObject);
    procedure CmpSpBtnClick(Sender: TObject);
    procedure EmpSpBtnClick(Sender: TObject);
    procedure ClientsSpBtnClick(Sender: TObject);
    procedure WhareHouseSpBtnClick(Sender: TObject);
    procedure SMCSpBtnClick(Sender: TObject);
    procedure IventorySpBtnClick(Sender: TObject);
    procedure BringingSpBtnClick(Sender: TObject);
    procedure OrderSpBtnClick(Sender: TObject);
    procedure SettingsSpBtnClick(Sender: TObject);
  private
    { Private declarations }
  var
    ADate: TDate;
    assing: boolean;
    function SystemPcName: String;
    function fullFileName: String;

  public
    { Public declarations }

  end;

var
  StoreFrm: TStoreFrm;

implementation

uses DMStoreUnt, CmpFrameUnt, ClientsFrameUnt, EmpFrameUnt, WharehouseFrameUnit,
  SMCFrameUnit, InventoryFrameUnt, BringingFrameUnt, OrderFrameUnt;

{$R *.dfm}

procedure TStoreFrm.BringingSpBtnClick(Sender: TObject);
var
  BringingFrame: TBringingFrame;

begin

  if assing = false then
  begin
    DMStore.Bringing_To_StoreTbl.Active := True;
    DMStore.Payment_WayTbl.Active := True;
    BringingFrame := TBringingFrame.Create(Self);

    if TStoreFrm(BringingFrame).parent = nil then
    begin
      TFrameCmp(BringingFrame).parent := TwinControl(ContentPnl);
      TFrameCmp(BringingFrame).Align := AlClient;
    end;

  end;
  // TO DO assing
end;

procedure TStoreFrm.CIStmTimer(Sender: TObject);
begin
  Self.TmLbl.Caption := 'Час: ' + TimeToStr(Now);
end;

procedure TStoreFrm.ClientsSpBtnClick(Sender: TObject);
var
  ClientsFrame: TClientFrame;

begin

  if assing = false then
  begin
    DMStore.ClientsTbl.Active := True;
    ClientsFrame := TClientFrame.Create(Self);

    if TStoreFrm(ClientsFrame).parent = nil then
    begin
      TFrameCmp(ClientsFrame).parent := TwinControl(ContentPnl);
      TFrameCmp(ClientsFrame).Align := AlClient;
    end;

  end;
  // TO DO assing
end;

procedure TStoreFrm.CmpSpBtnClick(Sender: TObject);
var
  CompanyFrame: TFrameCmp;

begin

  if assing = false then
  begin
    DMStore.CompanyInfoTbl.Active := True;
    CompanyFrame := TFrameCmp.Create(Self);

    if TStoreFrm(CompanyFrame).parent = nil then
    begin
      TFrameCmp(CompanyFrame).parent := TwinControl(ContentPnl);
      TFrameCmp(CompanyFrame).Align := AlClient;
    end;

  end;
  // TO DO assing
end;

procedure TStoreFrm.EmpSpBtnClick(Sender: TObject);
var
  EmpFrame: TEmpFrame;

begin

  if assing = false then
  begin
    DMStore.EmpTbl.Active := True;
    EmpFrame := TEmpFrame.Create(Self);

    if TStoreFrm(EmpFrame).parent = nil then
    begin
      TFrameCmp(EmpFrame).parent := TwinControl(ContentPnl);
      TFrameCmp(EmpFrame).Align := AlClient;
    end;

  end;
  // TO DO assing
end;

procedure TStoreFrm.FormCreate(Sender: TObject);
begin
  ADate := TDate.Create;
  Self.DtLbl.Caption := 'Дата: ' + ADate.retCrDt();
  ADate.Free;
  Self.PcLbl.Caption := 'Система: ' + SystemPcName;
  Self.DbFileNmLbl.Caption := 'DB_File: ' + fullFileName;
end;

function TStoreFrm.fullFileName: String;
var
  fileName: String;
begin
  fileName := GetCurrentDir + '\..\..\' + 'Store';
  Result := ExtractFileName(fileName);
end;

procedure TStoreFrm.IventorySpBtnClick(Sender: TObject);
var
  InventoryFrame: TInventoryFrame;

begin

  if assing = false then
  begin
    DMStore.InventoriesTbl.Active := True;
    InventoryFrame := TInventoryFrame.Create(Self);

    if TStoreFrm(InventoryFrame).parent = nil then
    begin
      TFrameCmp(InventoryFrame).parent := TwinControl(ContentPnl);
      TFrameCmp(InventoryFrame).Align := AlClient;
    end;

  end;
  // TO DO assing
end;

procedure TStoreFrm.OrderSpBtnClick(Sender: TObject);
var
  OrderFrame: TOrderFrame;

begin

  if assing = false then
  begin
    DMStore.OrdersTbl.Active := True;
    OrderFrame := TOrderFrame.Create(Self);

    if TStoreFrm(OrderFrame).parent = nil then
    begin
      TFrameCmp(OrderFrame).parent := TwinControl(ContentPnl);
      TFrameCmp(OrderFrame).Align := AlClient;
    end;

  end;
  // TO DO assing
end;

procedure TStoreFrm.SettingsSpBtnClick(Sender: TObject);
begin
// To do create form and add settings to choose db file and other
end;

procedure TStoreFrm.SMCSpBtnClick(Sender: TObject);
var
  SMCFrame: TSMCFrame;

begin

  if assing = false then
  begin
    DMStore.SMCTbl.Active := True;
    SMCFrame := TSMCFrame.Create(Self);

    if TStoreFrm(SMCFrame).parent = nil then
    begin
      TFrameCmp(SMCFrame).parent := TwinControl(ContentPnl);
      TFrameCmp(SMCFrame).Align := AlClient;
    end;

  end;
  // TO DO assing
end;

function TStoreFrm.SystemPcName: String;
var
  iLen: Cardinal;
begin
  iLen := MAX_COMPUTERNAME_LENGTH + 1;
  Result := StringOfChar(#0, iLen);
  GetComputerName(PChar(Result), iLen);
  SetLength(Result, iLen);
end;

procedure TStoreFrm.WhareHouseSpBtnClick(Sender: TObject);
var
  wharehouseFrame: TWharehouseFrame;

begin

  if assing = false then
  begin
    DMStore.WharehouseTbl.Active := True;
    wharehouseFrame := TWharehouseFrame.Create(Self);

    if TStoreFrm(wharehouseFrame).parent = nil then
    begin
      TFrameCmp(wharehouseFrame).parent := TwinControl(ContentPnl);
      TFrameCmp(wharehouseFrame).Align := AlClient;
    end;

  end;
  // TO DO assing
end;

end.
