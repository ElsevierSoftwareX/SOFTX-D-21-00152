object AggStrategesSelectForm: TAggStrategesSelectForm
  Left = 0
  Top = 0
  Caption = 'AggStrategesSelectForm'
  ClientHeight = 347
  ClientWidth = 469
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
  object RzPanel6: TRzPanel
    Tag = 15
    Left = 0
    Top = 0
    Width = 469
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
    TabOrder = 0
    object ScrollBox3: TScrollBox
      Left = 4
      Top = 4
      Width = 461
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
  object RzPanel1: TRzPanel
    Left = 0
    Top = 315
    Width = 469
    Height = 32
    Align = alBottom
    BorderOuter = fsGroove
    BorderWidth = 2
    TabOrder = 1
    ExplicitTop = 273
    object RzButton1: TRzButton
      AlignWithMargins = True
      Left = 264
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
      Caption = 'Cancel'
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
      Left = 364
      Top = 4
      Width = 101
      Height = 24
      Margins.Right = 10
      Default = True
      FrameColor = 7617536
      Align = alRight
      Caption = 'Ok'
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
      ExplicitLeft = 367
      ExplicitTop = 3
    end
  end
  object GroupBox3: TGroupBox
    AlignWithMargins = True
    Left = 5
    Top = 127
    Width = 459
    Height = 185
    Margins.Left = 5
    Margins.Right = 5
    Align = alClient
    Caption = ' Strategies for aggregation of entities and relationships: '
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clNavy
    Font.Height = -11
    Font.Name = 'Default'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 2
    ExplicitLeft = 205
    ExplicitTop = 261
    ExplicitHeight = 130
    object RzCheckBox1: TRzCheckBox
      Tag = 5
      AlignWithMargins = True
      Left = 12
      Top = 141
      Width = 435
      Height = 28
      Margins.Left = 10
      Margins.Right = 10
      Align = alTop
      Caption = 
        'Merging properties with equal or similar names (the Levenshtein ' +
        'distance is used)'
      Checked = True
      State = cbChecked
      TabOrder = 0
      WordWrap = True
    end
    object RzCheckBox2: TRzCheckBox
      Tag = 4
      AlignWithMargins = True
      Left = 12
      Top = 120
      Width = 435
      Height = 15
      Margins.Left = 10
      Margins.Right = 10
      Align = alTop
      Caption = 'Remove the duplicates of relationships'
      Checked = True
      State = cbChecked
      TabOrder = 1
      ExplicitWidth = 239
    end
    object RzCheckBox3: TRzCheckBox
      Tag = 3
      AlignWithMargins = True
      Left = 12
      Top = 86
      Width = 435
      Height = 28
      Margins.Left = 10
      Margins.Right = 10
      Align = alTop
      Caption = 
        'Making the relationships in the case of existence of homonymous ' +
        'properties and entities'
      Checked = True
      Enabled = False
      State = cbChecked
      TabOrder = 2
      WordWrap = True
      ExplicitWidth = 391
    end
    object RzCheckBox4: TRzCheckBox
      Tag = 2
      AlignWithMargins = True
      Left = 12
      Top = 52
      Width = 435
      Height = 28
      Margins.Left = 10
      Margins.Right = 10
      Align = alTop
      Caption = 
        'Merging entities with the same structure (with the equal sets of' +
        ' properties)'
      Checked = True
      Enabled = False
      State = cbChecked
      TabOrder = 3
      WordWrap = True
      ExplicitWidth = 382
    end
    object RzCheckBox5: TRzCheckBox
      Tag = 1
      AlignWithMargins = True
      Left = 12
      Top = 18
      Width = 435
      Height = 28
      Margins.Left = 10
      Margins.Right = 10
      Align = alTop
      Caption = 
        'Merging entities with equal or similar names (the Levenshtein di' +
        'stance is used) '
      Checked = True
      State = cbChecked
      TabOrder = 4
      WordWrap = True
      ExplicitWidth = 434
    end
  end
  object GroupBox1: TGroupBox
    AlignWithMargins = True
    Left = 5
    Top = 76
    Width = 459
    Height = 45
    Margins.Left = 5
    Margins.Right = 5
    Align = alTop
    Caption = ' Instances support: '
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clNavy
    Font.Height = -11
    Font.Name = 'Default'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 3
    ExplicitLeft = 10
    object RzCheckBox10: TRzCheckBox
      Tag = 1
      AlignWithMargins = True
      Left = 12
      Top = 18
      Width = 435
      Height = 15
      Margins.Left = 10
      Margins.Right = 10
      Align = alTop
      Caption = 'Creating instances of entities and relationships'
      Checked = True
      State = cbChecked
      TabOrder = 0
      WordWrap = True
      ExplicitWidth = 284
    end
  end
end
