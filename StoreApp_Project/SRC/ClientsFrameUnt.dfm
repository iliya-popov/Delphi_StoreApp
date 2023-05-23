object ClientFrame: TClientFrame
  Left = 0
  Top = 0
  Width = 1089
  Height = 482
  TabOrder = 0
  object NavPnl: TPanel
    Left = 0
    Top = 0
    Width = 1089
    Height = 33
    Align = alTop
    ShowCaption = False
    TabOrder = 0
    ExplicitWidth = 984
    DesignSize = (
      1089
      33)
    object DBNavigator: TDBNavigator
      Left = 845
      Top = 2
      Width = 228
      Height = 25
      Hint = 'Navigation'
      DataSource = DMStore.ClientsDs
      VisibleButtons = [nbFirst, nbPrior, nbNext, nbLast]
      Anchors = [akTop, akRight]
      ParentShowHint = False
      ShowHint = True
      TabOrder = 0
      ExplicitLeft = 829
    end
  end
  object CompanyDataGrpBox: TGroupBox
    Left = 0
    Top = 33
    Width = 1089
    Height = 449
    Align = alClient
    Caption = 'Client information'
    Color = clInfoBk
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clCaptionText
    Font.Height = -19
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentBackground = False
    ParentColor = False
    ParentFont = False
    TabOrder = 1
    ExplicitLeft = 3
    ExplicitTop = 39
    ExplicitWidth = 1067
    ExplicitHeight = 582
    DesignSize = (
      1089
      449)
    object CloseBtn: TBitBtn
      Left = 1027
      Top = 1
      Width = 46
      Height = 25
      Hint = 'Close'
      Anchors = [akTop, akRight]
      Caption = 'X'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      NumGlyphs = 2
      ParentFont = False
      ParentShowHint = False
      ShowHint = True
      TabOrder = 0
      OnClick = CloseBtnClick
      ExplicitLeft = 1011
    end
    object MolInfoGrbx: TGroupBox
      Left = 8
      Top = 161
      Width = 424
      Height = 94
      Anchors = [akLeft, akTop, akRight]
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
        DataField = 'Second_Name'
        DataSource = DMStore.ClientsDs
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
        DataField = 'Last_Name'
        DataSource = DMStore.ClientsDs
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
        DataField = 'First_Name'
        DataSource = DMStore.ClientsDs
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clCaptionText
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 2
      end
    end
    object ActDBBtnContent: TGroupBox
      Left = 978
      Top = 51
      Width = 95
      Height = 161
      Anchors = [akTop, akRight]
      TabOrder = 2
      ExplicitLeft = 962
      object InsertSpBtn: TSpeedButton
        Left = 16
        Top = 16
        Width = 65
        Height = 22
        Action = DMStore.DatasetInsert1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clCaptionText
        Font.Height = -16
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object PostSpBtn: TSpeedButton
        Left = 16
        Top = 44
        Width = 65
        Height = 22
        Action = DMStore.DatasetPost1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clCaptionText
        Font.Height = -16
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object CancelSpBtn: TSpeedButton
        Left = 16
        Top = 101
        Width = 65
        Height = 22
        Action = DMStore.DatasetCancel1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clCaptionText
        Font.Height = -16
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object DelSpBtn: TSpeedButton
        Left = 16
        Top = 129
        Width = 65
        Height = 22
        Action = DMStore.DatasetDelete1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clCaptionText
        Font.Height = -16
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object EdtSpBtn: TSpeedButton
        Left = 16
        Top = 72
        Width = 65
        Height = 22
        Action = DMStore.DatasetEdit1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clCaptionText
        Font.Height = -16
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
    end
    object FContentPnl: TPanel
      Left = 8
      Top = 24
      Width = 962
      Height = 105
      Anchors = [akLeft, akTop, akRight]
      TabOrder = 3
      ExplicitWidth = 946
      DesignSize = (
        962
        105)
      object CmpNameLbl: TLabel
        Left = 16
        Top = 27
        Width = 112
        Height = 18
        Caption = 'Company name'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object PopulatedPlaceLbl: TLabel
        Left = 155
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
        ExplicitLeft = 148
      end
      object PostCodeLbl: TLabel
        Left = 340
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
      object AddPopulatedPlaceSpBtn: TSpeedButton
        Left = 431
        Top = 46
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
      object AddressLbl: TLabel
        Left = 464
        Top = 27
        Width = 76
        Height = 18
        Anchors = [akLeft, akTop, akRight]
        Caption = 'Address'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        ExplicitWidth = 60
      end
      object EikBulstatLbl: TLabel
        Left = 827
        Top = 27
        Width = 26
        Height = 18
        Anchors = [akTop, akRight]
        Caption = 'EIK'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        ExplicitLeft = 811
      end
      object CmpNameDbEdt: TDBEdit
        Left = 13
        Top = 47
        Width = 129
        Height = 24
        DataField = 'Company_Name'
        DataSource = DMStore.ClientsDs
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clCaptionText
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 0
      end
      object CityDbLookUp: TDBLookupComboBox
        Left = 148
        Top = 47
        Width = 186
        Height = 24
        DataField = 'City'
        DataSource = DMStore.ClientsDs
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clCaptionText
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 1
      end
      object PostCodeTbl: TDBEdit
        Left = 340
        Top = 47
        Width = 84
        Height = 24
        DataField = 'Postal_Code'
        DataSource = DMStore.ClientsDs
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 2
      end
      object AddressDbEdt: TDBEdit
        Left = 464
        Top = 47
        Width = 346
        Height = 24
        Anchors = [akLeft, akTop, akRight]
        DataField = 'Address'
        DataSource = DMStore.ClientsDs
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 3
        ExplicitWidth = 330
      end
      object EikBulstatDbEdt: TDBEdit
        Left = 816
        Top = 47
        Width = 121
        Height = 24
        Anchors = [akTop, akRight]
        DataField = 'Idn_By_Zdds'
        DataSource = DMStore.ClientsDs
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 4
        ExplicitLeft = 800
      end
    end
    object BankGrbx: TGroupBox
      Left = 438
      Top = 161
      Width = 534
      Height = 94
      Anchors = [akTop, akRight]
      Caption = 'Bank information'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clCaptionText
      Font.Height = -16
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 4
      object PhoneLbl: TLabel
        Left = 9
        Top = 22
        Width = 46
        Height = 18
        Caption = 'Phone'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object FaxLbl: TLabel
        Left = 95
        Top = 22
        Width = 27
        Height = 18
        Caption = 'Fax'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object EmailLbl: TLabel
        Left = 220
        Top = 22
        Width = 41
        Height = 18
        Caption = 'Email'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object WebLbl: TLabel
        Left = 367
        Top = 22
        Width = 33
        Height = 18
        Caption = 'Web'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object FaxDbEdt: TDBEdit
        Left = 95
        Top = 46
        Width = 119
        Height = 24
        DataField = 'Fax'
        DataSource = DMStore.ClientsDs
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 0
      end
      object EmailDbEdt: TDBEdit
        Left = 220
        Top = 46
        Width = 141
        Height = 24
        DataField = 'Email'
        DataSource = DMStore.ClientsDs
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 1
      end
      object PhoneDBEdit: TDBEdit
        Left = 9
        Top = 46
        Width = 80
        Height = 24
        DataField = 'Phone'
        DataSource = DMStore.ClientsDs
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 2
      end
      object WebDBEdit: TDBEdit
        Left = 367
        Top = 46
        Width = 154
        Height = 24
        DataField = 'Web'
        DataSource = DMStore.ClientsDs
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 3
      end
    end
  end
end
