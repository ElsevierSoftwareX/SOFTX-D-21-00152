object DicForm: TDicForm
  Left = 324
  Top = 173
  Caption = ' '#1059#1087#1088#1072#1074#1083#1077#1085#1080#1077' '#1089#1083#1086#1074#1072#1088#1103#1084#1080'-'#1089#1087#1088#1072#1074#1086#1095#1085#1080#1082#1072#1084#1080
  ClientHeight = 400
  ClientWidth = 536
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poMainFormCenter
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object RzPanel1: TRzPanel
    Left = 0
    Top = 368
    Width = 536
    Height = 32
    Align = alBottom
    BorderOuter = fsGroove
    TabOrder = 0
    object RzButton2: TRzButton
      AlignWithMargins = True
      Left = 360
      Top = 5
      Width = 171
      Height = 22
      Default = True
      FrameColor = 7617536
      Align = alRight
      Caption = #1043#1086#1090#1086#1074#1086
      Color = 15791348
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      HotTrack = True
      ParentFont = False
      TabOrder = 0
      OnClick = RzButton2Click
    end
  end
  object RzPanel6: TRzPanel
    Left = 0
    Top = 0
    Width = 536
    Height = 73
    Align = alTop
    BorderInner = fsGroove
    BorderOuter = fsStatus
    BorderWidth = 1
    Caption = #1056#1072#1073#1086#1090#1072' '#1089#1086' '#1089#1087#1088#1072#1074#1086#1095#1085#1080#1082#1072#1084#1080
    Color = clCream
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Default'
    Font.Style = []
    ParentFont = False
    TabOrder = 1
  end
  object RzPanel2: TRzPanel
    Left = 0
    Top = 73
    Width = 536
    Height = 295
    Align = alClient
    BorderOuter = fsGroove
    BorderWidth = 2
    TabOrder = 2
    object GroupBox1: TGroupBox
      Left = 4
      Top = 4
      Width = 528
      Height = 287
      Align = alClient
      Caption = ' '#1044#1086#1089#1090#1091#1087#1085#1099#1077' '#1089#1083#1086#1074#1072#1088#1080'-'#1089#1087#1088#1072#1074#1086#1095#1085#1080#1082#1080' '#1087#1086#1085#1103#1090#1080#1081' '#1080' '#1079#1085#1072#1095#1077#1085#1080#1081': '
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
      object RzCheckList1: TRzCheckList
        AlignWithMargins = True
        Left = 5
        Top = 18
        Width = 261
        Height = 233
        HighlightColor = 2203937
        ItemFrameColor = 8409372
        OnChange = RzCheckList1Change
        Align = alClient
        Color = clCream
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ItemHeight = 17
        ParentFont = False
        TabOrder = 0
        OnClick = RzCheckList1Click
      end
      object RzPanel5: TRzPanel
        Left = 2
        Top = 254
        Width = 524
        Height = 31
        Align = alBottom
        BorderOuter = fsNone
        TabOrder = 1
        Visible = False
        object RzButton7: TRzButton
          Left = 3
          Top = 4
          Width = 100
          Height = 23
          Cancel = True
          FrameColor = 7617536
          Align = alCustom
          Caption = #1044#1086#1073#1072#1074#1080#1090#1100
          Color = 15791348
          Enabled = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          HotTrack = True
          ParentFont = False
          TabOrder = 0
          OnClick = RzButton7Click
        end
        object RzButton8: TRzButton
          Left = 105
          Top = 4
          Width = 100
          Height = 23
          Cancel = True
          FrameColor = 7617536
          Align = alCustom
          Caption = #1059#1076#1072#1083#1080#1090#1100
          Color = 15791348
          Enabled = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          HotTrack = True
          ParentFont = False
          TabOrder = 1
        end
      end
      object RzPanel4: TRzPanel
        AlignWithMargins = True
        Left = 272
        Top = 18
        Width = 251
        Height = 233
        Align = alRight
        BorderOuter = fsGroove
        BorderWidth = 1
        Caption = #1057#1087#1088#1072#1074#1086#1095#1085#1072#1103' '#1080#1085#1092#1086#1088#1084#1072#1094#1080#1103
        Color = clCream
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 2
        object ListBox1: TListBox
          Left = 3
          Top = 3
          Width = 245
          Height = 227
          Align = alClient
          ItemHeight = 13
          TabOrder = 0
        end
      end
    end
  end
  object OpenDialog1: TOpenDialog
    Left = 552
  end
end
