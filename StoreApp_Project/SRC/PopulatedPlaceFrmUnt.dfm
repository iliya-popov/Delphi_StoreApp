object PplaceFrm: TPplaceFrm
  Left = 0
  Top = 0
  Caption = 'Populated place'
  ClientHeight = 442
  ClientWidth = 573
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
    Width = 573
    Height = 49
    Align = alTop
    TabOrder = 0
    ExplicitWidth = 604
    DesignSize = (
      573
      49)
    object DBNavigator: TDBNavigator
      Left = 8
      Top = 4
      Width = 549
      Height = 41
      DataSource = DMStore.PopulatedPlaceDs
      VisibleButtons = [nbFirst, nbPrior, nbNext, nbLast, nbInsert, nbDelete, nbEdit, nbPost, nbCancel]
      Anchors = [akLeft, akTop, akRight]
      TabOrder = 0
      ExplicitWidth = 1071
    end
  end
  object ContentPnl: TPanel
    Left = 0
    Top = 49
    Width = 573
    Height = 393
    Align = alClient
    ShowCaption = False
    TabOrder = 1
    ExplicitTop = 14
    ExplicitWidth = 1094
    ExplicitHeight = 428
    object ContentGrbx: TGroupBox
      Left = 1
      Top = 1
      Width = 571
      Height = 391
      Align = alClient
      Caption = 'Populated list'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -19
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 0
      ExplicitLeft = 8
      ExplicitTop = 2
      ExplicitWidth = 873
      ExplicitHeight = 423
      object DataDbGrd: TDBGrid
        Left = 2
        Top = 25
        Width = 567
        Height = 364
        Align = alClient
        DataSource = DMStore.PopulatedPlaceDs
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
            FieldName = 'Place_Name'
            Title.Caption = 'Place name'
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -15
            Title.Font.Name = 'Tahoma'
            Title.Font.Style = []
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Post_Code'
            Title.Caption = 'Postal code'
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -15
            Title.Font.Name = 'Tahoma'
            Title.Font.Style = []
            Visible = True
          end>
      end
    end
  end
end
