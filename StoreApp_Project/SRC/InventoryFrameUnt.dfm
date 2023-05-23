object InventoryFrame: TInventoryFrame
  Left = 0
  Top = 0
  Width = 840
  Height = 366
  TabOrder = 0
  object NavPnl: TPanel
    Left = 0
    Top = 0
    Width = 840
    Height = 33
    Align = alTop
    ShowCaption = False
    TabOrder = 0
    ExplicitLeft = -63
    ExplicitWidth = 1104
    DesignSize = (
      840
      33)
    object DBNavigator: TDBNavigator
      Left = 596
      Top = 2
      Width = 228
      Height = 25
      Hint = 'Navigation'
      DataSource = DMStore.InventoriesDs
      VisibleButtons = [nbFirst, nbPrior, nbNext, nbLast]
      Anchors = [akTop, akRight]
      ParentShowHint = False
      ShowHint = True
      TabOrder = 0
    end
  end
  object CompanyDataGrpBox: TGroupBox
    Left = 0
    Top = 33
    Width = 840
    Height = 333
    Align = alClient
    Caption = 'Inventory information'
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
    ExplicitLeft = -63
    ExplicitTop = -34
    ExplicitWidth = 1104
    ExplicitHeight = 400
    DesignSize = (
      840
      333)
    object CloseBtn: TBitBtn
      Left = 778
      Top = 3
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
    end
    object ActDBBtnContent: TGroupBox
      Left = 729
      Top = 51
      Width = 95
      Height = 161
      Anchors = [akTop, akRight]
      TabOrder = 1
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
      Left = 10
      Top = 24
      Width = 713
      Height = 321
      Anchors = [akLeft, akTop, akRight]
      TabOrder = 2
      object SMCLbl: TLabel
        Left = 7
        Top = 79
        Width = 77
        Height = 18
        Caption = 'SMC name'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object CategoryLbl: TLabel
        Left = 194
        Top = 76
        Width = 68
        Height = 18
        Caption = 'Category'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object AddCategrorySpBtn: TSpeedButton
        Left = 382
        Top = 100
        Width = 23
        Height = 25
        Hint = 'Add new category'
        Caption = '...'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clCaptionText
        Font.Height = -15
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        ParentShowHint = False
        ShowHint = True
        OnClick = AddCategrorySpBtnClick
      end
      object UnitPrice: TLabel
        Left = 413
        Top = 76
        Width = 39
        Height = 18
        Caption = 'Price'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object AvailabilityLbl: TLabel
        Left = 552
        Top = 76
        Width = 86
        Height = 18
        Caption = 'Availability'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label1: TLabel
        Left = 7
        Top = 12
        Width = 85
        Height = 18
        Caption = 'Store name'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object AddWhSpBtn: TSpeedButton
        Left = 510
        Top = 35
        Width = 23
        Height = 25
        Hint = 'Add new wharehouse'
        Caption = '...'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clCaptionText
        Font.Height = -15
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        ParentShowHint = False
        ShowHint = True
        OnClick = AddWhSpBtnClick
      end
      object PhoneLbl: TLabel
        Left = 209
        Top = 12
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
      object EmailLbl: TLabel
        Left = 361
        Top = 12
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
      object CategoryLookup: TDBLookupComboBox
        Left = 194
        Top = 100
        Width = 179
        Height = 24
        DataField = 'Category'
        DataSource = DMStore.InventoriesDs
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clCaptionText
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 0
      end
      object UntPriceDBEdit: TDBEdit
        Left = 411
        Top = 100
        Width = 129
        Height = 24
        DataField = 'Unit_Price'
        DataSource = DMStore.InventoriesDs
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clCaptionText
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 1
      end
      object DBLookupComboBox1: TDBLookupComboBox
        Left = 7
        Top = 36
        Width = 179
        Height = 24
        DataField = 'Store_Name'
        DataSource = DMStore.InventoriesDs
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clCaptionText
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 2
      end
      object PhoneDBEdit: TDBEdit
        Left = 207
        Top = 36
        Width = 129
        Height = 24
        DataField = 'Phone'
        DataSource = DMStore.InventoriesDs
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clCaptionText
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 3
      end
      object EmailDBEdit: TDBEdit
        Left = 359
        Top = 36
        Width = 129
        Height = 24
        DataField = 'Phone'
        DataSource = DMStore.InventoriesDs
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clCaptionText
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 4
      end
      object AvailabilityDbCombox: TDBComboBox
        Left = 552
        Top = 100
        Width = 145
        Height = 24
        DataField = 'Availability'
        DataSource = DMStore.InventoriesDs
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clRed
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        Items.Strings = (
          'Yes'
          'No')
        ParentFont = False
        TabOrder = 5
      end
      object SmcNameLookUp: TDBLookupComboBox
        Left = 7
        Top = 100
        Width = 170
        Height = 24
        DataField = 'SMC_Name'
        DataSource = DMStore.InventoriesDs
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clCaptionText
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 6
      end
    end
  end
end
