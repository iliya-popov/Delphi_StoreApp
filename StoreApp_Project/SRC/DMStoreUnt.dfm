object DMStore: TDMStore
  OldCreateOrder = False
  OnCreate = DataModuleCreate
  Height = 511
  Width = 820
  object StoreDBConnection: TADOConnection
    ConnectionString = 
      'Provider=Microsoft.Jet.OLEDB.4.0;User ID=Admin;Data Source=./Sto' +
      're.mdb;Mode=Share Deny None;Persist Security Info=False;Jet OLED' +
      'B:System database="";Jet OLEDB:Registry Path="";Jet OLEDB:Databa' +
      'se Password="";Jet OLEDB:Engine Type=5;Jet OLEDB:Database Lockin' +
      'g Mode=1;Jet OLEDB:Global Partial Bulk Ops=2;Jet OLEDB:Global Bu' +
      'lk Transactions=1;Jet OLEDB:New Database Password="";Jet OLEDB:C' +
      'reate System Database=False;Jet OLEDB:Encrypt Database=False;Jet' +
      ' OLEDB:Don'#39't Copy Locale on Compact=False;Jet OLEDB:Compact With' +
      'out Replica Repair=False;Jet OLEDB:SFP=False'
    LoginPrompt = False
    Provider = 'Microsoft.Jet.OLEDB.4.0'
    Left = 344
    Top = 8
  end
  object CompanyActList: TActionList
    Left = 40
    Top = 48
    object DatasetInsert1: TDataSetInsert
      Category = 'Dataset'
      Caption = '&Insert'
      Hint = 'Insert'
      ImageIndex = 4
    end
    object DatasetPost1: TDataSetPost
      Category = 'Dataset'
      Caption = 'P&ost'
      Hint = 'Post'
      ImageIndex = 7
    end
    object DatasetEdit1: TDataSetEdit
      Category = 'Dataset'
      Caption = '&Edit'
      Hint = 'Edit'
      ImageIndex = 6
    end
    object DatasetCancel1: TDataSetCancel
      Category = 'Dataset'
      Caption = '&Cancel'
      Hint = 'Cancel'
      ImageIndex = 8
    end
    object DatasetDelete1: TDataSetDelete
      Category = 'Dataset'
      Caption = '&Delete'
      Hint = 'Delete'
      ImageIndex = 5
    end
  end
  object CompanyInfoDS: TDataSource
    DataSet = CompanyInfoTbl
    Left = 32
    Top = 160
  end
  object CompanyInfoTbl: TADOTable
    Connection = StoreDBConnection
    CursorType = ctStatic
    TableName = 'Company'
    Left = 32
    Top = 104
    object CompanyInfoTblPK_ID: TAutoIncField
      FieldName = 'PK_ID'
      ReadOnly = True
    end
    object CompanyInfoTblCompany_Name: TWideStringField
      FieldName = 'Company_Name'
      Size = 35
    end
    object CompanyInfoTblBullstat: TWideStringField
      FieldName = 'Bullstat'
      Size = 255
    end
    object CompanyInfoTblAddress: TWideStringField
      FieldName = 'Address'
      Size = 155
    end
    object CompanyInfoTblVK_Manager: TIntegerField
      FieldName = 'VK_Manager'
    end
    object CompanyInfoTblVK_Populated_Place: TIntegerField
      FieldName = 'VK_Populated_Place'
    end
    object CompanyInfoTblVK_Bank_Account: TIntegerField
      FieldName = 'VK_Bank_Account'
    end
    object CompanyInfoTblFirstName: TStringField
      FieldKind = fkLookup
      FieldName = 'FirstName'
      LookupDataSet = EmpTbl
      LookupKeyFields = 'PK_ID'
      LookupResultField = 'FirstName'
      KeyFields = 'VK_Manager'
      Size = 75
      Lookup = True
    end
    object CompanyInfoTblSecondName: TStringField
      FieldKind = fkLookup
      FieldName = 'SecondName'
      LookupDataSet = EmpTbl
      LookupKeyFields = 'PK_ID'
      LookupResultField = 'SecondName'
      KeyFields = 'VK_Manager'
      Size = 75
      Lookup = True
    end
    object CompanyInfoTblLastName: TStringField
      FieldKind = fkLookup
      FieldName = 'LastName'
      LookupDataSet = EmpTbl
      LookupKeyFields = 'PK_ID'
      LookupResultField = 'LastName'
      KeyFields = 'VK_Manager'
      Size = 75
      Lookup = True
    end
    object CompanyInfoTblBankName: TStringField
      FieldKind = fkLookup
      FieldName = 'BankName'
      LookupDataSet = BankTbl
      LookupKeyFields = 'PK_ID'
      LookupResultField = 'Bank_Name'
      KeyFields = 'VK_Bank_Account'
      Size = 75
      Lookup = True
    end
    object CompanyInfoTblIBAN: TStringField
      FieldKind = fkLookup
      FieldName = 'IBAN'
      LookupDataSet = BankTbl
      LookupKeyFields = 'PK_ID'
      LookupResultField = 'IBAN'
      KeyFields = 'VK_Bank_Account'
      Size = 34
      Lookup = True
    end
    object CompanyInfoTblBIC: TStringField
      FieldKind = fkLookup
      FieldName = 'BIC'
      LookupDataSet = BankTbl
      LookupKeyFields = 'PK_ID'
      LookupResultField = 'BIC'
      KeyFields = 'VK_Bank_Account'
      Size = 23
      Lookup = True
    end
    object CompanyInfoTblCity: TStringField
      FieldKind = fkLookup
      FieldName = 'City'
      LookupDataSet = PopulatedPlaceTbl
      LookupKeyFields = 'PK_ID'
      LookupResultField = 'Place_Name'
      KeyFields = 'VK_Populated_Place'
      Size = 76
      Lookup = True
    end
    object CompanyInfoTblPost_Code: TStringField
      FieldKind = fkLookup
      FieldName = 'Post_Code'
      LookupDataSet = PopulatedPlaceTbl
      LookupKeyFields = 'PK_ID'
      LookupResultField = 'Post_Code'
      KeyFields = 'VK_Populated_Place'
      Size = 25
      Lookup = True
    end
  end
  object EmpTbl: TADOTable
    Connection = StoreDBConnection
    CursorType = ctStatic
    TableName = 'Employes'
    Left = 128
    Top = 104
    object EmpTblPK_ID: TAutoIncField
      FieldName = 'PK_ID'
      ReadOnly = True
    end
    object EmpTblPhone: TWideStringField
      FieldName = 'Phone'
      Size = 15
    end
    object EmpTblEmail: TWideStringField
      FieldName = 'Email'
      Size = 55
    end
    object EmpTblPicture: TBlobField
      FieldName = 'Picture'
    end
    object EmpTblSecondName: TStringField
      FieldKind = fkLookup
      FieldName = 'SecondName'
      LookupDataSet = CitizensTbl
      LookupKeyFields = 'PK_ID'
      LookupResultField = 'Second_Name'
      KeyFields = 'VK_Citizen'
      Size = 75
      Lookup = True
    end
    object EmpTblLastName: TStringField
      FieldKind = fkLookup
      FieldName = 'LastName'
      LookupDataSet = CitizensTbl
      LookupKeyFields = 'PK_ID'
      LookupResultField = 'Last_Name'
      KeyFields = 'VK_Citizen'
      Size = 75
      Lookup = True
    end
    object EmpTblProffesion: TStringField
      FieldKind = fkLookup
      FieldName = 'Proffesion'
      LookupDataSet = ProffesionTbl
      LookupKeyFields = 'PK_ID'
      LookupResultField = 'Profession_Name'
      KeyFields = 'VK_Proffesion'
      Size = 75
      Lookup = True
    end
    object EmpTblVK_Citizen: TIntegerField
      FieldName = 'VK_Citizen'
    end
    object EmpTblVK_Proffesion: TIntegerField
      FieldName = 'VK_Proffesion'
    end
    object EmpTblFirstName: TStringField
      FieldKind = fkLookup
      FieldName = 'FirstName'
      LookupDataSet = CitizensTbl
      LookupKeyFields = 'PK_ID'
      LookupResultField = 'First_Name'
      KeyFields = 'VK_Citizen'
      Size = 155
      Lookup = True
    end
  end
  object BankTbl: TADOTable
    Connection = StoreDBConnection
    CursorType = ctStatic
    TableName = 'Bank_Account'
    Left = 192
    Top = 104
    object BankTblPK_ID: TAutoIncField
      FieldName = 'PK_ID'
      ReadOnly = True
    end
    object BankTblBank_Name: TWideStringField
      FieldName = 'Bank_Name'
      Size = 255
    end
    object BankTblIBAN: TWideStringField
      FieldName = 'IBAN'
      Size = 255
    end
    object BankTblBIC: TWideStringField
      FieldName = 'BIC'
      Size = 10
    end
  end
  object CitizensTbl: TADOTable
    Connection = StoreDBConnection
    CursorType = ctStatic
    TableName = 'Citizens'
    Left = 256
    Top = 104
    object CitizensTblPK_ID: TAutoIncField
      FieldName = 'PK_ID'
      ReadOnly = True
    end
    object CitizensTblFirst_Name: TWideStringField
      FieldName = 'First_Name'
      Size = 35
    end
    object CitizensTblSecond_Name: TWideStringField
      FieldName = 'Second_Name'
      Size = 35
    end
    object CitizensTblLast_Name: TWideStringField
      FieldName = 'Last_Name'
      Size = 35
    end
    object CitizensTblEGN: TIntegerField
      FieldName = 'EGN'
    end
    object CitizensTblAddress: TWideStringField
      FieldName = 'Address'
      Size = 155
    end
    object CitizensTblPhone: TWideStringField
      FieldName = 'Phone'
      Size = 25
    end
    object CitizensTblEmail: TWideStringField
      FieldName = 'Email'
      Size = 55
    end
  end
  object ProffesionTbl: TADOTable
    Connection = StoreDBConnection
    CursorType = ctStatic
    TableName = 'Profession'
    Left = 432
    Top = 104
    object ProffesionTblPK_ID: TAutoIncField
      FieldName = 'PK_ID'
      ReadOnly = True
    end
    object ProffesionTblProfession_Name: TWideStringField
      FieldName = 'Profession_Name'
      Size = 55
    end
  end
  object PopulatedPlaceTbl: TADOTable
    Connection = StoreDBConnection
    CursorType = ctStatic
    TableName = 'Populated_Place'
    Left = 344
    Top = 104
    object PopulatedPlaceTblPK_ID: TAutoIncField
      FieldName = 'PK_ID'
      ReadOnly = True
    end
    object PopulatedPlaceTblPlace_Name: TWideStringField
      FieldName = 'Place_Name'
      Size = 55
    end
    object PopulatedPlaceTblPost_Code: TIntegerField
      FieldName = 'Post_Code'
    end
  end
  object EmpDs: TDataSource
    DataSet = EmpTbl
    Left = 128
    Top = 168
  end
  object BankDs: TDataSource
    DataSet = BankTbl
    Left = 192
    Top = 168
  end
  object CitizenDs: TDataSource
    DataSet = CitizensTbl
    Left = 256
    Top = 168
  end
  object PopulatedPlaceDs: TDataSource
    DataSet = PopulatedPlaceTbl
    Left = 344
    Top = 168
  end
  object ProffesionDs: TDataSource
    DataSet = ProffesionTbl
    Left = 432
    Top = 168
  end
  object ClientsTbl: TADOTable
    Connection = StoreDBConnection
    CursorType = ctStatic
    TableName = 'Clients'
    Left = 512
    Top = 104
    object ClientsTblPK_ID: TAutoIncField
      FieldName = 'PK_ID'
      ReadOnly = True
    end
    object ClientsTblCompany_Name: TWideStringField
      FieldName = 'Company_Name'
      Size = 35
    end
    object ClientsTblIdn_By_Zdds: TWideStringField
      FieldName = 'Idn_By_Zdds'
      Size = 255
    end
    object ClientsTblVK_Manager: TIntegerField
      FieldName = 'VK_Manager'
    end
    object ClientsTblVK_Populated_Place: TIntegerField
      FieldName = 'VK_Populated_Place'
    end
    object ClientsTblAddress: TWideStringField
      FieldName = 'Address'
      Size = 155
    end
    object ClientsTblPhone: TWideStringField
      FieldName = 'Phone'
      Size = 15
    end
    object ClientsTblFax: TWideStringField
      FieldName = 'Fax'
      Size = 15
    end
    object ClientsTblEmail: TWideStringField
      FieldName = 'Email'
      Size = 55
    end
    object ClientsTblWeb: TWideStringField
      FieldName = 'Web'
      Size = 55
    end
    object ClientsTblFirst_Name: TStringField
      FieldKind = fkLookup
      FieldName = 'First_Name'
      LookupDataSet = CitizensTbl
      LookupKeyFields = 'PK_ID'
      LookupResultField = 'First_Name'
      KeyFields = 'VK_Manager'
      Size = 155
      Lookup = True
    end
    object ClientsTblSecond_Name: TStringField
      FieldKind = fkLookup
      FieldName = 'Second_Name'
      LookupDataSet = CitizensTbl
      LookupKeyFields = 'PK_ID'
      LookupResultField = 'Second_Name'
      KeyFields = 'VK_Manager'
      Size = 155
      Lookup = True
    end
    object ClientsTblLast_Name: TStringField
      FieldKind = fkLookup
      FieldName = 'Last_Name'
      LookupDataSet = CitizensTbl
      LookupKeyFields = 'PK_ID'
      LookupResultField = 'Last_Name'
      KeyFields = 'VK_Manager'
      Size = 155
      Lookup = True
    end
    object ClientsTblCity: TStringField
      FieldKind = fkLookup
      FieldName = 'City'
      LookupDataSet = PopulatedPlaceTbl
      LookupKeyFields = 'PK_ID'
      LookupResultField = 'Place_Name'
      KeyFields = 'VK_Populated_Place'
      Size = 155
      Lookup = True
    end
    object ClientsTblPostal_Code: TStringField
      FieldKind = fkLookup
      FieldName = 'Postal_Code'
      LookupDataSet = PopulatedPlaceTbl
      LookupKeyFields = 'PK_ID'
      LookupResultField = 'Post_Code'
      KeyFields = 'VK_Populated_Place'
      Size = 155
      Lookup = True
    end
  end
  object ClientsDs: TDataSource
    DataSet = ClientsTbl
    Left = 512
    Top = 169
  end
  object WharehouseTbl: TADOTable
    Connection = StoreDBConnection
    CursorType = ctStatic
    TableName = 'Store'
    Left = 608
    Top = 104
    object WharehouseTblPK_ID: TAutoIncField
      FieldName = 'PK_ID'
      ReadOnly = True
    end
    object WharehouseTblStore_Name: TWideStringField
      FieldName = 'Store_Name'
      Size = 25
    end
    object WharehouseTblVK_Company: TIntegerField
      FieldName = 'VK_Company'
    end
    object WharehouseTblAddress: TWideStringField
      FieldName = 'Address'
      Size = 255
    end
    object WharehouseTblPhone: TWideStringField
      FieldName = 'Phone'
      Size = 255
    end
    object WharehouseTblEmail: TWideStringField
      FieldName = 'Email'
      Size = 255
    end
    object WharehouseTblCompanyName: TStringField
      FieldKind = fkLookup
      FieldName = 'CompanyName'
      LookupDataSet = CompanyInfoTbl
      LookupKeyFields = 'PK_ID'
      LookupResultField = 'Company_Name'
      KeyFields = 'VK_Company'
      Size = 155
      Lookup = True
    end
    object WharehouseTblCompanyEik: TStringField
      FieldKind = fkLookup
      FieldName = 'CompanyEik'
      LookupDataSet = CompanyInfoTbl
      LookupKeyFields = 'PK_ID'
      LookupResultField = 'Bullstat'
      KeyFields = 'VK_Company'
      Size = 155
      Lookup = True
    end
  end
  object WharehouseDs: TDataSource
    DataSet = WharehouseTbl
    Left = 608
    Top = 169
  end
  object InventoriesTbl: TADOTable
    Connection = StoreDBConnection
    CursorType = ctStatic
    TableName = 'Inventories'
    Left = 24
    Top = 232
    object InventoriesTblPK_ID: TAutoIncField
      FieldName = 'PK_ID'
      ReadOnly = True
    end
    object InventoriesTblVK_Store: TIntegerField
      FieldName = 'VK_Store'
    end
    object InventoriesTblVK_SMC: TIntegerField
      FieldName = 'VK_SMC'
    end
    object InventoriesTblStore_Name: TStringField
      FieldKind = fkLookup
      FieldName = 'Store_Name'
      LookupDataSet = WharehouseTbl
      LookupKeyFields = 'PK_ID'
      LookupResultField = 'Store_Name'
      KeyFields = 'VK_Store'
      Size = 155
      Lookup = True
    end
    object InventoriesTblPhone: TStringField
      FieldKind = fkLookup
      FieldName = 'Phone'
      LookupDataSet = WharehouseTbl
      LookupKeyFields = 'PK_ID'
      LookupResultField = 'Phone'
      KeyFields = 'VK_Store'
      Size = 155
      Lookup = True
    end
    object InventoriesTblEmail: TStringField
      FieldKind = fkLookup
      FieldName = 'Email'
      LookupDataSet = WharehouseTbl
      LookupKeyFields = 'PK_ID'
      LookupResultField = 'Email'
      KeyFields = 'VK_Store'
      Size = 155
      Lookup = True
    end
    object InventoriesTblSMC_Name: TStringField
      FieldKind = fkLookup
      FieldName = 'SMC_Name'
      LookupDataSet = SMCTbl
      LookupKeyFields = 'PK_ID'
      LookupResultField = 'SMC_NAME'
      KeyFields = 'VK_SMC'
      Size = 155
      Lookup = True
    end
    object InventoriesTblCategory: TStringField
      FieldKind = fkLookup
      FieldName = 'Category'
      LookupDataSet = SMCTbl
      LookupKeyFields = 'PK_ID'
      LookupResultField = 'Category_Name'
      KeyFields = 'VK_SMC'
      Size = 155
      Lookup = True
    end
    object InventoriesTblUnit_Price: TFloatField
      FieldKind = fkLookup
      FieldName = 'Unit_Price'
      LookupDataSet = SMCTbl
      LookupKeyFields = 'PK_ID'
      LookupResultField = 'Unit_Price'
      KeyFields = 'VK_SMC'
      Lookup = True
    end
    object InventoriesTblAvailability: TWideStringField
      FieldName = 'Availability'
      Size = 12
    end
  end
  object InventoriesDs: TDataSource
    DataSet = InventoriesTbl
    Left = 24
    Top = 289
  end
  object SMCTbl: TADOTable
    Connection = StoreDBConnection
    CursorType = ctStatic
    TableName = 'SMC'
    Left = 104
    Top = 232
    object SMCTblPK_ID: TAutoIncField
      FieldName = 'PK_ID'
      ReadOnly = True
    end
    object SMCTblSMC_NAME: TWideStringField
      FieldName = 'SMC_NAME'
      Size = 55
    end
    object SMCTblVK_Manufactures: TIntegerField
      FieldName = 'VK_Manufactures'
    end
    object SMCTblVK_Model: TWideStringField
      FieldName = 'VK_Model'
      Size = 155
    end
    object SMCTblVK_Category: TWideStringField
      FieldName = 'VK_Category'
      Size = 25
    end
    object SMCTblAdditional_Description: TWideStringField
      FieldName = 'Additional_Description'
      Size = 255
    end
    object SMCTblUnit_Price: TBCDField
      FieldName = 'Unit_Price'
      Precision = 19
    end
    object SMCTblBrand_Name: TStringField
      FieldKind = fkLookup
      FieldName = 'Brand_Name'
      LookupDataSet = ManufacturesTbl
      LookupKeyFields = 'PK_ID'
      LookupResultField = 'Brand_Name'
      KeyFields = 'VK_Manufactures'
      Size = 155
      Lookup = True
    end
    object SMCTblWeb: TStringField
      FieldKind = fkLookup
      FieldName = 'Web'
      LookupDataSet = ManufacturesTbl
      LookupKeyFields = 'PK_ID'
      LookupResultField = 'web'
      KeyFields = 'VK_Manufactures'
      Size = 155
      Lookup = True
    end
    object SMCTblModel: TStringField
      FieldKind = fkLookup
      FieldName = 'Model'
      LookupDataSet = SMCModelsTbl
      LookupKeyFields = 'PK_ID'
      LookupResultField = 'Model'
      KeyFields = 'VK_Model'
      Size = 155
      Lookup = True
    end
    object SMCTblYear_Of_Manufacture: TDateTimeField
      FieldKind = fkLookup
      FieldName = 'Year_Of_Manufacture'
      LookupDataSet = SMCModelsTbl
      LookupKeyFields = 'PK_ID'
      LookupResultField = 'Year_Of_Manufacture'
      KeyFields = 'VK_Model'
      Lookup = True
    end
    object SMCTblWeight: TFloatField
      FieldKind = fkLookup
      FieldName = 'Weight'
      LookupDataSet = SMCModelsTbl
      LookupKeyFields = 'PK_ID'
      LookupResultField = 'Weight'
      KeyFields = 'VK_Model'
      Lookup = True
    end
    object SMCTblSize: TFloatField
      FieldKind = fkLookup
      FieldName = 'Size'
      LookupDataSet = SMCModelsTbl
      LookupKeyFields = 'PK_ID'
      LookupResultField = 'Size'
      KeyFields = 'VK_Model'
      Lookup = True
    end
    object SMCTblCategory_Name: TStringField
      FieldKind = fkLookup
      FieldName = 'Category_Name'
      LookupDataSet = CategoryTbl
      LookupKeyFields = 'PK_ID'
      LookupResultField = 'Category_Name'
      KeyFields = 'VK_Category'
      Size = 155
      Lookup = True
    end
    object SMCTblPicture: TBlobField
      FieldName = 'Picture'
    end
  end
  object SMCDs: TDataSource
    DataSet = SMCTbl
    Left = 104
    Top = 289
  end
  object SMCModelsTbl: TADOTable
    Connection = StoreDBConnection
    CursorType = ctStatic
    TableName = 'SMC_Models'
    Left = 168
    Top = 232
    object SMCModelsTblPK_ID: TAutoIncField
      FieldName = 'PK_ID'
      ReadOnly = True
    end
    object SMCModelsTblModel: TWideStringField
      FieldName = 'Model'
      Size = 155
    end
    object SMCModelsTblYear_Of_Manufacture: TDateTimeField
      FieldName = 'Year_Of_Manufacture'
    end
    object SMCModelsTblWeight: TIntegerField
      FieldName = 'Weight'
    end
    object SMCModelsTblSize: TIntegerField
      FieldName = 'Size'
    end
  end
  object SMCModelsDs: TDataSource
    DataSet = SMCModelsTbl
    Left = 168
    Top = 289
  end
  object ManufacturesTbl: TADOTable
    Connection = StoreDBConnection
    CursorType = ctStatic
    TableName = 'Manufacturers'
    Left = 256
    Top = 232
    object ManufacturesTblPK_ID: TAutoIncField
      FieldName = 'PK_ID'
      ReadOnly = True
    end
    object ManufacturesTblBrand_Name: TWideStringField
      FieldName = 'Brand_Name'
      Size = 55
    end
    object ManufacturesTblweb: TWideStringField
      FieldName = 'web'
      Size = 55
    end
  end
  object ManufacturesDs: TDataSource
    DataSet = ManufacturesTbl
    Left = 256
    Top = 289
  end
  object CategoryTbl: TADOTable
    Connection = StoreDBConnection
    CursorType = ctStatic
    TableName = 'Category'
    Left = 368
    Top = 232
    object CategoryTblPK_ID: TAutoIncField
      FieldName = 'PK_ID'
      ReadOnly = True
    end
    object CategoryTblCategory_Name: TWideStringField
      FieldName = 'Category_Name'
      Size = 55
    end
  end
  object CategoryDs: TDataSource
    DataSet = CategoryTbl
    Left = 368
    Top = 289
  end
  object Bringing_To_StoreTbl: TADOTable
    Connection = StoreDBConnection
    CursorType = ctStatic
    TableName = 'Bringing_To_Store'
    Left = 472
    Top = 232
    object Bringing_To_StoreTblPK_ID: TAutoIncField
      FieldName = 'PK_ID'
      ReadOnly = True
    end
    object Bringing_To_StoreTblDoc_Number: TWideStringField
      FieldName = 'Doc_Number'
      Size = 55
    end
    object Bringing_To_StoreTblDoc_Date: TDateTimeField
      FieldName = 'Doc_Date'
    end
    object Bringing_To_StoreTblDoc_Type: TWideStringField
      FieldName = 'Doc_Type'
      Size = 55
    end
    object Bringing_To_StoreTblVK_Client: TIntegerField
      FieldName = 'VK_Client'
    end
    object Bringing_To_StoreTblVK_Payment_Metod: TIntegerField
      FieldName = 'VK_Payment_Metod'
    end
    object Bringing_To_StoreTblVK_Employes: TIntegerField
      FieldName = 'VK_Employes'
    end
    object Bringing_To_StoreTblVK_SMC: TIntegerField
      FieldName = 'VK_SMC'
    end
    object Bringing_To_StoreTblUnit_Price: TBCDField
      FieldName = 'Unit_Price'
      currency = True
      Precision = 19
    end
    object Bringing_To_StoreTblDiscount: TIntegerField
      FieldName = 'Discount'
    end
    object Bringing_To_StoreTblClient_Name: TStringField
      FieldKind = fkLookup
      FieldName = 'Client_Name'
      LookupDataSet = ClientsTbl
      LookupKeyFields = 'PK_ID'
      LookupResultField = 'Company_Name'
      KeyFields = 'VK_Client'
      Size = 155
      Lookup = True
    end
    object Bringing_To_StoreTblEIK: TStringField
      FieldKind = fkLookup
      FieldName = 'EIK'
      LookupDataSet = ClientsTbl
      LookupKeyFields = 'PK_ID'
      LookupResultField = 'Idn_By_Zdds'
      KeyFields = 'VK_Client'
      Size = 155
      Lookup = True
    end
    object Bringing_To_StoreTblCl_Adress: TStringField
      FieldKind = fkLookup
      FieldName = 'Cl_Adress'
      LookupDataSet = ClientsTbl
      LookupKeyFields = 'PK_ID'
      LookupResultField = 'Address'
      KeyFields = 'VK_Client'
      Size = 155
      Lookup = True
    end
    object Bringing_To_StoreTblVK_Store: TIntegerField
      FieldName = 'VK_Store'
    end
    object Bringing_To_StoreTblStore_Name: TStringField
      FieldKind = fkLookup
      FieldName = 'Store_Name'
      LookupDataSet = WharehouseTbl
      LookupKeyFields = 'PK_ID'
      LookupResultField = 'Store_Name'
      KeyFields = 'VK_Store'
      Size = 155
      Lookup = True
    end
    object Bringing_To_StoreTblWh_Phone: TStringField
      FieldKind = fkLookup
      FieldName = 'Wh_Phone'
      LookupDataSet = WharehouseTbl
      LookupKeyFields = 'PK_ID'
      LookupResultField = 'Phone'
      KeyFields = 'VK_Store'
      Size = 155
      Lookup = True
    end
    object Bringing_To_StoreTblWh_Adress: TStringField
      FieldKind = fkLookup
      FieldName = 'Wh_Adress'
      LookupDataSet = WharehouseTbl
      LookupKeyFields = 'PK_ID'
      LookupResultField = 'Address'
      KeyFields = 'VK_Store'
      Size = 155
      Lookup = True
    end
    object Bringing_To_StoreTblFirst_Name: TStringField
      FieldKind = fkLookup
      FieldName = 'First_Name'
      LookupDataSet = EmpTbl
      LookupKeyFields = 'PK_ID'
      LookupResultField = 'FirstName'
      KeyFields = 'VK_Employes'
      Size = 155
      Lookup = True
    end
    object Bringing_To_StoreTblSecond_Name: TStringField
      FieldKind = fkLookup
      FieldName = 'Second_Name'
      LookupDataSet = EmpTbl
      LookupKeyFields = 'PK_ID'
      LookupResultField = 'SecondName'
      KeyFields = 'VK_Employes'
      Size = 155
      Lookup = True
    end
    object Bringing_To_StoreTbllast_Name: TStringField
      FieldKind = fkLookup
      FieldName = 'last_Name'
      LookupDataSet = EmpTbl
      LookupKeyFields = 'PK_ID'
      LookupResultField = 'LastName'
      KeyFields = 'VK_Employes'
      Size = 155
      Lookup = True
    end
    object Bringing_To_StoreTblSMC_NAME: TStringField
      FieldKind = fkLookup
      FieldName = 'SMC_NAME'
      LookupDataSet = SMCTbl
      LookupKeyFields = 'PK_ID'
      LookupResultField = 'SMC_NAME'
      KeyFields = 'VK_SMC'
      Size = 155
      Lookup = True
    end
    object Bringing_To_StoreTblSale_Price: TCurrencyField
      FieldKind = fkLookup
      FieldName = 'Sale_Price'
      LookupDataSet = SMCTbl
      LookupKeyFields = 'PK_ID'
      LookupResultField = 'Unit_Price'
      KeyFields = 'VK_SMC'
      Lookup = True
    end
    object Bringing_To_StoreTblPayment_way: TStringField
      FieldKind = fkLookup
      FieldName = 'Payment_way'
      LookupDataSet = Payment_WayTbl
      LookupKeyFields = 'PK_ID'
      LookupResultField = 'Peyment_Way'
      KeyFields = 'VK_Payment_Metod'
      Size = 155
      Lookup = True
    end
  end
  object Bringing_To_StoreDs: TDataSource
    DataSet = Bringing_To_StoreTbl
    Left = 472
    Top = 289
  end
  object OrdersTbl: TADOTable
    Connection = StoreDBConnection
    CursorType = ctStatic
    TableName = 'Orders'
    Left = 600
    Top = 232
    object OrdersTblPK_ID: TAutoIncField
      FieldName = 'PK_ID'
      ReadOnly = True
    end
    object OrdersTblOrder_Number: TWideStringField
      FieldName = 'Order_Number'
      Size = 55
    end
    object OrdersTblOrder_Date: TDateTimeField
      FieldName = 'Order_Date'
    end
    object OrdersTblDoc_Type: TWideStringField
      FieldName = 'Doc_Type'
      Size = 255
    end
    object OrdersTblVK_Client: TIntegerField
      FieldName = 'VK_Client'
    end
    object OrdersTblVK_Payment_Metod: TIntegerField
      FieldName = 'VK_Payment_Metod'
    end
    object OrdersTblVK_Employes: TIntegerField
      FieldName = 'VK_Employes'
    end
    object OrdersTblVK_SMC: TIntegerField
      FieldName = 'VK_SMC'
    end
    object OrdersTblUnit_Price: TBCDField
      FieldName = 'Unit_Price'
      Precision = 19
    end
    object OrdersTblDiscount: TIntegerField
      FieldName = 'Discount'
    end
    object OrdersTblClCmpName: TStringField
      FieldKind = fkLookup
      FieldName = 'ClCmpName'
      LookupDataSet = ClientsTbl
      LookupKeyFields = 'PK_ID'
      LookupResultField = 'Company_Name'
      KeyFields = 'VK_Client'
      Size = 155
      Lookup = True
    end
    object OrdersTblEIK: TStringField
      FieldKind = fkLookup
      FieldName = 'EIK'
      LookupDataSet = ClientsTbl
      LookupKeyFields = 'PK_ID'
      LookupResultField = 'Idn_By_Zdds'
      KeyFields = 'VK_Client'
      Size = 155
      Lookup = True
    end
    object OrdersTblAdress_Client: TStringField
      FieldKind = fkLookup
      FieldName = 'Adress_Client'
      LookupDataSet = ClientsTbl
      LookupKeyFields = 'PK_ID'
      LookupResultField = 'Address'
      KeyFields = 'VK_Client'
      Size = 155
      Lookup = True
    end
    object OrdersTblVK_Store: TIntegerField
      FieldName = 'VK_Store'
    end
    object OrdersTblStore_Name: TStringField
      FieldKind = fkLookup
      FieldName = 'Store_Name'
      LookupDataSet = WharehouseTbl
      LookupKeyFields = 'PK_ID'
      LookupResultField = 'Store_Name'
      KeyFields = 'VK_Store'
      Size = 155
      Lookup = True
    end
    object OrdersTblPhone: TStringField
      FieldKind = fkLookup
      FieldName = 'Phone'
      LookupDataSet = WharehouseTbl
      LookupKeyFields = 'PK_ID'
      LookupResultField = 'Phone'
      KeyFields = 'VK_Store'
      Size = 155
      Lookup = True
    end
    object OrdersTblWh_Adress: TStringField
      FieldKind = fkLookup
      FieldName = 'Wh_Adress'
      LookupDataSet = WharehouseTbl
      LookupKeyFields = 'PK_ID'
      LookupResultField = 'Address'
      KeyFields = 'VK_Store'
      Size = 155
      Lookup = True
    end
    object OrdersTblPaymentType: TStringField
      FieldKind = fkLookup
      FieldName = 'PaymentType'
      LookupDataSet = Payment_WayTbl
      LookupKeyFields = 'PK_ID'
      LookupResultField = 'Peyment_Way'
      KeyFields = 'VK_Payment_Metod'
      Size = 155
      Lookup = True
    end
    object OrdersTblFirst_Name: TStringField
      FieldKind = fkLookup
      FieldName = 'First_Name'
      LookupDataSet = EmpTbl
      LookupKeyFields = 'PK_ID'
      LookupResultField = 'FirstName'
      KeyFields = 'VK_Employes'
      Size = 155
      Lookup = True
    end
    object OrdersTblSecond_Name: TStringField
      FieldKind = fkLookup
      FieldName = 'Second_Name'
      LookupDataSet = EmpTbl
      LookupKeyFields = 'PK_ID'
      LookupResultField = 'SecondName'
      KeyFields = 'VK_Employes'
      Size = 155
      Lookup = True
    end
    object OrdersTblLast_Name: TStringField
      FieldKind = fkLookup
      FieldName = 'Last_Name'
      LookupDataSet = EmpTbl
      LookupKeyFields = 'PK_ID'
      LookupResultField = 'LastName'
      KeyFields = 'VK_Employes'
      Size = 155
      Lookup = True
    end
    object OrdersTblSMC_NAME: TStringField
      FieldKind = fkLookup
      FieldName = 'SMC_NAME'
      LookupDataSet = SMCTbl
      LookupKeyFields = 'PK_ID'
      LookupResultField = 'SMC_NAME'
      KeyFields = 'VK_SMC'
      Size = 155
      Lookup = True
    end
    object OrdersTblSale_Price: TStringField
      FieldKind = fkLookup
      FieldName = 'Sale_Price'
      LookupDataSet = SMCTbl
      LookupKeyFields = 'PK_ID'
      LookupResultField = 'Unit_Price'
      KeyFields = 'VK_SMC'
      Size = 155
      Lookup = True
    end
  end
  object OrdersDs: TDataSource
    DataSet = OrdersTbl
    Left = 600
    Top = 289
  end
  object Payment_WayTbl: TADOTable
    Connection = StoreDBConnection
    CursorType = ctStatic
    TableName = 'Payment_Metod'
    Left = 688
    Top = 232
    object Payment_WayTblPK_ID: TAutoIncField
      FieldName = 'PK_ID'
      ReadOnly = True
    end
    object Payment_WayTblPeyment_Way: TWideStringField
      FieldName = 'Peyment_Way'
      Size = 25
    end
  end
  object Payment_MetodDS: TDataSource
    DataSet = Payment_WayTbl
    Left = 688
    Top = 289
  end
end
