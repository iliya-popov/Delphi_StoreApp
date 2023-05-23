object WharehouseFrm: TWharehouseFrm
  Left = 0
  Top = 0
  Caption = 'Wharehouse'
  ClientHeight = 443
  ClientWidth = 941
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object NavContentPnl: TPanel
    Left = 0
    Top = 0
    Width = 941
    Height = 49
    Align = alTop
    TabOrder = 0
    ExplicitWidth = 604
    DesignSize = (
      941
      49)
    object DBNavigator: TDBNavigator
      Left = 8
      Top = 4
      Width = 900
      Height = 41
      DataSource = DMStore.WharehouseDs
      VisibleButtons = [nbFirst, nbPrior, nbNext, nbLast, nbInsert, nbDelete, nbEdit, nbPost, nbCancel]
      Anchors = [akLeft, akTop, akRight]
      TabOrder = 0
      ExplicitWidth = 540
    end
  end
  object ContentPnl: TPanel
    Left = 0
    Top = 49
    Width = 941
    Height = 394
    Align = alClient
    ShowCaption = False
    TabOrder = 1
    ExplicitTop = 12
    ExplicitWidth = 575
    ExplicitHeight = 287
    object ContentGrbx: TGroupBox
      Left = 1
      Top = 1
      Width = 939
      Height = 392
      Align = alClient
      Caption = 'Wharehouses list'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -19
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 0
      ExplicitWidth = 573
      ExplicitHeight = 285
      object DataDbGrd: TDBGrid
        Left = 2
        Top = 25
        Width = 935
        Height = 365
        Align = alClient
        DataSource = DMStore.WharehouseDs
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
            FieldName = 'Store_Name'
            Title.Caption = 'Name'
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -15
            Title.Font.Name = 'Tahoma'
            Title.Font.Style = []
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
          end
          item
            Expanded = False
            FieldName = 'Phone'
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
            FieldName = 'Email'
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
            FieldName = 'CompanyName'
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
            FieldName = 'CompanyEik'
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -15
            Title.Font.Name = 'Tahoma'
            Title.Font.Style = []
            Width = 105
            Visible = True
          end>
      end
    end
  end
end
