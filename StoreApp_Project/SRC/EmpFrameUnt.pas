{ Aouthor Iliya Popov 21.05.2023 }
unit EmpFrameUnt;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes,
  Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.DBCtrls, Vcl.ExtCtrls,
  Vcl.StdCtrls, Vcl.Mask, Vcl.Buttons, System.ImageList, Vcl.ImgList,
  Vcl.ExtDlgs, Data.DB;

type
  TEmpFrame = class(TFrame)
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
    FNameLbl: TLabel;
    SNameLbl: TLabel;
    SNameDbEdt: TDBEdit;
    LNameLbl: TLabel;
    LNameDBEdit: TDBEdit;
    PictureContentGrbx: TGroupBox;
    DBImage: TDBImage;
    BtnGrbx: TGroupBox;
    AddBitBtn: TBitBtn;
    RmvBitBtn: TBitBtn;
    ImageList: TImageList;
    OpenPictureDialog: TOpenPictureDialog;
    PhoneNmDBEdit: TDBEdit;
    PhoneNmLbl: TLabel;
    EmAddrLbl: TLabel;
    EmAddrDBEdit: TDBEdit;
    ProffesionGrbx: TGroupBox;
    ProfessDbLookUp: TDBLookupComboBox;
    AddPopulatedPlaceSpBtn: TSpeedButton;
    FNameDbLookUp: TDBLookupComboBox;
    AddEmpSpBtn: TSpeedButton;
    procedure AddPopulatedPlaceSpBtnClick(Sender: TObject);
    procedure AddBitBtnClick(Sender: TObject);
    procedure CloseBtnClick(Sender: TObject);
    procedure RmvBitBtnClick(Sender: TObject);
    procedure AddEmpSpBtnClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    constructor Create(TheOwner: TComponent); override;
    destructor Destroy; override;
  end;

implementation

uses DMStoreUnt, EmployeFrmUnt, ProfessionUnt, CitizensFrmUnit;
{$R *.dfm}

procedure TEmpFrame.AddBitBtnClick(Sender: TObject);
begin
  if (OpenPictureDialog.Execute()) then
  begin
    if ((DMStore.EMPTbl.State <> dsInsert) or (DMStore.EMPTbl.State <> dsEdit))
    then
    begin
      DMStore.EMPTbl.Edit();
    end;
    self.DBImage.Picture.LoadFromFile(self.OpenPictureDialog.FileName);
    self.OpenPictureDialog.InitialDir :=
      ExtractFilePath(self.OpenPictureDialog.FileName);
  end;
end;

procedure TEmpFrame.AddEmpSpBtnClick(Sender: TObject);
var
  empFrm: TCitizensFrm;
begin
  empFrm := TCitizensFrm.Create(self);
  empFrm.ShowModal;
  empFrm.Free;
end;

procedure TEmpFrame.AddPopulatedPlaceSpBtnClick(Sender: TObject);
var
  professionFrm: TProfessionFrm;
begin
  professionFrm := TProfessionFrm.Create(self);
  professionFrm.ShowModal;
  professionFrm.Free;
end;

procedure TEmpFrame.CloseBtnClick(Sender: TObject);
begin
  Destroy;
end;

constructor TEmpFrame.Create(TheOwner: TComponent);
begin
  inherited Create(TheOwner);

end;

destructor TEmpFrame.Destroy;
begin

  inherited Destroy;
end;

procedure TEmpFrame.RmvBitBtnClick(Sender: TObject);
begin
  self.DBImage.Picture := nil;
end;

end.
