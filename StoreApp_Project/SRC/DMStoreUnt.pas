{ Aouthor Iliya Popov 20.05.2023 }
unit DMStoreUnt;

interface

uses
  System.SysUtils, System.Classes, Data.DB, Data.Win.ADODB, System.Actions,
  Vcl.ActnList, Vcl.DBActns;

type
  TDMStore = class(TDataModule)
    StoreDBConnection: TADOConnection;
    CompanyActList: TActionList;
    CompanyInfoDS: TDataSource;
    CompanyInfoTbl: TADOTable;
    CompanyInfoTblPK_ID: TAutoIncField;
    CompanyInfoTblCompany_Name: TWideStringField;
    CompanyInfoTblBullstat: TWideStringField;
    CompanyInfoTblAddress: TWideStringField;
    EmpTbl: TADOTable;
    EmpTblPK_ID: TAutoIncField;
    EmpTblPhone: TWideStringField;
    EmpTblEmail: TWideStringField;
    EmpTblPicture: TBlobField;
    BankTbl: TADOTable;
    CitizensTbl: TADOTable;
    CitizensTblPK_ID: TAutoIncField;
    CitizensTblFirst_Name: TWideStringField;
    CitizensTblSecond_Name: TWideStringField;
    CitizensTblLast_Name: TWideStringField;
    CitizensTblEGN: TIntegerField;
    CitizensTblAddress: TWideStringField;
    CitizensTblPhone: TWideStringField;
    CitizensTblEmail: TWideStringField;
    BankTblPK_ID: TAutoIncField;
    BankTblBank_Name: TWideStringField;
    BankTblIBAN: TWideStringField;
    ProffesionTbl: TADOTable;
    ProffesionTblPK_ID: TAutoIncField;
    ProffesionTblProfession_Name: TWideStringField;
    PopulatedPlaceTbl: TADOTable;
    PopulatedPlaceTblPK_ID: TAutoIncField;
    PopulatedPlaceTblPlace_Name: TWideStringField;
    PopulatedPlaceTblPost_Code: TIntegerField;
    BankTblBIC: TWideStringField;
    DatasetPost1: TDataSetPost;
    DatasetCancel1: TDataSetCancel;
    CompanyInfoTblVK_Manager: TIntegerField;
    CompanyInfoTblVK_Populated_Place: TIntegerField;
    CompanyInfoTblVK_Bank_Account: TIntegerField;
    EmpDs: TDataSource;
    BankDs: TDataSource;
    CitizenDs: TDataSource;
    PopulatedPlaceDs: TDataSource;
    ProffesionDs: TDataSource;
    CompanyInfoTblFirstName: TStringField;
    EmpTblSecondName: TStringField;
    EmpTblLastName: TStringField;
    CompanyInfoTblSecondName: TStringField;
    CompanyInfoTblLastName: TStringField;
    EmpTblProffesion: TStringField;
    EmpTblVK_Citizen: TIntegerField;
    EmpTblVK_Proffesion: TIntegerField;
    CompanyInfoTblBankName: TStringField;
    CompanyInfoTblIBAN: TStringField;
    CompanyInfoTblBIC: TStringField;
    CompanyInfoTblCity: TStringField;
    CompanyInfoTblPost_Code: TStringField;
    DatasetInsert1: TDataSetInsert;
    DatasetDelete1: TDataSetDelete;
    DatasetEdit1: TDataSetEdit;
    ClientsTbl: TADOTable;
    ClientsDs: TDataSource;
    ClientsTblPK_ID: TAutoIncField;
    ClientsTblCompany_Name: TWideStringField;
    ClientsTblIdn_By_Zdds: TWideStringField;
    ClientsTblVK_Manager: TIntegerField;
    ClientsTblVK_Populated_Place: TIntegerField;
    ClientsTblAddress: TWideStringField;
    ClientsTblPhone: TWideStringField;
    ClientsTblFax: TWideStringField;
    ClientsTblEmail: TWideStringField;
    ClientsTblWeb: TWideStringField;
    ClientsTblFirst_Name: TStringField;
    ClientsTblSecond_Name: TStringField;
    ClientsTblLast_Name: TStringField;
    ClientsTblCity: TStringField;
    ClientsTblPostal_Code: TStringField;
    WharehouseTbl: TADOTable;
    WharehouseDs: TDataSource;
    WharehouseTblPK_ID: TAutoIncField;
    WharehouseTblStore_Name: TWideStringField;
    WharehouseTblVK_Company: TIntegerField;
    WharehouseTblAddress: TWideStringField;
    WharehouseTblPhone: TWideStringField;
    WharehouseTblEmail: TWideStringField;
    WharehouseTblCompanyName: TStringField;
    WharehouseTblCompanyEik: TStringField;
    InventoriesTbl: TADOTable;
    InventoriesDs: TDataSource;
    InventoriesTblPK_ID: TAutoIncField;
    InventoriesTblVK_Store: TIntegerField;
    InventoriesTblVK_SMC: TIntegerField;
    SMCTbl: TADOTable;
    SMCDs: TDataSource;
    SMCTblPK_ID: TAutoIncField;
    SMCTblSMC_NAME: TWideStringField;
    SMCTblVK_Manufactures: TIntegerField;
    SMCTblVK_Model: TWideStringField;
    SMCTblVK_Category: TWideStringField;
    SMCTblAdditional_Description: TWideStringField;
    SMCTblUnit_Price: TBCDField;
    SMCModelsTbl: TADOTable;
    SMCModelsDs: TDataSource;
    ManufacturesTbl: TADOTable;
    ManufacturesDs: TDataSource;
    CategoryTbl: TADOTable;
    SMCModelsTblPK_ID: TAutoIncField;
    SMCModelsTblModel: TWideStringField;
    SMCModelsTblYear_Of_Manufacture: TDateTimeField;
    SMCModelsTblWeight: TIntegerField;
    SMCModelsTblSize: TIntegerField;
    ManufacturesTblPK_ID: TAutoIncField;
    ManufacturesTblBrand_Name: TWideStringField;
    ManufacturesTblweb: TWideStringField;
    CategoryDs: TDataSource;
    CategoryTblPK_ID: TAutoIncField;
    CategoryTblCategory_Name: TWideStringField;
    SMCTblBrand_Name: TStringField;
    SMCTblWeb: TStringField;
    SMCTblModel: TStringField;
    SMCTblYear_Of_Manufacture: TDateTimeField;
    SMCTblWeight: TFloatField;
    SMCTblSize: TFloatField;
    SMCTblCategory_Name: TStringField;
    SMCTblPicture: TBlobField;
    InventoriesTblStore_Name: TStringField;
    InventoriesTblPhone: TStringField;
    InventoriesTblEmail: TStringField;
    InventoriesTblSMC_Name: TStringField;
    InventoriesTblCategory: TStringField;
    InventoriesTblUnit_Price: TFloatField;
    InventoriesTblAvailability: TWideStringField;
    Bringing_To_StoreTbl: TADOTable;
    Bringing_To_StoreDs: TDataSource;
    OrdersTbl: TADOTable;
    OrdersDs: TDataSource;
    Bringing_To_StoreTblPK_ID: TAutoIncField;
    Bringing_To_StoreTblDoc_Number: TWideStringField;
    Bringing_To_StoreTblDoc_Date: TDateTimeField;
    Bringing_To_StoreTblDoc_Type: TWideStringField;
    Bringing_To_StoreTblVK_Client: TIntegerField;
    Bringing_To_StoreTblVK_Payment_Metod: TIntegerField;
    Bringing_To_StoreTblVK_Employes: TIntegerField;
    Bringing_To_StoreTblVK_SMC: TIntegerField;
    Bringing_To_StoreTblUnit_Price: TBCDField;
    Bringing_To_StoreTblDiscount: TIntegerField;
    OrdersTblPK_ID: TAutoIncField;
    OrdersTblOrder_Number: TWideStringField;
    OrdersTblOrder_Date: TDateTimeField;
    OrdersTblDoc_Type: TWideStringField;
    OrdersTblVK_Client: TIntegerField;
    OrdersTblVK_Payment_Metod: TIntegerField;
    OrdersTblVK_Employes: TIntegerField;
    OrdersTblVK_SMC: TIntegerField;
    OrdersTblUnit_Price: TBCDField;
    OrdersTblDiscount: TIntegerField;
    Bringing_To_StoreTblClient_Name: TStringField;
    Bringing_To_StoreTblEIK: TStringField;
    Bringing_To_StoreTblCl_Adress: TStringField;
    Bringing_To_StoreTblVK_Store: TIntegerField;
    Bringing_To_StoreTblStore_Name: TStringField;
    Bringing_To_StoreTblWh_Phone: TStringField;
    Bringing_To_StoreTblWh_Adress: TStringField;
    Bringing_To_StoreTblFirst_Name: TStringField;
    Bringing_To_StoreTblSecond_Name: TStringField;
    Bringing_To_StoreTbllast_Name: TStringField;
    Bringing_To_StoreTblSMC_NAME: TStringField;
    Bringing_To_StoreTblSale_Price: TCurrencyField;
    Payment_WayTbl: TADOTable;
    Payment_WayTblPK_ID: TAutoIncField;
    Payment_WayTblPeyment_Way: TWideStringField;
    Payment_MetodDS: TDataSource;
    Bringing_To_StoreTblPayment_way: TStringField;
    OrdersTblClCmpName: TStringField;
    OrdersTblEIK: TStringField;
    OrdersTblAdress_Client: TStringField;
    OrdersTblVK_Store: TIntegerField;
    OrdersTblStore_Name: TStringField;
    OrdersTblPhone: TStringField;
    OrdersTblWh_Adress: TStringField;
    OrdersTblPaymentType: TStringField;
    OrdersTblFirst_Name: TStringField;
    OrdersTblSecond_Name: TStringField;
    OrdersTblLast_Name: TStringField;
    OrdersTblSMC_NAME: TStringField;
    OrdersTblSale_Price: TStringField;
    EmpTblFirstName: TStringField;
    procedure DataModuleCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DMStore: TDMStore;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}
{$R *.dfm}

procedure TDMStore.DataModuleCreate(Sender: TObject);
var
  constr: string;
begin


  self.StoreDBConnection.Connected := True;
end;

end.
