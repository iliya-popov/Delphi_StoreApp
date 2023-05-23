{ Aouthor Iliya Popov 21.05.2023 }
unit SMCFrameUnit;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes,
  Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.DBCtrls, Vcl.ExtCtrls,
  Vcl.StdCtrls, Vcl.Mask, Vcl.Buttons, System.ImageList, Vcl.ImgList,
  Vcl.ExtDlgs, Data.DB;

type
  TSMCFrame = class(TFrame)
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
    SMCDbEdt: TDBEdit;
    PictureContentGrbx: TGroupBox;
    DBImage: TDBImage;
    BtnGrbx: TGroupBox;
    AddBitBtn: TBitBtn;
    RmvBitBtn: TBitBtn;
    ImageList: TImageList;
    OpenPictureDialog: TOpenPictureDialog;
    ContentGrbx: TGroupBox;
    AddMSpBtn: TSpeedButton;
    BrandNameLookUp: TDBLookupComboBox;
    Label1: TLabel;
    WebDBEdit: TDBEdit;
    WebLbl: TLabel;
    GroupBox1: TGroupBox;
    AddModelSpBtn: TSpeedButton;
    ModelLbl: TLabel;
    WeightLBL: TLabel;
    ModelLookUp: TDBLookupComboBox;
    WeightDBEdit: TDBEdit;
    SmcSizeLbl: TLabel;
    SmcSizeDBEdit: TDBEdit;
    CategoryLbl: TLabel;
    CategoryLookup: TDBLookupComboBox;
    AddCategrorySpBtn: TSpeedButton;
    DescripGrbx: TGroupBox;
    DBMemo: TDBMemo;
    UntPriceDBEdit: TDBEdit;
    UnitPrice: TLabel;
    procedure RmvBitBtnClick(Sender: TObject);
    procedure AddBitBtnClick(Sender: TObject);
    procedure AddMSpBtnClick(Sender: TObject);
    procedure AddModelSpBtnClick(Sender: TObject);
    procedure AddCategrorySpBtnClick(Sender: TObject);
    procedure CloseBtnClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    constructor Create(TheOwner: TComponent); override;
    destructor Destroy; override;
  end;

implementation

uses DMStoreUnt, ManufacturerFrmUnt, ModelFrmUnt, CategoryFrmUnt;
{$R *.dfm}

procedure TSMCFrame.AddBitBtnClick(Sender: TObject);
begin
  if (OpenPictureDialog.Execute()) then
  begin
    if ((DMStore.SMCTbl.State <> dsInsert) or (DMStore.SMCTbl.State <> dsEdit))
    then
    begin
      DMStore.SMCTbl.Edit();
    end;
    self.DBImage.Picture.LoadFromFile(self.OpenPictureDialog.FileName);
    self.OpenPictureDialog.InitialDir :=
      ExtractFilePath(self.OpenPictureDialog.FileName);
  end;
end;

procedure TSMCFrame.AddCategrorySpBtnClick(Sender: TObject);
var
  CategoryFrm: TCategoryFrm;
begin
  CategoryFrm := TCategoryFrm.Create(self);
  CategoryFrm.ShowModal;
  CategoryFrm.Free;
end;

procedure TSMCFrame.AddModelSpBtnClick(Sender: TObject);
var
  ModelFrm: TModelFrm;
begin
  ModelFrm := TModelFrm.Create(self);
  ModelFrm.ShowModal;
  ModelFrm.Free;
end;

procedure TSMCFrame.AddMSpBtnClick(Sender: TObject);
var
  manufacturerFrm: TManufacturerFrm;
begin
  manufacturerFrm := TManufacturerFrm.Create(self);
  manufacturerFrm.ShowModal;
  manufacturerFrm.Free;
end;

procedure TSMCFrame.CloseBtnClick(Sender: TObject);
begin
  Destroy;
end;

constructor TSMCFrame.Create(TheOwner: TComponent);
begin
  inherited Create(TheOwner);

end;

destructor TSMCFrame.Destroy;
begin

  inherited Destroy;
end;

procedure TSMCFrame.RmvBitBtnClick(Sender: TObject);
begin
  self.DBImage.Picture := nil;
end;

end.
