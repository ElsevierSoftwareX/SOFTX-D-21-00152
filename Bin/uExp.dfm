object Exp: TExp
  Left = 319
  Top = 44
  BorderIcons = [biSystemMenu]
  Caption = ' '#1069#1082#1089#1087#1086#1088#1090
  ClientHeight = 409
  ClientWidth = 420
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  Icon.Data = {
    0000010001001010000001002000680400001600000028000000100000002000
    0000010020000000000040040000000000000000000000000000000000000000
    000000000000000000000000000000000000FEFEFE00FEFEFE00FEFEFE00FEFE
    FE00FEFEFE00FEFEFE0000000000000000000000000000000000000000000000
    00000000000000000000000000000000000000000000EC7A29E0DB5E08F6CE55
    08F6D06B29E00000000000000000000000000000000000000000000000000000
    0000000000000000000000000000F26E1DE8E5752FFFEFA17CFFF1B292FFF0AF
    91FFEAA178FFD56A26FFBB4D1DE8000000000000000000000000000000000000
    00000000000000000000F4620AF4EB9260FFF3B79CFFF19A76FFED7F4FFFEB7F
    4DFFEE9B72FFEFB596FFE08C53FFA8280AF40000000000000000000000000000
    000000000000F8731BE8EB9260FFF3B39AFFEF7849FFED7444FFF3AC90FFF1AC
    92FFE67440FFE37C40FFEDB394FFDC894EFFA7341AE80000000000000000FEFE
    FE0000000000E97C31FFF3B79CFFEF7849FFEC6E43FFE86B3EFFFCF3F0FFFCEF
    E9FFE5774AFFE1713BFFDE7D3DFFEDB794FFC2521EFF00000000FEFEFE00FEFE
    FE00F67C2DE0EFA47DFFF29C77FFEE7345FFEC6D40FFE86C3CFFFCF3EFFFFCF0
    ECFFE37443FFDE743EFFDE7635FFE59C6CFFE3A06EFFA54029E0FEFEFE00FEFE
    FE00EF670DF4F0AE90FFEE8156FFEC6E43FFEA6B3EFFE86D3CFFFCF0ECFFFCF4
    EFFFE2733FFFDA7036FFDB7332FFDC8345FFE8B086FF93260DF4FEFEFE00FEFE
    FE00E9660DF4F0AE90FFEE8156FFEC7143FFF3B89FFFF2AE92FFFDF0EAFFFDF4
    F1FFE88E63FFEFC3ABFFD77234FFDA8243FFE6AF86FF90270DF4FEFEFE00FEFE
    FE00E87929E0EEA17CFFF29C77FFE97345FFFDF1EDFFFFFFFFFFFDF0EBFFFCF5
    F2FFFDFEFDFFF9EBE3FFD77434FFE49C6BFFE09C6AFF9E3F29E0FEFEFE000000
    000000000000E06F28FFF3B39AFFEA7747FFEA8159FFFFFBF9FFFFFFFFFFFFFF
    FEFFFDF9F7FFDB854DFFD97B38FFEDB991FFB84C1AFF00000000FEFEFE000000
    000000000000CF621AE8E68F59FFF1B094FFE97949FFEA7F53FFFBE8E0FFFDF6
    F3FFDE7A3EFFD97B39FFEDB891FFD58347FF93311AE800000000000000000000
    00000000000000000000BC410AF4E18E59FFF0A88AFFE98559FFE47A44FFDF7F
    41FFE49968FFEEB992FFD5854AFF8A210AF40000000000000000000000000000
    0000000000000000000000000000BB4A1DE8CD6223FFE79E6EFFEAAC88FFEBB3
    8BFFDFA06EFFBC4C1EFF98361DE8000000000000000000000000000000000000
    00000000000000000000000000000000000000000000B24129E09D2208F69721
    08F6A33F29E00000000000000000000000000000000000000000000000000000
    000000000000000000000000000000000000FEFEFE00FEFEFE00FEFEFE00FEFE
    FE00FEFEFE00FEFEFE000000000000000000000000000000000000000000F81F
    0000FC3F0000F00F0000E0070000C00300004002000000000000000000000000
    000000000000C0020000C0030000E0070000F00F0000FC3F0000F81F0000}
  OldCreateOrder = False
  Position = poMainFormCenter
  OnClose = FormClose
  OnCreate = FormCreate
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object RzPanel1: TRzPanel
    AlignWithMargins = True
    Left = 3
    Top = 372
    Width = 414
    Height = 34
    Align = alBottom
    BorderOuter = fsGroove
    TabOrder = 0
    object RzButton1: TRzButton
      AlignWithMargins = True
      Left = 5
      Top = 5
      Width = 99
      Height = 24
      Cancel = True
      FrameColor = 7617536
      Align = alLeft
      Caption = #1054#1090#1084#1077#1085#1072
      Color = 15791348
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      HotTrack = True
      ParentFont = False
      TabOrder = 0
      OnClick = RzButton1Click
    end
    object RzButton2: TRzButton
      AlignWithMargins = True
      Left = 110
      Top = 5
      Width = 299
      Height = 24
      Default = True
      FrameColor = 7617536
      Align = alClient
      Caption = #1042#1099#1087#1086#1083#1085#1080#1090#1100
      Color = 15791348
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      HotTrack = True
      ParentFont = False
      TabOrder = 1
      OnClick = RzButton2Click
    end
  end
  object RzPanel2: TRzPanel
    Left = 0
    Top = 0
    Width = 420
    Height = 71
    Align = alTop
    BorderOuter = fsGroove
    BorderWidth = 1
    Caption = #1087#1086#1076#1089#1082#1072#1079#1082#1072
    Color = clCream
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 1
    object ScrollBox3: TScrollBox
      Left = 3
      Top = 3
      Width = 414
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
      Font.Name = 'DFKai-SB'
      Font.Style = []
      ParentColor = False
      ParentFont = False
      TabOrder = 0
    end
  end
  object RzPanel6: TRzPanel
    Left = 0
    Top = 71
    Width = 420
    Height = 298
    Align = alClient
    BorderOuter = fsGroove
    BorderWidth = 2
    TabOrder = 2
    object GroupBox1: TGroupBox
      AlignWithMargins = True
      Left = 7
      Top = 58
      Width = 406
      Height = 233
      Align = alClient
      Caption = ' '#1069#1083#1077#1084#1077#1085#1090#1099': '
      Font.Charset = DEFAULT_CHARSET
      Font.Color = cl3DDkShadow
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 0
      object RzCheckTree1: TRzCheckTree
        AlignWithMargins = True
        Left = 5
        Top = 18
        Width = 396
        Height = 210
        Images = MainForm.ImageList2
        OnStateChange = RzCheckTree1StateChange
        Align = alClient
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        Indent = 19
        ParentFont = False
        SelectionPen.Color = clBtnShadow
        StateImages = RzCheckTree1.CheckImages
        TabOrder = 0
        OnClick = RzCheckTree1Click
      end
    end
    object GroupBox2: TGroupBox
      AlignWithMargins = True
      Left = 7
      Top = 7
      Width = 406
      Height = 45
      Align = alTop
      Caption = ' '#1044#1086#1089#1090#1091#1087#1085#1099#1077' '#1073#1072#1079#1099' '#1079#1085#1072#1085#1080#1081': '
      Font.Charset = DEFAULT_CHARSET
      Font.Color = cl3DDkShadow
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 1
      object Label1: TLabel
        Left = 9
        Top = 20
        Width = 124
        Height = 13
        Caption = #1042#1099#1073#1088#1072#1085#1085#1072#1103' '#1073#1072#1079#1072' '#1079#1085#1072#1085#1080#1081':'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object ComboBox1: TComboBox
        Left = 148
        Top = 15
        Width = 252
        Height = 21
        Ctl3D = False
        ParentCtl3D = False
        TabOrder = 0
        OnChange = ComboBox1Change
      end
    end
  end
  object SaveDialog1: TSaveDialog
    Left = 584
  end
end
