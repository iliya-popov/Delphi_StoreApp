object PaymentWayFrm: TPaymentWayFrm
  Left = 0
  Top = 0
  BorderStyle = bsDialog
  Caption = 'Payment Way'
  ClientHeight = 309
  ClientWidth = 438
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
    Width = 438
    Height = 49
    Align = alTop
    TabOrder = 0
    ExplicitLeft = -166
    ExplicitWidth = 604
    DesignSize = (
      438
      49)
    object DBNavigator: TDBNavigator
      Left = 8
      Top = 4
      Width = 414
      Height = 41
      DataSource = DMStore.Payment_MetodDS
      VisibleButtons = [nbFirst, nbPrior, nbNext, nbLast, nbInsert, nbDelete, nbEdit, nbPost, nbCancel]
      Anchors = [akLeft, akTop, akRight]
      TabOrder = 0
      ExplicitWidth = 585
    end
  end
  object ContentPnl: TPanel
    Left = 0
    Top = 49
    Width = 438
    Height = 260
    Align = alClient
    TabOrder = 1
    ExplicitLeft = -166
    ExplicitWidth = 604
    ExplicitHeight = 250
    object ListGrbx: TGroupBox
      Left = 1
      Top = 1
      Width = 436
      Height = 258
      Align = alClient
      Caption = 'Payments List'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -19
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 0
      ExplicitWidth = 602
      ExplicitHeight = 248
      object BankListDbgr: TDBGrid
        Left = 2
        Top = 25
        Width = 432
        Height = 231
        Align = alClient
        DataSource = DMStore.Payment_MetodDS
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
            FieldName = 'Peyment_Way'
            Title.Caption = 'Peyment type'
            Visible = True
          end>
      end
    end
  end
end
