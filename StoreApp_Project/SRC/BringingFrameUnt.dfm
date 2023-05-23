object BringingFrame: TBringingFrame
  Left = 0
  Top = 0
  Width = 1122
  Height = 580
  TabOrder = 0
  object NavPnl: TPanel
    Left = 0
    Top = 0
    Width = 1122
    Height = 33
    Align = alTop
    ShowCaption = False
    TabOrder = 0
    ExplicitLeft = -63
    ExplicitWidth = 1104
    DesignSize = (
      1122
      33)
    object DBNavigator: TDBNavigator
      Left = 878
      Top = 2
      Width = 228
      Height = 25
      Hint = 'Navigation'
      DataSource = DMStore.Bringing_To_StoreDs
      VisibleButtons = [nbFirst, nbPrior, nbNext, nbLast]
      Anchors = [akTop, akRight]
      ParentShowHint = False
      ShowHint = True
      TabOrder = 0
      ExplicitLeft = 596
    end
  end
  object CompanyDataGrpBox: TGroupBox
    Left = 0
    Top = 33
    Width = 1122
    Height = 547
    Align = alClient
    Caption = 'Delivery information'
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
      1122
      547)
    object CloseBtn: TBitBtn
      Left = 1060
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
      ExplicitLeft = 778
    end
    object ActDBBtnContent: TGroupBox
      Left = 1011
      Top = 51
      Width = 95
      Height = 161
      Anchors = [akTop, akRight]
      TabOrder = 1
      ExplicitLeft = 729
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
      Top = 27
      Width = 995
      Height = 470
      Anchors = [akLeft, akTop, akRight, akBottom]
      TabOrder = 2
      DesignSize = (
        995
        470)
      object ProffesionGrbx: TGroupBox
        Left = 264
        Top = 2
        Width = 313
        Height = 136
        Anchors = [akLeft, akTop, akRight]
        Caption = 'Partner'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clCaptionText
        Font.Height = -16
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 0
        DesignSize = (
          313
          136)
        object EIKLbl: TLabel
          Left = 7
          Top = 59
          Width = 31
          Height = 18
          Caption = 'EIK:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object ClientLbl: TLabel
          Left = 7
          Top = 23
          Width = 69
          Height = 18
          Caption = 'Delivery:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object AdressClLbl: TLabel
          Left = 7
          Top = 99
          Width = 56
          Height = 18
          Caption = 'Adress:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object EIKDBEdit: TDBEdit
          Left = 45
          Top = 58
          Width = 134
          Height = 24
          Anchors = [akLeft, akTop, akRight]
          DataField = 'EIK'
          DataSource = DMStore.Bringing_To_StoreDs
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clCaptionText
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          TabOrder = 0
        end
        object ClientLookUP: TDBLookupComboBox
          Left = 82
          Top = 23
          Width = 179
          Height = 24
          Anchors = [akLeft, akTop, akRight]
          DataField = 'Client_Name'
          DataSource = DMStore.Bringing_To_StoreDs
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clCaptionText
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          TabOrder = 1
        end
        object ClAdrDBEdit: TDBEdit
          Left = 69
          Top = 98
          Width = 228
          Height = 24
          Anchors = [akLeft, akTop, akRight]
          DataField = 'Cl_Adress'
          DataSource = DMStore.Bringing_To_StoreDs
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clCaptionText
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          TabOrder = 2
        end
      end
      object DocContentGrbx: TGroupBox
        Left = 0
        Top = 2
        Width = 249
        Height = 136
        Caption = 'Document'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clCaptionText
        Font.Height = -16
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 1
        object DocNumberLbl: TLabel
          Left = 24
          Top = 24
          Width = 64
          Height = 18
          Caption = 'Number:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object FrDateLbl: TLabel
          Left = 13
          Top = 59
          Width = 80
          Height = 18
          Caption = 'From date:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object DocTypeLbl: TLabel
          Left = 13
          Top = 91
          Width = 41
          Height = 18
          Caption = 'Type:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object DocumentNumberDBEdit: TDBEdit
          Left = 94
          Top = 24
          Width = 139
          Height = 24
          DataField = 'Doc_Number'
          DataSource = DMStore.Bringing_To_StoreDs
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clCaptionText
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          TabOrder = 0
        end
        object FrDateDBEdit: TDBEdit
          Left = 99
          Top = 59
          Width = 134
          Height = 24
          DataField = 'Doc_Date'
          DataSource = DMStore.Bringing_To_StoreDs
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clCaptionText
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          TabOrder = 1
        end
        object DocTypeDbCmBx: TDBComboBox
          Left = 60
          Top = 89
          Width = 173
          Height = 24
          DataField = 'Doc_Type'
          DataSource = DMStore.Bringing_To_StoreDs
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clCaptionText
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = []
          Items.Strings = (
            'Invoice'
            'Proform Invoice'
            'Other document')
          ParentFont = False
          TabOrder = 2
        end
      end
      object WhContentGrbx: TGroupBox
        Left = 583
        Top = 2
        Width = 386
        Height = 136
        Anchors = [akTop, akRight]
        Caption = 'Wharehouse'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clCaptionText
        Font.Height = -16
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 2
        DesignSize = (
          386
          136)
        object EmpPhoneLbl: TLabel
          Left = 7
          Top = 59
          Width = 51
          Height = 18
          Caption = 'Phone:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object WhNameLbl: TLabel
          Left = 7
          Top = 23
          Width = 48
          Height = 18
          Caption = 'Name:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object AddWhSpBtn: TSpeedButton
          Left = 344
          Top = 1
          Width = 27
          Height = 25
          Hint = 'Add new partner'
          Anchors = [akTop, akRight]
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
        object AddrLbl: TLabel
          Left = 7
          Top = 99
          Width = 56
          Height = 18
          Caption = 'Adress:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object EmpPhoneDBEdit: TDBEdit
          Left = 65
          Top = 56
          Width = 134
          Height = 24
          DataField = 'Wh_Phone'
          DataSource = DMStore.Bringing_To_StoreDs
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clCaptionText
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          TabOrder = 0
        end
        object WhNameDbLookUp: TDBLookupComboBox
          Left = 64
          Top = 23
          Width = 197
          Height = 24
          DataField = 'Store_Name'
          DataSource = DMStore.Bringing_To_StoreDs
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clCaptionText
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          TabOrder = 1
        end
        object AddrDBEdit: TDBEdit
          Left = 69
          Top = 98
          Width = 300
          Height = 24
          DataField = 'Wh_Adress'
          DataSource = DMStore.Bringing_To_StoreDs
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clCaptionText
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          TabOrder = 2
        end
      end
      object GroupBox1: TGroupBox
        Left = 0
        Top = 144
        Width = 369
        Height = 136
        Caption = 'Employes'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clCaptionText
        Font.Height = -16
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 3
        object SNameLbl: TLabel
          Left = 7
          Top = 59
          Width = 103
          Height = 18
          Caption = 'Second name:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object FNameLbl: TLabel
          Left = 7
          Top = 23
          Width = 84
          Height = 18
          Caption = 'First name:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object AddEmpSpBtn: TSpeedButton
          Left = 325
          Top = 3
          Width = 27
          Height = 25
          Hint = 'Add new partner'
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
        object LNameLbl: TLabel
          Left = 7
          Top = 99
          Width = 81
          Height = 18
          Caption = 'Last name:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object SNameDBEdit: TDBEdit
          Left = 116
          Top = 58
          Width = 230
          Height = 24
          DataField = 'Second_Name'
          DataSource = DMStore.Bringing_To_StoreDs
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clCaptionText
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          TabOrder = 0
        end
        object FNameLookUp: TDBLookupComboBox
          Left = 98
          Top = 21
          Width = 197
          Height = 24
          DataField = 'First_Name'
          DataSource = DMStore.Bringing_To_StoreDs
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clCaptionText
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          TabOrder = 1
        end
        object LNameDBEdit: TDBEdit
          Left = 90
          Top = 98
          Width = 256
          Height = 24
          DataField = 'last_Name'
          DataSource = DMStore.Bringing_To_StoreDs
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clCaptionText
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          TabOrder = 2
        end
      end
      object SmcContent: TGroupBox
        Left = 384
        Top = 144
        Width = 601
        Height = 313
        Anchors = [akLeft, akTop, akRight, akBottom]
        Caption = 'SMC '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clCaptionText
        Font.Height = -16
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 4
        object DataDbGrd: TDBGrid
          Left = 2
          Top = 21
          Width = 597
          Height = 290
          Align = alClient
          DataSource = DMStore.Bringing_To_StoreDs
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
              FieldName = 'SMC_NAME'
              Title.Caption = 'SMC NAME'
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
              FieldName = 'Sale_Price'
              Title.Caption = 'Sale Price'
              Title.Font.Charset = DEFAULT_CHARSET
              Title.Font.Color = clWindowText
              Title.Font.Height = -15
              Title.Font.Name = 'Tahoma'
              Title.Font.Style = []
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'Discount'
              Title.Font.Charset = DEFAULT_CHARSET
              Title.Font.Color = clWindowText
              Title.Font.Height = -15
              Title.Font.Name = 'Tahoma'
              Title.Font.Style = []
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'Unit_Price'
              Title.Caption = 'Delivery price'
              Title.Font.Charset = DEFAULT_CHARSET
              Title.Font.Color = clWindowText
              Title.Font.Height = -15
              Title.Font.Name = 'Tahoma'
              Title.Font.Style = []
              Width = 155
              Visible = True
            end>
        end
      end
      object GroupBox2: TGroupBox
        Left = 0
        Top = 298
        Width = 369
        Height = 71
        Caption = 'Payment way '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clCaptionText
        Font.Height = -16
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 5
        DesignSize = (
          369
          71)
        object AddPaymentWaySpBtn: TSpeedButton
          Left = 309
          Top = 3
          Width = 27
          Height = 25
          Hint = 'Add new payment way'
          Caption = '...'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clCaptionText
          Font.Height = -15
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          ParentShowHint = False
          ShowHint = True
          OnClick = AddPaymentWaySpBtnClick
        end
        object PaymentWeyLookUp: TDBLookupComboBox
          Left = 13
          Top = 31
          Width = 179
          Height = 24
          Anchors = [akLeft, akTop, akRight]
          DataField = 'Payment_way'
          DataSource = DMStore.Bringing_To_StoreDs
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clCaptionText
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          TabOrder = 0
        end
      end
    end
  end
end
