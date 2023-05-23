object BankFrm: TBankFrm
  Left = 0
  Top = 0
  Caption = 'Bank'
  ClientHeight = 299
  ClientWidth = 604
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
    Width = 604
    Height = 49
    Align = alTop
    TabOrder = 0
    DesignSize = (
      604
      49)
    object DBNavigator: TDBNavigator
      Left = 8
      Top = 4
      Width = 585
      Height = 41
      DataSource = DMStore.BankDs
      VisibleButtons = [nbFirst, nbPrior, nbNext, nbLast, nbInsert, nbDelete, nbEdit, nbPost, nbCancel]
      Anchors = [akLeft, akTop, akRight]
      TabOrder = 0
    end
  end
  object BankListPnl: TPanel
    Left = 0
    Top = 49
    Width = 604
    Height = 250
    Align = alClient
    TabOrder = 1
    object BankListGrbx: TGroupBox
      Left = 1
      Top = 1
      Width = 602
      Height = 248
      Align = alClient
      Caption = 'Bank accounts'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -19
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 0
      object BankListDbgr: TDBGrid
        Left = 2
        Top = 25
        Width = 598
        Height = 221
        Align = alClient
        DataSource = DMStore.BankDs
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -15
        TitleFont.Name = 'Tahoma'
        TitleFont.Style = []
        Columns = <
          item
            Expanded = False
            FieldName = 'Bank_Name'
            Title.Caption = 'Bank name'
            Width = 255
            Visible = True
          end
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'BIC'
            Title.Alignment = taCenter
            Width = 105
            Visible = True
          end
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'IBAN'
            Title.Alignment = taCenter
            Width = 200
            Visible = True
          end>
      end
    end
  end
end
