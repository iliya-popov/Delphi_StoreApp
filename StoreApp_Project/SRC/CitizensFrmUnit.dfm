object CitizensFrm: TCitizensFrm
  Left = 0
  Top = 0
  Caption = 'Citizens'
  ClientHeight = 439
  ClientWidth = 1053
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
    Width = 1053
    Height = 49
    Align = alTop
    TabOrder = 0
    DesignSize = (
      1053
      49)
    object DBNavigator: TDBNavigator
      Left = 8
      Top = 4
      Width = 1026
      Height = 41
      DataSource = DMStore.CitizenDs
      VisibleButtons = [nbFirst, nbPrior, nbNext, nbLast, nbInsert, nbDelete, nbEdit, nbPost, nbCancel]
      Anchors = [akLeft, akTop, akRight]
      TabOrder = 0
    end
  end
  object ContentPnl: TPanel
    Left = 0
    Top = 49
    Width = 1053
    Height = 390
    Align = alClient
    ShowCaption = False
    TabOrder = 1
    object ContentGrbx: TGroupBox
      Left = 1
      Top = 1
      Width = 1051
      Height = 388
      Align = alClient
      Caption = 'Citizens list'
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
        Width = 1047
        Height = 361
        Align = alClient
        DataSource = DMStore.CitizenDs
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
            FieldName = 'First_Name'
            Title.Caption = 'First name'
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
            FieldName = 'Second_Name'
            Title.Caption = 'Second name'
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
            FieldName = 'Last_Name'
            Title.Caption = 'Last name'
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
            FieldName = 'EGN'
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
          end>
      end
    end
  end
end
