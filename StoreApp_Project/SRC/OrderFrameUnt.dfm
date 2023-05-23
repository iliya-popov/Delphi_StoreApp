object OrderFrame: TOrderFrame
  Left = 0
  Top = 0
  Width = 1124
  Height = 684
  TabOrder = 0
  object NavPnl: TPanel
    Left = 0
    Top = 0
    Width = 1124
    Height = 33
    Align = alTop
    ShowCaption = False
    TabOrder = 0
    ExplicitLeft = -63
    ExplicitWidth = 1104
    DesignSize = (
      1124
      33)
    object DBNavigator: TDBNavigator
      Left = 880
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
      ExplicitLeft = 878
    end
  end
  object ContentDataGrpBox: TGroupBox
    Left = 0
    Top = 33
    Width = 1124
    Height = 651
    Align = alClient
    Caption = 'Order information'
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
      1124
      651)
    object CloseBtn: TBitBtn
      Left = 1062
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
      ExplicitLeft = 1060
    end
    object ActDBBtnContent: TGroupBox
      Left = 1013
      Top = 51
      Width = 95
      Height = 161
      Anchors = [akTop, akRight]
      TabOrder = 1
      ExplicitLeft = 1011
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
      Width = 997
      Height = 574
      Anchors = [akLeft, akTop, akRight, akBottom]
      TabOrder = 2
      ExplicitWidth = 995
      ExplicitHeight = 470
      DesignSize = (
        997
        574)
      object ProffesionGrbx: TGroupBox
        Left = 264
        Top = 2
        Width = 315
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
        ExplicitWidth = 313
        DesignSize = (
          315
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
          Width = 136
          Height = 24
          Anchors = [akLeft, akTop, akRight]
          DataField = 'EIK'
          DataSource = DMStore.OrdersDs
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clCaptionText
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          TabOrder = 0
          ExplicitWidth = 134
        end
        object ClientLookUP: TDBLookupComboBox
          Left = 82
          Top = 23
          Width = 181
          Height = 24
          Anchors = [akLeft, akTop, akRight]
          DataField = 'ClCmpName'
          DataSource = DMStore.OrdersDs
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clCaptionText
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          TabOrder = 1
          ExplicitWidth = 179
        end
        object ClAdrDBEdit: TDBEdit
          Left = 69
          Top = 98
          Width = 230
          Height = 24
          Anchors = [akLeft, akTop, akRight]
          DataField = 'Adress_Client'
          DataSource = DMStore.OrdersDs
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clCaptionText
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          TabOrder = 2
          ExplicitWidth = 228
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
          DataField = 'Order_Number'
          DataSource = DMStore.OrdersDs
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
          DataField = 'Order_Date'
          DataSource = DMStore.OrdersDs
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
          DataSource = DMStore.OrdersDs
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
        Left = 585
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
        ExplicitLeft = 583
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
          DataField = 'Phone'
          DataSource = DMStore.OrdersDs
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
          DataSource = DMStore.OrdersDs
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
          DataSource = DMStore.OrdersDs
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
          DataSource = DMStore.OrdersDs
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
          DataSource = DMStore.OrdersDs
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
          DataField = 'Last_Name'
          DataSource = DMStore.OrdersDs
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
        Width = 603
        Height = 417
        Anchors = [akLeft, akTop, akRight, akBottom]
        Caption = 'SMC '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clCaptionText
        Font.Height = -16
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 4
        ExplicitWidth = 601
        ExplicitHeight = 313
        object DataDbGrd: TDBGrid
          Left = 2
          Top = 21
          Width = 599
          Height = 394
          Align = alClient
          DataSource = DMStore.OrdersDs
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
              Width = 105
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
              Title.Caption = 'Amount'
              Title.Font.Charset = DEFAULT_CHARSET
              Title.Font.Color = clWindowText
              Title.Font.Height = -15
              Title.Font.Name = 'Tahoma'
              Title.Font.Style = []
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
          DataField = 'PaymentType'
          DataSource = DMStore.OrdersDs
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
