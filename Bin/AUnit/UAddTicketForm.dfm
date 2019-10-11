object ATicketForm: TATicketForm
  Left = 0
  Top = 0
  BorderStyle = bsDialog
  Caption = ' '#1047#1072#1087#1088#1086#1089' '#1089#1083#1091#1078#1073#1077' '#1087#1086#1076#1076#1077#1088#1078#1082#1080
  ClientHeight = 208
  ClientWidth = 341
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poMainFormCenter
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object RzPanel3: TRzPanel
    AlignWithMargins = True
    Left = 3
    Top = 172
    Width = 335
    Height = 33
    Align = alBottom
    BorderOuter = fsGroove
    BorderWidth = 2
    TabOrder = 0
    object RzButton1: TRzButton
      Left = 4
      Top = 4
      Width = 256
      Hint = #1054#1090#1087#1088#1072#1074#1080#1090#1100' '#1079#1072#1087#1088#1086#1089' '#1085#1072' '#1085#1086#1074#1091#1102' '#1087#1086#1076#1087#1080#1089#1100
      FrameColor = 7617536
      Align = alClient
      Caption = #1054#1090#1087#1088#1072#1074#1080#1090#1100' '#1079#1072#1087#1088#1086#1089
      Color = 15791348
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Verdana'
      Font.Style = [fsBold]
      HotTrack = True
      ParentFont = False
      TabOrder = 0
      OnClick = RzButton1Click
      OnMouseLeave = RzButton1MouseLeave
      OnMouseMove = RzButton1MouseMove
    end
    object RzButton2: TRzButton
      Left = 260
      Top = 4
      Width = 71
      FrameColor = 7617536
      Align = alRight
      Caption = #1054#1090#1084#1077#1085#1072
      Color = 15791348
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Verdana'
      Font.Style = []
      HotTrack = True
      ParentFont = False
      TabOrder = 1
      OnClick = RzButton2Click
      OnMouseLeave = RzButton1MouseLeave
      OnMouseMove = RzButton2MouseMove
    end
  end
  object RzPanel1: TRzPanel
    Left = 0
    Top = 0
    Width = 341
    Height = 169
    Cursor = crHandPoint
    Align = alClient
    BorderOuter = fsGroove
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBtnText
    Font.Height = -24
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 1
    object RzGroupBox1: TRzGroupBox
      AlignWithMargins = True
      Left = 5
      Top = 5
      Width = 331
      Height = 159
      Hint = 
        ' '#1076#1086#1083#1078#1077#1085' '#1089#1086#1076#1077#1088#1078#1072#1090#1100' '#1090#1086#1083#1100#1082#1086' '#1083#1072#1090#1080#1085#1089#1082#1080#1077' '#1089#1080#1084#1074#1086#1083#1099' '#1080' '#1073#1099#1090#1100' '#1076#1083#1080#1085#1086#1081' '#1085#1077' '#1073#1086#1083#1100 +
        #1096#1077' 11 '#1089#1080#1084#1074#1086#1083#1086#1074
      Align = alClient
      BorderOuter = fsGroove
      BorderWidth = 2
      Caption = ' '#1047#1072#1087#1088#1086#1089' '#1089#1083#1091#1078#1073#1077' '#1087#1086#1076#1076#1077#1088#1078#1082#1080': '
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Verdana'
      Font.Style = [fsBold]
      GroupStyle = gsStandard
      ParentFont = False
      TabOrder = 0
      object RzLabel1: TRzLabel
        AlignWithMargins = True
        Left = 6
        Top = 60
        Width = 319
        Height = 13
        Margins.Left = 0
        Margins.Right = 0
        Margins.Bottom = 0
        Align = alTop
        Caption = #1042#1074#1077#1076#1080#1090#1077' '#1090#1077#1082#1089#1090' '#1079#1072#1087#1088#1086#1089#1072'*:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = cl3DDkShadow
        Font.Height = -11
        Font.Name = 'Verdana'
        Font.Style = [fsBold]
        ParentFont = False
        WordWrap = True
        ExplicitWidth = 163
      end
      object RzLabel2: TRzLabel
        Left = 6
        Top = 17
        Width = 319
        Height = 13
        Margins.Left = 0
        Margins.Right = 0
        Margins.Bottom = 0
        Align = alTop
        Caption = #1059#1082#1072#1078#1080#1090#1077' '#1090#1080#1087' '#1079#1072#1087#1088#1086#1089#1072'*:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = cl3DDkShadow
        Font.Height = -11
        Font.Name = 'Verdana'
        Font.Style = [fsBold]
        ParentFont = False
        WordWrap = True
        ExplicitWidth = 153
      end
      object Memo1: TRzMemo
        AlignWithMargins = True
        Left = 6
        Top = 76
        Width = 319
        Height = 77
        Margins.Left = 0
        Margins.Right = 0
        Margins.Bottom = 0
        Align = alClient
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Verdana'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 1
        OnChange = Memo1Change
        OnKeyDown = Memo1KeyDown
        FrameColor = clRed
        FrameVisible = True
      end
      object ComboBox1: TRzComboBox
        AlignWithMargins = True
        Left = 26
        Top = 33
        Width = 279
        Height = 21
        Margins.Left = 20
        Margins.Right = 20
        Align = alTop
        Ctl3D = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Verdana'
        Font.Style = [fsBold]
        FrameColor = clBlue
        FrameVisible = True
        ParentCtl3D = False
        ParentFont = False
        TabOrder = 0
        Text = #1055#1086#1078#1077#1083#1072#1085#1080#1077
        OnChange = ComboBox1Change
        Items.Strings = (
          #1055#1086#1078#1077#1083#1072#1085#1080#1077
          #1054#1087#1080#1089#1072#1085#1080#1077' '#1086#1096#1080#1073#1082#1080)
      end
    end
  end
  object Timer2: TTimer
    Enabled = False
    Interval = 100
    OnTimer = Timer2Timer
    Left = 16
    Top = 472
  end
end
