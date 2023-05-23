object ProfessionFrm: TProfessionFrm
  Left = 0
  Top = 0
  Caption = 'Profession'
  ClientHeight = 336
  ClientWidth = 575
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
    Width = 575
    Height = 49
    Align = alTop
    TabOrder = 0
    ExplicitWidth = 604
    DesignSize = (
      575
      49)
    object DBNavigator: TDBNavigator
      Left = 8
      Top = 4
      Width = 540
      Height = 41
      DataSource = DMStore.ProffesionDs
      VisibleButtons = [nbFirst, nbPrior, nbNext, nbLast, nbInsert, nbDelete, nbEdit, nbPost, nbCancel]
      Anchors = [akLeft, akTop, akRight]
      TabOrder = 0
      ExplicitWidth = 549
    end
  end
  object ContentPnl: TPanel
    Left = 0
    Top = 49
    Width = 575
    Height = 287
    Align = alClient
    ShowCaption = False
    TabOrder = 1
    ExplicitLeft = 240
    ExplicitTop = 72
    ExplicitWidth = 185
    ExplicitHeight = 41
    object ContentGrbx: TGroupBox
      Left = 1
      Top = 1
      Width = 573
      Height = 285
      Align = alClient
      Caption = 'Profession list'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -19
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 0
      ExplicitLeft = 184
      ExplicitTop = 64
      ExplicitWidth = 185
      ExplicitHeight = 105
      object DataDbGrd: TDBGrid
        Left = 2
        Top = 25
        Width = 569
        Height = 258
        Align = alClient
        DataSource = DMStore.ProffesionDs
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
            FieldName = 'Profession_Name'
            Title.Caption = 'Profession'
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
