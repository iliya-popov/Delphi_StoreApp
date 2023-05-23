object WharehouseFrame: TWharehouseFrame
  Left = 0
  Top = 0
  Width = 1066
  Height = 435
  TabOrder = 0
  object NavPnl: TPanel
    Left = 0
    Top = 0
    Width = 1066
    Height = 33
    Align = alTop
    ShowCaption = False
    TabOrder = 0
    ExplicitLeft = -23
    ExplicitWidth = 1089
    DesignSize = (
      1066
      33)
    object DBNavigator: TDBNavigator
      Left = 822
      Top = 2
      Width = 228
      Height = 25
      Hint = 'Navigation'
      DataSource = DMStore.WharehouseDs
      VisibleButtons = [nbFirst, nbPrior, nbNext, nbLast]
      Anchors = [akTop, akRight]
      ParentShowHint = False
      ShowHint = True
      TabOrder = 0
      ExplicitLeft = 845
    end
  end
  object CompanyDataGrpBox: TGroupBox
    Left = 0
    Top = 33
    Width = 1066
    Height = 402
    Align = alClient
    Caption = 'Wharehouse information'
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
    ExplicitLeft = -23
    ExplicitTop = -14
    ExplicitWidth = 1089
    ExplicitHeight = 449
    DesignSize = (
      1066
      402)
    object CloseBtn: TBitBtn
      Left = 1004
      Top = 0
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
      Left = 955
      Top = 51
      Width = 95
      Height = 161
      Anchors = [akTop, akRight]
      TabOrder = 1
      ExplicitLeft = 978
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
      Width = 939
      Height = 105
      Anchors = [akLeft, akTop, akRight]
      TabOrder = 2
      DesignSize = (
        939
        105)
      object CmpNameLbl: TLabel
        Left = 16
        Top = 27
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
      object AddressLbl: TLabel
        Left = 160
        Top = 27
        Width = 73
        Height = 18
        Anchors = [akLeft, akTop, akRight]
        Caption = 'Address'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object PhoneLbl: TLabel
        Left = 499
        Top = 27
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
        Left = 668
        Top = 27
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
      object CmpNameDbEdt: TDBEdit
        Left = 13
        Top = 51
        Width = 129
        Height = 24
        DataField = 'Store_Name'
        DataSource = DMStore.WharehouseDs
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clCaptionText
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 0
      end
      object AddressDbEdt: TDBEdit
        Left = 160
        Top = 51
        Width = 323
        Height = 24
        DataField = 'Address'
        DataSource = DMStore.WharehouseDs
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 1
      end
      object PhoneDBEdit: TDBEdit
        Left = 499
        Top = 51
        Width = 150
        Height = 24
        DataField = 'Phone'
        DataSource = DMStore.WharehouseDs
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 2
      end
      object EmailDbEdt: TDBEdit
        Left = 668
        Top = 51
        Width = 245
        Height = 24
        DataField = 'Email'
        DataSource = DMStore.WharehouseDs
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 3
      end
    end
    object ContentGrbx: TGroupBox
      Left = 8
      Top = 135
      Width = 441
      Height = 94
      Caption = 'Company information'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clCaptionText
      Font.Height = -16
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 3
      object CNameLbl: TLabel
        Left = 13
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
      object EikBulstatLbl: TLabel
        Left = 229
        Top = 22
        Width = 26
        Height = 18
        Caption = 'EIK'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object AddCmpSpBtn: TSpeedButton
        Left = 378
        Top = 46
        Width = 23
        Height = 25
        Hint = 'Add new company'
        Caption = '...'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clCaptionText
        Font.Height = -15
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        ParentShowHint = False
        ShowHint = True
        OnClick = AddCmpSpBtnClick
      end
      object EikBulstatDbEdt: TDBEdit
        Left = 229
        Top = 46
        Width = 121
        Height = 24
        DataField = 'CompanyEik'
        DataSource = DMStore.WharehouseDs
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 0
      end
      object CNameLookUp: TDBLookupComboBox
        Left = 13
        Top = 46
        Width = 186
        Height = 24
        DataField = 'CompanyName'
        DataSource = DMStore.WharehouseDs
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
