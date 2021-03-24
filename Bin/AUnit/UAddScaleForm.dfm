object AddScaleForm: TAddScaleForm
  Left = 0
  Top = 0
  Caption = 'AddScaleForm'
  ClientHeight = 591
  ClientWidth = 776
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poMainFormCenter
  OnCreate = FormCreate
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object RzPageControl1: TRzPageControl
    AlignWithMargins = True
    Left = 3
    Top = 76
    Width = 770
    Height = 480
    ParentCustomHint = False
    ActivePage = TabSheet1
    ActivePageDefault = TabSheet1
    Align = alClient
    BackgroundColor = clBtnFace
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentBackgroundColor = False
    ParentColor = False
    ParentFont = False
    TabIndex = 0
    TabOrder = 0
    FixedDimension = 19
    object TabSheet1: TRzTabSheet
      OnShow = TabSheet1Show
      Caption = 'TabSheet1'
      object RzPanel12: TRzPanel
        Left = 0
        Top = 0
        Width = 766
        Height = 105
        Align = alTop
        BorderOuter = fsNone
        TabOrder = 0
        object GroupBox3: TGroupBox
          AlignWithMargins = True
          Left = 5
          Top = 3
          Width = 756
          Height = 101
          Margins.Left = 5
          Margins.Right = 5
          Margins.Bottom = 1
          Align = alClient
          Caption = ' '#1064#1040#1043' 1. '#1042#1099#1073#1086#1088' '#1080' '#1086#1087#1080#1089#1072#1085#1080#1077' '#1096#1082#1072#1083#1099' ('#1087#1077#1088#1077#1084#1077#1085#1085#1086#1081'): '
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNavy
          Font.Height = -11
          Font.Name = 'Default'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 0
          object GroupBox8: TGroupBox
            AlignWithMargins = True
            Left = 563
            Top = 15
            Width = 190
            Height = 83
            Margins.Left = 1
            Margins.Top = 0
            Margins.Right = 1
            Margins.Bottom = 1
            Align = alRight
            Caption = ' '#1054#1087#1080#1089#1072#1085#1080#1077': '
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clNavy
            Font.Height = -11
            Font.Name = 'Default'
            Font.Style = [fsBold]
            ParentFont = False
            TabOrder = 0
            object Memo1: TMemo
              AlignWithMargins = True
              Left = 3
              Top = 16
              Width = 184
              Height = 64
              Margins.Left = 1
              Margins.Top = 1
              Margins.Right = 1
              Margins.Bottom = 1
              Align = alClient
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clNavy
              Font.Height = -11
              Font.Name = 'Default'
              Font.Style = []
              ParentFont = False
              TabOrder = 0
              OnChange = Memo1Change
            end
          end
          object RzPanel4: TRzPanel
            Left = 2
            Top = 15
            Width = 560
            Height = 84
            Align = alClient
            BorderOuter = fsNone
            TabOrder = 1
            object RzPanel3: TRzPanel
              AlignWithMargins = True
              Left = 3
              Top = 30
              Width = 554
              Height = 23
              Margins.Top = 1
              Align = alTop
              BorderOuter = fsFlat
              BorderColor = clBlue
              BorderShadow = clBlue
              TabOrder = 0
              object RzLabel5: TRzLabel
                AlignWithMargins = True
                Left = 237
                Top = 4
                Width = 108
                Height = 15
                Align = alRight
                Alignment = taRightJustify
                AutoSize = False
                Caption = #1045#1076#1080#1085#1080#1094#1099' '#1080#1079#1084#1077#1088#1077#1085#1080#1103':'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clNavy
                Font.Height = -11
                Font.Name = 'Default'
                Font.Style = []
                ParentFont = False
              end
              object RzLabel4: TRzLabel
                AlignWithMargins = True
                Left = 4
                Top = 4
                Width = 93
                Height = 15
                Align = alLeft
                Alignment = taRightJustify
                AutoSize = False
                Caption = #1048#1084#1103' '#1087#1077#1088#1077#1084#1077#1085#1085#1086#1081':'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clNavy
                Font.Height = -11
                Font.Name = 'Default'
                Font.Style = []
                ParentFont = False
              end
              object RzEdit4: TRzEdit
                AlignWithMargins = True
                Left = 349
                Top = 2
                Width = 203
                Height = 19
                Margins.Left = 1
                Margins.Top = 1
                Margins.Right = 1
                Margins.Bottom = 1
                Align = alRight
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clNavy
                Font.Height = -11
                Font.Name = 'Default'
                Font.Style = [fsBold]
                ParentFont = False
                TabOrder = 0
                OnChange = RzEdit4Change
                ExplicitHeight = 21
              end
              object RzEdit5: TRzEdit
                AlignWithMargins = True
                Left = 101
                Top = 2
                Width = 132
                Height = 19
                Margins.Left = 1
                Margins.Top = 1
                Margins.Right = 1
                Margins.Bottom = 1
                Align = alClient
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clNavy
                Font.Height = -11
                Font.Name = 'Default'
                Font.Style = [fsBold]
                ParentFont = False
                TabOrder = 1
                OnChange = RzEdit5Change
                ExplicitHeight = 21
              end
            end
            object RzPanel15: TRzPanel
              Left = 0
              Top = 56
              Width = 560
              Height = 28
              Align = alTop
              BorderOuter = fsNone
              TabOrder = 1
              object RzPanel14: TRzPanel
                AlignWithMargins = True
                Left = 3
                Top = 3
                Width = 554
                Height = 23
                Align = alTop
                BorderOuter = fsFlat
                BorderColor = clBlue
                BorderShadow = clBlue
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clNavy
                Font.Height = -11
                Font.Name = 'Default'
                Font.Style = []
                ParentFont = False
                TabOrder = 0
                object RzLabel7: TRzLabel
                  AlignWithMargins = True
                  Left = 235
                  Top = 4
                  Width = 108
                  Height = 15
                  Align = alRight
                  Alignment = taRightJustify
                  AutoSize = False
                  Caption = #1050#1086#1083#1080#1095#1077#1089#1090#1074#1086' '#1090#1077#1088#1084#1086#1074':'
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clNavy
                  Font.Height = -11
                  Font.Name = 'Default'
                  Font.Style = []
                  ParentFont = False
                  ExplicitLeft = 237
                end
                object RzLabel6: TRzLabel
                  AlignWithMargins = True
                  Left = 4
                  Top = 4
                  Width = 93
                  Height = 15
                  Align = alLeft
                  Alignment = taRightJustify
                  AutoSize = False
                  Caption = #1058#1080#1087' '#1092#1091#1085#1082#1094#1080#1080':'
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clNavy
                  Font.Height = -11
                  Font.Name = 'Default'
                  Font.Style = []
                  ParentFont = False
                end
                object RzLabel10: TRzLabel
                  AlignWithMargins = True
                  Left = 476
                  Top = 2
                  Width = 32
                  Height = 19
                  Margins.Top = 1
                  Margins.Bottom = 1
                  Align = alRight
                  Alignment = taRightJustify
                  AutoSize = False
                  Caption = 'Max:'
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clNavy
                  Font.Height = -11
                  Font.Name = 'MS Sans Serif'
                  Font.Style = []
                  ParentFont = False
                  TextMargin = 3
                  ExplicitLeft = 480
                end
                object RzLabel8: TRzLabel
                  AlignWithMargins = True
                  Left = 397
                  Top = 2
                  Width = 31
                  Height = 19
                  Margins.Top = 1
                  Margins.Bottom = 1
                  Align = alRight
                  Alignment = taRightJustify
                  AutoSize = False
                  Caption = 'Min:'
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clNavy
                  Font.Height = -11
                  Font.Name = 'MS Sans Serif'
                  Font.Style = []
                  ParentFont = False
                  TextMargin = 3
                  ExplicitLeft = 396
                end
                object RzSpinEdit1: TRzSpinEdit
                  AlignWithMargins = True
                  Left = 349
                  Top = 2
                  Width = 42
                  Height = 19
                  Margins.Top = 1
                  Margins.Bottom = 1
                  Max = 5.000000000000000000
                  Min = 1.000000000000000000
                  Value = 1.000000000000000000
                  Align = alRight
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clNavy
                  Font.Height = -11
                  Font.Name = 'Default'
                  Font.Style = []
                  ParentFont = False
                  TabOrder = 0
                  OnChange = RzSpinEdit1Change
                  ExplicitHeight = 21
                end
                object ComboBox4: TComboBox
                  AlignWithMargins = True
                  Left = 101
                  Top = 2
                  Width = 130
                  Height = 19
                  Margins.Left = 1
                  Margins.Top = 1
                  Margins.Right = 1
                  Margins.Bottom = 1
                  Align = alClient
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clBlack
                  Font.Height = -9
                  Font.Name = 'Default'
                  Font.Style = [fsBold]
                  ItemIndex = 0
                  ParentFont = False
                  TabOrder = 1
                  Text = '1'
                  OnChange = ComboBox4Change
                  Items.Strings = (
                    '1'
                    '2'
                    '3'
                    '4'
                    '5'
                    '6'
                    '7'
                    '8'
                    '9'
                    '10')
                end
                object RzEdit2: TRzEdit
                  AlignWithMargins = True
                  Left = 512
                  Top = 2
                  Width = 40
                  Height = 19
                  Margins.Left = 1
                  Margins.Top = 1
                  Margins.Right = 1
                  Margins.Bottom = 1
                  Text = '1'
                  Align = alRight
                  Alignment = taCenter
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clNavy
                  Font.Height = -11
                  Font.Name = 'Default'
                  Font.Style = [fsBold]
                  ParentFont = False
                  TabOrder = 2
                  OnChange = RzEdit2Change
                  ExplicitHeight = 21
                end
                object RzEdit1: TRzEdit
                  AlignWithMargins = True
                  Left = 432
                  Top = 2
                  Width = 40
                  Height = 19
                  Margins.Left = 1
                  Margins.Top = 1
                  Margins.Right = 1
                  Margins.Bottom = 1
                  Text = '0'
                  Align = alRight
                  Alignment = taCenter
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clNavy
                  Font.Height = -11
                  Font.Name = 'Default'
                  Font.Style = [fsBold]
                  ParentFont = False
                  TabOrder = 3
                  OnChange = RzEdit1Change
                  ExplicitHeight = 21
                end
              end
            end
            object RzPanel13: TRzPanel
              AlignWithMargins = True
              Left = 3
              Top = 3
              Width = 554
              Height = 23
              Align = alTop
              BorderOuter = fsFlat
              BorderColor = clBlue
              BorderShadow = clBlue
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clNavy
              Font.Height = -11
              Font.Name = 'Default'
              Font.Style = []
              ParentFont = False
              TabOrder = 2
              object RzRadioButton1: TRzRadioButton
                AlignWithMargins = True
                Left = 80
                Top = 3
                Width = 99
                Height = 16
                Margins.Top = 2
                Align = alLeft
                AutoSize = False
                Caption = #1042#1074#1077#1076#1077#1085#1072' '#1088#1072#1085#1077#1077':'
                Checked = True
                TabOrder = 0
                TabStop = True
                WordWrap = True
                OnClick = RzRadioButton1Click
              end
              object ComboBox1: TComboBox
                AlignWithMargins = True
                Left = 185
                Top = 2
                Width = 367
                Height = 19
                Margins.Top = 1
                Margins.Right = 1
                Margins.Bottom = 1
                Align = alClient
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Height = -9
                Font.Name = 'Default'
                Font.Style = [fsBold]
                ParentFont = False
                TabOrder = 1
                OnChange = ComboBox1Change
                Items.Strings = (
                  '1'
                  '2'
                  '3'
                  '4'
                  '5'
                  '6'
                  '7'
                  '8'
                  '9'
                  '10')
              end
              object RzRadioButton2: TRzRadioButton
                AlignWithMargins = True
                Left = 7
                Top = 3
                Width = 70
                Height = 19
                Margins.Left = 6
                Margins.Top = 2
                Margins.Right = 0
                Margins.Bottom = 0
                Align = alLeft
                AutoSize = False
                Caption = #1053#1086#1074#1072#1103' '
                TabOrder = 2
                WordWrap = True
                OnClick = RzRadioButton2Click
              end
            end
          end
        end
      end
      object GroupBox1: TGroupBox
        AlignWithMargins = True
        Left = 5
        Top = 106
        Width = 756
        Height = 348
        Margins.Left = 5
        Margins.Top = 1
        Margins.Right = 5
        Align = alClient
        Caption = ' '#1064#1040#1043' 2. '#1042#1074#1086#1076' '#1079#1085#1072#1095#1077#1085#1080#1081' '#1090#1077#1088#1084#1086#1074': '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'Default'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 1
        object RzPanel8: TRzPanel
          AlignWithMargins = True
          Left = 5
          Top = 18
          Width = 746
          Height = 325
          Align = alClient
          BorderOuter = fsFlat
          BorderColor = clBlue
          BorderShadow = clBlue
          TabOrder = 0
          object ScrollBox1: TScrollBox
            AlignWithMargins = True
            Left = 4
            Top = 4
            Width = 738
            Height = 317
            Align = alClient
            BevelInner = bvNone
            BevelOuter = bvNone
            BevelKind = bkSoft
            Color = clCream
            Ctl3D = False
            Padding.Left = 5
            Padding.Top = 5
            Padding.Right = 5
            Padding.Bottom = 5
            ParentColor = False
            ParentCtl3D = False
            ParentShowHint = False
            ShowHint = True
            TabOrder = 0
          end
        end
      end
    end
    object TabSheet2: TRzTabSheet
      Caption = 'TabSheet2'
      ExplicitLeft = 0
      ExplicitTop = 0
      ExplicitWidth = 0
      ExplicitHeight = 0
      object GroupBox5: TGroupBox
        AlignWithMargins = True
        Left = 5
        Top = 3
        Width = 756
        Height = 451
        Margins.Left = 5
        Margins.Right = 5
        Align = alClient
        Caption = ' '#1064#1040#1043' 4: '#1054#1087#1080#1089#1072#1085#1080#1077' '#1079#1085#1072#1095#1077#1085#1080#1081': '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'Default'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 0
        object ScrollBox4: TScrollBox
          AlignWithMargins = True
          Left = 5
          Top = 18
          Width = 746
          Height = 428
          Align = alClient
          BevelInner = bvNone
          BevelOuter = bvNone
          BevelKind = bkSoft
          Color = clCream
          Ctl3D = False
          Padding.Left = 5
          Padding.Top = 5
          Padding.Right = 5
          Padding.Bottom = 5
          ParentColor = False
          ParentCtl3D = False
          ParentShowHint = False
          ShowHint = True
          TabOrder = 0
        end
      end
    end
    object TabSheet3: TRzTabSheet
      Caption = 'TabSheet3'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      ExplicitLeft = 0
      ExplicitTop = 0
      ExplicitWidth = 0
      ExplicitHeight = 0
      object GroupBox4: TGroupBox
        AlignWithMargins = True
        Left = 5
        Top = 3
        Width = 756
        Height = 451
        Margins.Left = 5
        Margins.Right = 5
        Align = alClient
        Caption = ' '#1064#1040#1043' 4: '#1055#1088#1086#1074#1077#1088#1082#1072' ('#1087#1088#1086#1089#1084#1086#1090#1088') '#1074#1074#1077#1076#1077#1085#1085#1099#1093' '#1076#1072#1085#1085#1099#1093': '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'Default'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 0
        object ScrollBox2: TScrollBox
          AlignWithMargins = True
          Left = 5
          Top = 87
          Width = 746
          Height = 359
          Align = alClient
          BevelInner = bvNone
          BevelOuter = bvNone
          BevelKind = bkSoft
          Color = clCream
          Ctl3D = False
          Padding.Left = 5
          Padding.Top = 5
          Padding.Right = 5
          Padding.Bottom = 5
          ParentColor = False
          ParentCtl3D = False
          ParentShowHint = False
          ShowHint = True
          TabOrder = 0
        end
        object RzPanel2: TRzPanel
          AlignWithMargins = True
          Left = 5
          Top = 18
          Width = 746
          Height = 23
          Align = alTop
          BorderOuter = fsFlat
          BorderColor = clBlue
          BorderShadow = clBlue
          TabOrder = 1
          object RzLabel1: TRzLabel
            AlignWithMargins = True
            Left = 126
            Top = 4
            Width = 82
            Height = 13
            Align = alClient
            Caption = #1055#1088#1077#1094#1077#1076#1077#1085#1090':    '
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clNavy
            Font.Height = -11
            Font.Name = 'Default'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object RzLabel2: TRzLabel
            AlignWithMargins = True
            Left = 85
            Top = 4
            Width = 35
            Height = 15
            Align = alLeft
            Alignment = taCenter
            AutoSize = False
            Caption = 'F001'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clGrayText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object RzLabel3: TRzLabel
            AlignWithMargins = True
            Left = 4
            Top = 4
            Width = 75
            Height = 15
            Align = alLeft
            Alignment = taRightJustify
            AutoSize = False
            Caption = #1055#1088#1077#1094#1077#1076#1077#1085#1090':'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clNavy
            Font.Height = -11
            Font.Name = 'Default'
            Font.Style = []
            ParentFont = False
            ExplicitTop = 8
          end
        end
        object RzPanel7: TRzPanel
          AlignWithMargins = True
          Left = 5
          Top = 47
          Width = 746
          Height = 34
          Align = alTop
          BorderOuter = fsFlat
          BorderColor = clBlue
          BorderShadow = clBlue
          TabOrder = 2
          object RzLabel13: TRzLabel
            AlignWithMargins = True
            Left = 274
            Top = 11
            Width = 468
            Height = 19
            Margins.Top = 10
            Align = alClient
            Alignment = taCenter
            AutoSize = False
            Caption = #1054#1087#1080#1089#1072#1085#1080#1077
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clNavy
            Font.Height = -11
            Font.Name = 'Default'
            Font.Style = []
            ParentFont = False
            WordWrap = True
            ExplicitTop = 15
            ExplicitWidth = 66
          end
          object RzLabel14: TRzLabel
            AlignWithMargins = True
            Left = 4
            Top = 11
            Width = 120
            Height = 19
            Margins.Top = 10
            Align = alLeft
            Alignment = taCenter
            AutoSize = False
            Caption = #1048#1084#1103' '#1089#1083#1086#1090#1072' ('#1089#1074#1086#1081#1089#1090#1074#1072')'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clNavy
            Font.Height = -11
            Font.Name = 'Default'
            Font.Style = []
            ParentFont = False
            ExplicitTop = 7
          end
          object RzLabel15: TRzLabel
            AlignWithMargins = True
            Left = 130
            Top = 11
            Width = 66
            Height = 19
            Margins.Top = 10
            Align = alLeft
            Alignment = taCenter
            AutoSize = False
            Caption = #1058#1080#1087' '#1076#1072#1085#1085#1099#1093
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clNavy
            Font.Height = -11
            Font.Name = 'Default'
            Font.Style = []
            ParentFont = False
            ExplicitLeft = 199
            ExplicitTop = 4
            ExplicitHeight = 15
          end
          object RzLabel16: TRzLabel
            AlignWithMargins = True
            Left = 202
            Top = 4
            Width = 66
            Height = 26
            Align = alLeft
            Alignment = taCenter
            AutoSize = False
            Caption = #1047#1085#1072#1095#1077#1085#1080#1077' '#1087#1086' '#1091#1084#1086#1083#1095#1072#1085#1080#1102
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clNavy
            Font.Height = -11
            Font.Name = 'Default'
            Font.Style = []
            ParentFont = False
            WordWrap = True
            ExplicitTop = 8
          end
        end
      end
    end
  end
  object RzPanel1: TRzPanel
    Left = 0
    Top = 559
    Width = 776
    Height = 32
    Align = alBottom
    BorderOuter = fsGroove
    BorderWidth = 2
    TabOrder = 1
    object RzButton1: TRzButton
      AlignWithMargins = True
      Left = 472
      Top = 4
      Width = 100
      Height = 24
      Margins.Left = 2
      Margins.Top = 0
      Margins.Right = 0
      Margins.Bottom = 0
      Cancel = True
      FrameColor = 7617536
      Align = alRight
      Caption = #1054#1090#1084#1077#1085#1072
      Color = 15791348
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      HotTrack = True
      ParentFont = False
      TabOrder = 0
      OnClick = RzButton1Click
    end
    object RzButton2: TRzButton
      Left = 672
      Top = 4
      Width = 100
      Height = 24
      Margins.Right = 10
      Default = True
      FrameColor = 7617536
      Align = alRight
      Caption = #1044#1086#1073#1072#1074#1080#1090#1100
      Color = 15791348
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      HotTrack = True
      ParentFont = False
      TabOrder = 1
      OnClick = RzButton2Click
    end
    object RzButton3: TRzButton
      Left = 572
      Top = 4
      Width = 100
      Height = 24
      Default = True
      FrameColor = 7617536
      Align = alRight
      Caption = '<< '#1053#1072#1079#1072#1076
      Color = 15791348
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      HotTrack = True
      ParentFont = False
      TabOrder = 2
      Visible = False
      OnClick = RzButton3Click
    end
  end
  object RzPanel6: TRzPanel
    Tag = 15
    Left = 0
    Top = 0
    Width = 776
    Height = 73
    Align = alTop
    BorderInner = fsGroove
    BorderOuter = fsStatus
    BorderWidth = 1
    Caption = #1042#1074#1086#1076' '#1092#1072#1082#1090#1072
    Color = clCream
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 2
    object ScrollBox3: TScrollBox
      Left = 4
      Top = 4
      Width = 768
      Height = 65
      Align = alClient
      AutoScroll = False
      BevelInner = bvNone
      BevelOuter = bvNone
      BorderStyle = bsNone
      Color = clCream
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Default'
      Font.Style = []
      ParentColor = False
      ParentFont = False
      TabOrder = 0
    end
  end
end
