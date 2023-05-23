program Store;

uses
  Vcl.Forms,
  StoreUnt in 'StoreUnt.pas' {StoreFrm},
  CDateUnt in 'CDateUnt.pas',
  DMStoreUnt in 'DMStoreUnt.pas' {DMStore: TDataModule},
  CmpFrameUnt in 'CmpFrameUnt.pas' {FrameCmp: TFrame},
  BankUnt in 'BankUnt.pas' {BankFrm},
  EmpFrameUnt in 'EmpFrameUnt.pas' {EmpFrame: TFrame},
  EmployeFrmUnt in 'EmployeFrmUnt.pas' {EmpFrm},
  PopulatedPlaceFrmUnt in 'PopulatedPlaceFrmUnt.pas' {PplaceFrm},
  ProfessionUnt in 'ProfessionUnt.pas' {ProfessionFrm},
  ClientsFrameUnt in 'ClientsFrameUnt.pas' {ClientFrame: TFrame},
  CitizensFrmUnit in 'CitizensFrmUnit.pas' {CitizensFrm},
  WharehouseFrameUnit in 'WharehouseFrameUnit.pas' {WharehouseFrame: TFrame},
  CompanyFrmUnit in 'CompanyFrmUnit.pas' {CompanyFrm},
  SMCFrameUnit in 'SMCFrameUnit.pas' {SMCFrame: TFrame},
  ManufacturerFrmUnt in 'ManufacturerFrmUnt.pas' {ManufacturerFrm},
  ModelFrmUnt in 'ModelFrmUnt.pas' {ModelFrm},
  CategoryFrmUnt in 'CategoryFrmUnt.pas' {CategoryFrm},
  InventoryFrameUnt in 'InventoryFrameUnt.pas' {InventoryFrame: TFrame},
  WharehouseFrmUnt in 'WharehouseFrmUnt.pas' {WharehouseFrm},
  BringingFrameUnt in 'BringingFrameUnt.pas' {BringingFrame: TFrame},
  PaymentWayFrmUnt in 'PaymentWayFrmUnt.pas' {PaymentWayFrm},
  OrderFrameUnt in 'OrderFrameUnt.pas' {OrderFrame: TFrame};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TDMStore, DMStore);
  Application.CreateForm(TStoreFrm, StoreFrm);
  Application.CreateForm(TBankFrm, BankFrm);
  Application.CreateForm(TEmpFrm, EmpFrm);
  Application.CreateForm(TPplaceFrm, PplaceFrm);
  Application.CreateForm(TProfessionFrm, ProfessionFrm);
  Application.CreateForm(TCitizensFrm, CitizensFrm);
  Application.CreateForm(TCompanyFrm, CompanyFrm);
  Application.CreateForm(TManufacturerFrm, ManufacturerFrm);
  Application.CreateForm(TModelFrm, ModelFrm);
  Application.CreateForm(TCategoryFrm, CategoryFrm);
  Application.CreateForm(TWharehouseFrm, WharehouseFrm);
  Application.CreateForm(TPaymentWayFrm, PaymentWayFrm);
  Application.Run;
end.
