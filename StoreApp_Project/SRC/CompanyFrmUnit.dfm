object CompanyFrm: TCompanyFrm
  Left = 0
  Top = 0
  Caption = 'Company'
  ClientHeight = 468
  ClientWidth = 1063
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  PixelsPerInch = 96
  TextHeight = 13
  object NavContentPnl: TPanel
    Left = 0
    Top = 0
    Width = 1063
    Height = 49
    Align = alTop
    TabOrder = 0
    ExplicitLeft = -418
    ExplicitWidth = 1053
    DesignSize = (
      1063
      49)
    object DBNavigator: TDBNavigator
      Left = 8
      Top = 4
      Width = 1035
      Height = 41
      DataSource = DMStore.CompanyInfoDS
      VisibleButtons = [nbFirst, nbPrior, nbNext, nbLast, nbInsert, nbDelete, nbEdit, nbPost, nbCancel]
      Anchors = [akLeft, akTop, akRight]
      TabOrder = 0
      ExplicitWidth = 1026
    end
  end
  object ContentPnl: TPanel
    Left = 0
    Top = 49
    Width = 1063
    Height = 419
    Align = alClient
    ShowCaption = False
    TabOrder = 1
    ExplicitTop = 51
    ExplicitWidth = 1112
    DesignSize = (
      1063
      419)
    object ContentGrbx: TGroupBox
      Left = 1
      Top = 1
      Width = 632
      Height = 416
      Anchors = [akLeft, akTop, akRight]
      Caption = 'Company list'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -19
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 0
      object DataDbGrd: TDBGrid
        Left = 2
        Top = 25
        Width = 615
        Height = 390
        DataSource = DMStore.CompanyInfoDS
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -19
        TitleFont.Name = 'Tahoma'
        TitleFont.Style = [fsBold]
        Columns = <
          item
            Expanded = False
            FieldName = 'Company_Name'
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -15
            Title.Font.Name = 'Tahoma'
            Title.Font.Style = []
            Width = 155
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Bullstat'
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -15
            Title.Font.Name = 'Tahoma'
            Title.Font.Style = []
            Width = 155
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Address'
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -15
            Title.Font.Name = 'Tahoma'
            Title.Font.Style = []
            Width = 255
            Visible = True
          end>
      end
    end
    object MolInfoGrbx: TGroupBox
      Left = 639
      Top = 2
      Width = 418
      Height = 94
      Anchors = [akTop, akRight]
      Caption = 'MOL (materially responsible person)'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clCaptionText
      Font.Height = -16
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 1
      object Label1: TLabel
        Left = 3
        Top = 24
        Width = 79
        Height = 18
        Caption = 'First name'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label2: TLabel
        Left = 151
        Top = 23
        Width = 98
        Height = 18
        Caption = 'Second name'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label3: TLabel
        Left = 280
        Top = 24
        Width = 76
        Height = 18
        Caption = 'Last name'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object AddEmpSpBtn: TSpeedButton
        Left = 382
        Top = 46
        Width = 25
        Height = 25
        Hint = 'Add new'
        Caption = '...'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clCaptionText
        Font.Height = -15
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        ParentShowHint = False
        ShowHint = True
        OnClick = AddEmpSpBtnClick
      end
      object SecondNameDbEdt: TDBEdit
        Left = 150
        Top = 47
        Width = 122
        Height = 24
        DataField = 'SecondName'
        DataSource = DMStore.CompanyInfoDS
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 0
      end
      object LastNameDbEdt: TDBEdit
        Left = 279
        Top = 47
        Width = 97
        Height = 24
        DataField = 'LastName'
        DataSource = DMStore.CompanyInfoDS
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 1
      end
      object FirstNameLookUpEdt: TDBLookupComboBox
        Left = 3
        Top = 47
        Width = 142
        Height = 24
        DataField = 'FirstName'
        DataSource = DMStore.CompanyInfoDS
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clCaptionText
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 2
      end
    end
    object BankGrbx: TGroupBox
      Left = 639
      Top = 230
      Width = 418
      Height = 139
      Anchors = [akTop, akRight]
      Caption = 'Bank information'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clCaptionText
      Font.Height = -16
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 2
      object BankNameLbl: TLabel
        Left = 9
        Top = 22
        Width = 43
        Height = 18
        Caption = 'Name'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object BICLbl: TLabel
        Left = 231
        Top = 22
        Width = 27
        Height = 18
        Caption = 'BIC'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object IBANLbl: TLabel
        Left = 9
        Top = 76
        Width = 39
        Height = 18
        Caption = 'IBAN'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object BankSpBtn: TSpeedButton
        Left = 311
        Top = 100
        Width = 90
        Height = 25
        Hint = 'Add new bank account'
        Caption = '...'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clCaptionText
        Font.Height = -15
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        ParentShowHint = False
        ShowHint = True
        OnClick = BankSpBtnClick
      end
      object BankNameDbLookUp: TDBLookupComboBox
        Left = 9
        Top = 46
        Width = 200
        Height = 24
        DataField = 'BankName'
        DataSource = DMStore.CompanyInfoDS
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clCaptionText
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 0
      end
      object BICDbEdt: TDBEdit
        Left = 231
        Top = 46
        Width = 170
        Height = 24
        DataField = 'BIC'
        DataSource = DMStore.CompanyInfoDS
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 1
      end
      object IBANDbEdt: TDBEdit
        Left = 9
        Top = 100
        Width = 272
        Height = 24
        DataField = 'IBAN'
        DataSource = DMStore.CompanyInfoDS
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 2
      end
    end
    object GroupBox1: TGroupBox
      Left = 639
      Top = 102
      Width = 418
      Height = 91
      Anchors = [akTop, akRight]
      Caption = 'GroupBox1'
      TabOrder = 3
      DesignSize = (
        418
        91)
      object PostCodeLbl: TLabel
        Left = 247
        Top = 27
        Width = 86
        Height = 18
        Caption = 'Postal code'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object PopulatedPlaceLbl: TLabel
        Left = 11
        Top = 27
        Width = 30
        Height = 18
        Anchors = [akTop]
        Caption = 'City'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object AddPopulatedPlaceSpBtn: TSpeedButton
        Left = 382
        Top = 50
        Width = 23
        Height = 25
        Hint = 'Add new populated place'
        Caption = '...'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clCaptionText
        Font.Height = -15
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        ParentShowHint = False
        ShowHint = True
        OnClick = AddPopulatedPlaceSpBtnClick
      end
      object PostCodeTbl: TDBEdit
        Left = 249
        Top = 51
        Width = 104
        Height = 24
        DataField = 'Post_Code'
        DataSource = DMStore.CompanyInfoDS
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 0
      end
      object CityDbLookUp: TDBLookupComboBox
        Left = 11
        Top = 51
        Width = 222
        Height = 24
        DataField = 'City'
        DataSource = DMStore.CompanyInfoDS
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clCaptionText
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 1
      end
    end
  end
end
