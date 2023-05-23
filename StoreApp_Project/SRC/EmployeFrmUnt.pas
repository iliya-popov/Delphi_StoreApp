{ Aouthor Iliya Popov 21.05.2023 }
unit EmployeFrmUnt;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.DBCtrls, Vcl.ExtCtrls, Vcl.StdCtrls,
  Data.DB, Vcl.Grids, Vcl.DBGrids, Vcl.Buttons, Vcl.ExtDlgs, System.ImageList,
  Vcl.ImgList;

type
  TEmpFrm = class(TForm)
    NavContentPnl: TPanel;
    DBNavigator: TDBNavigator;
    ContentPnl: TPanel;
    ContentGrbx: TGroupBox;
    DataDbGrd: TDBGrid;
    PictureContentGrbx: TGroupBox;
    DBImage: TDBImage;
    BtnGrbx: TGroupBox;
    OpenPictureDialog: TOpenPictureDialog;
    ImageList: TImageList;
    AddBitBtn: TBitBtn;
    RmvBitBtn: TBitBtn;
    procedure AddBitBtnClick(Sender: TObject);
    procedure RmvBitBtnClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  EmpFrm: TEmpFrm;

implementation

uses DMStoreUnt;
{$R *.dfm}

procedure TEmpFrm.AddBitBtnClick(Sender: TObject);
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

procedure TEmpFrm.RmvBitBtnClick(Sender: TObject);
begin
  self.DBImage.Picture := nil;
end;

end.
