object ManufacturerFrm: TManufacturerFrm
  Left = 0
  Top = 0
  Caption = 'Manufacturer'
  ClientHeight = 299
  ClientWidth = 635
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  OnClose = FormClose
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object NavContentPnl: TPanel
    Left = 0
    Top = 0
    Width = 635
    Height = 49
    Align = alTop
    TabOrder = 0
    ExplicitLeft = -418
    ExplicitWidth = 1053
    DesignSize = (
      635
      49)
    object DBNavigator: TDBNavigator
      Left = 8
      Top = 4
      Width = 603
      Height = 41
      DataSource = DMStore.ManufacturesDs
      VisibleButtons = [nbFirst, nbPrior, nbNext, nbLast, nbInsert, nbDelete, nbEdit, nbPost, nbCancel]
      Anchors = [akLeft, akTop, akRight]
      TabOrder = 0
      ExplicitWidth = 1026
    end
  end
  object ContentPnl: TPanel
    Left = 0
    Top = 49
    Width = 635
    Height = 250
    Align = alClient
    ShowCaption = False
    TabOrder = 1
    ExplicitLeft = -418
    ExplicitTop = -91
    ExplicitWidth = 1053
    ExplicitHeight = 390
    object ContentGrbx: TGroupBox
      Left = 1
      Top = 1
      Width = 633
      Height = 248
      Align = alClient
      Caption = 'Manufacturers list'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -19
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 0
      ExplicitWidth = 1051
      ExplicitHeight = 388
      object DataDbGrd: TDBGrid
        Left = 2
        Top = 25
        Width = 629
        Height = 221
        Align = alClient
        DataSource = DMStore.ManufacturesDs
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
            FieldName = 'Brand_Name'
            Title.Caption = 'Brand name'
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
            FieldName = 'web'
            Title.Caption = 'Website'
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
  end
end
