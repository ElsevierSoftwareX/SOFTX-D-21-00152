object TDTForm: TTDTForm
  Left = 0
  Top = 0
  Caption = 'Tiny Decision Tables Editor'
  ClientHeight = 591
  ClientWidth = 934
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poMainFormCenter
  OnActivate = FormActivate
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object ScrollBox1: TScrollBox
    Tag = 7
    AlignWithMargins = True
    Left = 3
    Top = 35
    Width = 928
    Height = 553
    VertScrollBar.ButtonSize = 5
    Align = alClient
    BevelInner = bvNone
    BevelOuter = bvNone
    Color = clCream
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Default'
    Font.Style = []
    Padding.Left = 5
    Padding.Top = 5
    Padding.Right = 5
    Padding.Bottom = 5
    ParentColor = False
    ParentFont = False
    TabOrder = 0
    OnMouseMove = ScrollBox1MouseMove
    OnMouseWheelDown = ScrollBox1MouseWheelDown
    OnMouseWheelUp = ScrollBox1MouseWheelUp
    ExplicitLeft = -2
  end
  object ToolBar2: TToolBar
    AlignWithMargins = True
    Left = 3
    Top = 3
    Width = 928
    Height = 26
    AutoSize = True
    BorderWidth = 1
    Color = clBtnFace
    Images = MainForm.ImageList1
    Indent = 5
    ParentColor = False
    ParentShowHint = False
    ShowHint = True
    TabOrder = 1
    Wrapable = False
    object ToolButton1: TToolButton
      Tag = 20
      Left = 5
      Top = 0
      Hint = #1054#1090#1082#1088#1099#1090#1100' '#1073#1072#1079#1091' '#1079#1085#1072#1085#1080#1081
      Caption = 'Cahnge orientation'
      ImageIndex = 7
      OnClick = ToolButton1Click
    end
    object ToolButton2: TToolButton
      Tag = 21
      Left = 28
      Top = 0
      Hint = #1057#1086#1093#1088#1072#1085#1080#1090#1100' '#1073#1072#1079#1091' '#1079#1085#1072#1085#1080#1081
      Caption = '&Save'
      ImageIndex = 43
    end
    object ToolButton3: TToolButton
      Left = 51
      Top = 0
      Width = 8
      Caption = 'ToolButton3'
      ImageIndex = 2
      Style = tbsSeparator
      Visible = False
    end
    object ToolButton4: TToolButton
      Left = 59
      Top = 0
      Hint = 'Cut|Cuts the selection and puts it on the Clipboard'
      Caption = '-'
      Enabled = False
      ImageIndex = 0
      Visible = False
    end
    object ToolButton5: TToolButton
      Left = 82
      Top = 0
      Hint = 'Copy|Copies the selection and puts it on the Clipboard'
      Caption = '&Copy'
      Enabled = False
      ImageIndex = 1
      Visible = False
    end
    object ToolButton6: TToolButton
      Left = 105
      Top = 0
      Hint = 'Paste|Inserts Clipboard contents'
      Caption = '&Paste'
      Enabled = False
      ImageIndex = 10
      Visible = False
    end
    object ToolButton7: TToolButton
      Left = 128
      Top = 0
      Width = 8
      Caption = 'ToolButton7'
      ImageIndex = 3
      Style = tbsSeparator
      Visible = False
    end
    object ToolButton8: TToolButton
      Left = 136
      Top = 0
      Hint = #1048#1084#1087#1086#1088#1090#1080#1088#1086#1074#1072#1090#1100' '#1073#1072#1079#1091' '#1079#1085#1072#1085#1080#1081
      Caption = #1048#1084#1087#1086#1088#1090#1080#1088#1086#1074#1072#1090#1100
      ImageIndex = 7
      Visible = False
    end
    object ToolButton9: TToolButton
      Tag = 3
      Left = 159
      Top = 0
      Hint = #1057#1086#1079#1076#1072#1090#1100' '#1085#1086#1074#1091#1102' '#1073#1072#1079#1091' '#1079#1085#1072#1085#1080#1081
      Caption = 'Close'
      ImageIndex = 5
      OnClick = ToolButton9Click
    end
  end
end
