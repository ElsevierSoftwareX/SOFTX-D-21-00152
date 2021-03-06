object MainForm: TMainForm
  Left = 146
  Top = 55
  Caption = 'Personal Knowledge Base Designer'
  ClientHeight = 575
  ClientWidth = 937
  Color = clAppWorkSpace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clBlack
  Font.Height = -11
  Font.Name = 'Default'
  Font.Style = []
  Menu = MainMenu
  OldCreateOrder = False
  Position = poDesigned
  OnActivate = FormActivate
  OnClose = FormClose
  OnCreate = FormCreate
  OnResize = FormResize
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Splitter1: TSplitter
    Left = 0
    Top = 57
    Height = 518
    Color = clActiveBorder
    ParentColor = False
    ExplicitHeight = 435
  end
  object RzStatusBar1: TRzStatusBar
    Left = 0
    Top = 31
    Width = 937
    Height = 26
    AutoStyle = False
    SimpleFrameStyle = fsGroove
    Align = alTop
    BorderInner = fsNone
    BorderOuter = fsGroove
    BorderSides = [sdLeft, sdTop, sdRight, sdBottom]
    BorderWidth = 1
    ParentShowHint = False
    ShowHint = True
    TabOrder = 0
    Visible = False
    VisualStyle = vsClassic
    object RzStatusPane1: TRzStatusPane
      Left = 3
      Top = 3
      Width = 486
      FrameStyle = fsGroove
      Align = alLeft
      Visible = False
      AutoHint = True
    end
    object RzGlyphStatus1: TRzGlyphStatus
      Left = 103
      Top = 3
      Width = 24
      FrameStyle = fsGroove
      Align = alLeft
      ExplicitLeft = 102
      ExplicitTop = 2
      ExplicitHeight = 22
    end
    object RzProgressStatus1: TRzProgressStatus
      Left = 127
      Top = 3
      Width = 807
      FrameStyle = fsGroove
      Align = alClient
      ParentShowHint = False
      BarStyle = bsLED
      PartsComplete = 0
      Percent = 0
      TotalParts = 0
      ExplicitLeft = 126
      ExplicitTop = 2
      ExplicitWidth = 649
      ExplicitHeight = 22
    end
    object RzFieldStatus1: TRzFieldStatus
      Left = 3
      Top = 3
      FrameStyle = fsGroove
      Align = alLeft
      ExplicitLeft = 2
      ExplicitTop = 2
      ExplicitHeight = 22
    end
  end
  object RzSplitter1: TRzSplitter
    Left = 3
    Top = 57
    Width = 934
    Height = 518
    MarginMax = 373
    MarginMin = 233
    Position = 326
    Percent = 35
    PercentMax = 60
    PercentMin = 25
    UsePercent = True
    Align = alClient
    TabOrder = 1
    BarSize = (
      326
      0
      330
      518)
    UpperLeftControls = (
      RzSplitter2)
    LowerRightControls = (
      RzGroupBox2)
    object RzSplitter2: TRzSplitter
      Left = 0
      Top = 0
      Width = 326
      Height = 518
      MarginMax = 52
      MarginMin = 310
      Orientation = orVertical
      Position = 361
      Percent = 70
      PercentMax = 90
      PercentMin = 60
      UsePercent = True
      Align = alClient
      TabOrder = 0
      BarSize = (
        0
        361
        326
        365)
      UpperLeftControls = (
        RzGroupBox1)
      LowerRightControls = (
        RzPageControl2)
      object RzGroupBox1: TRzGroupBox
        AlignWithMargins = True
        Left = 3
        Top = 3
        Width = 320
        Height = 355
        Align = alClient
        Caption = ' '#1041#1072#1079#1099' '#1079#1085#1072#1085#1080#1081' ('#1087#1088#1086#1077#1082#1090#1099'): '
        TabOrder = 0
        object TreeView1: TTreeView
          Tag = 2
          AlignWithMargins = True
          Left = 4
          Top = 17
          Width = 283
          Height = 334
          Align = alClient
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Default'
          Font.Style = []
          Images = ImageList2
          Indent = 19
          ParentFont = False
          PopupMenu = PopupMenu1
          TabOrder = 0
          OnClick = TreeView1Click
          OnDblClick = TreeView1DblClick
          OnEdited = TreeView1Edited
          OnKeyDown = TreeView1KeyDown
          OnMouseMove = TreeView1MouseMove
          Items.NodeData = {
            0301000000500000000000000000000000FFFFFFFFFFFFFFFF00000000000000
            000000000001191104300437044B04200037043D0430043D0438043904200028
            003F0440043E0435043A0442044B04290020005B0030005D00}
        end
        object ToolBar1: TToolBar
          AlignWithMargins = True
          Left = 291
          Top = 17
          Width = 27
          Height = 336
          Margins.Left = 1
          Margins.Right = 1
          Margins.Bottom = 1
          Align = alRight
          ButtonWidth = 25
          Caption = 'ToolBar1'
          Images = ImageList1
          TabOrder = 1
          OnDragOver = ToolBar1DragOver
          object NewKB: TToolButton
            Tag = 3
            Left = 0
            Top = 0
            Hint = #1057#1086#1079#1076#1072#1090#1100' '#1085#1086#1074#1091#1102' '#1073#1072#1079#1091' '#1079#1085#1072#1085#1080#1081
            AutoSize = True
            Caption = 'New'
            ImageIndex = 21
            ParentShowHint = False
            Wrap = True
            ShowHint = True
            OnClick = NewKBClick
            OnMouseMove = TreeView1MouseMove
          end
          object NewT: TToolButton
            Tag = 5
            Left = 0
            Top = 22
            Hint = #1057#1086#1079#1076#1072#1090#1100' '#1085#1086#1074#1099#1081' '#1096#1072#1073#1083#1086#1085' '#1076#1083#1103' '#1092#1072#1082#1090#1086#1074' ('#1087#1088#1077#1094#1077#1076#1077#1085#1090#1086#1074')'
            AutoSize = True
            Caption = 'NewT'
            Enabled = False
            ImageIndex = 22
            ParentShowHint = False
            Wrap = True
            ShowHint = True
            OnClick = NewTClick
            OnMouseMove = TreeView1MouseMove
          end
          object NewF: TToolButton
            Tag = 6
            Left = 0
            Top = 44
            Hint = #1057#1086#1079#1076#1072#1090#1100' '#1085#1086#1074#1099#1081' '#1092#1072#1082#1090' ('#1087#1088#1077#1094#1077#1076#1077#1085#1090')'
            AutoSize = True
            Caption = 'NewF'
            Enabled = False
            ImageIndex = 20
            ParentShowHint = False
            Wrap = True
            ShowHint = True
            OnClick = NewFClick
            OnMouseMove = TreeView1MouseMove
          end
          object ToolButton13: TToolButton
            Tag = 101
            Left = 0
            Top = 66
            Hint = #1057#1086#1079#1076#1072#1090#1100' '#1085#1086#1074#1099#1081' '#1096#1072#1073#1083#1086#1085' '#1087#1088#1072#1074#1080#1083#1072
            Caption = 'ToolButton13'
            Enabled = False
            ImageIndex = 51
            ParentShowHint = False
            Wrap = True
            ShowHint = True
            OnClick = ToolButton13Click
            OnMouseMove = TreeView1MouseMove
          end
          object NewR: TToolButton
            Tag = 4
            Left = 0
            Top = 88
            Hint = #1057#1086#1079#1076#1072#1090#1100' '#1085#1086#1074#1086#1077' '#1087#1088#1072#1074#1080#1083#1086
            Caption = 'NewR'
            Enabled = False
            ImageIndex = 19
            ParentShowHint = False
            Wrap = True
            ShowHint = True
            OnClick = NewRClick
            OnMouseMove = TreeView1MouseMove
          end
          object ToolButton11: TToolButton
            Tag = 24
            Left = 0
            Top = 110
            Hint = #1057#1086#1079#1076#1072#1090#1100' '#1087#1072#1087#1082#1091
            Caption = 'ToolButton11'
            Enabled = False
            ImageIndex = 32
            ParentShowHint = False
            ShowHint = True
            OnClick = ToolButton11Click
            OnMouseMove = TreeView1MouseMove
          end
          object ToolButton15: TToolButton
            Left = 0
            Top = 110
            Width = 17
            Hint = #1057#1086#1079#1076#1072#1090#1100' '#1087#1072#1087#1082#1091
            Caption = 'ToolButton15'
            ImageIndex = 51
            ParentShowHint = False
            Wrap = True
            ShowHint = True
            Style = tbsSeparator
          end
          object EditItem: TToolButton
            Tag = 17
            Left = 0
            Top = 149
            Hint = #1048#1079#1084#1077#1085#1080#1090#1100
            AutoSize = True
            Caption = 'ToolButton2'
            Enabled = False
            ImageIndex = 10
            ParentShowHint = False
            Wrap = True
            ShowHint = True
            OnClick = EditItemClick
            OnMouseMove = TreeView1MouseMove
          end
          object DeleteItem: TToolButton
            Tag = 18
            Left = 0
            Top = 171
            Hint = #1059#1076#1072#1083#1080#1090#1100
            Caption = '&Delete'
            Enabled = False
            ImageIndex = 5
            ParentShowHint = False
            ShowHint = True
            OnClick = DeleteItemClick
            OnMouseMove = TreeView1MouseMove
          end
          object ToolButton14: TToolButton
            Left = 0
            Top = 171
            Width = 9
            Caption = 'ToolButton14'
            ImageIndex = 51
            Wrap = True
            Style = tbsSeparator
          end
          object ToolButton10: TToolButton
            Tag = 19
            Left = 0
            Top = 202
            Hint = #1055#1088#1086#1074#1077#1088#1080#1090#1100' '#1088#1072#1073#1086#1090#1086#1089#1087#1086#1089#1086#1073#1085#1086#1089#1090#1100' '#1087#1088#1086#1076#1091#1082#1094#1080#1086#1085#1085#1086#1081' '#1073#1072#1079#1099' '#1079#1085#1072#1085#1080#1081
            Caption = 'ToolButton10'
            Enabled = False
            ImageIndex = 49
            ParentShowHint = False
            Wrap = True
            ShowHint = True
            OnClick = ToolButton10Click
            OnMouseMove = TreeView1MouseMove
          end
          object ToolButton12: TToolButton
            Tag = 102
            Left = 0
            Top = 224
            Hint = #1055#1088#1086#1074#1077#1088#1080#1090#1100' '#1088#1072#1073#1086#1090#1086#1089#1087#1086#1089#1086#1073#1085#1086#1089#1090#1100' '#1087#1088#1077#1094#1077#1076#1077#1085#1090#1085#1086#1081' '#1073#1072#1079#1099' '#1079#1085#1072#1085#1080#1081
            Caption = 'ToolButton12'
            Enabled = False
            ImageIndex = 50
            ParentShowHint = False
            ShowHint = True
            OnClick = ToolButton12Click
            OnMouseMove = TreeView1MouseMove
          end
          object ToolButton16: TToolButton
            Left = 0
            Top = 224
            Width = 8
            Caption = 'ToolButton16'
            ImageIndex = 51
            Wrap = True
            Style = tbsSeparator
          end
          object ToolButton18: TToolButton
            Left = 0
            Top = 254
            Hint = 'Create an expert system for the task'
            Caption = 'ToolButton18'
            Enabled = False
            ImageIndex = 64
            ParentShowHint = False
            ShowHint = True
            OnClick = ToolButton18Click
          end
        end
      end
      object RzPageControl2: TRzPageControl
        AlignWithMargins = True
        Left = 3
        Top = 3
        Width = 320
        Height = 147
        ActivePage = TabSheet4
        Align = alClient
        Font.Charset = DEFAULT_CHARSET
        Font.Color = cl3DDkShadow
        Font.Height = -11
        Font.Name = 'Default'
        Font.Style = [fsBold]
        ParentFont = False
        TabIndex = 1
        TabOrder = 0
        FixedDimension = 20
        object TabSheet2: TRzTabSheet
          Caption = ' '#1057#1087#1088#1072#1074#1082#1072' '
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Default'
          Font.Style = []
          ParentFont = False
          object RzPanel1: TRzPanel
            AlignWithMargins = True
            Left = 3
            Top = 3
            Width = 310
            Height = 117
            Align = alClient
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
            TabOrder = 0
            object ScrollBox3: TScrollBox
              Left = 3
              Top = 3
              Width = 304
              Height = 111
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
        object TabSheet4: TRzTabSheet
          Caption = ' '#1057#1087#1080#1089#1086#1082' '#1086#1087#1077#1088#1072#1094#1080#1081' '
          object RzPanel7: TRzPanel
            AlignWithMargins = True
            Left = 3
            Top = 3
            Width = 310
            Height = 117
            Align = alClient
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
            TabOrder = 0
            object RzListView1: TRzListView
              Left = 3
              Top = 3
              Width = 304
              Height = 111
              Align = alClient
              BorderStyle = bsNone
              Color = clCream
              Columns = <
                item
                  AutoSize = True
                  Caption = #1042#1088#1077#1084#1103
                end>
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Default'
              Font.Style = []
              MultiSelect = True
              ParentFont = False
              ReadOnly = True
              ShowColumnHeaders = False
              SmallImages = ImageList1
              TabOrder = 0
              ViewStyle = vsReport
              OnClick = RzListView1Click
              OnDblClick = RzListView1DblClick
              ExplicitLeft = -1
            end
          end
        end
      end
    end
    object RzGroupBox2: TRzGroupBox
      AlignWithMargins = True
      Left = 3
      Top = 3
      Width = 598
      Height = 512
      Align = alClient
      TabOrder = 0
      object RzPanel3: TRzPanel
        AlignWithMargins = True
        Left = 4
        Top = 476
        Width = 590
        Height = 32
        Align = alBottom
        BorderOuter = fsGroove
        TabOrder = 0
        object RzButton3: TRzButton
          Tag = 18
          Left = 3
          Top = 4
          Width = 100
          Height = 23
          Cancel = True
          FrameColor = 7617536
          Align = alCustom
          Caption = #1059#1076#1072#1083#1080#1090#1100
          Color = 15791348
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          HotTrack = True
          ParentFont = False
          TabOrder = 0
          OnClick = RzButton3Click
          OnMouseMove = TreeView1MouseMove
        end
        object RzButton4: TRzButton
          Tag = 17
          Left = 105
          Top = 4
          Width = 100
          Height = 23
          Cancel = True
          FrameColor = 7617536
          Align = alCustom
          Caption = #1048#1079#1084#1077#1085#1080#1090#1100
          Color = 15791348
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          HotTrack = True
          ParentFont = False
          TabOrder = 1
          OnClick = RzButton4Click
          OnMouseMove = TreeView1MouseMove
        end
        object RzMenuButton1: TRzMenuButton
          Tag = 9
          Left = 207
          Top = 4
          Width = 130
          Height = 23
          FrameColor = 7617536
          Caption = #1058#1088#1072#1085#1089#1083#1080#1090#1077#1088#1072#1094#1080#1103
          Color = 15791348
          HotTrack = True
          TabOrder = 2
          Visible = False
          OnMouseMove = TreeView1MouseMove
          DropDownMenu = PopupMenu2
        end
      end
      object RzSplitter3: TRzSplitter
        Left = 1
        Top = 14
        Width = 596
        Height = 459
        Orientation = orVertical
        Position = 366
        Percent = 80
        UsePercent = True
        OnULDockOver = RzSplitter3ULDockOver
        Align = alClient
        TabOrder = 1
        BarSize = (
          0
          366
          596
          370)
        UpperLeftControls = (
          RzPageControl1
          ToolBar3)
        LowerRightControls = (
          RzPanel8)
        object RzPageControl1: TRzPageControl
          AlignWithMargins = True
          Left = 3
          Top = 3
          Width = 590
          Height = 360
          ActivePage = TabSheet5
          Align = alClient
          BoldCurrentTab = True
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Default'
          Font.Style = []
          FlatColor = clDefault
          ParentFont = False
          ParentShowHint = False
          ShowHint = True
          ShowShadow = False
          TabIndex = 2
          TabOrder = 0
          TabStyle = tsRoundCorners
          OnDragOver = RzPageControl1DragOver
          FixedDimension = 20
          object TabSheet3: TRzTabSheet
            Tag = 7
            OnShow = TabSheet3Show
            Caption = #1054#1087#1080#1089#1072#1085#1080#1077
            OnMouseMove = TreeView1MouseMove
            object GroupBox3: TGroupBox
              AlignWithMargins = True
              Left = 3
              Top = 3
              Width = 582
              Height = 329
              Align = alClient
              TabOrder = 0
              object RzPanel2: TRzPanel
                AlignWithMargins = True
                Left = 5
                Top = 18
                Width = 572
                Height = 306
                Align = alClient
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
                TabOrder = 0
                object ScrollBox1: TScrollBox
                  Tag = 7
                  AlignWithMargins = True
                  Left = 6
                  Top = 6
                  Width = 560
                  Height = 294
                  Align = alClient
                  BevelInner = bvNone
                  BorderStyle = bsNone
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
                end
              end
            end
          end
          object TabSheet1: TRzTabSheet
            Tag = 8
            OnShow = TabSheet1Show
            Caption = #1055#1088#1086#1075#1088#1072#1084#1084#1085#1099#1081' '#1082#1086#1076
            OnMouseMove = TreeView1MouseMove
            object GroupBox4: TGroupBox
              AlignWithMargins = True
              Left = 3
              Top = 3
              Width = 582
              Height = 329
              Align = alClient
              TabOrder = 0
              object RzPanel5: TRzPanel
                Left = 2
                Top = 298
                Width = 578
                Height = 29
                Align = alBottom
                BorderOuter = fsNone
                TabOrder = 0
                object CheckBox1: TCheckBox
                  Left = 2
                  Top = 2
                  Width = 367
                  Height = 25
                  Caption = 
                    #1048#1089#1087#1086#1083#1100#1079#1086#1074#1072#1090#1100' '#1074#1089#1077' '#1089#1074#1086#1081#1089#1090#1074#1072'/'#1089#1083#1086#1090#1099' '#1074' '#1086#1087#1080#1089#1072#1085#1080#1080' '#1092#1072#1082#1090#1086#1074' '#1080' '#1087#1088#1072#1074#1080#1083' ('#1080#1089#1087#1086 +
                    #1083#1100#1079#1086#1074#1072#1090#1100' '#1091#1087#1086#1088#1103#1076#1086#1095#1077#1085#1085#1099#1077' '#1092#1072#1082#1090#1099')'
                  TabOrder = 0
                  WordWrap = True
                  OnClick = CheckBox1Click
                end
              end
              object RzMemo1: TRzMemo
                AlignWithMargins = True
                Left = 5
                Top = 18
                Width = 572
                Height = 277
                Align = alClient
                ScrollBars = ssBoth
                TabOrder = 1
                FrameColor = clBackground
                FrameHotStyle = fsFlat
                FrameVisible = True
              end
            end
          end
          object TabSheet5: TRzTabSheet
            AlignWithMargins = True
            OnShow = TabSheet5Show
            Caption = 'RVML - '#1057#1093#1077#1084#1072
            OnExit = TabSheet5Exit
            object ScrollBox4: TScrollBox
              Left = 0
              Top = 0
              Width = 582
              Height = 329
              Align = alClient
              BevelInner = bvNone
              BevelOuter = bvNone
              BevelKind = bkSoft
              DragMode = dmAutomatic
              Color = clCream
              Ctl3D = False
              ParentColor = False
              ParentCtl3D = False
              ParentShowHint = False
              PopupMenu = PopupMenu3
              ShowHint = True
              TabOrder = 0
              OnDragDrop = ScrollBox4DragDrop
              OnDragOver = ScrollBox4DragOver
            end
          end
          object TabSheet6: TRzTabSheet
            OnShow = TabSheet6Show
            Caption = 'Expert system'
            object RzPageControl3: TRzPageControl
              AlignWithMargins = True
              Left = 3
              Top = 3
              Width = 582
              Height = 329
              ActivePage = TabSheet7
              Align = alClient
              BoldCurrentTab = True
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Default'
              Font.Style = []
              FlatColor = clDefault
              ParentFont = False
              ParentShowHint = False
              ShowHint = True
              ShowShadow = False
              TabIndex = 3
              TabOrder = 0
              TabOrientation = toBottom
              TabSequence = tsReverse
              TabStyle = tsRoundCorners
              OnDragOver = RzPageControl1DragOver
              FixedDimension = 20
              object RzTabSheet1: TRzTabSheet
                Tag = 7
                OnShow = RzTabSheet1Show
                Caption = 'Results: Rules fired'
                OnMouseMove = TreeView1MouseMove
                object ScrollBox2: TScrollBox
                  Tag = 1
                  AlignWithMargins = True
                  Left = 3
                  Top = 3
                  Width = 574
                  Height = 298
                  Align = alClient
                  BevelInner = bvNone
                  BevelOuter = bvNone
                  BevelKind = bkSoft
                  DragMode = dmAutomatic
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
                  OnDragDrop = ScrollBox4DragDrop
                  OnDragOver = ScrollBox4DragOver
                end
              end
              object RzTabSheet2: TRzTabSheet
                Tag = 8
                OnShow = RzTabSheet2Show
                Caption = 'Results: Facts changed'
                OnMouseMove = TreeView1MouseMove
                object ScrollBox6: TScrollBox
                  Tag = 1
                  AlignWithMargins = True
                  Left = 3
                  Top = 3
                  Width = 574
                  Height = 298
                  Align = alClient
                  BevelInner = bvNone
                  BevelOuter = bvNone
                  BevelKind = bkSoft
                  DragMode = dmAutomatic
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
                  OnDragDrop = ScrollBox4DragDrop
                  OnDragOver = ScrollBox4DragOver
                end
              end
              object RzTabSheet3: TRzTabSheet
                AlignWithMargins = True
                OnShow = RzTabSheet3Show
                Caption = 'Initial facts'
                object ScrollBox5: TScrollBox
                  Left = 0
                  Top = 0
                  Width = 574
                  Height = 263
                  Align = alClient
                  BevelInner = bvNone
                  BevelOuter = bvNone
                  BevelKind = bkSoft
                  DragMode = dmAutomatic
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
                  OnDragDrop = ScrollBox4DragDrop
                  OnDragOver = ScrollBox4DragOver
                end
                object RzBitBtn2: TRzBitBtn
                  AlignWithMargins = True
                  Left = 0
                  Top = 266
                  Width = 574
                  Height = 32
                  Margins.Left = 0
                  Margins.Right = 0
                  Margins.Bottom = 0
                  FrameColor = 7617536
                  Align = alBottom
                  Caption = 'RUN'
                  Color = 15791348
                  Enabled = False
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clWindowText
                  Font.Height = -11
                  Font.Name = 'Tahoma'
                  Font.Style = [fsBold]
                  HotTrack = True
                  ParentFont = False
                  TabOrder = 1
                  OnClick = RzBitBtn2Click
                  ImageIndex = 49
                  Images = ImageList1
                end
              end
              object TabSheet7: TRzTabSheet
                Caption = 'General information'
                object GroupBox5: TGroupBox
                  AlignWithMargins = True
                  Left = 3
                  Top = 3
                  Width = 574
                  Height = 298
                  Align = alClient
                  Caption = ' General information: '
                  TabOrder = 0
                  object RzPanel9: TRzPanel
                    Left = 2
                    Top = 160
                    Width = 570
                    Height = 136
                    Align = alClient
                    BorderOuter = fsNone
                    BorderColor = clBlue
                    BorderShadow = clBlue
                    TabOrder = 0
                    object RzPanel12: TRzPanel
                      AlignWithMargins = True
                      Left = 3
                      Top = 3
                      Width = 564
                      Height = 130
                      Align = alClient
                      BorderOuter = fsFlat
                      BorderColor = clBlue
                      BorderShadow = clBlue
                      Ctl3D = False
                      ParentCtl3D = False
                      TabOrder = 0
                      object RzSplitter4: TRzSplitter
                        Left = 1
                        Top = 1
                        Width = 562
                        Height = 128
                        Position = 370
                        Percent = 66
                        UsePercent = True
                        Align = alClient
                        TabOrder = 0
                        BarSize = (
                          370
                          0
                          374
                          128)
                        UpperLeftControls = (
                          RzPanel21)
                        LowerRightControls = (
                          RzPanel20)
                        object RzPanel21: TRzPanel
                          AlignWithMargins = True
                          Left = 3
                          Top = 3
                          Width = 364
                          Height = 122
                          Align = alClient
                          BorderOuter = fsFlat
                          BorderColor = clBlue
                          BorderShadow = clBlue
                          Ctl3D = False
                          ParentCtl3D = False
                          TabOrder = 0
                          object RzPanel22: TRzPanel
                            AlignWithMargins = True
                            Left = 4
                            Top = 4
                            Width = 356
                            Height = 26
                            Align = alTop
                            BorderOuter = fsFlat
                            BorderColor = clBlue
                            BorderShadow = clBlue
                            Ctl3D = False
                            ParentCtl3D = False
                            TabOrder = 0
                            object RzComboBox1: TRzComboBox
                              Left = 1
                              Top = 1
                              Width = 354
                              Height = 21
                              Align = alClient
                              Ctl3D = False
                              Font.Charset = DEFAULT_CHARSET
                              Font.Color = clWindowText
                              Font.Height = -11
                              Font.Name = 'Tahoma'
                              Font.Style = [fsBold]
                              FrameVisible = True
                              ParentCtl3D = False
                              ParentFont = False
                              TabOrder = 0
                              Text = 'Templates'
                              OnChange = RzComboBox1Change
                              Items.Strings = (
                                'Templates'
                                'Rules')
                              ItemIndex = 0
                            end
                          end
                          object RzListView3: TRzListView
                            Left = 1
                            Top = 33
                            Width = 362
                            Height = 88
                            Align = alClient
                            Columns = <
                              item
                                AutoSize = True
                                Caption = 'Name'
                                MaxWidth = 500
                                MinWidth = 110
                              end>
                            DisabledColor = 13041606
                            Font.Charset = DEFAULT_CHARSET
                            Font.Color = clNavy
                            Font.Height = -11
                            Font.Name = 'Verdana'
                            Font.Style = []
                            FrameColor = 13041606
                            FrameHotColor = 13041606
                            GridLines = True
                            HideSelection = False
                            MultiSelect = True
                            ParentFont = False
                            ReadOnly = True
                            RowSelect = True
                            TabOrder = 1
                            ViewStyle = vsReport
                            OnClick = RzListView3Click
                          end
                        end
                        object RzPanel20: TRzPanel
                          AlignWithMargins = True
                          Left = 3
                          Top = 3
                          Width = 182
                          Height = 122
                          Align = alClient
                          BorderOuter = fsFlat
                          BorderColor = clBlue
                          BorderShadow = clBlue
                          Ctl3D = False
                          ParentCtl3D = False
                          TabOrder = 0
                          object ScrollBox7: TScrollBox
                            Tag = 7
                            AlignWithMargins = True
                            Left = 4
                            Top = 4
                            Width = 174
                            Height = 114
                            Align = alClient
                            BevelInner = bvNone
                            BorderStyle = bsNone
                            Color = clCream
                            Padding.Left = 5
                            Padding.Top = 5
                            Padding.Right = 5
                            Padding.Bottom = 5
                            ParentColor = False
                            TabOrder = 0
                            OnMouseMove = ScrollBox1MouseMove
                            OnMouseWheelDown = ScrollBox1MouseWheelDown
                            OnMouseWheelUp = ScrollBox1MouseWheelUp
                          end
                        end
                      end
                    end
                  end
                  object RzPanel10: TRzPanel
                    Left = 2
                    Top = 15
                    Width = 570
                    Height = 145
                    Align = alTop
                    BorderOuter = fsNone
                    BorderColor = clBlue
                    BorderShadow = clBlue
                    TabOrder = 1
                    object RzPanel18: TRzPanel
                      AlignWithMargins = True
                      Left = 159
                      Top = 0
                      Width = 263
                      Height = 142
                      Margins.Top = 0
                      Align = alClient
                      BorderOuter = fsNone
                      BorderColor = clBlue
                      BorderShadow = clBlue
                      TabOrder = 0
                      object RzPanel11: TRzPanel
                        AlignWithMargins = True
                        Left = 3
                        Top = 61
                        Width = 257
                        Height = 23
                        Align = alTop
                        BorderOuter = fsFlat
                        BorderColor = clBlue
                        BorderShadow = clBlue
                        TabOrder = 0
                        object RzLabel7: TRzLabel
                          AlignWithMargins = True
                          Left = 11
                          Top = 4
                          Width = 94
                          Height = 15
                          Margins.Left = 10
                          Align = alLeft
                          AutoSize = False
                          Caption = 'Creation date:'
                          Font.Charset = DEFAULT_CHARSET
                          Font.Color = clNavy
                          Font.Height = -11
                          Font.Name = 'Default'
                          Font.Style = []
                          ParentFont = False
                        end
                        object RzEdit2: TRzEdit
                          AlignWithMargins = True
                          Left = 109
                          Top = 2
                          Width = 146
                          Height = 19
                          Margins.Left = 1
                          Margins.Top = 1
                          Margins.Right = 1
                          Margins.Bottom = 1
                          Align = alClient
                          Enabled = False
                          Font.Charset = DEFAULT_CHARSET
                          Font.Color = clNavy
                          Font.Height = -11
                          Font.Name = 'MS Sans Serif'
                          Font.Style = [fsBold]
                          FrameVisible = True
                          ParentFont = False
                          TabOrder = 0
                          ExplicitHeight = 21
                        end
                      end
                      object RzPanel13: TRzPanel
                        AlignWithMargins = True
                        Left = 3
                        Top = 3
                        Width = 257
                        Height = 23
                        Align = alTop
                        BorderOuter = fsFlat
                        BorderColor = clBlue
                        BorderShadow = clBlue
                        TabOrder = 1
                        object RzLabel2: TRzLabel
                          AlignWithMargins = True
                          Left = 11
                          Top = 4
                          Width = 94
                          Height = 15
                          Margins.Left = 10
                          Align = alLeft
                          AutoSize = False
                          Caption = 'Name:'
                          Font.Charset = DEFAULT_CHARSET
                          Font.Color = clNavy
                          Font.Height = -11
                          Font.Name = 'Default'
                          Font.Style = []
                          ParentFont = False
                        end
                        object RzEdit1: TRzEdit
                          AlignWithMargins = True
                          Left = 109
                          Top = 2
                          Width = 146
                          Height = 19
                          Margins.Left = 1
                          Margins.Top = 1
                          Margins.Right = 1
                          Margins.Bottom = 1
                          Align = alClient
                          Enabled = False
                          Font.Charset = DEFAULT_CHARSET
                          Font.Color = clNavy
                          Font.Height = -11
                          Font.Name = 'MS Sans Serif'
                          Font.Style = [fsBold]
                          FrameVisible = True
                          ParentFont = False
                          TabOrder = 0
                          ExplicitHeight = 21
                        end
                      end
                      object RzPanel14: TRzPanel
                        AlignWithMargins = True
                        Left = 3
                        Top = 32
                        Width = 257
                        Height = 23
                        Align = alTop
                        BorderOuter = fsFlat
                        BorderColor = clBlue
                        BorderShadow = clBlue
                        TabOrder = 2
                        object RzLabel3: TRzLabel
                          AlignWithMargins = True
                          Left = 11
                          Top = 4
                          Width = 94
                          Height = 15
                          Margins.Left = 10
                          Align = alLeft
                          AutoSize = False
                          Caption = 'Author(s):'
                          Font.Charset = DEFAULT_CHARSET
                          Font.Color = clNavy
                          Font.Height = -11
                          Font.Name = 'Default'
                          Font.Style = []
                          ParentFont = False
                        end
                        object RzEdit3: TRzEdit
                          AlignWithMargins = True
                          Left = 109
                          Top = 2
                          Width = 146
                          Height = 19
                          Margins.Left = 1
                          Margins.Top = 1
                          Margins.Right = 1
                          Margins.Bottom = 1
                          Align = alClient
                          Enabled = False
                          Font.Charset = DEFAULT_CHARSET
                          Font.Color = clNavy
                          Font.Height = -11
                          Font.Name = 'MS Sans Serif'
                          Font.Style = [fsBold]
                          FrameVisible = True
                          ParentFont = False
                          TabOrder = 0
                          ExplicitHeight = 21
                        end
                      end
                      object RzPanel15: TRzPanel
                        AlignWithMargins = True
                        Left = 3
                        Top = 119
                        Width = 257
                        Height = 23
                        Align = alTop
                        BorderOuter = fsFlat
                        BorderColor = clBlue
                        BorderShadow = clBlue
                        TabOrder = 3
                        object RzLabel4: TRzLabel
                          AlignWithMargins = True
                          Left = 11
                          Top = 4
                          Width = 94
                          Height = 15
                          Margins.Left = 10
                          Align = alLeft
                          AutoSize = False
                          Caption = 'Platform:'
                          Font.Charset = DEFAULT_CHARSET
                          Font.Color = clNavy
                          Font.Height = -11
                          Font.Name = 'Default'
                          Font.Style = []
                          ParentFont = False
                        end
                        object RzEdit4: TRzEdit
                          AlignWithMargins = True
                          Left = 109
                          Top = 2
                          Width = 146
                          Height = 19
                          Margins.Left = 1
                          Margins.Top = 1
                          Margins.Right = 1
                          Margins.Bottom = 1
                          Align = alClient
                          Enabled = False
                          Font.Charset = DEFAULT_CHARSET
                          Font.Color = clNavy
                          Font.Height = -11
                          Font.Name = 'MS Sans Serif'
                          Font.Style = [fsBold]
                          FrameVisible = True
                          ParentFont = False
                          TabOrder = 0
                          ExplicitHeight = 21
                        end
                      end
                      object RzPanel16: TRzPanel
                        AlignWithMargins = True
                        Left = 3
                        Top = 90
                        Width = 257
                        Height = 23
                        Align = alTop
                        BorderOuter = fsFlat
                        BorderColor = clBlue
                        BorderShadow = clBlue
                        TabOrder = 4
                        object RzLabel5: TRzLabel
                          AlignWithMargins = True
                          Left = 11
                          Top = 4
                          Width = 94
                          Height = 15
                          Margins.Left = 10
                          Align = alLeft
                          AutoSize = False
                          Caption = 'Modification date:'
                          Font.Charset = DEFAULT_CHARSET
                          Font.Color = clNavy
                          Font.Height = -11
                          Font.Name = 'Default'
                          Font.Style = []
                          ParentFont = False
                        end
                        object RzEdit5: TRzEdit
                          AlignWithMargins = True
                          Left = 109
                          Top = 2
                          Width = 146
                          Height = 19
                          Margins.Left = 1
                          Margins.Top = 1
                          Margins.Right = 1
                          Margins.Bottom = 1
                          Align = alClient
                          Enabled = False
                          Font.Charset = DEFAULT_CHARSET
                          Font.Color = clNavy
                          Font.Height = -11
                          Font.Name = 'MS Sans Serif'
                          Font.Style = [fsBold]
                          FrameVisible = True
                          ParentFont = False
                          TabOrder = 0
                          ExplicitHeight = 21
                        end
                      end
                    end
                    object RzPanel17: TRzPanel
                      AlignWithMargins = True
                      Left = 3
                      Top = 3
                      Width = 150
                      Height = 139
                      Align = alLeft
                      BorderInner = fsFlat
                      BorderOuter = fsNone
                      BorderColor = clBlue
                      BorderShadow = clBlue
                      TabOrder = 1
                      object ProgramIcon: TImage
                        AlignWithMargins = True
                        Left = 4
                        Top = 4
                        Width = 150
                        Height = 131
                        Align = alLeft
                        Center = True
                        ParentShowHint = False
                        Picture.Data = {
                          055449636F6E0000010005004040000001001800283200005600000030300000
                          01002000A82500007E3200002020000001002000A81000002658000018180000
                          0100200088090000CE6800001010000001002000680400005672000028000000
                          4000000080000000010018000000000000320000000000000000000000000000
                          0000000000000000000000000000000000000000000000000000000000000000
                          0000000000000000000000000000000000000000000000000000000000000000
                          0000000000000000000000000000000000000000000000000000000000000000
                          0000000000000000000000000000000000000000000000000000000000000000
                          0000000000000000000000000000000000000000000000000000000000000000
                          0000000000000000000000000000000000000000000000000000000000000000
                          0000000000000000000000000000000000000000000000000000000000000000
                          0000000000000000000000000000DFD2D5DBCCCFD8C8CBD6C6C9D7C7CAD6C6C9
                          D6C6C9D6C6C9D6C6C9D6C6C9D6C6C9D6C6C9D6C6C9D6C6C9D6C6C9D6C6C9DFD2
                          D4DFD2D4DFD2D4DFD2D4DFD2D4DFD2D4DFD2D4DFD2D4DFD2D4DFD2D4DFD2D4DF
                          D2D4DFD2D4DFD2D4DFD2D4DFD2D4DFD2D4DFD2D4E0D3D5E1D4D7E4DADBECE5E6
                          0000000000000000000000000000000000000000000000000000000000000000
                          0000000000000000000000000000000000000000000000000000000000000000
                          0000000000E5DBDDD1BEC2C1A8ADB4969CAB8A90A7838AA58087A68289A58188
                          A58188A58188A58188A58188A58188A58188A58188A58188A58188A58188A581
                          88A58188B89CA1B89CA1B89CA1B89CA1B89CA1B89CA1B89CA1B89CA1B89CA1B8
                          9CA1B89CA1B89CA1B99DA2B99DA2B99DA2B99DA2B99DA3BBA0A5C2AAAECFBCC0
                          DED1D40000000000000000000000000000000000000000000000000000000000
                          00000000000000000000000000000000000000000000000000F8F5F5EAE1E3D8
                          C8CBC5ADB2B292989E798092676F8A5A6384525B814E58804C56804D57804D57
                          804D57804D57804D57804D57804D57804D57804D57804D57804D57804D57804D
                          57804D576D313D8C5D668C5D668C5D668C5D668C5D668C5D668C5D668C5D668C
                          5D668C5D668C5D668C5D668C5D668C5D668C5D668C5E668D606893666F9C757C
                          AA878DBCA1A6CEBBBFE0D4D60000000000000000000000000000000000000000
                          00000000000000000000000000000000000000000000000000E8DEE0CCB7BBAD
                          8C9290636B7E4A54733D476F36416E333F6F3540713642713742713742713742
                          7137427137427137427137427137427137427137427137427137427137427137
                          42713742692D386F35406F35406F35406F35406F35406F35406F35406F35406F
                          35406F35406F35406F34406F34406F35406F35406E353F6E343F6F3440713943
                          77414B86565F9C747CBA9EA3D7C7CA0000000000000000000000000000000000
                          00000000000000000000000000000000000000000000E1D5D8C3ABAFA17B8388
                          5861743B46703541753D497E4A558756618F616B946871966A74966A74966A74
                          966A74966A74966A74966B74966B74966A73966A73966A73966A73966A73966A
                          73966B748B5B658B5B658B5B658B5B658B5A648A5A648A5A648A5A648B5A648B
                          5A648B5A648B5A648A59648A59648A5A648B5B64895A6386545E804C5778414C
                          7137427037427A464F91646CAA888ECCB7BB0000000000000000000000000000
                          00000000000000000000000000000000000000000000BEA4A99971787A45506F
                          35416E323E7A44508F606AA27B84B4939BBFA4ABC8B1B6CCB5BBCCB5BBCCB5BC
                          CCB6BCCCB5BBCCB5BBCCB5BBCCB5BBCCB5BACCB5BACCB4B9CCB4B9CCB5BACCB5
                          BACCB5BBBA9CA4BB9EA6BB9EA5BB9EA5BA9DA4B99DA4B99CA3B99CA3BA9DA4BA
                          9DA4BA9DA4BA9DA4BA9CA4BA9CA4B99DA4BA9EA4B79AA0B29098A58089956771
                          83505B753D486D333D7137427E4954A37E85CAB4B8E8DFE10000000000000000
                          00000000000000000000000000000000E8DFE1C4ACB19A727A7E4B546E333F78
                          404C8B5C67A47F87BEA1A9CFB9BFDACACFE2D5D9E8DEE0EAE0E3EAE0E3EAE0E3
                          EAE0E3EAE0E3EAE0E3EAE0E3EAE0E3EAE0E2EAE1E3EBE1E4EDE3E5EDE4E7EDE4
                          E7EDE5E7E4D6DAE3D6DAE3D6D9E3D6D9E2D5D7DFD3D5DED1D4DED0D4DED0D4DE
                          D1D4DED1D4DED1D4DFD0D4DFD0D4DED0D4DED1D4DDCFD2D9C8CCD1BDC2C5ACB2
                          B4949B9C727B84535D743B466D323E84535CA27E85CBB7BB0000000000000000
                          00000000000000000000000000EBE3E4CDB9BDA27D847B4751703641753C4892
                          646EB89AA2D7C5CAEEE7E9F6F2F3F8F5F6F9F7F7FAF8F9FAF8F9FAF8F9FAF8F9
                          FAF8F9FAF8F9FAF8F9FAF9F9FAF9F9FAF8F9FAF8F8F9F7F7F8F5F6F8F4F5F8F5
                          F5F8F5F5F5F1F2F5F1F2F5F1F2F5F1F2F6F2F3F7F4F5F8F5F6F8F6F6F9F6F7F9
                          F6F7F9F6F6F9F6F7F9F6F7F9F6F7F8F6F7F9F6F7F8F6F6F8F5F5F6F2F3F4EFF0
                          E8DEE2CDB7BEAD8A938957627035426F36407D4A53A9878DD6C5C80000000000
                          00000000000000000000000000D9CACDAD8C928757606E343F78414C93656FB6
                          969ED9CACFF0E9EBFBFAFAFEFEFEFEFDFEFDFDFDFDFCFDFDFCFDFDFCFDFEFDFD
                          FEFCFDFDFCFCFDFCFCFDFDFDFEFDFEFCFBFBF7F5F6ECE4E6DCCCCFD4C2C5D4C3
                          C6D5C4C7C2B3B6C2B3B6C4B4B7C6B5B8D2C3C6E8DFE1F7F3F4FCFBFCFEFEFFFD
                          FDFDFDFCFCFDFDFDFEFDFEFEFEFEFEFDFEFEFDFDFEFDFDFEFDFEFEFEFEFFFEFF
                          F9F6F8EADFE3D2BEC3AC89938B5B66743D486D343E8B5E66B4969CDED0D30000
                          00000000000000000000000000C4ACB18D61697239446E34408D5D67BA9CA3DB
                          CBCFF2EDEFFAF8F8F8F5F6F8F6F6F8F6F6F8F6F7F9F6F7F9F6F7F9F6F7FAF7F7
                          FAF7F7F9F6F7F8F5F6F9F6F7FAF8F9F6F3F4ECE4E6D1BEC3AC89909C737B9F79
                          80A27D8476545B77555C79555C7D565E97757CC7B4B8E9DFE2F6F1F3FAF8F9F8
                          F6F7F7F4F5F8F5F6FAF7F7FAF7F7F9F7F7F9F6F7F9F6F7F8F5F6F9F5F7F9F5F7
                          F9F5F7FAF7F8F0EAECD5C1C7B18F988655606D323D753E48936870C8B2B60000
                          00000000000000000000E6DCDDB192987C48526F34407B4550A58087D8C7CCF1
                          E9EBFAF8F9FDFBFBF9F6F7F8F5F6F8F5F6F9F5F7FAF7F8FCF9FAFDFBFCFFFDFD
                          FEFDFDFBF9FAF8F4F6F9F6F7FBF9FAF5F1F2E5DADDBEA5AA865B6474434C8457
                          6090666E502A324E29314D272F50242D724B53B69EA3E4D7DAF5F0F1FBF9FAF8
                          F6F7F7F4F5FBF8F9FEFCFDFEFCFDFDFBFCFCF9FAFAF7F8F8F5F6F9F4F6F9F5F7
                          FAF7F8FDFCFCFAF8F9ECE4E7D3BEC4A0788177404B6F34407F4C55B5979DE9E0
                          E2000000000000000000D2C0C39F7A81723A44753D488E6069BEA2A8EEE7E9FB
                          FAFAF8F5F6FAF6F7FAF7F8FAF7F8FAF6F7FBF7F8FCFAFAFCFAFAFCF9FAFCF9FA
                          FCFAFBFAF8FAF9F5F7FAF7F9FDFCFDF5F0F1E0D2D5AE9298683D4556262F7549
                          523F1D234620283F1D2339161D360E155A363DAB9196E2D2D5F5F0F1FDFCFDFA
                          F8FAF8F5F7FAF6F8FAF8F9F9F6F8F9F7F8FBF9FAFCFAFBFAF7F8F9F5F7F9F6F7
                          F9F6F7F9F6F7F8F5F6FAF9F9EDE5E6BA9DA48A5A64733B45753D47A27E84D6C5
                          C9000000000000E5DBDDC2AAAE92676F6F35407D4853A17A83CEB9BEF6F3F4FF
                          FFFFF8F5F6F9F4F6FAF6F8FBF8F9FCF9FAFEFBFCFDFBFBEFE7E9DCCCD0D6C3C8
                          D9CACCE5DBDDF7F3F5FFFEFFFFFFFFF6EFF0DAC8CCA3858A5830384518206336
                          3F3F1D235628314B22293F171F340C14553037A4868CDDC9CDF6EFF1FFFFFFFF
                          FFFFF6F2F4E4D7DAD5C4C7CEBCC0D5C5C9EBE4E6FCF9FBFDFBFCFBF9FAFAF8F9
                          F9F6F7F8F4F6F8F5F6FFFFFFF7F4F4CCB6BB9D757E7B45506F3640946A72C5AE
                          B3000000000000DED0D3B6989D895B646F354085545EB29198D8C7CBF6F3F4FD
                          FCFDF8F5F6F8F4F6F9F5F7FBF8F9FDFBFCFDFAFBF6F1F2D6C5C9AE8C93A17A82
                          AA878DC7B0B4EEE7E9FDFCFDFDFDFDEFE6E7CFB8BC99797F5530373F161E5425
                          2F3F1D2371384464303A53242D40171F5732399A787ECEB4BAECE2E5FCFBFCFD
                          FCFDEBE3E5BEA5AA9D797F8F69719D7D84CDBDC1F3EEF0FCFAFBFDFBFDFBF9FA
                          F9F5F7F8F4F6F8F5F6FDFDFDF6F4F4D6C5C9B08E9684525C6F34408B5C65B79A
                          A0000000000000DACBCEAF8F9585555D6F35408B5C66BD9FA7DFD1D5F7F4F5FC
                          FBFCF7F4F5F8F4F6F9F6F8FDFBFCFDFBFCEEE5E6D2BFC2AF8F958D616A875962
                          986E76B09096CDB8BCD6C6C9D4C4C7C8B1B5B08E948B636A5D353C4C21295625
                          2F3F1D23773B476D35405B2A33441D244B292F735057987980B7A2A7CCBDC0D3
                          C3C6C2ACB08E6D7367404758313868444C9C8287CDBBBFEBE4E6FCFAFBFCFBFC
                          F9F6F8F8F4F6F7F4F5FCFCFCF7F5F5DED0D4BB9DA58A5B656F344086565FB091
                          97000000000000D9C9CCAE8D9385545D6F35408F616AC2A7AEE2D7DBF8F5F6FC
                          FBFCF8F5F6F8F5F6FAF8F9FCFAFBF6F2F3D2BFC29F798082525B76454E80505A
                          976D75A17A82A27C83A07A819B757C956A728A5B637C4B546B3C4562333C632E
                          383F1D237137426C343F5E2C354621283D1D23442128553239714E5587646B94
                          6F7789626A5C383F3C19203111163D1D2365414797747BCDBBBFF3EDEFFAF8F9
                          FAF8F9F8F5F6F8F5F6FCFCFCF8F5F6E2D6DAC1A6AE8E616A6F354085545DAF8E
                          94000000000000D9C9CCAE8D9385555D6F354090626BC3A9B0E4D8DCF9F6F7FC
                          FCFCF8F5F6FAF7F8FAF7F8ECE4E6D3C2C5A7888E78495267313B6C36417F4D57
                          976D759D757D976C748D616983535C7E4B557C485279454E74414A703B456E34
                          3F6F343F6C313C6A303B612B3551242C451D253F171F411B224D262E58323960
                          38415D343D4A222A3A151C36121839161C461F266640479E8288CFBDC2EBE4E5
                          FAF8F9FAF8F8F8F5F6FDFCFCF9F6F7E4D8DCC3A9B090636B70364185555DAE8D
                          93000000000000D9CACCAF8E9486555E6F35408F616BC2A8AFE4D7DBF9F6F7FD
                          FCFCF8F5F6FCFAFBF9F5F6D6C6C9A48288794E565B2B3458232D6A323D804C56
                          966B739E777F9B747C90656D7F4E587A46507D4A537C485279414C753B477337
                          437336416A2E3A6A2E39672C366229345B273255262F4D242B441F263F1C233D
                          1B22421D254D242C5428305629324F252C3B161D401E256C474FA18087D7C7CA
                          FAF7F8FDFBFBF8F5F6FDFCFCF9F6F7E4D7DBC2A8AF90626B70364186555EAF8E
                          94000000000000DACACDAF8F9486555E7036418F616BC2A8AFE4D7DAF9F7F8FE
                          FDFDF9F6F7FDFBFCF8F5F6CEBBBF926A7163363F451922471821602C3675414B
                          87565F90626B90636C8859627A4550763F497A424D78414C733B476F37426B33
                          3E69313C753D47763E48763E48753D476F384466323B5B2A334E212A461B2442
                          1A22481F26592A3365313B69343E5E2D3641171F3C151D613740946F77D1BFC2
                          FAF7F8FEFCFCF9F6F7FEFDFDF9F7F8E4D7DAC2A8AF90616B71374286555EAF8F
                          94000000000000DACACDAF8F9486555E7036418F616BC2A8AFE4D7DAF9F7F8FE
                          FDFDF9F6F7FDFBFCF8F5F6D2C0C499747B643C443C171F3A131B51262E63313A
                          7138437A414B7D47527B4650763D487338437236426D343F66313C5F2E385A2A
                          3457293285555D895961895A62875760814E58763F496E343F672E39622B3662
                          2D376430396A333D6E344070374168313C54202A52242E754A52A28087D7C7CA
                          FAF8F8FDFBFCF9F6F7FEFDFDF9F7F8E4D7DAC2A8AF90616B71374286555EAF8F
                          94000000000000D9C9CCAF8E9485555D70364190626BC2A8AFE4D7DBF8F7F8FD
                          FCFCF8F5F6FBF8F9F8F5F6E0D3D7B89FA486666D553239421E2546212853262E
                          662D3870343F733944733A4671384269323C5F2A3556242F50212A4C20284B20
                          284A21283F1D233F1D2390636B90636B8E60698B5A6385505A7B444E7339446E
                          35406D343E6F35406E344067303A622E38612E3871424C99757CC1ABB0E4D9DB
                          F9F7F7FAF8F9F8F5F6FDFCFCF8F7F8E4D7DBC2A8AF90626B70364185555DAF8E
                          94000000000000D9C9CCAF8E9485555D70364190626BC2A8AFE4D7DBF8F7F8FD
                          FCFCF7F4F6F8F5F6F8F5F6F5F0F1E6DEE0BBA5AA835D65593239401E24471F26
                          632F3870353F7035406F35406A333D5C2C344820283E18203C141C40171E471F
                          264A222A3F1D233F1D2391656D9368709870779F79819C757C8C5E677D485271
                          38426B303B6D333E67313C53242C51252D6A3C45916871C6AFB3ECE4E6F5F2F3
                          F7F4F5F7F4F5F7F4F5FDFCFCF8F7F8E4D7DBC2A8AF90626B70364185555DAF8E
                          94000000000000D9CACCAF8E9485555D70364190626BC2A8AFE4D7DBF9F7F8FD
                          FCFDF8F5F7F9F6F7FBF9FAFFFEFFFCFCFCD2C2C6946F76633A42421E25471E26
                          65303A7036416E333E662F395929324E242B4520274A272D59363D68464C7454
                          5A7A5C613F1D23A9878DA9868DA58289A38086A37F869F7A819870788D5F687B
                          46517137426F3440642E39481D25452027663C4598727AD6C5C9FFFDFEFEFFFE
                          F9F8F8F8F6F7F9F6F7FDFDFDF9F7F8E4D7DAC2A8AF90626B70364185555DAF8E
                          94000000000000D9CACCAF8E9485555D70364190626BC2A8AFE4D7DBF9F7F8FE
                          FDFEFBF8FAFCFAFBFDFDFDFFFFFFFDFDFDD0C0C38D69706238404A222A51232B
                          6A323C7136426B343E5A2933441E24441F25552D35734D54997A80B59BA0C4AF
                          B3CBB9BDD6C5C8D7C6C9D0BCC1C2AAAFB192989D767E966D75A07B829E787F8B
                          5D667C4651743945632C37471D253F1D2459323A89656CCDBDC1FDFBFCFFFFFF
                          FDFCFCFCFAFBFCFAFBFEFEFEF9F7F8E4D7DAC2A8AF90626B70364185555DAF8E
                          94000000000000D9CACCAF8E9485555D70364190626BC2A8AFE3D7DAF9F6F7FD
                          FCFDF8F4F6F7F3F4F5F1F2F2ECEEECE3E5BBA6AA78535A582D3551252D5B2932
                          6E343F6F3540622F3853262E451F2657333A815D64A88A8FCBB6BAE4D5D7EFE4
                          E6F4ECEEF1EBECF1EBECEAE1E4DED0D3CCB7BBB4979DA6838AA37F869E777F94
                          6A728857617A404C672E394E212A431F254D262E724E55B9A3A8EEE2E5F4EDEE
                          F5EFF0F5F1F3F7F3F5FCFBFCF9F6F7E3D7DBC2A8AF90616B70364185555DAF8E
                          94000000000000D9CACCAF8E9485555D70364190626BC2A8AFE3D7DAF9F6F7FA
                          F7F7EFE8EAE9DFE1E2D5D8DAC8CCCCB4B998797F583239471D2455273064303A
                          7136426A313C55272F51242D5B2F37825D65BEA5ABE1D3D6EFE8E9F7F3F4FBF7
                          F8FCF8FBFBF8F8FBF8F8F9F6F7F5F2F3EEE7E9E1D5D8C9B4B8A4818891666E96
                          6D7593676F814A556E343F5B2B334D242B421A22563138997A80CFB5BADBC7CB
                          DFD0D3E3D8DBE9E1E4F6F3F4F9F6F7E3D7DBC2A8AF90616B70364185555DAF8E
                          94000000000000D9CACCAF8E9485555D7036418F616AC2A8AEE5D9DCF8F5F6EB
                          E4E5D1BFC3C3ADB1BCA2A7B8999FAF8C93855F67512930491D255C2B3469333D
                          713642662E3952222B5A2E377B5159AA8B92E2D3D7FCF7F8FDFBFCFDFDFDFEFC
                          FDFEFCFDFEFCFCFEFCFCFEFDFDFEFDFDFCFAFCF8F6F6E1D5D7B3969C986F7796
                          6E7591656E834E59753C4766323B5628304018204521277350579A777FA2858A
                          A98E94B69EA4C9B7BBE8E0E2F8F5F5E5D9DDC2A8AF8F626B70364185555DAF8E
                          94000000000000D9CACCAF8E9485555D7036418F616AC2A8AEE7DBDEF6F3F4D5
                          C6C9A280868C636A885C648F626B966B7380565E5F333C592A33652F396C333D
                          6E3640632C3656222C6E424BA38188CEBABFF0E8EAFDFBFCF9F6F8F9F5F6FAF7
                          F8FBF8F9FCF9FAFCF9FAFAF8F8F9F5F7F9F6F8FBFBFBEEE8E9CEBABEAF8F9596
                          6C7486565E814E577B464F6F37415E2A34461E263D1D234A282F563139532F36
                          5A353C744D559C7A81D4C5C8F6F3F3E7DBDFC2A9AF8F626B70364185555DAF8E
                          94000000000000D9CACCAF8E9485555D70364190626BC3A9AFE8DDE0F5F2F3C8
                          B6B9865E656B3B4468374076454E8A5A6281525B6C3C4566333D6B323D6D333E
                          6D353F652D375E283280555DBFA4A9E5D8DCF8F4F4FDFDFDF8F4F6F7F2F3F9F5
                          F6FAF7F8FAF7F8FAF7F8F9F6F7F7F2F4F8F5F6FDFDFDF6F3F4E1D5D8C2A9AE97
                          6E767E4B547E4B547C4852733A44652D3852252E452027421B233E141D310A11
                          350C1453272F835C63C9B7BAF5F2F2E8DDE0C3AAB090636C70364185555DAF8E
                          94000000000000D9CACCAF8E9485555D70364190626BC3AAB0E8DDE0F5F2F3C5
                          B3B67F585F5F343C5B30386D404888565F87525B76404A6E37426D343F6D333E
                          6E35406A303B69323C8E646CCDB8BCEFE7EAFAF7F7FDFCFCFAF6F8F9F5F6F9F6
                          F7FAF7F8FAF7F8FAF7F8F9F6F7F9F5F6FAF7F8FDFCFCF9F7F7EDE5E8CEBABF9A
                          727A7B46507A454F79444E72394469303B612C375A2A3357252F4E1F283B131A
                          38131A5129307F5B61C6B6B9F5F2F2E8DDE0C3AAB090636C70364185555DAF8E
                          94000000000000D9CACCAF8E9485555D70364191636CC4ABB1E9DEE1F6F2F2C4
                          B3B67B575E5830374D282E5E343B7B4852804852753D477037426E343F6E3540
                          7138436F3641723A44976E76D4C2C6F4EFF0FBF9F9FDFBFBFBF8F9FAF7F8FAF7
                          F8FBF8F9FBF8F9FBF8F9FAF7F8FAF7F8FBF8F9FDFBFBFBF9F9F4EEF0D4C3C79A
                          727A77404A753E49753E497137426D323D6C323D6B343E6C354064313B4A2229
                          401D23532D337C595FC5B5B8F6F2F2E9DEE1C4ABB191636C70364185555DAF8E
                          94000000000000D9CACCAF8E9485555D70364191636CC4ABB1E9DEE1F6F2F2C5
                          B5B87C595F532D33401D234A222964313B6C35406B343E6C323D6D323D713742
                          753E49753E4977404A9A727AD4C3C7F4EEF0FBF9F9FDFBFBFBF8F9FAF7F8FAF7
                          F8FBF8F9FBF8F9FBF8F9FAF7F8FAF7F8FBF8F9FDFBFBFBF9F9F4EFF0D4C2C697
                          6E76723A446F36417138436E35406E343F703742753D478048527B48525E343B
                          4D282E5830377B575EC4B3B6F6F2F2E9DEE1C4ABB191636C70364185555DAF8E
                          94000000000000D9CACCAF8E9485555D70364190636CC3AAB0E8DDE0F5F2F2C6
                          B6B97F5B6151293038131A3B131A4E1F2857252F5A2A33612C3769303B723944
                          79444E7A454F7B46509A727ACEBABFEDE5E8F9F7F7FDFCFCFAF7F8F9F5F6F9F6
                          F7FAF7F8FAF7F8FAF7F8F9F6F7F9F5F6FAF6F8FDFCFCFAF7F7EFE7EACDB8BC8E
                          646C69323C6A303B6E35406D333E6D343F6E374276404A87525B88565F6D4048
                          5B30385F343C7F585FC5B3B6F5F2F3E8DDE0C3AAB090626B70364185555DAF8E
                          94000000000000D9CACCAF8E9485555D70364190636CC3AAB0E8DDE0F5F2F2C9
                          B7BA835C6353272F350C14310A113E141D421B2345202752252E652D38733A44
                          7C48527E4B547E4B54976E76C2A9AEE1D5D8F6F3F4FDFDFDF8F5F6F7F2F4F9F6
                          F7FAF7F8FAF7F8FAF7F8F9F5F6F7F2F3F8F4F6FDFDFDF8F4F4E5D8DCBFA4A980
                          555D5E2832652D376D353F6D333E6B323D66333D6C3C4581525B8A5A6276454E
                          6837406B3B44865E65C8B6B9F5F2F3E8DDE0C3A9AF90626B70364185555DAF8E
                          94000000000000D9CACCAF8E9485555D7036418F626BC2A9AFE7DBDFF6F3F3D4
                          C5C89C7A81744D555A353C532F365631394A282F3D1D23461E265E2A346F3741
                          7B464F814E5786565E966C74AF8F95CEBABEEEE8E9FBFBFBF9F6F8F9F5F7FAF8
                          F8FCF9FAFBF8F9FBF8F9FAF7F8F9F5F6F9F6F8FDFBFCF0E8EACEBABFA381886E
                          424B56222C632C366E36406C333D652F39592A335F333C80565E966B738F626B
                          885C648C636AA28086D5C6C9F6F3F4E7DBDEC2A8AE8F616A70364185555DAF8E
                          94000000000000D9CACCAF8E9485555D7036418F626BC2A8AFE5D9DDF8F5F5E8
                          E0E2C9B7BBB69EA4A98E94A2858A9A777F73505745212740182056283066323B
                          753C47834E5991656E966E75986F77B3969CE1D5D7F8F6F6FCFAFCFEFDFDFEFD
                          FDFEFCFCFEFCFDFEFCFDFEFCFDFDFDFDFDFBFCFCF7F8E2D3D7AA8B927B51595A
                          2E3752222B662E3971364269333D5C2B34491D25512930855F67AF8C93B8999F
                          BCA2A7C3ADB1D1BFC3EBE4E5F8F5F6E5D9DCC2A8AE8F616A70364185555DAF8E
                          94000000000000D9CACCAF8E9485555D70364190616BC2A8AFE3D7DBF9F6F7F6
                          F3F4E9E1E4E3D8DBDFD0D3DBC7CBCFB5BA997A80563138421A224D242B5B2B33
                          6E343F814A5593676F966D7591666EA48188C9B4B8E1D5D8EEE7E9F5F2F3F9F6
                          F7FBF8F8FCF8FBFCF8FBFBF7F8F7F3F4EFE8E9E1D3D6BEA5AB825D655B2F3751
                          242D55272F6A313C71364264303A552730471D2458323998797FCCB4B9DAC8CC
                          E2D5D8E9DFE1EFE8EAFAF7F7F9F6F7E3D7DAC2A8AF90626B70364185555DAF8E
                          94000000000000D9CACCAF8E9485555D70364190616BC2A8AFE3D7DBF9F6F7FC
                          FBFCF7F3F5F5F1F3F5EFF0F4EDEEEEE2E5B9A3A8724E554D262E431F254E212A
                          672E397A404C885761946A729E777FA37F86A6838AB4979DCCB7BBDED0D3EAE1
                          E4F1EBECF3ECEEF4ECEEEFE4E6E4D5D7CBB6BAA88A8F815D6457333A451F2653
                          262E622F386F35406E343F5B293251252D582D3578535ABBA6AAECE3E5F2ECEE
                          F5F1F2F7F3F4F8F4F6FDFCFDF9F6F7E3D7DAC2A8AF90626B70364185555DAF8E
                          94000000000000D9CACCAF8E9485555D70364190626BC2A8AFE4D7DAF9F7F8FE
                          FEFEFCFAFBFCFAFBFDFCFCFFFFFFFDFBFCCDBDC189656C59323A3F1D24471D25
                          632C377439457C46518B5D669E787FA07B82966D759D767EB19298C2AAAFD0BC
                          C1D7C6C9CAB9BDCBB9BDC4AFB3B59BA0997A80734D54552D35441F25441E245A
                          29336B343E7136426A323C51232B4A222A6238408D6970D0C0C3FDFDFDFFFFFF
                          FDFDFDFCFAFBFBF8FAFEFDFEF9F7F8E4D7DBC2A8AF90626B70364185555DAF8E
                          94000000000000D9CACCAF8E9485555D70364190626BC2A8AFE4D7DAF9F7F8FD
                          FDFDF9F6F7F8F6F7F9F8F8FEFFFEFFFDFED6C5C998727A663C45452027481D25
                          642E396F34407137427B46518D5F689870789F7A81A37F86A38086A582893F1D
                          233F1D237A5B617A5C6174545A68464C59363D4A272D4520274E242B59293266
                          2F396E333E70364165303A471E26421E25633A42946F76D2C2C6FCFCFCFFFEFF
                          FBF9FAF9F6F7F8F5F7FDFCFDF9F7F8E4D7DBC2A8AF90626B70364185555DAF8E
                          94000000000000D9CACCAF8E9485555D70364190626BC2A8AFE4D7DBF8F7F8FD
                          FCFCF7F4F5F7F4F5F7F4F5F5F2F3ECE4E6C6AFB39168716A3C4551252D53242C
                          67313C6D333E6B303B7138427D48528C5E679C757C9F79819870779368703F1D
                          233F1D234A22294A222A471F2640171E3C141C3E18204820285C2C346A333D6F
                          354070354070353F632F38471F26401E24593239835D65BBA5AAE6DEE0F5F0F1
                          F8F5F6F8F5F6F7F4F6FDFCFCF8F7F8E4D7DBC2A8AF90626B70364185555DAF8E
                          94000000000000D9CACCAF8E9485555D70364190626BC2A8AFE4D7DBF8F7F8FD
                          FCFCF8F5F6FAF8F9F9F7F7E4D9DBC1ABB099757C71424C612E38622E3867303A
                          6E34406F35406D343E6E35407339447B444E85505A8B5A638E606990636B9063
                          6B3F1D234B20284A21284B20284C202850212A56242F5F2A3569323C71384273
                          3A4673394470343F662D3853262E462128421E2555323986666DB89FA4E0D3D7
                          F8F5F6FBF8F9F8F5F6FDFCFCF8F7F8E4D7DBC2A8AF90626B70364185555DAF8E
                          94000000000000DACACDAF8F9486555E71374290616BC2A8AFE4D7DAF9F7F8FE
                          FDFDF9F6F7FDFBFCFAF8F8D7C7CAA28087754A5252242E54202A68313C703741
                          6E34406A333D643039622D37622B36672E396E343F763F49814E58875760895A
                          623F1D235829325729325A2A345F2E3866313C6D343F723642733843763D487B
                          46507D47527A414B71384363313A51262E3A131B3C171F643C4499747BD2C0C4
                          F8F5F6FDFBFCF9F6F7FEFDFDF9F7F8E4D7DAC2A8AF8F616B70364186555EAF8F
                          94000000000000DACACDAF8F9486555E71374290616BC2A8AFE4D7DAF9F7F8FE
                          FDFDF9F6F7FEFCFCFAF7F8D1BFC2946F776137403C151D41171F5E2D3669343E
                          65313B592A33481F26421A22461B244E212A5B2A3366323B6F3844753D47763E
                          48763E4869303B69313C6B333E6F3742733B4778414C7A424D763F497A455088
                          596290636C90626B87565F75414B602C3647182145192263363F926A71CEBBBF
                          F8F5F6FDFBFCF9F6F7FEFDFDF9F7F8E4D7DAC2A8AF8F616B70364186555EAF8F
                          94000000000000D9C9CCAF8E9486555E70364190626BC2A8AFE4D7DBF9F6F7FD
                          FCFCF8F5F6FDFBFBFAF7F8D7C7CAA180876C474F401E253B161D4F252C562932
                          5428304D242C421D253D1B223F1C23441F264D242B55262F5B2732622934672C
                          366A2E39733642733641733743753B4779414C7C48527D4A537A46507F4E5890
                          656D9B747C9E777F966B73804C566A323D58232D5B2B34794E56A48288D6C6C9
                          F9F5F6FCFAFBF8F5F6FDFCFCF9F6F7E4D7DBC2A8AF8F616B6F354086555EAF8E
                          94000000000000D9C9CCAE8D9385555D70364190636BC3A9B0E4D8DCF9F6F7FD
                          FCFCF8F5F6FAF8F8FAF8F9EBE4E5CFBDC29E8288664047461F2639161C361218
                          3A151C4A222A5D343D6038415832394D262E411B223F171F451D2551242C612B
                          356A303B7338446F343F6E343F703B4574414A79454E7C48527E4B5583535C8D
                          6169976C749D757D976D757F4D576C364167313B784952A7888ED3C2C5ECE4E6
                          FAF7F8FAF7F8F8F5F6FCFCFCF9F6F7E4D8DCC3A9B090626B6F354085555DAE8D
                          93000000000000D9C9CCAF8E9485545D6F35408E616AC1A6AEE2D6DAF8F5F6FC
                          FCFCF8F5F6F8F5F6FAF8F9FAF8F9F3EDEFCDBBBF97747B6541473D1D23311116
                          3C19205C383F89626A946F7787646B714E555532394421283D1D234621285E2C
                          356C343F71394468313B632E3862333C6B3C457C4B548A5B63956A729B757CA0
                          7A81A27C83A17A82976D7580505A76454E82525B9F7980D2BFC2F6F2F3FCFAFB
                          FAF8F9F8F5F6F8F5F6FCFBFCF8F5F6E2D7DBC2A7AE8F616A6F354085545DAE8D
                          93000000000000DACBCEB0919786565F6F34408A5B65BB9DA5DED0D4F7F5F5FC
                          FCFCF7F4F5F8F4F6F9F6F8FCFBFCFCFAFBEBE4E6CDBBBF9C828768444C583138
                          6740478E6D73C2ACB0D3C3C6CCBDC0B7A2A79879807350574B292F441D245B2A
                          336D3540703843632E3856252F4C21295D353C8B636AB08E94C8B1B5D4C4C7D6
                          C6C9CDB8BCB09096986E768759628D616AAF8F95D2BFC2EEE5E6FDFBFCFDFBFC
                          F9F6F8F8F4F6F7F4F5FCFBFCF7F4F5DFD1D5BD9FA78B5C666F354085555DAF8F
                          95000000000000DED1D3B79AA08B5C656F344084525CB08E96D6C5C9F6F4F4FD
                          FDFDF8F5F6F8F4F6F9F5F7FBF9FAFDFBFDFCFAFBF3EEF0CDBDC19D7D848F6971
                          9D797FBEA5AAEBE3E5FDFCFDFCFBFCECE2E5CEB4BA9A787E57323940171F5324
                          2D3F1D233F1D233F1D2354252F3F161E55303799797FCFB8BCEFE6E7FDFDFDFD
                          FCFDEEE7E9C7B0B4AA878DA17A82AE8C93D6C5C9F6F1F2FDFAFBFDFBFCFBF8F9
                          F9F5F7F8F4F6F8F5F6FDFCFDF6F3F4D8C7CBB2919885545E6F3540895B64B698
                          9D000000000000E7DDDFC5AEB3946A726F36407B45509D757ECCB6BBF7F4F4FF
                          FFFFF8F5F6F8F4F6F9F6F7FAF8F9FBF9FAFDFBFCFCF9FBEBE4E6D5C5C9CEBCC0
                          D5C4C7E4D7DAF6F2F4FFFFFFFFFFFFF6EFF1DDC9CDA4868C553037340C143F17
                          1F4B22293F1D233F1D2363363F451820583038A3858ADAC8CCF6EFF0FFFFFFFF
                          FEFFF7F3F5E5DBDDD9CACCD6C3C8DCCCD0EFE7E9FDFBFBFEFBFCFCF9FAFBF8F9
                          FAF6F8F9F4F6F8F5F6FFFFFFF6F3F4CEB9BEA17A837D48536F354092676FC2AA
                          AE000000000000F0E9EBD6C5C9A27E84753D47733B458A5A64BA9DA4EDE5E6FA
                          F9F9F8F5F6F9F6F7F9F6F7F9F6F7F9F5F7FAF7F8FCFAFBFBF9FAF9F7F8F9F6F8
                          FAF8F9FAF6F8F8F5F7FAF8FAFDFCFDF5F0F1E2D2D5AB91965A363D360E153916
                          1D3F1D233F1D233F1D2375495256262F683D45AE9298E0D2D5F5F0F1FDFCFDFA
                          F7F9F9F5F7FAF8FAFCFAFBFCF9FAFCF9FAFCFAFAFCFAFAFBF7F8FAF6F7FAF7F8
                          FAF7F8FAF6F7F8F5F6FBFAFAEEE7E9BEA2A88E6069753D48723A449F7A81D2C0
                          C3000000000000F9F7F7E9E0E2B5979D7F4C556F344077404BA07881D3BEC4EC
                          E4E7FAF8F9FDFCFCFAF7F8F9F5F7F9F4F6F8F5F6FAF7F8FCF9FAFDFBFCFEFCFD
                          FEFCFDFBF8F9F7F4F5F8F6F7FBF9FAF5F0F1E4D7DAB69EA3724B5350242D4D27
                          2F3F1D233F1D233F1D2384576074434C865B64BEA5AAE5DADDF5F1F2FBF9FAF9
                          F6F7F8F4F6FBF9FAFEFDFDFFFDFDFDFBFCFCF9FAFAF7F8F9F5F7F8F5F6F8F5F6
                          F9F6F7FDFBFBFAF8F9F1E9EBD8C7CCA580877B45506F34407C4852B19298E6DC
                          DD000000000000000000F7F3F4C8B2B6936870753E486D323D865560B18F98D5
                          C1C7F0EAECFAF7F8F9F5F7F9F5F7F9F5F7F8F5F6F9F6F7F9F6F7F9F7F7FAF7F7
                          FAF7F7F8F5F6F7F4F5F8F6F7FAF8F9F6F1F3E9DFE2C7B4B897757C7D565E7955
                          5C77555CA27D84A27D849F79809C737BAC8990D1BEC3ECE4E6F6F3F4FAF8F9F9
                          F6F7F8F5F6F9F6F7FAF7F7FAF7F7F9F6F7F9F6F7F9F6F7F8F6F7F8F6F6F8F6F6
                          F8F5F6FAF8F8F2EDEFDBCBCFBA9CA38D5D676E34407239448D6169C4ACB10000
                          00000000000000000000000000DED0D3B4969C8B5E666D343E743D488B5B66AC
                          8993D2BEC3EADFE3F9F6F8FFFEFFFEFEFEFEFDFEFEFDFDFEFDFDFEFDFEFEFEFE
                          FEFDFEFDFDFDFDFCFCFDFDFDFEFEFFFCFBFCF7F3F4E8DFE1D2C3C6C6B5B8C4B4
                          B7C2B3B6D5C4C7D5C4C7D4C3C6D4C2C5DCCCCFECE4E6F7F5F6FCFBFBFEFDFEFD
                          FDFDFDFCFCFDFCFCFEFCFDFEFDFDFDFCFDFDFCFDFDFCFDFDFDFDFEFDFEFEFEFE
                          FBFAFAF0E9EBD9CACFB6969E93656F78414C6E343F875760AD8C92D9CACD0000
                          00000000000000000000000000EFE9EAD6C5C8A9878D7D4A536F364070354289
                          5762AD8A93CDB7BEE8DEE2F4EFF0F6F2F3F8F5F5F8F6F6F9F6F7F8F6F7F9F6F7
                          F9F6F7F9F6F7F9F6F6F9F6F7F9F6F7F8F6F6F8F5F6F7F4F5F6F2F3F5F1F2F5F1
                          F2F5F1F2F8F5F5F8F5F5F8F5F5F8F4F5F8F5F6F9F7F7FAF8F8FAF8F9FAF9F9FA
                          F9F9FAF8F9FAF8F9FAF8F9FAF8F9FAF8F9FAF8F9FAF8F9F9F7F7F8F5F6F6F2F3
                          EEE7E9D7C5CAB89AA292646E753C487036417B4751A27D84CDB9BDEBE3E40000
                          00000000000000000000000000000000000000CBB7BBA27E8584535C6D323E74
                          3B4684535D9C727BB4949BC5ACB2D1BDC2D9C8CCDDCFD2DED1D4DED0D4DFD0D4
                          DFD0D4DED1D4DED1D4DED1D4DED0D4DED0D4DED1D4DFD3D5E2D5D7E3D6D9E3D6
                          D9E3D6DAEDE5E7EDE5E7EDE4E7EDE4E7EDE3E5EBE1E4EAE1E3EAE0E2EAE0E3EA
                          E0E3EAE0E3EAE0E3EAE0E3EAE0E3EAE0E3EAE0E3E8DEE0E2D5D9DACACFCFB9BF
                          BEA1A9A47F878B5C6778404C6E333F7E4B549A727AC4ACB1E8DFE1F7F4F50000
                          00000000000000000000000000000000000000E8DFE1CAB4B8A37E857E495471
                          37426D333D753D4883505B956771A58089B29098B79AA0BA9EA4B99DA4BA9CA4
                          BA9CA4BA9DA4BA9DA4BA9DA4BA9DA4BA9DA4BA9DA4BA9DA4BA9DA4BA9DA4BA9D
                          A4BA9DA4CBB4BACCB5BBCCB5BACCB5BACCB4B9CCB4B9CCB5BACCB5BACCB5BBCC
                          B5BBCCB5BBCCB5BBCCB6BCCCB5BCCCB5BBCCB5BBC8B1B6BFA4ABB4939BA27B84
                          8F606A7A44506E323E6F35417A4550997178BEA4A9E1D5D80000000000000000
                          00000000000000000000000000000000000000000000E8DFE0CCB7BBAA888E91
                          646C7A464F70374271374278414C804C5786545E895A638B5B648A5A648A5964
                          8A59648B5A648B5A648B5A648B5A648A5A648A5A648A5A648B5A648B5B658B5B
                          658B5B65966B74966B74966A73966A73966A73966A73966A73966A73966B7496
                          6B74966A74966A74966A74966A74966A74966A749468718F616B8756617E4A55
                          753D49703541743B46885861A17B83C3ABAFE1D5D8F3EEEF0000000000000000
                          00000000000000000000000000000000000000000000FCFBFBEDE6E8D7C7CABA
                          9EA39C747C86565F77414B7139436F34406E343F6E353F6F35406F35406F3440
                          6F34406F35406F35406F35406F35406F35406F35406F35406F35406F35406F35
                          406F35406D313D71374271374271374271374271374271374271374271374271
                          37427137427137427137427137427137427137427136426F35406E333F6F3641
                          733D477E4A5490636BAD8C92CCB7BBE8DEE00000000000000000000000000000
                          00000000000000000000000000000000000000000000000000000000F0EBECE0
                          D4D6CEBBBFBCA1A6AA878D9C757C93666F8D60688C5E668C5D668C5D668C5D66
                          8C5D668C5D668C5D668C5D668C5D668C5D668C5D668C5D668C5D668C5D668C5D
                          668C5D666E333F804D57804D57804D57804D57804D57804D57804D57804D5780
                          4D57804D57804D57804D57804D57804D57804C56814E5884525B8A5A6392676F
                          9E7980B29298C5ADB2D8C8CBEAE1E30000000000000000000000000000000000
                          0000000000000000000000000000000000000000000000000000000000000000
                          0000000000EFE8E9DED1D4CFBCC0C2AAAEBBA0A5B99DA3B99DA2B99DA2B99DA2
                          B99DA2B89CA1B89CA1B89CA1B89CA1B89CA1B89CA1B89CA1B89CA1B89CA1B89C
                          A1B89CA18B5C65A58188A58188A58188A58188A58188A58188A58188A58188A5
                          8188A58188A58188A58188A58188A68289A58087A7838AAB8A90B4969CC1A8AD
                          D1BEC2E5DBDD0000000000000000000000000000000000000000000000000000
                          0000000000000000000000000000000000000000000000000000000000000000
                          0000000000000000000000ECE5E6E4DADBE1D4D7E0D3D5DFD2D4DFD2D4DFD2D4
                          DFD2D4DFD2D4DFD2D4DFD2D4DFD2D4DFD2D4DFD2D4DFD2D4DFD2D4DFD2D4DFD2
                          D4DFD2D4D6C6C9D6C6C9D6C6C9D6C6C9D6C6C9D6C6C9D6C6C9D6C6C9D6C6C9D6
                          C6C9D6C6C9D6C6C9D6C6C9D6C6C9D7C7CAD6C6C9D8C8CBDBCCCFDFD2D5E6DCDE
                          EFE8E90000000000000000000000000000000000000000000000000000000000
                          0000000000000000000000000000000000000000000000000000000000000000
                          0000000000000000000000000000000000000000000000000000000000000000
                          0000000000000000000000000000000000000000000000000000000000000000
                          0000000000000000000000000000000000000000000000000000000000000000
                          0000000000000000000000000000000000000000000000000000000000000000
                          0000000000000000000000000000000000000000000000000000000000000000
                          00000000FFFFFFFFFFFFFFFFFFFC000000000FFFFFE00000000007FFFE000000
                          000000FFFE0000000000007FFC0000000000003FFC0000000000000FF0000000
                          0000000FE000000000000007E000000000000003E000000000000003C0000000
                          00000001C0000000000000018000000000000001800000000000000180000000
                          0000000180000000000000018000000000000001800000000000000180000000
                          0000000180000000000000018000000000000001800000000000000180000000
                          0000000180000000000000018000000000000001800000000000000180000000
                          0000000180000000000000018000000000000001800000000000000180000000
                          0000000180000000000000018000000000000001800000000000000180000000
                          0000000180000000000000018000000000000001800000000000000180000000
                          0000000180000000000000018000000000000001800000000000000180000000
                          0000000180000000000000018000000000000001800000000000000180000000
                          0000000180000000000000018000000000000001800000000000000180000000
                          000000018000000000000001C000000000000003E000000000000003E0000000
                          00000003F800000000000003F80000000000000FFC0000000000000FFC000000
                          0000003FFF0000000000007FFFE00000000003FFFFF80000000007FFFFFFFFFF
                          FFFFFFFF28000000300000006000000001002000000000008025000000000000
                          000000000000000000000000000000000000000000000000F8F5F500FAF8F700
                          F8F6F607E2D8DA0BEFE9EA0BC2A8AD00D4C5CA00F2EFF000FDFAFB19FAF8F818
                          F9F9F919F9F8F819F9F7F719F9F8F819F9F8F819F9F8F819F9F8F819F9F8F819
                          F7F4F419FFFFFF19FFFFFF19E9DFE019F5F0F019F4EEEF19F4EFEF19F4EFEF19
                          F4EFEF19F4EFEF19F6F0F119F4EFEF19F4EFEF19F1EBEE19F3EDEE19F4EEEE19
                          F5F1F11AEFE9EA14B1999300E8DFE20BDED1D409CEBCC100BCA2A80000000000
                          0000000000000000000000000000000000000000E1D5D800F8F5F500FAF9F800
                          FAF9F900E2D7D900EAE2E400E4DBDD3BDFD2D55ED5C5C9A5CEBCBFFFC9B3B7FF
                          C8B2B6FFC8B2B6FFC7B1B5FFC8B2B6FFC8B2B6FFC8B2B6FFC8B2B6FFC8B2B6FF
                          C7B1B5FFCAB5B9FFCEBBBFFFD6C6C9FFD5C4C7FFD5C4C7FFD5C4C7FFD5C4C7FF
                          D5C4C7FFD5C4C7FFD4C4C7FFD5C4C7FFD5C4C7FFD5C4C7FFD5C5C7FFD6C5C9FF
                          D9CACDFFE5DCDDFCDAD0CF38E3D8DB00DCCFD200D0BFC401BBA1A700CFBBC000
                          CCB7BB0000000000000000000000000000000000F4F0F200F7F4F403F9F7F600
                          F8F7F76AE9E1E3A8DACBCEA3C8B4B7F3AF9095FF9A7179FF8D6068FE885861FE
                          875760FE875861FE875760FE875861FE875861FE875861FE875861FE875861FE
                          885861FE875760FE84545DFE875760FE996F77FE976D75FE976E76FE976E76FE
                          976E76FE976E76FE976D75FE976E76FE976E76FE986E76FE986E76FE976F76FE
                          9C747CFCAB8A90FFC1A8AEF3D3C1C5A5DFD3D596CDBBC000BAA0A600C1A7AD04
                          C3ABB000AC898F000000000000000000A0798100FAF8F900EDE6E809EFE9EA10
                          EAE2E4C2CDB9BCFF9E777EFF804D57FF723B46F96F3540FB6F3540FF713742FE
                          713843FF713742FF723843FF713843FF713843FF713843FF713843FF713843FF
                          713843FF723843FF703742FF682B37FF703641FF6F3540FF703641FF703641FF
                          703641FF703541FF703641FF703541FF6F3440FF6F3541FF6F3640FF6E353FFE
                          6F3440FF713842FE7A444EFF90646CFFBA9EA3FFD5C5C9A1D4C4C800D3C2C500
                          BBA0A501B7989D0000000000C7B1B6009E767E00D1C0C306D6C5CA00DACBCE57
                          C0A8ADFE8D6069F3733C46FA6C313DFD7A4550FF8D5F69FE9D747DFFA6828AFF
                          A9858EFFA8848DFFA9858EFFA9848CFFA9858EFFA9848CFFA9848CFFA9848CFF
                          A9848BFFA9848CFFA8838BFF9B717BFF996F79FF9A6F79FF997079FF986F78FF
                          9A7079FF997079FF9B7079FF996F79FF9A6E78FF996F78FF9A7179FF976D75FF
                          8E606BFE7F4A55FF6F3642FD6D343EFA7E4A53F7A58088FFCFBABEA1DCCED157
                          D6C4C704B99A9F0100000000DCCFD2009E767E00C9B2B700D8C9CD95B99EA3C9
                          8C6067FD6D333EFD753C48FE8E606BFFAF8D96FFC7AFB6FFD7C6CAFFE1D4D7FF
                          E4D7DBFFE3D6DAFFE4D7DBFFE4D7DAFFE4D7DBFFE4D6DAFFE3D7DAFFE4D8DAFF
                          E6D9DCFFE6DBDEFFE5DADDFFDAC8CDFFD9C8CDFFD9C8CCFFD7C7CAFFD4C4C8FF
                          D4C2C7FFD5C3C8FFD4C4C8FFD5C3C8FFD6C3C7FFD5C2C7FFD4C3C8FFD2BFC3FF
                          C8B1B7FFB6979FFF9D757DFE804D57FE6E333EFF733B46FCA37F86FFD4C4C7F6
                          B89DA2008A5C640000000000EBE3E414E2D6D802ECE4E496D1C0C3FF91656DFF
                          6F3540FE773E4AFFA17982FFD0BCC2FFEEE7E9FFF7F3F4FFF8F5F6FFF9F7F8FF
                          FAF7F9FFF9F7F8FFFAF8F9FFFAF7F8FFFAF8F8FFF9F7F9FFF9F7F7FFF8F6F6FF
                          F6F2F3FFF6F2F2FFF5F2F2FFF3EEEFFFF2EDEEFFF3EEEEFFF4F0F1FFF6F3F4FF
                          F7F5F6FFF8F5F7FFF8F5F6FFF8F6F6FFF8F6F7FFF8F5F6FFF8F5F6FFF8F5F5FF
                          F6F3F3FFF4EFF0FFE2D5DAFFBA9DA5FF8B5A64FE6D333FFE733C45F7A8858BF5
                          CEBBBFA2D1BFC311DCCED008CCB7BC1AD3C2C500D2C0C4A2A58289FC6F3641F6
                          753D48FFA27A83FED2BFC5FFF2EDEFFFFAF9F9FFFBFAFBFFFBFAFAFFFAF9FAFF
                          F9F8F9FFFAF8F9FFFAF8F9FFFAF8F8FFFBF9F9FFFBFAFBFFF7F4F5FFE5DADDFF
                          C7AFB3FFBDA2A7FFBEA5AAFFA48D92FFA58D92FFA88E93FFC1ACB0FFE8E0E1FF
                          FAF6F7FFFBFBFCFFFAF9F9FFFAF8F9FFFBFAFAFFFBFAFAFFFCF9FAFFFBF9FAFF
                          FBFAFBFFFCFBFCFFF8F5F7FFE7DDE1FFBEA2AAFF8D5E6AFF6C333DFF7B4750F8
                          BEA5AAFFE3D7D953E6DBDE00E2D8D901E2D6D83CC6AFB4E27F4B56FA6B2F3BFD
                          8F626BFED1BDC3FFF3EDEFFFFCFBFAFFF8F4F5FFF6F3F3FFF7F3F4FFF8F5F6FF
                          FAF7F8FFFCFAFAFFFBFAFAFFF8F5F6FFF7F3F4FFF9F6F7FFF0E9EBFFC9B4B9FF
                          895D66FF7F5059FF8E636CFF563038FF522C34FF552932FF835F67FFD2C1C5FF
                          F4EDEFFFF8F6F7FFF5F2F3FFF8F5F6FFFCFAFBFFFBF9F9FFFAF7F8FFF7F4F5FF
                          F7F2F4FFF7F2F4FFFAF7F8FFFBFAFBFFE9DFE3FFBB9EA6FE7E4854FE6A2E3AFD
                          936870FCD7C7CBCBF3EEEF11E9E1E114E2D8D984B4979CFF6F3640F97B4550FF
                          AF8E95FFEEE7E9FFFAF9F9FFF8F4F5FFFAF7F8FFF9F6F7FFFAF6F7FFFBF8F9FF
                          FAF7F8FFFAF5F6FFF9F7F8FFF8F5F7FFF9F6F8FFFBFAFBFFEDE5E7FFB79EA3FF
                          60333CFF65363FFF532F36FF411C23FF3C1920FF330C13FF67454CFFCBB7BBFF
                          F4EEEFFFFBFAFBFFF8F5F7FFF8F3F5FFF7F4F5FFF6F3F4FFF9F7F8FFFBF9FAFF
                          F9F5F7FFF8F5F6FFF9F6F6FFF7F4F5FFFAFAF9FFE0D3D6FF9A707AFF703742FF
                          7D4A53FDC7B3B7FFFAF6F91AEFE9EB87D6C7C9FF9A7279FD6F3541FF8C5D67FE
                          C6AEB3FFF6F3F4FFFBFBFBFFF6F2F4FFF9F5F7FFFAF7F8FFFDFBFCFFFBF8F9FF
                          DAC9CCFFBFA3A9FFC5AEB2FFE6DDDFFFFFFFFFFFFFFFFFFFEBDEE1FFAA8E93FF
                          4D272EFF4D2028FF48222AFF5B2B35FF4F222BFF380F17FF633F45FFC4A8AEFF
                          F5EBEEFFFFFFFFFFFCFBFBFFDACACEFFBBA1A5FFB89EA4FFDED2D5FFFDFCFCFF
                          FCFAFBFFF9F7F8FFF7F4F5FFF6F2F4FFFEFEFEFFEDE6E7FFB4959CFF7D4852FE
                          743C47FEB09198FCE0D5D718ECE3E67FCDB9BDFD90656CFF6F3540FE9A7079FF
                          D5C2C7FFF6F3F4FFFAF8F9FFF6F2F4FFF8F5F7FFFDFCFDFFF7F2F3FFDACBCDFF
                          A7848BFF885B64FF9A7279FFC4ADB1FFE1D6D9FFE0D4D6FFC9B1B5FF977278FF
                          542D34FF4C1E27FF451F27FF723844FF652F39FF451D24FF563339FF95747BFF
                          C4B1B5FFDED4D6FFDACDCFFFA18388FF6B434AFF674049FFA38A8FFFE1D6D9FF
                          FAF7F8FFFCFAFCFFF7F3F6FFF6F3F4FFFBFBFBFFEFEAEBFFC6ADB4FF885863FF
                          703742FEA48087FFD3C1C619EBE2E481CBB6BBFF8E6269FF6F3640FFA17982FF
                          DBCCD1FFF7F5F6FFF9F8F8FFF6F2F4FFF9F6F8FFFAF9FAFFDACBCDFF987077FF
                          77454EFF7B4A54FF976D75FFA07A81FF9D767DFF976F77FF8D5F68FF7D4B54FF
                          693A43FF63303AFF4E232BFF6C343FFF66303AFF492229FF3B1B21FF48252CFF
                          68444BFF86626AFF8D666EFF5F3A41FF341219FF321318FF5C373EFFA18187FF
                          E4D9DDFFF9F7F8FFF8F6F7FFF6F4F4FFFBFBFAFFF3EEF0FFCEB9C0FF8E606AFF
                          703741FEA17C82FFD1BDC019EAE3E381CBB7BAFF8F636AFF703540FFA17A83FF
                          DBCCD1FFF8F5F7FFF9F8F8FFF8F6F7FFF8F3F5FFD5C5C8FF9D7B81FF683841FF
                          622A34FF7B4751FF996F77FF9D757DFF8F636BFF7E4D57FF794650FF7A464FFF
                          76404AFF713843FF723540FF692D39FF652A35FF58252EFF4B1E27FF431B23FF
                          441E25FF49242CFF4D272FFF492028FF431B23FF411B22FF3D171EFF5D3A41FF
                          A68990FFE0D4D6FFFBF9F9FFF8F5F5FFFCFAFAFFF4EEF1FFD0BBC1FF8F626AFF
                          703841FEA27C83FFD0BBBF19EBE3E481CCB8BBFF90636BFF6F3641FFA07982FF
                          DBCBD0FFF9F6F6FFFAF8F9FFFAF9FAFFF6F1F2FFB69A9FFF6D4049FF471922FF
                          531F2AFF743E49FF8C5D65FF956A73FF8D6068FF7A4550FF78414CFF7A444EFF
                          743B47FF6E3541FF6B323DFF743A45FF733A44FF703741FF69333EFF5D2C34FF
                          4B2129FF3F1821FF3E1920FF53262FFF64313BFF62313AFF40181FFF3F1921FF
                          7C545CFFCCB9BCFFFDFBFBFFF9F6F7FFFCFAFBFFF3EFF0FFCFBAC0FF8F616AFF
                          713742FEA27D84FFD1BEC019EBE2E481CCB7BBFF8F636AFF703741FFA17A83FF
                          DCCCD0FFF8F7F7FFFAF9F9FFFAF8F9FFF6F2F3FFBDA3A8FF704951FF3A161EFF
                          411921FF5E2E36FF703741FF7A424CFF7A444FFF743B46FF703541FF6C323DFF
                          622F39FF5A2A34FF562932FF75474FFF83555DFF895A62FF7F4C56FF723A44FF
                          682F3AFF622C37FF632E38FF68323CFF6F353FFF6C343EFF56222CFF5A2C36FF
                          906A72FFD4C4C7FFFCFBFBFFF9F6F7FFFCFBFBFFF4F0F1FFD0BBC0FF90616BFF
                          713842FEA17D83FFD1BEC119E9E1E281CBB6BAFF8E626BFF703640FFA17A83FF
                          DBCCD1FFF7F7F6FFF9F8F8FFF7F4F5FFF7F3F4FFE1D5D7FFAB9297FF664149FF
                          442027FF472027FF642C36FF70343FFF713642FF6D353FFF5C2A33FF491D27FF
                          42161FFF42181FFF471E25FF2F0F15FF603940FF986A72FF90666EFF94676FFF
                          85525BFF743B46FF6C333DFF6D333EFF67303BFF592831FF63323CFF8C626BFF
                          C7B2B6FFEAE3E5FFF7F5F6FFF6F3F4FFFBFAFAFFF4EFF1FFCFBBC1FF8F626BFF
                          703841FEA27C82FFD2BCC219EAE3E381CCB7BBFF8F636BFF703741FFA17A83FF
                          DCCCD1FFF8F6F7FFFAF8F9FFF6F3F4FFFAF7F7FFFEFDFDFFDED2D5FF8E6870FF
                          4F2930FF411B22FF653039FF703540FF69303BFF5B2A33FF482128FF411F26FF
                          502C32FF623F45FF66454BFF523036FF9C787FFFA07A81FFA07B82FFA27E85FF
                          976E77FF84535DFF713743FF6E333FFF5D2933FF421B22FF613740FFA8878EFF
                          F1EBECFFFDFDFEFFF6F4F4FFF7F4F5FFFBFBFBFFF4EFF1FFD0BBC0FF90626BFF
                          713842FEA27D83FFD1BDC119EAE4E381CCB8BBFF8F636BFF703741FFA07982FF
                          DBCCD0FFF9F6F7FFFBFAFBFFFAF7F8FFFBFBFBFFFEFEFEFFDED2D5FF87636AFF
                          532A32FF4D2129FF6A323CFF6F3540FF5C2A34FF411C22FF4B242CFF704A51FF
                          A3868AFFC4AEB2FFCFBEC1FFD6C6C8FFDACACEFFC6B0B5FFAE8D94FF966E76FF
                          9E787FFF9B747CFF82505BFF753A46FF5C2732FF3E1921FF522C33FF98787FFF
                          EDE6E8FFFEFEFEFFFAF9F9FFFAF8F9FFFCFCFDFFF4EFF1FFCFBBC0FF8F616BFF
                          713842FEA27D83FFD2BDC219EAE3E381CCB7BBFF8F636BFF703741FFA17A83FF
                          DACBCFFFF9F5F6FFFAF7F8FFF2EDEEFFEDE5E7FFE7DBDEFFB9A2A7FF633E45FF
                          4D2129FF5C2A34FF6F3440FF652F39FF51242CFF4D242CFF815E66FFBFA6ABFF
                          E2D5D7FFF5EDEEFFFAF4F7FFF9F6F6FFF5F1F1FFEBE4E6FFD9C9CCFFBEA5AAFF
                          A38087FF966D75FF92676FFF7F4753FF632C37FF4A2229FF441D24FF745159FF
                          D0BABFFFEDE0E3FFEDE4E7FFEFEAECFFF9F7F8FFF3EEF1FFCEBAC1FF90606BFF
                          713842FEA27D83FFD2BDC219EAE4E381CCB8BBFF8F636BFF703740FFA07981FF
                          DCCDD1FFF7F4F5FFE6DBDEFFCDBABDFFC3ABB0FFBD9FA4FF936F77FF4D252CFF
                          4C1F27FF66313BFF703541FF5B2731FF52262FFF784D56FFC0A7ADFFF6EFF1FF
                          FBF9FAFFFCFBFBFFFCF9FBFFFCFAFAFFFCFBFBFFFCFBFBFFFAF8FAFFECE5E6FF
                          B4979DFF936971FF956C74FF85505BFF6F3741FF5B2B33FF3F171FFF512D34FF
                          96747BFFAF9397FFB69EA4FFC8B5BAFFE9E2E4FFF4EFF0FFCFBBC1FF8F606AFF
                          713842FEA27D83FFD2BDC219EAE4E381CCB8BBFF8F636BFF703741FFA07981FF
                          DFD0D3FFF3F0F1FFBCA5A9FF885D65FF82555DFF90636BFF855B63FF5E323BFF
                          5D2B35FF6B323CFF6C343EFF5A242EFF673942FFAB8C93FFE3D6D9FFFBF9FAFF
                          F8F4F6FFF8F4F5FFF9F6F7FFFBF8F9FFFAF7F8FFF7F3F5FFF9F7F8FFF7F6F6FF
                          D4C4C7FFAA888FFF8A5C64FF804D56FF79434CFF662F39FF481E26FF3E1E23FF
                          4D2831FF4C272EFF572F37FF845D65FFCFBFC2FFF5F1F2FFD1BDC3FF8E616AFF
                          713842FEA27D83FFD2BDC219EAE4E381CCB8BBFF8F636BFF703741FFA17A82FF
                          DFD2D5FFF2EEEFFFA98D93FF65363EFF5F3039FF7C4B54FF88555EFF703E47FF
                          6A333EFF6D323EFF6C333EFF612933FF7C4F57FFCCB5BBFFF4EEF0FFFBFBFAFF
                          F7F3F5FFF7F2F4FFF8F5F6FFF9F6F7FFF8F5F6FFF6F2F3FFF9F7F7FFFBFAFAFF
                          EBE2E5FFBDA3A9FF85545DFF79464FFF7A444EFF6B323DFF5A2832FF4C212AFF
                          451921FF320A12FF360E15FF683E46FFC3B1B4FFF5F2F3FFD1BFC3FF8E626BFF
                          713842FEA27D83FFD2BDC219EAE4E381CCB8BBFF8F636BFF703741FFA17A82FF
                          E0D2D6FFF3EFEFFFA78E92FF5C333BFF4F2930FF6D3F48FF834C56FF753C46FF
                          6D3440FF6D333EFF6F3742FF6C313CFF8A5D66FFD7C7CBFFF9F6F7FFFBFAF9FF
                          F9F6F7FFF8F6F7FFF9F6F7FFFAF7F8FFF9F6F7FFF8F5F6FFFAF8F9FFFBFAF9FF
                          F4F0F2FFC6B0B5FF825059FF733C47FF743D48FF6D333EFF69303BFF68323CFF
                          65303BFF492127FF401D22FF684248FFC2B0B3FFF6F2F2FFD2BFC4FF8F626AFF
                          713842FEA27D83FFD2BDC219EAE4E381CCB8BBFF8F636BFF703742FFA17B83FF
                          E0D2D6FFF3EFEFFFA89095FF593238FF3E1B21FF51252DFF67323DFF68313BFF
                          69303BFF6F3540FF753E49FF733C46FF90636CFFD7C8CCFFF9F6F6FFFBFAFAFF
                          F9F7F7FFF8F5F6FFF9F6F7FFFAF7F8FFF9F6F7FFF8F5F6FFFAF7F9FFFCF9F9FF
                          F5F1F2FFC6AFB3FF7C4952FF6C323CFF6F3742FF6C333EFF6F3641FF79414BFF
                          824C56FF63383FFF4E272DFF694149FFC0ADB1FFF6F3F3FFD2BFC4FF8F616BFF
                          713842FEA27D83FFD2BDC219EAE4E381CCB8BBFF8F636BFF703742FFA17B83FF
                          DFD2D6FFF2EEEFFFAB9195FF572C34FF310911FF370D15FF471B25FF4E242CFF
                          5E2934FF703641FF7A4750FF79444EFF8F636CFFCCB8BDFFF1ECEEFFFBFBFBFF
                          F7F4F5FFF7F3F5FFF8F6F7FFF9F6F7FFF8F5F6FFF6F1F3FFF9F5F7FFFBFAF9FF
                          EEE5E7FFB99DA3FF6E3C45FF642B35FF6D343FFF6C323DFF69343FFF76434CFF
                          8A5861FF73434BFF5C2D36FF6F434BFFC1ADB2FFF5F3F4FFD1BEC2FF8E606AFF
                          713842FEA27D83FFD2BDC219EAE4E381CCB8BBFF8F636BFF703741FFA07A82FF
                          DFD0D4FFF3F0F0FFBBA4A8FF754C55FF512B32FF4E2830FF4A262EFF3C1C21FF
                          50212AFF6C343EFF7B464FFF814E57FF90656CFFB4969CFFE0D4D7FFFAF9F9FF
                          F8F4F6FFF8F5F6FFFAF8F8FFFAF7F8FFF9F6F7FFF7F3F4FFF9F7F8FFF9F6F7FF
                          D7C5CAFF9A767DFF5D2C35FF5F2832FF6E3540FF68313BFF5A2A33FF673B44FF
                          8E636BFF8C5E67FF80535CFF8F696FFFCFBEC2FFF6F2F3FFD1BDC1FF8E6069FF
                          713842FEA27D83FFD2BDC219EAE4E381CCB8BBFF8F636BFF703741FFA07982FF
                          DCCDD2FFF7F3F4FFE0D6D9FFC2AEB2FFB49BA0FFAD8F95FF86636BFF442026FF
                          451C24FF612F37FF743B46FF8A5963FF956C74FF956C74FFC4AEB2FFF3EEEFFF
                          FBF9FBFFFCFBFBFFFCFAFAFFFCFAFBFFFDFAFBFFFBFBFBFFFCFAFAFFEEE4E7FF
                          AB8D94FF6B3F48FF50232CFF622B36FF703642FF602E37FF461B22FF5B343BFF
                          A48189FFBFA2A8FFC4AEB2FFD1BFC3FFEDE6E7FFF4EFF1FFCFBBC0FF8F616AFF
                          713842FEA27D83FFD2BDC219EAE4E381CCB8BBFF8F636BFF703740FFA17A83FF
                          DACBD0FFF8F5F6FFF7F4F5FFEEE8EBFFEDE3E5FFECDDE0FFBCA3A8FF603A42FF
                          431D23FF50242CFF6A313CFF85515CFF946A72FF976F77FFA98990FFC5AEB3FF
                          DED1D4FFF0E9EBFFF9F5F6FFFBF6F8FFFAF3F5FFF1E8EAFFDBCBCEFFB3979CFF
                          6F4A51FF4B2129FF55272FFF6A323CFF6C333EFF572831FF4C2129FF76545AFF
                          CDB9BEFFE9DEE1FFEEE7E8FFF4EEF0FFFBFAFAFFF3EEEFFFCEBAC0FF90626BFF
                          713842FEA27D83FFD2BDC219EAE4E381CCB8BBFF8F636BFF703741FFA07A82FF
                          DBCCD0FFF8F6F7FFFCFBFCFFFAF8F9FFFBFAFAFFFEFEFEFFDBCFD2FF825D65FF
                          48242BFF421B23FF652C37FF773F4AFF885862FF9F7A81FF9B747BFF9A727BFF
                          B5989EFFCAB5BAFFD1C1C4FFD0C1C4FFCEBCC0FFBDA5AAFF97777DFF653D45FF
                          441F26FF461F25FF632E38FF713641FF632E37FF4A2027FF5C323AFF9C7D83FF
                          EFE9EAFFFEFEFEFFFAFAFAFFF9F6F8FFFCFBFDFFF4EFF0FFCFBBC1FF8F616AFF
                          713842FEA27D83FFD2BDC219EAE3E381CCB8BBFF8F636BFF703741FFA17A83FF
                          DCCCD0FFF8F7F6FFFAF9FAFFF6F3F4FFF7F6F6FFFEFEFEFFE2D6D9FF936D75FF
                          552D34FF451C23FF642E39FF6E333EFF743D48FF8A5C65FF9B747CFF9F7C83FF
                          A9848BFF6B474EFF351419FF6D4B52FF6A494FFF5D3940FF4B282FFF411D24FF
                          4D232AFF5F2C35FF6B313CFF703640FF5C2A34FF3E1A21FF5C343BFFA38289FF
                          EDE8E9FFFEFDFDFFF8F5F6FFF6F3F5FFFCFAFBFFF4F0F1FFD0BBC0FF8F616BFF
                          713842FEA27D83FFD1BDC119E9E4E281CBB7BAFF8E626BFF6F3740FFA17A83FF
                          DBCCD1FFF7F6F7FFF9F8F8FFF6F3F5FFF6F4F4FFE4DBDDFFB99FA4FF7E505AFF
                          5E2D37FF5B2832FF6A323DFF6D323DFF6E343FFF78404BFF895962FF946870FF
                          946971FF80565EFF442127FF431A21FF451C23FF42171EFF431820FF4D1F29FF
                          612E37FF6F3541FF703542FF6F333DFF5D2933FF431F25FF49242BFF76535BFF
                          BCA7ABFFE8DEE1FFF8F5F6FFF6F3F5FFFBFAFAFFF4EFF0FFCFBBC1FF90626BFF
                          703742FEA17C82FFD2BCC219EBE3E481CCB8BBFF8F636AFF703741FFA17A83FF
                          DCCCD0FFF8F7F7FFFAF9F9FFFAF8F9FFF8F5F5FFC3ADB1FF80575FFF53232DFF
                          5C2631FF6E3640FF6D343FFF67313BFF622D38FF632C37FF6B313CFF763E48FF
                          814F59FF92626AFF563037FF50242BFF572932FF5C2C35FF652F3AFF6E333EFF
                          713641FF753E48FF7A4550FF783F4AFF6C343FFF572A32FF3A141CFF441E26FF
                          835C64FFCFBCC0FFFBF9FAFFF9F6F7FFFCFBFBFFF4F0F1FFD0BBC0FF8F616BFF
                          713841FEA27D83FFD1BEC019EBE2E481CCB7BBFF90636BFF713642FFA07982FF
                          DBCBD0FFF9F6F6FFFAF8F9FFFCF9FAFFF7F3F4FFB89EA3FF694049FF38121AFF
                          491F26FF66333DFF612F38FF4C222AFF3D171EFF421A22FF51242CFF612E37FF
                          6C3440FF703740FF703741FF6C313DFF6C333EFF703743FF763E4AFF7B444FFF
                          77404BFF7E4C55FF90656DFF946871FF87565FFF6C3640FF4B1B24FF4C1F28FF
                          7E5159FFCAB5BAFFFCF9FAFFF9F6F7FFFCFBFBFFF3EFF0FFCFBAC0FF8E606AFF
                          703742FEA37D84FFD0BEC019EAE2E381CBB6BAFF8F636AFF703741FFA17A83FF
                          DCCCD1FFF9F5F7FFF9F8F8FFF9F6F7FFF8F5F6FFD4C3C7FF93747BFF4F2B32FF
                          3D181EFF411B22FF431B23FF4A222BFF4C272FFF48232BFF431D24FF441B23FF
                          4E1F29FF5C262FFF672C37FF713541FF713540FF723A45FF77424BFF7A4650FF
                          7A4650FF81525BFF936971FF9E777EFF93676FFF723C47FF5F2832FF72454DFF
                          AC8F94FFE0D4D6FFFAF7F8FFF8F4F5FFFBFAFAFFF4EEF1FFCFBBC1FF8F616AFF
                          6F3641FEA27C83FFD0BABF19EAE2E381CBB7BBFF8E626AFF6F3640FFA07982FF
                          DACBD0FFF7F5F6FFF9F9F8FFF6F3F4FFF9F7F8FFF8F5F7FFD5C7CAFF8E6A71FF
                          4E2C32FF2E0F14FF3B191FFF6E484FFF8F6A72FF805C64FF5F3C43FF442027FF
                          3C1B21FF51262EFF6D343FFF723844FF662E39FF62313AFF6E3E46FF815159FF
                          90646CFF997279FF9F787FFFA07980FF90656DFF76444EFF7B4A53FFA8858BFF
                          E8DEE0FFFBF9FAFFF8F5F7FFF6F3F4FFFAFAFBFFF3EEF0FFCFBBC0FF8F606AFF
                          6F3641FEA17B82FFCFBBBF19EBE3E581CDBABEFF92666EFF6F3540FF996E78FF
                          D3C0C5FFF6F4F4FFFAF9F9FFF6F2F4FFF8F5F7FFFCFBFDFFF5F2F3FFD5C7CBFF
                          907379FF623A42FF754D54FFB39A9FFFE0D5D7FFDACED2FFBAA2A8FF86646AFF
                          4A272DFF4D2028FF5F2D37FF5E2D36FF55252FFF481C25FF623B42FFA6838AFF
                          D2BDC0FFE2D8D9FFDED1D3FFB99CA2FF93676FFF8B5E67FFB4979DFFE4D8DAFF
                          FBF8F8FFFCFAFBFFF7F3F6FFF6F3F4FFFBFAFAFFF0EAECFFC7B0B6FF895964FF
                          703742FEA27F85FFD3BFC319EFEAEA7ED9C9CCFC9C767DFF6E3540FE895A64FF
                          C4AAB1FFF7F3F4FFFCFBFBFFF6F2F3FFF9F5F6FFFAF8F9FFFDFBFCFFF9F7F8FF
                          D2C2C6FFB59AA0FFC1A8ACFFE4D9DCFFFFFFFFFFFFFFFFFFEDDEE2FFAE8F95FF
                          4E2930FF3C121BFF461F26FF38191EFF4E272EFF461922FF5F3B42FFC0A7ACFF
                          F4ECEDFFFFFFFFFFFCFBFCFFDCCFD2FFC1A8ACFFC2A8AEFFE4D8DAFFFEFDFDFF
                          FCFAFBFFFAF7F8FFF8F4F6FFF6F2F4FFFDFEFDFFEDE6E8FFB7999FFF7F4B56FE
                          733C46FEAE8E94FCDFD1D218F4EFF18AE8DFE2FFB19298FC743D46FF77404BFE
                          AB8890FFEDE5E7FFFAF9F9FFF8F3F5FFF9F6F7FFF8F5F6FFF9F6F7FFFBF9FAFF
                          F8F6F7FFF5F3F4FFF8F4F5FFF7F3F5FFF9F7F8FFFBFAFBFFEFE5E7FFB69EA2FF
                          512C33FF320C13FF401C23FF331319FF593339FF5E2E37FF70484FFFCBB7BBFF
                          F3EEEFFFFBF9FAFFF8F4F6FFF8F5F7FFFAF6F7FFF9F5F6FFFBF8F9FFFBF9F9FF
                          FAF6F7FFF9F6F7FFF9F6F7FFF7F4F5FFFBFAFAFFE2D6D9FF9F767EFF723A45FF
                          7A4650FDC4AEB2FFF6F1F11AFEFEFE55FCFBFBD7CEBBBEFF804E57FB6C303CFF
                          8A5B64FECBB3B9FFF0E9ECFFFDFCFCFFF8F5F7FFF7F2F4FFF7F3F4FFF8F5F6FF
                          FAF7F8FFFBF9FAFFFBF9F9FFF7F3F4FFF6F3F4FFF8F6F7FFEFE7E8FFC1ACB1FF
                          724951FF532831FF4C2830FF532F35FF724A51FF81505AFF956E77FFD7C7CBFF
                          F3EFF0FFF9F6F7FFF6F3F4FFF9F6F7FFFCFBFBFFFCF9FAFFF9F7F8FFF7F4F6FF
                          F6F3F5FFF6F3F3FFF9F6F7FFFAF9F9FFEEE6E8FFC2A8AEFF814F59FF692D39FD
                          8F646CFED4C3C6CBF2EDEE11EBE2E402EFE9EA19E0D3D6CEA7858CFF733D46FB
                          713944FF9A6F79FFCBB4BBFFEEE6E9FFFAF7F9FFFCFBFBFFFBFAFBFFFBF9FAFF
                          FAF9FAFFFBFAFAFFFBF9F9FFFAF9F9FFFAF9FAFFFBFBFCFFF7F3F4FFE0D4D7FF
                          B7A0A5FFA68D91FFA68F93FFC6ACB1FFC3A9AEFFBDA1A6FFCEB8BDFFEBE4E6FF
                          F9F8F8FFFBFAFBFFFAF9F9FFFAF8F8FFFBF9F9FFFAF8F9FFFAF8F9FFFAF9FAFF
                          FAFAFAFFFBFAFBFFFAF8F8FFECE5E8FFC6AEB4FF966972FE6F3541FF77414BF8
                          B4979CFBD8C9CC4EDFD3D600E8E0E119E7DFE000EAE2E38DD4C4C7E8936A71F6
                          6F3741FE713744FE976B74FFC6ADB3FFE8DFE2FFF5F1F1FFF7F4F4FFF8F6F6FF
                          F8F5F6FFF8F5F6FFF8F6F7FFF7F6F6FFF8F5F6FFF8F5F6FFF7F4F5FFF6F3F3FF
                          F3EFF0FFF2EEEFFFF2EEEFFFF4F1F1FFF5F2F2FFF5F2F3FFF6F3F4FFF8F6F6FF
                          F9F8F8FFF9F8F9FFF9F8F8FFFAF7F8FFFAF7F9FFF9F7F8FFFAF8F9FFF9F7F7FF
                          F8F4F6FFF6F2F3FFE9DFE2FFC4ACB3FF946671FF713743FF733C47FF9D777EFA
                          DED0D3FFF9F7F768F8F6F600AC889000D6C7CA04EAE3E500E8DFE221C9B4B8FF
                          93686FFB6F3441FF713842FF875660FEA47E86FFBB9FA6FFCCB5BBFFD3C1C5FF
                          D4C3C8FFD5C2C7FFD5C3C8FFD4C4C8FFD5C3C8FFD5C3C8FFD4C3C8FFD5C5C9FF
                          D8C8CBFFD8C7CBFFD9C8CDFFE5DADDFFE6DBDEFFE6DADDFFE5D8DBFFE4D7DAFF
                          E3D7DAFFE4D6DAFFE4D7DAFFE4D7DBFFE3D6DBFFE3D6DAFFE4D7DAFFDED1D4FF
                          D3C1C6FFC2A8AFFFA7828BFF865660FE703643FE723944FE976F76FDCAB5BAEF
                          E0D3D6A9D4C4C73EFDFDFD00CDB7BC00EEE8E900EFEAEA03F2EDEE0EEBE4E5A1
                          C9B4B8FF966C74F779444EFA6C333DFD733A46FF83505BFE91646EFF986F77FF
                          9A7079FF996F78FF9A6F79FF9A7079FF9B6F79FF9A7079FF997079FF9A6F79FF
                          996F79FF996F78FF9A7079FFA7848CFFA9848CFFA8838BFFA9838BFFA9848BFF
                          A9858CFFA9858CFFA9848DFFA9848EFFA8858DFFA8848DFFA9858CFFA47F87FF
                          996F79FF895863FE763E4AFF6C303CFC79444EFA997179FDCBB6B9FFECE5E7E7
                          DFD2D500B3959B00FEFEFE0000000000EEE8E900F6F3F304FBF9F900F4F0F049
                          EFE9EAE2D3C3C5FFAE8D93FF895B64FF76404AF9703742FF6E3440FE6F3640FF
                          6F3641FF6F3540FF703541FF703641FF703541FF703641FF6F3641FF703541FF
                          703641FF703641FF6F3540FF6F333FFF713843FF713742FF723843FF713843FF
                          713843FF713843FF713843FF713843FF713743FF713842FF713743FF713642FF
                          6F3440FE6F3641FF753F49FD87565FFFAA898FFFD7C6C9FFECE4E66CEEE7E920
                          EDE6E808FDFCFF01FDFDFD0000000000E8DFE100D0BDBF00DFD4D300CEBBBE00
                          E1D5D600EFE9EA96E4D8DAA5D2C0C4F3BCA0A5FFA68289FD9B727AFF976E76FF
                          986F77FF986F76FF986E76FF976E76FF986E76FF986E76FF986E76FF986E76FF
                          986E76FF986F76FF946A72FF76404BFF885A63FF875760FF885861FF885861FF
                          885861FF885861FF885861FF885861FF875760FF885861FF885760FF895A63FF
                          91646DFF9D767EFCB5989DFFCDB9BDD1DFD3D6A5E9E0E26EEBE3E500E9DFE100
                          00000000EBE4E800000000000000000000000000D4C3C500DDD1D100CFBCBF00
                          E3D8D901EEE6E700EFE8E900F3EFEF3CEDE6E97CE0D5D6FDD7C6C9FDD4C3C6FF
                          D3C3C5FFD4C3C6FFD4C3C5FFD3C2C5FFD4C3C5FFD4C3C5FFD4C3C5FFD4C3C5FF
                          D4C3C5FFD4C3C6FFD1C0C3FFBEA5AAFFC6B0B4FFC6B0B4FFC6B0B4FFC6B0B4FF
                          C6B0B4FFC6B0B4FFC6B0B4FFC6B0B4FFC5AFB3FFC6B0B4FFC6B0B4FFC8B2B6FF
                          CEBBBFFCDACCCEFCEBE2E4CDF0EAEB1AEDE6E800E2D7D900EDE6E801E9E0E201
                          FAF8FC00CFBCC1000000000000000000000000000000000000000000D0BDC000
                          E2D6D700EFE8E913E5DDDE19E6DEE000EEE9EB00F4F1EF83EFE7E97FEEE7E781
                          ECE6E581EDE6E781EEE7E881EFE8E881EEE7E881EEE7E881EEE7E881EEE7E881
                          EEE7E881EEE6E781EFE9E981F9F7F881EAE3E581EDE6E881ECE6E781ECE6E781
                          ECE6E781ECE6E781ECE6E781ECE6E781ECE5E681ECE6E781ECE6E881EEE7E981
                          F0E9EA7EF6F2F383F2EDED3FEAE0E200EFE7E81AE3D8DA0DECE4E600EAE1E300
                          000000000000000000000000FFFFFFFFFFFF0000FF80000001FF0000F8000000
                          003F0000F8000000001F0000F000000000070000E000000000070000C0000000
                          00030000C000000000010000C000000000010000800000000001000000000000
                          0001000000000000000100000000000000010000000000000001000000000000
                          0001000000000000000100000000000000010000000000000001000000000000
                          0001000000000000000100000000000000010000000000000001000000000000
                          0001000000000000000100000000000000010000000000000001000000000000
                          0001000000000000000100000000000000010000000000000001000000000000
                          0001000000000000000100000000000000010000000000000001000000000000
                          0001000000000000000100000000000000010000000000000001000000000000
                          000100000000000000010000C000000000030000C000000000010000F0000000
                          00030000F000000000070000F8000000000F0000FC000000001F0000FF800000
                          00FF0000FFC0000001FF00002800000020000000400000000100200000000000
                          80100000000000000000000000000000000000000000000000000000FAFAFA00
                          B6989E0000000000B090940000000000FFFFFF26FFFFFF3AFFFFFF38FFFFFF38
                          FFFFFF39FFFFFF39FFFFFF39FFFFFF39FFFFFF39FFFFFF39FFFFFF39FFFFFF39
                          FFFFFF39FFFFFF39FFFFFF39FFFFFF39FFFFFF38FFFFFF3AFFFFFF2DCBB5BC00
                          EFE8E900C0C6B40300000000D5C5C900CFBABE00B99EA30000000000F8F7F802
                          F4F2F218F1EDEE4EDBCED178BDA4A9BAAF9096FAA8868CFFA7848AFFA7858BFF
                          A7858CFFA7858BFFA7858BFFA8858BFFA8878DFFB29399FFB89BA0FFB69AA0FF
                          B79BA0FFB79AA0FFB69AA0FFB79BA0FFB79B9FFFB89DA2FFC7B2B6FFD2C1C67B
                          EEE7E83BDDD1D300A9868E0000000000E1D2D500B89DA200D3C4C802FBFBFC00
                          EEE8E972C6B0B4FF8D6069FF78444EFF703742FE713944FC733A45FC723945FC
                          723A45FC723944FC723944FC723944FC6E3540FC692E3AFC703742FC703642FC
                          713843FC723843FC713742FC703642FC713944FC6F3641FB723943FD875861FF
                          B29499F7D9CACE5CE0D6D904E9E1E303E4D4D800B4979D01AA8C9200D8CACE43
                          B4979CD678434DFF6E3340F8926671FBB6989FFDC7B0B5FFC9B2B8FEC9B2B8FF
                          CAB2B9FFC9B2B8FFCAB3B7FFCDB6BBFFCCB6BBFFC0A4ABFFBDA1A8FFBA9FA5FF
                          B89BA2FFB99CA3FFB99CA2FFB99BA1FEB89CA2FEB3949AFE9A707AFD76404AF9
                          6D323DFF9D777EF8D6C7CA98C3ADB100C1A8AC04F0EAEA02F8F5F43EC7B2B6F6
                          77404AFF79424DFCBEA3AAFEEFE9EBFEF9F6F7FEFAF9FAFEFAF8FAFFFBF9FAFE
                          FCFAFAFEFBFAFBFEF9F7F7FEF3EDEEFEEFEAEAFEEAE3E5FEEBE3E4FEF1ECECFE
                          F7F5F6FEF9F6F8FEF8F6F7FEF7F5F5FFF8F6F7FEF8F5F5FFF3F0F1FED4C2C7FE
                          8F616BFC692E3AFCA68389FCC7B2B659BFA8AD009E788200D7C7CB758F636CFE
                          6D333FF9C0A5ACFDF7F3F5FEFBFBFAFDF8F5F5FFF7F5F6FFFBFAFBFEFAF9FAFF
                          F6F3F4FFF8F6F7FFDCCFD3FF9F7980FF9A747CFF74545BFF704C53FFAE949AFF
                          F3EDEEFFF8F6F7FFF7F5F6FFFDFEFDFEFAF9F8FFF7F5F7FEF9F7F9FEFCFAFBFE
                          DDCED4FE895964FB6F3641FEC1A9AEDAB3989E13B79CA34FC3ADB0D0753D48FE
                          946871FCEFE9EBFEFBF9FAFEF6F2F3FEF8F5F5FEFBF8F9FFF2EBECFFF1EBEDFF
                          F9F8F9FFFEFDFEFFC4B0B4FF5D2E37FF562C34FF401A22FF2E050DFF836269FF
                          F3EAECFFFBFBFBFFF5EFF1FFEFE7E9FFF5F2F3FEFAF7F9FFF6F1F3FEF7F4F5FE
                          FEFFFFFDC4ABB1FE6C303BFB9F7A81FFFFFFFF39F5F2F3D8B09296FF703642FD
                          B5969CFEF7F5F5FEF7F4F5FEF7F4F6FFFFFEFFFFE3D7D9FFA27C84FFAD8D93FF
                          E7E0E1FFEEE6E9FFAD9195FF4D242CFF451D25FF67333EFF441A22FF6F4C52FF
                          D4C1C6FFF3EEEFFFC2ADB1FF7E5960FFB29CA1FFFAF6F7FFFBFAFCFFF4F0F2FF
                          FCFCFCFEDDCFD2FF83505BFB8A5B65FEDCCFD238EAE1E3C9A9888EFD723A44FE
                          C1A7AEFEF7F6F7FEF6F3F4FFF9F6F8FEE2D7D9FF8E646BFF723E48FF976D75FF
                          9F7A81FF936972FF805058FF693740FF5A2933FF69303BFF52252CFF3E1B22FF
                          5D3A41FF856169FF633D44FF2D0B12FF4F2A31FFB49BA1FFF4F0F2FEF6F4F4FF
                          FAFAF9FEE6DCE0FE8D5F69FC85555DFED4C2C539ECE5E5CDAB8A8FFF723A44FF
                          C0A6ADFFF8F5F6FFFBFAFAFEEFE8E9FF916E74FF4C1A23FF6B343FFF946971FF
                          90646DFF77424DFF79424CFF763E49FF713641FF733642FF69313AFF582630FF
                          441A22FF3A141CFF491F27FF5A2C34FF3E161DFF562F37FFCAB6BAFFFDFCFCFF
                          FBF8F9FEE7DDE0FF8E6068FC86565EFFD5C5C838ECE4E6CCAA898FFE723A45FE
                          C1A6ADFEF8F7F6FEFAF9FAFFF0E8EAFF937279FF3F1A21FF4F232BFF703842FF
                          79434DFF733A45FF68303BFF572530FF4F222BFF63383FFF85565FFF824F58FF
                          6F3842FF602B35FF67313BFF6F3640FF592630FF70464FFFD0BFC3FFFBFAFAFF
                          FAF9F9FEE7DDE0FF8E6069FC86565EFFD4C4C739ECE4E5CDAA8990FF723A44FF
                          C1A7AEFFF8F7F8FFF6F3F4FFFAF7F8FFE4DADCFF7C575FFF3E191FFF632D36FF
                          6F323EFF5B2A33FF401920FF482229FF512D33FF543239FF987077FF9B747BFF
                          956A73FF79434DFF6E313EFF53232CFF5B2F38FFC1A7ADFFF8F8F8FFF4F1F2FF
                          FBFAFAFEE7DDE0FF8E616AFC86565EFFD6C4C639EDE5E6CDAB8A8FFF723B45FF
                          BFA6ACFFFAF7F9FFFAF8F8FFFCFCFCFFEBE3E5FF7B575EFF4A1E26FF6C343EFF
                          602C36FF431C24FF704C53FFB89FA2FFD4C5C8FFDDD0D2FFD4C2C6FFAD8D94FF
                          9D787FFF926971FF793F4BFF4E1F29FF482329FFB9A1A6FFFFFEFFFFF8F6F7FF
                          FCFCFDFEE6DCE0FF8E5F6AFC87575FFFD5C5C739ECE5E5CDAA8A90FF723A44FF
                          C1A7ADFFF7F3F5FFE0D4D6FFD1BDC1FFAF9198FF50282FFF592730FF6E343FFF
                          502129FF754E56FFDAC9CDFFFCF8F9FFFFFCFEFFFDFCFDFFF9F7F7FFEFE8EAFF
                          B79CA1FF936970FF88555FFF632F38FF3F171FFF76545BFFC2A9AEFFCBB8BDFF
                          ECE6E8FEE7DDE1FF8E5E69FC86565EFFD6C4C839EDE6E6CDAB8B90FF703842FF
                          C5ACB1FFEDE7E9FF926C74FF794952FF895C64FF62333CFF662F3AFF662E38FF
                          612F39FFBDA4AAFFFAF8F9FFF7F3F6FFF6F2F3FFF8F5F6FFF6F3F4FFFCFCFCFF
                          E2D7D9FF9E787FFF7E4C54FF753D47FF4E2029FF411E24FF431B23FF5A2F38FF
                          C6B3B6FEEDE5E7FF8C5F68FC87575FFFD6C5C839EDE5E6CDAB8A90FF713943FF
                          C6AEB3FFEBE4E5FF765158FF52272FFF814D56FF763E48FF6C323DFF692F3AFF
                          7A4751FFDCCED1FFFCFCFBFFF6F3F4FFF7F4F6FFF8F5F6FFF6F3F4FFF9F7F7FF
                          F6F3F4FFAC8C92FF723B46FF723A45FF662E39FF602C36FF41181FFF431C23FF
                          BBA6A9FEEEE7E9FF8D6069FC87575FFFD6C5C839EDE6E6CDAB8A90FF713943FF
                          C5AEB4FFEBE5E6FF745257FF350E15FF54252FFF632D38FF6B323EFF733C46FF
                          83525CFFDBCED2FFFCFBFCFFF6F3F3FFF7F4F6FFF8F5F6FFF6F2F4FFF9F5F6FF
                          F7F4F4FFA9878DFF672D37FF6C333EFF6D353FFF824B55FF6B3E45FF50252DFF
                          B7A3A7FEEEE8E9FF8D5F69FC87575FFFD6C5C839EDE6E6CDAB8B90FF703844FF
                          C4ACB2FFEEE8E9FF89666DFF451B24FF451F27FF421C23FF632D38FF7B464FFF
                          875861FFC1A9AEFFF7F5F6FFF8F6F7FFF6F4F4FFF7F5F5FFF5F1F2FFFCFBFBFF
                          E7DBDEFF875F67FF5B242EFF6D343FFF5C2A34FF774B53FF885961FF754850FF
                          C5B2B6FEEDE5E7FF8C5E67FC87575FFFD6C5C839ECE5E5CDAA8A90FF723A43FF
                          C1A7AEFFF6F2F4FFD8CCCFFFC7B1B6FFA78990FF49252CFF4F2129FF77404AFF
                          91646DFF9C777EFFD9CACDFFF7F4F5FFFFFDFEFFFFFDFEFFFDFAFBFFF4EDEEFF
                          A98B92FF532830FF5F2A35FF6C343FFF461B22FF7D5A61FFCBB3B8FFD4C3C7FF
                          F0EBECFEE7DDE0FF8E6069FC86565EFFD5C4C839EDE6E6CDAB8A8FFF723B44FF
                          BFA6ADFFF9F7F8FFF9F8F9FFFEFCFDFFECE4E5FF755259FF3E171EFF662E39FF
                          86545EFF9B757DFFA17C84FFC0A8ADFFD0C1C4FFD8CACEFFCBB8BDFF96767CFF
                          502A31FF4B2027FF6F3540FF5A2831FF532830FFBAA4A8FFFDFDFDFFF8F6F7FF
                          FCFCFDFEE6DCDFFF8E6069FC87575FFFD6C5C739ECE5E5CDAA8A90FF723B45FF
                          C1A7ADFFF8F7F8FFF5F3F4FFF7F7F7FFE9E0E2FF886068FF4A1E26FF642D37FF
                          713641FF885761FF9C757DFF956E75FF48252BFF563238FF522D33FF3E181FFF
                          4C2028FF672F3AFF6E323DFF4C2028FF4E282FFFB89FA4FFF9F6F7FFF5F2F3FF
                          FAF9FAFEE7DDE0FF8E606AFC86565EFFD5C4C639ECE5E6CDAA8A8FFF723A45FF
                          C1A6ADFFF7F6F7FFFAF8F9FFF1EBEDFF9E7F85FF582732FF662F39FF6D353FFF
                          612C37FF662F3AFF78434CFF8C5B64FF673D45FF481C23FF53242DFF5F2A35FF
                          6E3540FF77404BFF773E4AFF622F38FF3D181FFF5F3840FFCBB7BBFFFBF9FAFF
                          FAFAF9FEE7DDDFFF8E606AFC86565EFFD5C4C739ECE4E5CCAB8A8FFE733A45FE
                          C0A6ADFEF9F5F6FEFBFAFAFFF1EAECFF8E6C73FF39121AFF50252CFF54272FFF
                          3E171FFF3E171EFF4F2028FF622C36FF6C313BFF6E333FFF723945FF7A424EFF
                          763F4AFF81525AFF986E77FF84525BFF511D27FF62353DFFC9B4B8FFFDFAFBFF
                          FBF9FAFEE7DDE0FF8D5F68FC86555EFFD7C5C838EBE3E6CCA9898FFF723A44FF
                          C1A6ADFFF7F6F6FFF6F4F4FEF8F6F7FEDED3D5FF7D5B61FF321015FF411D24FF
                          7F5A62FF745259FF48252CFF421B22FF652E39FF703541FF632F39FF73434BFF
                          8B5E66FF9B747BFFA17B81FF83545DFF73404AFFBAA0A5FFF6F3F4FFF6F2F4FF
                          FAF9FAFEE6DCE0FE8E5F69FC84545DFED4C1C539EFE9EAC9B09298FC6F3742FE
                          B2929AFEF7F5F5FEF7F5F5FFF7F3F5FFFFFFFFFFDED3D6FF8A686FFF98777DFF
                          E8DFE0FFECE4E6FFA7898FFF492329FF4F232BFF532831FF441821FF755058FF
                          DAC8CBFFF2EDEEFFCCB9BCFF9A727AFFC0A8ADFFF9F6F7FFFCFAFBFEF5F0F2FF
                          FCFCFBFEDED1D4FE84535EFB895B63FED9CBCD38FFFFFFD5CCB9BDFF713943FC
                          91646EFEEFE8E9FEFCFBFBFEF6F2F3FEF7F4F5FFFAF8F9FEF0E9ECFFF1E9ECFF
                          F9F7F8FFFEFDFEFFC9B3B7FF461D26FF2F0911FF3A191FFF53242CFF87646BFF
                          F0E9EBFFFCFBFCFFF4F0F2FFEFE8EAFFF7F3F4FFFAF8F9FEF6F2F3FFF7F3F4FE
                          FEFFFEFDC7B0B4FF6E343FFC9C777EFFFFFFFF39ECE4E652EAE2E3BD90646CFF
                          6B303CFBB99AA2FEF4EFF1FEFBFAFBFEF9F6F7FEF8F6F6FFFCFCFCFEFBFAF9FF
                          F6F3F5FFF9F7F8FFD8CACDFF856269FF6D4B52FF87666CFF966D75FFBBA0A6FF
                          F2EEEFFFF7F5F6FFF8F5F6FFFDFCFCFFF9F7F9FEF6F5F6FFF8F7F8FEFBFAFBFF
                          E3D7DBFD91646DFC6E3540FEB79CA1D0A6848913E2D7D900E9E0E23DCBB8BBDA
                          79464FFC733945FCB5959DFEEAE2E4FEF7F4F4FFF8F6F7FEF7F4F6FFF7F5F6FE
                          F7F6F6FFF8F6F7FFF5F1F2FFEBE6E7FFEAE4E5FFF5EFF0FFF1EAECFFF5F0F2FF
                          FAF9F9FFFAFAFAFFFAF9F9FFFAF7F9FEFAF8F9FFF9F8F9FEF6F2F4FEDCCFD2FE
                          996F79FD682C38F99C767DFEE5DADDB2B7979E00DBCFD10AE2D7D900EAE3E42F
                          C4ADB1F77B4751FE6B313BF9885862FBAA868EFEB79AA1FEB99BA2FEB99CA3FE
                          B99CA3FFB89BA2FFB99DA4FFBCA1A7FFBFA3A9FFCBB6BBFFCDB7BCFFCBB4B9FF
                          CAB2B7FFCAB2B8FFC9B3B9FFC8B2B8FEC9B3B8FEC0A7ADFDA8838CFE7F4B56FC
                          6C313DFA987077FFD9CACDE7DCCDCF3EF1EBEC03F9F7F700F1EBED01FFFFFF03
                          F0EBEB8DCEBBBEF79B737AFF79444EFF6F3642FD713A44FE723944FE723944FE
                          733945FF723944FF723844FF713844FF703641FF6F3540FF733944FF733A44FF
                          733B46FF743B46FF733B46FF723B46FE733A45FE723844FE6E3541FE7B4650FF
                          A27E85FFDBCCCFBBF5F1F136C4ACAF00BCA1A601F7F6F500AE909700E9E1E300
                          EFE8E800FBF8F83EE3D8DA7BCEBCC0CEBBA0A5FDB4959BFDB4979CFEB3969BFE
                          B3959BFFB4969BFFB3959AFFB5979DFFAF9196FF9C757DFFA48187FFA37F86FF
                          A48086FFA48087FFA37F86FFA37F86FEA37F86FEA7848BFCBA9EA3FFD6C5C9B7
                          EBE2E458EBE2E416EBE4E500ECE4E703C3AAAF00EBE4E500ECE5E70000000000
                          F2F1F104F9F5F600DBCCCF00FFFFFF44F6F4F3D1F0EAEAC9F1EEEDCDF2EEEECC
                          F2EEEDCDF3EEEECDF2EEEDCDF3EEEECDF1EDEECDEAE2E4CDE9E1E3CDE9E2E3CD
                          E8E1E2CDE9E2E4CDE9E1E3CDE7DFE1CCE8E1E2CCE8E1E2C9FAFAF9CCFFFFFF35
                          EDE5E700E7DDDF00F0EAEB06E7DEE000D6C5C800FFFFFFFFF800001FE0000007
                          E0000003C0000001800000018000000100000001000000010000000100000001
                          0000000100000001000000010000000100000001000000010000000100000001
                          0000000100000001000000010000000100000001000000010000000100000001
                          C0000001E0000003E0000007F800000FFE00003F280000001800000030000000
                          01002000000000006009000000000000000000000000000000000000EEE8E900
                          0000000000000000C5ACB100FFFFFF02FFFFFF2DFFFFFF4EFFFFFF4BFFFFFF4C
                          FFFFFF4DFFFFFF4CFFFFFF4DFFFFFF4DFFFFFF4DFFFFFF4DFFFFFF4CFFFFFF4C
                          FFFFFF4BFFFFFF4EFFFFFF1900000000FFFFFF03FFFFFF02D2C1C500EFE9EA06
                          FBFAFA00FFFFFF1CDED2D490A9888FC1926971FD8C5E67FF8B5E66FF8C5F67FF
                          8B5F67FF8B5D66FF8A5C65FF90656DFF966C74FF966D75FF976E76FF966D75FF
                          956C73FF9A7379FFAA898FD9C2ABAF7BFFFFFF06FCF9FC00D3C1C602E9E1E306
                          FFFFFF05D0BEC18C91666FFF733B47FF90646EFDA37F86FCA58088FBA58088FC
                          A58088FCA8838AFCA8848BFC9D757EFC9C737CFC976E77FC976C75FC976C75FC
                          976E76FB8E606AFB763F49FF83525BFFBAA0A5B0F9F8F81AEAE3E401AF969F00
                          DBCDCF7C8D6069FC78414CF5D3C1C6F9F8F6F6FCFAF9FAFEFCFBFCFEFBFAFBFD
                          FCFBFBFEF3EEEEFEEBE1E3FEDFD5D8FEE4DBDCFEF4F1F2FEF8F5F7FEF6F5F5FE
                          F7F5F5FEF7F5F6FEE2D7DAFB8E5F6AF67B4953FFBCA2A79FAE8D9101FFFFFF36
                          A9888FC3733B47FFD3C1C7F9FFFFFFFDF8F5F5FDFBF9FAFDFCFCFCFEF9F8F9FE
                          FAF9FAFEA98B92FE764B53FE502C34FE6E4A52FEEAE0E3FEFCFCFDFEFEFDFDFE
                          FFFFFFFDF7F4F7FDFDFCFDFDF0EAECFC824F5AFA91666FFCFFFFFF35ECE6E6D6
                          92686FFA90626BFDF7F5F6FDF6F4F5FEFFFFFFFEE5D9DBFEB4959BFFE3D9DBFE
                          F2EBEDFF7A565CFE3E131BFE4A1C26FE492129FED0BEC2FFF8F3F5FEAD9499FF
                          BFACB1FEFFFFFFFEF5F2F3FDFFFFFFFDB89BA1FB7E4A54FFDED2D450E0D4D6E9
                          8C5F67FD9F7880FEF7F5F6FEF9F7F9FDE2D8DAFE845860FE7D4954FEA37F86FF
                          916770FE76444DFF622E39FF6A313CFF471D24FF57353CFE7A585FFF3F1920FE
                          462128FFBDA9ADFEF8F6F6FEFBFCFBFEC8B2B7FC804D57FEC0A8AB4BE1D6D7E3
                          8D6068FD9E767FFEF8F6F6FDFFFEFEFEA2858AFE3C0C15FE724049FF86565FFE
                          743B47FF6F3842FF642D38FF6E3842FF723D46FF53212AFF42151EFE633039FF
                          481820FE6E474FFEF0E9EAFDFFFFFFFDC7B1B6FB814E57FFC4AEB14CE1D5D8E5
                          8C6068FE9F7780FEF7F7F7FEFAF8F9FFDFD3D5FE66454CFF491B23FE713540FF
                          5B2932FF431821FF482229FF654047FF996E76FF8D5F68FF773E49FF622A34FE
                          5E2E38FFC3ACB1FEF7F7F7FEFCFCFCFEC9B3B8FC814E57FFC4ADB04DE2D6D8E6
                          8C6068FF9E777FFFFAF7F9FFFCFBFCFEEFE7E9FF704D54FE56232CFF622C36FF
                          4C242CFF9E8488FFD6C7CAFFDCD1D3FFC9B4B8FFA07F85FF8F5F68FF602B36FF
                          462027FFCCBABEFEFFFEFFFEFCFCFEFEC8B1B8FC804E57FFC4AFB14CE2D9D9E5
                          8B5E67FEA17B83FEEDE6E8FEB19399FF9B747CFE582C35FF652E38FF58252EFF
                          A3868DFFFFFBFDFFFEFCFEFFFCFAFBFFFDFCFDFFD1C1C4FF92676EFF79444DFF
                          471B23FF5D3C42FE8B6870FED7CBCDFECEB9BEFC7F4C55FFC6AFB34DE4D9DBE6
                          8A5D65FFA58188FFE0D6D7FF5E343BFF713F48FF78404BFF662C37FF703B46FF
                          DDD0D3FFFBFBFAFFF2EEF0FFF5F1F3FFF7F4F5FFF4F1F1FF9B757CFF6F3641FF
                          67313CFF4B1D26FE2F030BFEB49FA2FED4C2C6FC7E4B54FFC8B1B44DE4D9DAE6
                          8A5D66FFA48189FFE2D9DAFF4D262DFF3A0F18FF5F2C36FF6E3541FF7E4C56FF
                          DBCED2FFFBFBFBFFF3F0F0FFF4F0F2FFF5F1F3FFF7F3F4FF946B72FF612630FF
                          703742FF7E4A53FE52222AFEB09CA0FED3C1C5FC7E4B54FFC8B2B44DE2D9D9E6
                          8B5E66FFA17B83FFEDE7E9FF9F8288FF724F57FF431D25FF68333CFF885761FF
                          B5999FFFF5F3F4FFFFFEFFFFFCFBFCFFFFFFFFFFD2BFC4FF61343DFF652D38FF
                          54242DFF825B62FEA8868CFED9CDD0FECDB9BDFC7F4C56FFC6AFB34DE2D7D9E5
                          8C6167FE9E777FFEF9F7F9FEFDFBFCFFF4EBEDFE6B4A50FF481821FF844F59FF
                          99727AFFB89EA3FFD0C2C5FFDACDD1FFBCA6ABFF613D45FF52212AFF662E3AFF
                          51262EFFC9B8BBFEFFFEFEFEFEFEFFFEC9B2B7FC804E57FFC5AEB14CE1D6D8E6
                          8B6068FF9F7880FFF7F7F8FFF8F8F8FEE3DADBFF7B5059FF57232CFE703540FF
                          85535DFF9A6F77FF5E3940FF4B262CFF461C24FF4D1E27FF703541FF5B262FFE
                          492329FFB9A4A8FEF9F6F7FEFBFBFCFEC9B3B8FB814E57FFC5AEB04DE1D7D7E5
                          8D6168FE9E767FFDF8F6F7FEFFFEFFFFA5888FFE3F111AFE623038FF4C1D26FE
                          471720FF6C3740FF6F3A43FF5C2731FF6C3540FF723944FF7F4C55FE84535CFF
                          44151DFE6B434BFEEFE5E7FDFFFFFFFDC7B1B6FC804D57FFC5AEB24CDED3D6E1
                          8B5F66FC9F7880FEF7F5F5FDF9F8F8FDE0D5D7FD6C4C51FF2F090FFE6C4950FF
                          6A4A50FE411C23FF612B35FF713643FF6B3842FF885B63FFA17D82FF90656CFE
                          713D47FFC2ACB0FEF9F5F7FEFCFBFCFEC8B2B8FB7F4C57FEBEA6AA4BEFE9EAEF
                          936B73FE8C5E68FDF7F6F5FEF7F5F5FEFFFFFFFEE0D6D9FEA1848AFFE1D7D9FE
                          F4ECEDFF745258FE370E16FF411820FF532831FFD1BFC3FEF5F1F2FEBBA1A6FE
                          CCB8BCFEFFFFFFFDF6F2F4FEFFFFFFFDB99EA4FB7E4C56FFDCD0D250FFFFFFAA
                          C0A4A9EE6D323EFED0BBC0FBFFFFFFFDF8F6F7FEFCFBFBFDFFFFFFFEFAF8FAFE
                          FDFBFCFE9F8288FF472229FF623D43FF8B626AFFE6DEE0FFFBFAFBFDFBFAFAFF
                          FDFDFDFDF5F4F5FEFBFBFBFEF3EEEFFC875860FC8A5E66F4FFFFFF33C2AFB007
                          A89FA07690666DFC733A46F7CAB4BAF9F5F2F2FDF6F4F5FEF6F4F5FDF6F4F5FE
                          F7F4F5FEE9E3E4FEE0D6D8FFECE4E5FFEFE6E9FFF9F7F8FEFBFBFBFEFBFAFBFE
                          FAF9FAFDF9F8FAFDE9E0E2FC997079F5743D47FFC8B2B7D8FDFCFD07A07B8108
                          3D3F3E00DCCED0A09A7279FF713842FF86555FFD976E77FD986E77FD976E77FD
                          996F78FF9B727CFD9F7880FFA9858DFFAA858DFFA78189FDA6828AFFA48089FD
                          A58188FD9A727BFC79424DFF79454EFFC1A9ADE6E8E0E154FEFEFE00FFFFFF05
                          FFFFFF01FFFFFF1CE6DCDD84B4989DC499727AF8936870FD936970FD936971FE
                          92676FFE936871FE8D616AFF82515AFF875861FF895A62FE875962FE885A63FE
                          885861FB8C5E68FEA07B82E8C4AEB29CF7F3F435EAE2E300FFFFFF0100000000
                          0000000000000000C4AFB100FFFFFF37FAF9F9CEEAE1E2E8EBE5E5E4EBE4E5E5
                          EBE5E5E6EDE6E6E5E9E1E3E6D8C9CCE6DACFD1E6D9CCCEE5DACDCFE6DACBCEE5
                          D7C9CCE0E3D8DAECFFFFFF9D00000000E4DFDD00E6DCDE0A00000000FFFFFF00
                          E0000700C0000300800001008000010000000000000001000000010000000100
                          0000010000000100000001000000010000000100000001000000010000000100
                          00000100000000000000010080000100C0000100E0000700F8000F0028000000
                          1000000020000000010020000000000040040000000000000000000000000000
                          0000000000000000000000000000000000000000000000000000000000000000
                          0000000000000000000000000000000000000000000000000000000000000000
                          00000000000000000000000000000000865762FF91676FFF92666FFF946971FF
                          986F77FF9A7078FF946A72FF90646DFF90656DFF895B63FF0000000000000000
                          00000000000000000000000090636DFFD8C8CCFBF5F2F4FBF6F3F4FBEEE7E9FB
                          E2D8DAFEE2D8DAFEDDD2D5FBEEE8EAFBF2EEEEFBD8C8CCFB9D777FFF00000000
                          000000000000000085555EF5D8C8CCFBFFFFFFFBEBE1E3FDEAE2E4FEDFD5D7FD
                          5C323AFD3B1019FDBDABAFFDF4EFF1FEDAD0D2FDFFFFFFFDD8C8CCFB8C5D67FF
                          000000000000000092676FFDF2EEEFFCE3DBDCFD754750FE92666FFD90646DFD
                          632D38FE5A242FFE573239FD623E45FD471D25FEC7B7BAFDFFFFFFFBA07B82FD
                          000000000000000091656EFCF3EFF0FDE3DBDCFD542B33FE68323CFE5A242FFE
                          4E2029FE764951FE794650FE5B242EFE55222CFDC7B7BBFDFFFFFFFB9F7980FF
                          0000000000000000936871FEE2D8DAFEE9DFE2FD6E4950FD501822FE75525AFE
                          CEC2C4FEDFD6D7FEBBA0A5FE7F4B54FE51262EFEC5B7BAFEE2D8DAFEA07B83FF
                          00000000000000009B737BFEE2D8DAFE6C3E46FE6C3540FE642D38FFDACDD0FE
                          FFFFFFFFFAF7F9FFEDE9EAFD8E5F67FF5E2933FE3C0F17FDE2D8DAFEAD8A90FF
                          00000000000000009B747CFFE2D8DAFE461C25FF56242DFF7B4650FFDACDD1FF
                          FEFFFFFFFBF9FAFFF4EEEFFD76464FFF672E38FE68363EFDE2D8DAFEAB898FFF
                          0000000000000000926870FDEAE2E5FEE2D8DAFE613D44FE6C3640FEAF8C93FE
                          D4C9CCFED8CED1FE8A6E74FE531D28FE5B2D36FDCFC0C2FEF7F4F4FBA07B82FF
                          000000000000000091676FFDF2EEF0FEE8E1E2FE64363FFD561F28FD723F48FE
                          71444CFE4F232BFE541E29FE6F3641FE4A1D25FEC0AFB2FDFFFFFFFB9F7981FF
                          000000000000000090666EFBF3EFEFFDE4DBDDFC59343AFE562E36FE603C43FD
                          56232CFE652C38FE83545CFE9C757BFD6F3D45FDC8B5B9FDFFFFFFFBA07B83FE
                          0000000000000000885962FFDBCDD0FAFFFFFFFCE5DEDFFDE6DEE0FDE4DADBFE
                          462026FE431720FEC1AEB2FEF3EFEFFCE2D6D8FDFFFFFFFDD8C8CCFB85545EF3
                          00000000000000000000000090626BFFD8C8CCFBF0EBECFCF0EAECFCE5DCDEFE
                          E2D8DAFEE2D8DAFEE9DEE1FDF4F1F2FDF5F2F4FCD8C8CCFB85545EF300000000
                          0000000000000000000000000000000085545EF385545EF390656DFC936870FD
                          9B717AFD9B737BFF986D76FD936971FD936971FB895A64FA0000000000000000
                          0000000000000000000000000000000000000000000000000000000000000000
                          0000000000000000000000000000000000000000000000000000000000000000
                          00000000FFFF0000E0070000C003000080010000800100008001000080010000
                          800100008001000080010000800100008001000080010000C0030000E0070000
                          FFFF0000}
                        Proportional = True
                        ShowHint = False
                        IsControl = True
                      end
                    end
                    object RzPanel19: TRzPanel
                      AlignWithMargins = True
                      Left = 428
                      Top = 3
                      Width = 139
                      Height = 139
                      Align = alRight
                      BorderOuter = fsFlat
                      BorderColor = clBlue
                      BorderShadow = clBlue
                      Ctl3D = False
                      ParentCtl3D = False
                      TabOrder = 2
                      object RzLabel6: TRzLabel
                        AlignWithMargins = True
                        Left = 11
                        Top = 4
                        Width = 124
                        Height = 13
                        Margins.Left = 10
                        Align = alTop
                        Caption = 'Description:'
                        Font.Charset = DEFAULT_CHARSET
                        Font.Color = clNavy
                        Font.Height = -11
                        Font.Name = 'MS Sans Serif'
                        Font.Style = []
                        ParentFont = False
                        ExplicitWidth = 56
                      end
                      object Memo1: TMemo
                        AlignWithMargins = True
                        Left = 2
                        Top = 21
                        Width = 135
                        Height = 116
                        Margins.Left = 1
                        Margins.Top = 1
                        Margins.Right = 1
                        Margins.Bottom = 1
                        Align = alClient
                        Font.Charset = DEFAULT_CHARSET
                        Font.Color = clNavy
                        Font.Height = -11
                        Font.Name = 'MS Sans Serif'
                        Font.Style = []
                        Lines.Strings = (
                          'Memo1')
                        ParentFont = False
                        TabOrder = 0
                        OnChange = Memo1Change
                      end
                    end
                  end
                end
              end
            end
          end
        end
        object ToolBar3: TToolBar
          Left = 540
          Top = 2
          Width = 52
          Height = 24
          Margins.Top = 0
          Margins.Right = 0
          Align = alCustom
          Color = clBtnFace
          Images = ImageList1
          Indent = 5
          ParentColor = False
          ParentShowHint = False
          ShowHint = True
          TabOrder = 1
          Visible = False
          Wrapable = False
          object ToolButton17: TToolButton
            Tag = 21
            Left = 5
            Top = 0
            Hint = #1057#1086#1093#1088#1072#1085#1080#1090#1100'  '#1082#1072#1082' .bmp'
            Caption = #1057#1086#1093#1088#1072#1085#1080#1090#1100'  '#1082#1072#1082' .bmp'
            ImageIndex = 52
            OnClick = ToolButton17Click
            OnMouseMove = TreeView1MouseMove
          end
          object ToolButton21: TToolButton
            Left = 28
            Top = 0
            Hint = 'order by X axis'
            Caption = 'ToolButton21'
            ImageIndex = 82
            OnClick = ToolButton21Click
          end
        end
        object RzPanel8: TRzPanel
          AlignWithMargins = True
          Left = 3
          Top = 3
          Width = 590
          Height = 83
          Align = alClient
          BorderOuter = fsGroove
          TabOrder = 0
          Visible = False
          object RzListView2: TRzListView
            AlignWithMargins = True
            Left = 5
            Top = 5
            Width = 479
            Height = 73
            Align = alClient
            Columns = <
              item
                Width = 458
              end>
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clRed
            Font.Height = -11
            Font.Name = 'Default'
            Font.Style = [fsBold]
            FrameVisible = True
            ParentFont = False
            ShowColumnHeaders = False
            TabOrder = 0
            ViewStyle = vsReport
            OnChange = RzListView2Change
          end
          object RzBitBtn1: TRzBitBtn
            AlignWithMargins = True
            Left = 490
            Top = 5
            Width = 98
            Height = 73
            Margins.Right = 0
            FrameColor = 7617536
            Align = alRight
            Caption = #1055#1088#1086#1074#1077#1088#1080#1090#1100' '#1094#1077#1083#1086#1089#1090#1085#1086#1089#1090#1100' (Check)'
            Color = 15791348
            HotTrack = True
            TabOrder = 1
            OnClick = RzBitBtn1Click
            ImageIndex = 55
            Images = ImageList1
          end
        end
      end
    end
  end
  object RzPanel4: TRzPanel
    Left = 0
    Top = 0
    Width = 937
    Height = 31
    Align = alTop
    BorderOuter = fsNone
    TabOrder = 2
    object RzPanel6: TRzPanel
      AlignWithMargins = True
      Left = 195
      Top = 3
      Width = 739
      Height = 25
      Align = alClient
      BorderOuter = fsGroove
      Caption = 'Domain-Specific editor mode'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clRed
      Font.Height = -13
      Font.Name = 'Default'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 0
      Visible = False
      object RzMaskEdit1: TRzMaskEdit
        AlignWithMargins = True
        Left = 616
        Top = 3
        Width = 120
        Height = 19
        Margins.Left = 1
        Margins.Top = 1
        Margins.Right = 1
        Margins.Bottom = 1
        Align = alRight
        Alignment = taCenter
        Ctl3D = False
        FlatButtons = True
        Font.Charset = DEFAULT_CHARSET
        Font.Color = cl3DDkShadow
        Font.Height = -11
        Font.Name = 'Default'
        Font.Style = [fsBold]
        ParentCtl3D = False
        ParentFont = False
        TabOrder = 0
        Text = #1050#1083#1102#1095#1077#1074#1086#1077' '#1089#1083#1086#1074#1086
        OnChange = RzMaskEdit1Change
        OnClick = RzMaskEdit1Click
      end
    end
    object ToolBar2: TToolBar
      AlignWithMargins = True
      Left = 3
      Top = 3
      Width = 186
      Height = 25
      Align = alLeft
      AutoSize = True
      BorderWidth = 1
      Color = clBtnFace
      Images = ImageList1
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
        Caption = '&Open'
        ImageIndex = 7
        OnClick = ToolButton1Click
        OnMouseMove = TreeView1MouseMove
      end
      object ToolButton2: TToolButton
        Tag = 21
        Left = 28
        Top = 0
        Hint = #1057#1086#1093#1088#1072#1085#1080#1090#1100' '#1073#1072#1079#1091' '#1079#1085#1072#1085#1080#1081
        Caption = '&Save'
        ImageIndex = 43
        OnClick = ToolButton2Click
        OnMouseMove = TreeView1MouseMove
      end
      object ToolButton9: TToolButton
        Tag = 3
        Left = 51
        Top = 0
        Hint = #1057#1086#1079#1076#1072#1090#1100' '#1085#1086#1074#1091#1102' '#1073#1072#1079#1091' '#1079#1085#1072#1085#1080#1081
        Caption = '&New'
        ImageIndex = 54
        OnClick = ToolButton9Click
        OnMouseMove = TreeView1MouseMove
      end
      object ToolButton3: TToolButton
        Left = 74
        Top = 0
        Width = 8
        Caption = 'ToolButton3'
        ImageIndex = 2
        Style = tbsSeparator
        Visible = False
      end
      object ToolButton4: TToolButton
        Left = 82
        Top = 0
        Hint = 'Cut|Cuts the selection and puts it on the Clipboard'
        Caption = '-'
        Enabled = False
        ImageIndex = 0
        Visible = False
      end
      object ToolButton5: TToolButton
        Left = 105
        Top = 0
        Hint = 'Copy|Copies the selection and puts it on the Clipboard'
        Caption = '&Copy'
        Enabled = False
        ImageIndex = 1
        Visible = False
      end
      object ToolButton6: TToolButton
        Left = 128
        Top = 0
        Hint = 'Paste|Inserts Clipboard contents'
        Caption = '&Paste'
        Enabled = False
        ImageIndex = 10
        Visible = False
      end
      object ToolButton7: TToolButton
        Left = 151
        Top = 0
        Width = 8
        Caption = 'ToolButton7'
        ImageIndex = 3
        Style = tbsSeparator
        Visible = False
      end
      object ToolButton8: TToolButton
        Left = 159
        Top = 0
        Hint = #1048#1084#1087#1086#1088#1090#1080#1088#1086#1074#1072#1090#1100' '#1073#1072#1079#1091' '#1079#1085#1072#1085#1080#1081
        Caption = #1048#1084#1087#1086#1088#1090#1080#1088#1086#1074#1072#1090#1100
        ImageIndex = 7
        Visible = False
        OnClick = ToolButton8Click
      end
    end
  end
  object MainMenu: TMainMenu
    Images = ImageList1
    Left = 424
    object File1: TMenuItem
      Caption = '&'#1060#1072#1081#1083
      Hint = 'File related commands'
      object N16: TMenuItem
        Caption = #1054#1090#1082#1088#1099#1090#1100
        ImageIndex = 7
        OnClick = N16Click
      end
      object N12: TMenuItem
        Caption = #1047#1072#1075#1088#1091#1079#1080#1090#1100
        OnClick = N12Click
      end
      object N19: TMenuItem
        Caption = #1057#1086#1093#1088#1072#1085#1080#1090#1100
        ImageIndex = 43
        OnClick = N19Click
      end
      object N11: TMenuItem
        Caption = #1057#1086#1093#1088#1072#1085#1080#1090#1100' '#1082#1072#1082
        ImageIndex = 45
        OnClick = N11Click
      end
      object N13: TMenuItem
        Caption = #1048#1084#1087#1086#1088#1090#1080#1088#1086#1074#1072#1090#1100
        ImageIndex = 73
        object CLIPS2: TMenuItem
          Caption = 'CLIPS (.clp)'
          ImageIndex = 59
          OnClick = N13Click
        end
        object CmapToolsCXLbeta1: TMenuItem
          Caption = 'CmapTools (CXL 1.0) [beta]'
          ImageIndex = 65
          OnClick = CmapToolsCXLbeta1Click
        end
        object Protege1: TMenuItem
          Caption = 'Protege [beta]'
          ImageIndex = 69
          OnClick = Protege1Click
        end
        object RationalRosemdl1: TMenuItem
          Caption = 'Rational Rose (.mdl)'
          ImageIndex = 60
          OnClick = RationalRosemdl1Click
        end
        object StarUMLmdj1: TMenuItem
          Caption = 'StarUML (.mdj;.xml)'
          ImageIndex = 61
          OnClick = StarUMLmdj1Click
        end
        object XMindbeta1: TMenuItem
          Caption = 'XMind [beta]'
          ImageIndex = 68
          OnClick = XMindbeta1Click
        end
        object CanonicalTablescsvbeta1: TMenuItem
          Caption = 'TabbyXL Canonical Tables (.csv) [beta]'
          ImageIndex = 75
          OnClick = CanonicalTablescsvbeta1Click
        end
      end
      object N14: TMenuItem
        Caption = #1069#1082#1089#1087#1086#1088#1090#1080#1088#1086#1074#1072#1090#1100
        ImageIndex = 74
        OnClick = N14Click
        object CLIPSclp1: TMenuItem
          Caption = 'CLIPS (.clp)'
          ImageIndex = 59
          OnClick = CLIPSclp1Click
        end
        object CmapToolsxmi1: TMenuItem
          Caption = 'CmapTools (XTM 1.0) [beta]'
          ImageIndex = 65
          OnClick = CmapToolsxmi1Click
        end
        object Decision1: TMenuItem
          Caption = 'Decision tables (.csv)'
          ImageIndex = 79
          OnClick = Decision1Click
        end
        object Droolsdrl1: TMenuItem
          Caption = 'Drools Expert (.drl)'
          ImageIndex = 76
          OnClick = Droolsdrl1Click
        end
        object FuzzyCLIPSclp1: TMenuItem
          Caption = 'FuzzyCLIPS (.clp)'
          ImageIndex = 59
          OnClick = FuzzyCLIPSclp1Click
        end
        object PHP1: TMenuItem
          Caption = 'PHP (.php)'
          ImageIndex = 78
          OnClick = PHP1Click
        end
        object Protegeowlbeta1: TMenuItem
          Caption = 'Protege (.owl) [beta]'
          ImageIndex = 69
          OnClick = Protegeowlbeta1Click
        end
        object RationalRosemdl2: TMenuItem
          Caption = 'Rational Rose (.mdl) [beta]'
          ImageIndex = 60
          OnClick = RationalRosemdl2Click
        end
        object RDF1: TMenuItem
          Caption = 'RDF [beta]'
          ImageIndex = 69
          OnClick = RDF1Click
        end
        object StarUmlxmibeta1: TMenuItem
          Caption = 'StarUml (.xml) [beta]'
          ImageIndex = 61
          OnClick = StarUmlxmibeta1Click
        end
      end
      object N39: TMenuItem
        Caption = '-'
      end
      object RecentFiles1: TMenuItem
        Caption = 'Recent Files'
      end
      object N1: TMenuItem
        Caption = '-'
      end
      object FileExitItem: TMenuItem
        Caption = #1042#1099#1093#1086#1076
        Hint = 'Exit|Exit application'
        OnClick = FileExit1Execute
      end
    end
    object N17: TMenuItem
      Caption = #1041#1072#1079#1072' '#1079#1085#1072#1085#1080#1081
      object N7: TMenuItem
        Caption = #1057#1086#1079#1076#1072#1090#1100' '#1085#1086#1074#1091#1102' '#1073#1072#1079#1091' '#1079#1085#1072#1085#1080#1081
        Hint = #1057#1086#1079#1076#1072#1090#1100' '#1085#1086#1074#1091#1102' '#1073#1072#1079#1091' '#1079#1085#1072#1085#1080#1081
        ImageIndex = 21
        OnClick = N7Click
      end
      object N5: TMenuItem
        Caption = #1057#1086#1079#1076#1072#1090#1100' '#1086#1073#1088#1072#1079#1077#1094' '#1092#1072#1082#1090#1072' ('#1087#1088#1077#1094#1077#1076#1077#1085#1090#1072')'
        Enabled = False
        ImageIndex = 22
        OnClick = NewTClick
      end
      object N6: TMenuItem
        Caption = #1057#1086#1079#1076#1072#1090#1100' '#1092#1072#1082#1090' ('#1087#1088#1077#1094#1077#1076#1077#1085#1090')'
        Enabled = False
        ImageIndex = 20
        OnClick = NewFClick
      end
      object N33: TMenuItem
        Caption = #1057#1086#1079#1076#1072#1090#1100' '#1096#1072#1073#1083#1086#1085' '#1087#1088#1072#1074#1080#1083#1072
        Enabled = False
        ImageIndex = 51
        OnClick = ToolButton13Click
      end
      object N4: TMenuItem
        Caption = #1057#1086#1079#1076#1072#1090#1100' '#1087#1088#1072#1074#1080#1083#1086
        Enabled = False
        ImageIndex = 19
        OnClick = NewRClick
      end
      object N18: TMenuItem
        Caption = #1057#1092#1086#1088#1084#1080#1088#1086#1074#1072#1090#1100' '#1086#1090#1095#1077#1090
        ImageIndex = 40
        object doc2: TMenuItem
          Caption = 'Entity report (.doc)'
          OnClick = doc2Click
        end
        object txt1: TMenuItem
          Caption = 'Entity report (.txt)'
          OnClick = txt1Click
        end
      end
      object Importdata1: TMenuItem
        Caption = 'Import data (.txt, .csv)'
        ImageIndex = 73
        OnClick = Importdata1Click
      end
      object Importrules: TMenuItem
        Caption = 'Import rules (.txt, .csv)'
        ImageIndex = 73
        OnClick = ImportrulesClick
      end
      object N30: TMenuItem
        Caption = '-'
      end
      object N34: TMenuItem
        Caption = #1055#1088#1086#1074#1077#1088#1080#1090#1100' '#1094#1077#1083#1086#1089#1090#1085#1086#1089#1090#1100' (Check)'
        ImageIndex = 55
        OnClick = N34Click
      end
      object Run1: TMenuItem
        Caption = #1055#1088#1086#1074#1077#1088#1080#1090#1100' '#1088#1072#1073#1086#1090#1086#1089#1087#1086#1089#1086#1073#1085#1086#1089#1090#1100' (Run)'
        ImageIndex = 57
        object N31: TMenuItem
          Caption = #1042#1099#1074#1086#1076' '#1087#1086' '#1087#1088#1072#1074#1080#1083#1072#1084' (R)'
          Enabled = False
          ImageIndex = 49
          OnClick = N31Click
        end
        object C1: TMenuItem
          Caption = #1042#1099#1074#1086#1076' '#1087#1086' '#1087#1088#1077#1094#1077#1076#1077#1085#1090#1072#1084' (C)'
          Enabled = False
          ImageIndex = 50
          OnClick = C1Click
        end
      end
      object N43: TMenuItem
        Caption = #1040#1075#1088#1077#1075#1080#1088#1086#1074#1072#1090#1100' '#1096#1072#1073#1083#1086#1085#1099
        ImageIndex = 77
        OnClick = N43Click
      end
      object N44: TMenuItem
        Caption = 'Reversing rules'
        ImageIndex = 80
        OnClick = N44Click
      end
      object N42: TMenuItem
        Caption = '-'
      end
      object N41: TMenuItem
        Caption = #1057#1086#1079#1076#1072#1090#1100' '#1101#1082#1089#1087#1077#1088#1090#1085#1091#1102' '#1089#1080#1089#1090#1077#1084#1091
        ImageIndex = 64
        OnClick = N41Click
      end
      object CFM1: TMenuItem
        Caption = #1057#1086#1079#1076#1072#1090#1100' CFM '#1089#1087#1077#1094#1080#1092#1080#1082#1072#1094#1080#1080' '
        ImageIndex = 72
        OnClick = CFM1Click
      end
      object N37: TMenuItem
        Caption = '-'
      end
      object inyDecisionTablesEditor1: TMenuItem
        Caption = 'Tiny Decision Tables Editor'
        OnClick = TinyDecisionTablesEditor1Click
      end
      object inyRVMLEditor1: TMenuItem
        Caption = 'Tiny RVML Editor'
        OnClick = TinyRVMLEditor1Click
      end
      object N45: TMenuItem
        Caption = '-'
      end
      object N38: TMenuItem
        Caption = #1054#1090#1082#1083#1102#1095#1080#1090#1100
        ImageIndex = 5
        OnClick = N38Click
      end
    end
    object N2: TMenuItem
      Caption = #1057#1077#1088#1074#1080#1089
      object N3: TMenuItem
        Caption = #1056#1077#1078#1080#1084' '#1088#1072#1073#1086#1090#1099
        Hint = #1042#1099#1073#1088#1072#1090#1100' '#1088#1077#1078#1080#1084' '#1088#1072#1073#1086#1090#1099
        object N8: TMenuItem
          Caption = #1054#1087#1077#1088#1072#1090#1086#1088
          GroupIndex = 3
          OnClick = N8Click
        end
        object N9: TMenuItem
          Caption = #1040#1076#1084#1080#1085#1080#1089#1090#1088#1072#1090#1086#1088
          Checked = True
          GroupIndex = 3
          OnClick = N9Click
        end
      end
      object N10: TMenuItem
        Caption = #1052#1072#1096#1080#1085#1099' '#1074#1099#1074#1086#1076#1072
        Hint = #1042#1099#1073#1088#1072#1090#1100' '#1103#1079#1099#1082' '#1087#1088#1077#1076#1089#1090#1072#1074#1083#1077#1085#1080#1103' '#1079#1085#1072#1085#1080#1081
        object Clips1: TMenuItem
          Caption = 'CLIPS (6.1)'
          Checked = True
          OnClick = Clips1Click
        end
      end
      object N15: TMenuItem
        Caption = #1057#1087#1088#1072#1074#1086#1095#1085#1080#1082#1080
        Hint = #1055#1086#1076#1082#1083#1102#1095#1080#1090#1100' '#1089#1087#1088#1072#1074#1086#1095#1085#1080#1082' '#1087#1086#1085#1103#1090#1080#1081
        Visible = False
        OnClick = N15Click
      end
      object N35: TMenuItem
        Caption = #1071#1079#1099#1082
        object N36: TMenuItem
          Caption = #1056#1091#1089#1089#1082#1080#1081
          Checked = True
          OnClick = N36Click
        end
        object English1: TMenuItem
          Caption = 'English'
          OnClick = English1Click
        end
      end
    end
    object RVML1: TMenuItem
      Caption = 'RVML'
      Visible = False
      object N29: TMenuItem
        Caption = #1057#1086#1093#1088#1072#1085#1080#1090#1100' '#1090#1077#1082#1091#1097#1080#1081' '#1101#1083#1077#1084#1077#1085#1090' '#1082#1072#1082' .bmp'
        OnClick = N29Click
      end
    end
    object Expertsystems1: TMenuItem
      Caption = 'Expert systems'
      object N40: TMenuItem
        Caption = '-'
      end
      object Expertsystemexplorer1: TMenuItem
        Caption = 'Expert system explorer'
        Enabled = False
      end
    end
    object KBDSbeta1: TMenuItem
      Caption = 'KBDS Cloud [beta]'
      object KnowledgeBases1: TMenuItem
        Caption = 'Knowledge Bases'
      end
      object Modules1: TMenuItem
        Caption = 'Modules'
      end
    end
    object Help1: TMenuItem
      Caption = '&'#1055#1086#1084#1086#1097#1100
      Hint = 'Help topics'
      object HelpAboutItem: TMenuItem
        Caption = #1054' '#1087#1088#1086#1075#1088#1072#1084#1084#1077
        OnClick = HelpAbout1Execute
      end
      object Help2: TMenuItem
        Caption = 'Documentation'
        Hint = 'Documentation'
        OnClick = Help2Click
      end
    end
  end
  object ActionList1: TActionList
    Images = ImageList1
    Left = 456
    object WindowCascade1: TWindowCascade
      Category = 'Window'
      Caption = '&Cascade'
      Enabled = False
      Hint = 'Cascade'
      ImageIndex = 17
    end
    object WindowTileHorizontal1: TWindowTileHorizontal
      Category = 'Window'
      Caption = 'Tile &Horizontally'
      Enabled = False
      Hint = 'Tile Horizontally'
      ImageIndex = 15
    end
    object WindowTileVertical1: TWindowTileVertical
      Category = 'Window'
      Caption = 'Tile &Vertically'
      Enabled = False
      Hint = 'Tile Vertically'
      ImageIndex = 16
    end
    object WindowMinimizeAll1: TWindowMinimizeAll
      Category = 'Window'
      Caption = '&Minimize All'
      Hint = 'Minimize All'
    end
    object WindowArrangeAll1: TWindowArrange
      Category = 'Window'
      Caption = '&Arrange All'
      Hint = 'Arrange All'
    end
  end
  object ImageList1: TImageList
    DrawingStyle = dsTransparent
    Left = 488
    Bitmap = {
      494C01015300C000800110001000FFFFFFFFFF10FFFFFFFFFFFFFFFF424D3600
      0000000000003600000028000000400000005001000001002000000000000050
      0100000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000009933000099330000993300009933
      0000993300009933000099330000000000000000000000000000000000000000
      0000000000000000000000000000000000009999990099999900999999009999
      9900999999009999990099999900000000000000000000000000000000000000
      0000000000000000000000000000000000005555550000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000099330000CC996600CC996600CC99
      6600CC996600CC99660099330000000000000000000000000000000000000000
      00000000000000000000000000000000000099999900CCCCCC00CCCCCC00CCCC
      CC00CCCCCC00CCCCCC0099999900000000000000000000000000000000000000
      0000000000000000000000000000000000005555550000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000099330000CC996600CC996600CC99
      6600CC996600CC99660099330000000000000000000000000000000000000000
      00000000000000000000000000000000000099999900CCCCCC00CCCCCC00CCCC
      CC00CCCCCC00CCCCCC0099999900000000000000000000000000000000000000
      0000000000005555550055555500555555005555550055555500555555005555
      5500000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000003399
      CC000066990000669900006699000066990099330000CC996600CC996600CC99
      6600CC996600CC99660099330000000000000000000000000000000000009999
      99009999990099999900999999009999990099999900CCCCCC00CCCCCC00CCCC
      CC00CCCCCC00CCCCCC0099999900000000000000000000000000000000000000
      0000000000005555550000000000000000000000000000000000000000005555
      5500000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000003399
      CC0099FFFF0099FFFF0099FFFF0099FFFF0099330000CC996600CC996600CC99
      6600CC996600CC99660099330000000000000000000000000000000000009999
      99000000000000000000000000000000000099999900CCCCCC00CCCCCC00CCCC
      CC00CCCCCC00CCCCCC0099999900000000000000000000000000000000000000
      0000000000005555550000000000000000000000000000000000000000005555
      5500000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000003399
      CC0099FFFF0099FFFF0099FFFF0099FFFF0099330000CC996600CC996600CC99
      6600CC996600CC99660099330000000000000000000000000000000000009999
      99000000000000000000000000000000000099999900CCCCCC00CCCCCC00CCCC
      CC00CCCCCC00CCCCCC0099999900000000000000000000000000000000000000
      0000000000005555550000000000000000000000000000000000000000005555
      5500000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000003399
      CC0099FFFF0099FFFF0099FFFF0099FFFF009933000099330000993300009933
      0000993300009933000099330000000000000000000000000000000000009999
      9900000000000000000000000000000000009999990099999900999999009999
      9900999999009999990099999900000000000000000000000000000000000000
      0000000000005555550055555500555555005555550055555500555555005555
      5500000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000009933000099330000993300009933
      000099330000993300009933000099FFFF0099FFFF0099FFFF0099FFFF000066
      9900000000000000000000000000000000009999990099999900999999009999
      9900999999009999990099999900000000000000000000000000000000009999
      9900000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000099330000CC996600CC996600CC99
      6600CC996600CC9966009933000099FFFF0099FFFF0099FFFF0099FFFF000066
      99000000000000000000000000000000000099999900CCCCCC00CCCCCC00CCCC
      CC00CCCCCC00CCCCCC0099999900000000000000000000000000000000009999
      9900000000000000000000000000000000000000000000000000000000005555
      5500555555005555550055555500555555005555550055555500555555005555
      5500555555005555550000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000099330000CC996600CC996600CC99
      6600CC996600CC9966009933000099FFFF0099FFFF0099FFFF0099FFFF000066
      99000000000000000000000000000000000099999900CCCCCC00CCCCCC00CCCC
      CC00CCCCCC00CCCCCC0099999900000000000000000000000000000000009999
      9900000000000000000000000000000000000000000000000000000000005555
      5500000000000000000000000000000000000000000000000000000000000000
      0000000000005555550000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000099330000CC996600CC996600CC99
      6600CC996600CC9966009933000099FFFF0099FFFF0099FFFF0099FFFF000066
      99000000000000000000000000000000000099999900CCCCCC00CCCCCC00CCCC
      CC00CCCCCC00CCCCCC0099999900000000000000000000000000000000009999
      9900000000000000000000000000000000000000000000000000000000005555
      5500000000000000000000000000000000000000000000000000000000000000
      0000000000005555550000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000099330000CC996600CC996600CC99
      6600CC996600CC996600993300003399CC003399CC003399CC003399CC003399
      CC000000000000000000000000000000000099999900CCCCCC00CCCCCC00CCCC
      CC00CCCCCC00CCCCCC0099999900999999009999990099999900999999009999
      9900000000000000000000000000000000000000000000000000000000005555
      5500000000000000000000000000000000000000000000000000000000000000
      0000000000005555550000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000099330000CC996600CC996600CC99
      6600CC996600CC99660099330000000000000000000000000000000000000000
      00000000000000000000000000000000000099999900CCCCCC00CCCCCC00CCCC
      CC00CCCCCC00CCCCCC0099999900000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000005555
      5500555555005555550055555500555555005555550055555500555555005555
      5500555555005555550000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000009933000099330000993300009933
      0000993300009933000099330000000000000000000000000000000000000000
      0000000000000000000000000000000000009999990099999900999999009999
      9900999999009999990099999900000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000007272720000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00D0EFFD00FFFFFF00FFFFFF00FFFFFF00FFFFFF00BFFFFF00D1F0FD00D0EF
      FD00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000000000000000000000000000
      000000000000000000003399CC00006699000066990000669900006699000066
      990000669900006699000066990000000000FDFDFD00FCFCFC00FDFDFC00FFFF
      FF00EFDDD800CAA99E00CD9A8A00CF9D8E00CF9C8D00CF9D8E00CE988C00E0BE
      B200FDFCF600FFFFFF00FBFAFA00FDFDFD000000000000040000000500000005
      0000000500000001000004020100060402000603020006040200010000000404
      040006060600060606000606060001010100FFFFFF00FFFFFF00FFFFFF00D0EF
      FD00D0EFFD00D0EFFD00D0EFFD00FFFFFF00D0F0FD00D0EFFD00C9ECFB00D0EF
      FD00D0EFFD00D0EFFD00FFFFFF00FFFFFF000000000000000000000000000000
      000000000000000000003399CC0099FFFF0099FFFF0099FFFF0099FFFF0099FF
      FF0099FFFF0099FFFF000066990000000000FCFCFC00FDFDFD00FCFBFA00EBD6
      D000D2A09200CE9B8C00CF9C8D00CF9C8D00CF9C8D00CF9C8D00CF9D8E00CD9A
      8800DCB8AC00F6EDEA00FEFFFF00FCFCFC000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFFFF00FFFFFF00FFFFFF00D0EF
      FD0078C8F1006FC6EF0092D5F400D0EFFD00D0EFFD0050B7EB0039AEE8006DC4
      EF0078C9F000D0EFFD00FFFFFF00FFFFFF000000000000000000000000000000
      000000000000000000003399CC0099FFFF0099FFFF0099FFFF0099FFFF0099FF
      FF0099FFFF0099FFFF000066990000000000FCFAFA00FCFAFA00DCB7AE00CA93
      8300CE9B8C00CF9C8D00CF9C8D00CF9C8D00CF9C8D00CF9C8D00CF9C8D00CF9D
      8F00CC988900CF9A8B00F0E0DE00FEFEFE0000000000007B000000AA0000009D
      000002AC0000002100008E4E3B00BE7D5400B9714E00BE7D5600241108008388
      8900BEBEBE00B9B9B900BEBEBE0031313100FFFFFF00FFFFFF00FFFFFF00D0EF
      FD0070C5EF00D0EFFD0064C0ED00B8E4FA00D0EFFD0055B9EB0044B2E900C1E9
      FB0072C6F000D0EFFD00FFFFFF00FFFFFF000000000000000000000000000000
      000000000000000000003399CC0099FFFF0099FFFF0099FFFF0099FFFF0099FF
      FF0099FFFF0099FFFF000066990000000000FEFFFF00EAD4CE00CB938300D09F
      9100CF9C8D00CF9C8D00CF9D8E00CF9C8D00CF9C8D00CF9D8E00CF9C8D00CD97
      8800CF9C8D00CD988900D4A99E00FBF9F9000000000000AB000000ED000000DB
      000003EF0100002E0000C56D5300FFAD7500FF9E6D00FFAE780032180C00B7BD
      BF00FFFFFF00FFFFFF00FFFFFF0044444400FFFFFF00FFFFFF00D0EFFD00D0EF
      FD0068C2EE00D0EFFD00D0EFFD0065C0EE0052B9EB00D0EFFD00D0EFFD00D0EF
      FD00B5E4F900D0EFFD00FFFFFF00FFFFFF000000000000000000000000000000
      000000000000000000003399CC0099FFFF0099FFFF0099FFFF0099FFFF0099FF
      FF0099FFFF0099FFFF000066990000000000F3EDEC00DDC0B800CD988800CE9B
      8C00CF9D8E00CF9C8D00CE9A8A00CF9B8C00CF9D8E00CD998900D1A29300E7DA
      D600D8B4A900CD988800CB948400E3C5BC000000000002AE020003F0030003DE
      030006F20400002F0000C76E5400FFAF7600FF9F6E00FFB07A0033190C00B8BE
      C100FFFFFF00FFFFFF00FFFFFF0045454500FFFFFF00D0EFFD00D0EFFD004BB6
      EA00D0EFFD0098D7F500D0EFFD00C2E9FB0047B4EA00D0EFFD00D0EFFD005CBD
      EC00D0EFFD00D0EFFD00D0EFFD00FFFFFF0000000000CCCCCC00CC996600CCCC
      CC00CC996600CCCCCC003399CC0099FFFF0099FFFF0099FFFF0099FFFF0099FF
      FF0099FFFF0099FFFF000066990000000000EAE0E000E9DEDB00D3A59800D2A3
      9500CD988800CF9B8C00D3A69900D09F9100CF9B8C00D2A39500D1A29500EDE9
      E700E4D2CD00D1A19300CF9D8E00D7ACA00000000000001E0000002A00000026
      0000002B00000008000025141000312015002F1D140031201600090402002627
      23003636310035352F00373731000E0E0C00D0EFFD00D0EFFD0094D5F4003AAE
      E80047B3E90055BAEB004BB5EA0042B2E9003FB0E80045B3E9004EB7EA0058BB
      EC0068C2EE00C3E9FB00D0EFFD00D0EFFD0000000000CC99660000000000FFFF
      FF0000000000FFFFFF003399CC0099FFFF0099FFFF0099FFFF0099FFFF0099FF
      FF0099FFFF0099FFFF000066990000000000E6D8D400EFEEEE00EAE0DE00EBE3
      E100E7DAD600D5ACA000EAE2DF00DEC2BA00CB928100E5D3CE00E5D4D000E4D1
      CC00F0F0F000E9DEDA00ECE6E500E1CCC6000000000090879000BEB2BE00B9AD
      B900BEB2BE0024252A0079472C00B0745000AB694800B0725000261508003B40
      7F006564B0005B5BAB006262B00018182D00D0EFFD007FCCF100A6DDF70047B4
      EA0058BBEB00D0EFFD0047B4EA00D0EFFD00D0EFFD0085CFF2004BB5EA00D0EF
      FD00D0EFFD00D0EFFD0079CAF00084CEF20000000000CCCCCC00FFFFFF000000
      0000FFFFFF00000000003399CC0099FFFF0099FFFF0099FFFF0099FFFF003399
      CC003399CC003399CC003399CC0000000000DEC2B900F0F0F000DAB7AE00D3A6
      9900EBE5E200E7DAD700EAE0DE00E6D7D200CB928100E0C9C300ECE6E400E1CC
      C600EDE9E800D4AA9D00D8B3A800EDEAE90000000000C8CAC800FFFFFF00FFFF
      FF00FFFFFF0032383B00B96C4500FFB07A00FF9F6E00FFAE7A0039200C006269
      C100A3A2FF009494FF00A0A0FF0027274500D0EFFD007FCCF10074C7F000D0EF
      FD00D0EFFD00C3E9FB0049B5EA00D0EFFD00D0EFFD0055BAEC004CB6EA00D0EF
      FD00D0EFFD00BBE6FA0078C9F0009ED9F60000000000CC99660000000000FFFF
      FF0000000000FFFFFF003399CC0099FFFF0099FFFF0099FFFF0099FFFF003399
      CC00CCFFFF00006699000000000000000000D6ADA200EEEBEB00DAB9AF00C788
      7500D8B3A800EFEDED00E9DFDC00EAE0DC00CA907F00D6AFA300EEEDEC00DFC5
      BE00EFEDED00D1A39500C88A7800E1CAC30000000000CACACB00FFFFFF00FFFF
      FF00FFFFFF0033383B00B96D4600FFB17B00FFA17000FFAF7B0039200D006269
      C100A3A2FF009494FF00A0A0FF0027274500D0EFFD00D0EFFD00D0EFFD00D0EF
      FD0089D0F30058BBEC004FB7EB0048B4EA0046B3E9004AB5EA0052B8EA005BBC
      EC0097D6F500D0EFFD00D0EFFD00D0EFFD0000000000CCCCCC00FFFFFF000000
      0000FFFFFF00000000003399CC0099FFFF0099FFFF0099FFFF0099FFFF003399
      CC0000669900000000000000000000000000CE9B8B00ECE6E400EADFDD00DAB8
      AF00E8DCD800ECE7E500DFC7C000EEECEC00DCBDB500E3D0CA00F3F7F900DDC0
      B800F0F0F100E2CDC800DBBDB400E9DFDC000000000029292500373731003535
      2F00363631000B0C0B00210F0600311B0E002F180C00311B0E000A0400000D0E
      23001817310015152F001717310005050C00FFFFFF00FFFFFF00D0EFFD00D0EF
      FD00C6EBFC00C3E9FB00D0EFFD00D0EFFD004EB7EA00D0EFFD00D0EFFD0052B8
      EB0059BBEB00D0EFFD00D0EFFD00FFFFFF0000000000CC99660000000000FFFF
      FF0000000000FFFFFF003399CC003399CC003399CC003399CC003399CC003399
      CC0000000000000000000000000000000000CD918300DFC4BD00E7DBD700E7DB
      D700E6D7D300D6ACA000D5ADA100F2F4F500E8DDDA00E6D6D200DEC3BA00D2A4
      9700E2CEC800E7DBD700E9DCD800DDCCC60000000000464685006262B0005B5B
      AB006565B0000D0C21007E828000B0B5B800ABB1B300B0B5B800212224007E7E
      7900B6B6B000B1B1AB00B6B6B0002F2F2D00FFFFFF00FFFFFF00FFFFFF00D0EF
      FD006CC4EF00D0EFFD00D0EFFD005BBCEC005ABCED00CCEEFC00D0EFFD0045B3
      E9004AB5EA00D0EFFD00FFFFFF00FFFFFF0000000000CCCCCC00FFFFFF000000
      0000FFFFFF0000000000FFFFFF0000000000FFFFFF00CCCCCC00000000000000
      000000000000000000000000000000000000E0BCB600CD988900CD978700CD96
      8600CD978800CD978700D2A59800F0F2F300DABAB000CB918000CD998900CE9B
      8B00CD988800CC978700CC928100D4ACA200000000007373CB00A0A0FF009494
      FF00A3A3FF0016163300BFBEB700FFFFFF00FFFFFF00FFFFFF0033333300B8B8
      B900FFFFFF00FFFFFF00FFFFFF0045454500FFFFFF00FFFFFF00FFFFFF00D0EF
      FD0075C7F000D0EFFD0069C2EE00CFEEFD00D0EFFD0067C2EE0099D8F5008FD3
      F40076C7F000D0EFFD00FFFFFF00FFFFFF0000000000CC99660000000000FFFF
      FF0000000000FFFFFF00CCCCCC00CC996600CCCCCC00CC996600000000000000
      000000000000000000000000000000000000F8F4F300D7AA9B00CD998900D09E
      9000CF9D8E00CF9D8E00CF9D8E00DAB9B000D6AEA300CE9B8C00CF9D8F00CF9C
      8D00CF9D8E00D0A09100CB928300EFD7D500000000007171C8009D9DFF009191
      FF00A0A0FF0015153200BDBDB700FFFFFF00FFFFFF00FFFFFF0032323200B7B7
      B700FFFFFF00FFFFFF00FFFFFF0044444400FFFFFF00FFFFFF00FFFFFF00D0EF
      FD007CCAF10075C8F000CAECFC00D0EFFD00CFEFFC00D0EFFD0075C7EF0078C8
      F0007DCBF100D0EFFD00FFFFFF00FFFFFF0000000000CCCCCC00FFFFFF000000
      0000FFFFFF0000000000CC996600E5E5E500CC99660000000000000000000000
      000000000000000000000000000000000000FFFFFF00F2E0D800CF9A8900CD9B
      8D00D09E8F00CF9C8D00CF9C8D00CD988800CE9A8A00CF9C8D00CF9C8D00D09D
      8F00CF9C8D00C9938300DCB8AC00FCF9F900000000001B1B2F0025253F002222
      3D0026263F0005050C002D2D2B003F3F3F003D3D3D003F3F3F000C0C0C002B2B
      2B003F3F3F003D3D3D003F3F3F0010101000FFFFFF00FFFFFF00FFFFFF00D0EF
      FD00D0EFFD00D0EFFD00D0EFFD00FFFFFF00FFFFFF00FFFFFF00D0EFFD00D0EF
      FD00D0EFFD00D0EFFD00FFFFFF00FFFFFF0000000000CC99660000000000FFFF
      FF0000000000FFFFFF00CCCCCC00CC9966000000000000000000000000000000
      000000000000000000000000000000000000FCFAFA00FFFFFF00F0E1DB00D09A
      8700CB958500CE9B8B00CF9C8E00CF9D8E00CF9D8E00CF9C8D00CF9D8E00CC96
      8600CF9B8C00E0BFB500FBFCFB00FDFEFD000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0000000000CCCCCC00CC996600CCCC
      CC00CC996600CCCCCC00CC996600000000000000000000000000000000000000
      000000000000000000000000000000000000FDFDFD00FCFCFB00FEFFFF00F7EB
      E600E0C2BA00D3A09400CE9B8C00CF9D8D00CF9C8D00CF9C8E00CE9B8C00D8B1
      A000F0E2DA00FFFFFF00FCFCFC00FDFCFC000000000001010200010103000101
      0300010103000000000002020200030303000303030003030300000000000202
      020003030300030303000303030000000000FDFDFD02FDFDFD02FFFFFF00FFFF
      FF00FEFEFE01FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00E9E9E9000503020005030200D9D8D800FEFEFD00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FAFAFA05F9F9
      F906FFFFFF00FFFFFF00FCFCFC03FEFEFE01FFFFFF00FDFDFD02FCFCFC03FEFE
      FE01FFFFFF00FDFDFD02FCFCFC03FEFEFE010000000000000000000000000000
      0000000000001A711EFF1B781FFF1B7A1EFF1B7F1EFF1C8820FF1C8F26FF0000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000EE8A43E0DC6310F6CF5B10F6D57C43E0000000000000
      000000000000000000000000000000000000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00050302000503020005030200050302000503020005030200060403000502
      0100F1EFEE00FFFFFF00FFFFFF00FFFFFF00DCDCDC23565656A9202020DF2020
      20DF6363639C8E8E8E711A1A1AE5F4F4F40BFFFFFF008484847B181818E7FFFF
      FF00FEFEFE01F3F3F30C191919E69F9F9F600000000000000000000000001B71
      1FFF1A711EFF419B4EFF87C79AFFA0D7AFFF9DD5AAFF89CE9AFF48A95EFF1C96
      2DFF1D9D36FF0000000000000000000000000000000000000000000000000000
      0000F37B31E8E5752FFFEFA17CFFF1B292FFF0AF91FFEAA178FFD56A26FFC15D
      31E800000000000000000000000000000000FFFFFF00FFFFFF00FFFFFF009998
      9800050302000503020005030200050302000503020004020100050302000503
      020005030200FFFFFF00FFFFFF00FFFFFF00515151AE1E1E1EE1D7D7D728DDDD
      DD22B4B4B44B6A6A6A95000000FFE5E5E51AF6F6F6096E6E6E91080808F7BCBC
      BC432F2F2FD0C2C2C23D000000FF8F8F8F7000000000000000001B701FFF1A6C
      1DFF69B87FFFA6DAB4FF83CA95FF64BE7AFF67C278FF79CB86FFA1DBAAFF76C4
      89FF1D9D32FF1FA942FF0000000000000000000000000000000000000000F468
      14F4EB9260FFF3B79CFFF19A76FFED7F4FFFEB7F4DFFEE9B72FFEFB596FFE08C
      53FFAB3114F4000000000000000000000000FFFFFF00FFFFFF00FFFFFF002624
      230005030200CECECD00FEFDFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFE00FFFFFF00FFFFFF00FFFFFF00000000FF7B7B7B84FFFFFF00FFFF
      FF00FFFFFF008E8E8E71020202FD202020DF414141BE6C6C6C93101010EF3434
      34CB000000FF3E3E3EC1050505FA9393936C00000000000000001A6E1EFF66B7
      7DFFA5D9B3FF5CB774FF61BC76FFF6FCF7FFE7F6E9FF74CA80FF6CC77AFFA8DD
      B0FF78C88BFF1FAB42FF00000000000000000000000000000000F87F2FE8EB92
      60FFF3B39AFFEF7849FFED7444FFF3AC90FFF1AC92FFE67440FFE37C40FFEDB3
      94FFDC894EFFAE462EE80000000000000000FFFFFF00FFFFFF00FFFFFF002523
      220005030200FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFE00050302000503
      020005030200FFFFFF00FFFFFF00FFFFFF00464646B9303030CFE7E7E718ECEC
      EC13CBCBCB347171718E000000FFCBCBCB34DEDEDE2179797986000000FF0D0D
      0DF26D6D6D92030303FC000000FF96969669000000001B711FFF3D974CFFA5D9
      B4FF5BB774FF6CBD80FFF9FCFAFFFEFFFEFFFFFFFFFFFBFEFCFF79CC84FF6BC8
      79FFAEE1B5FF50B96AFF2BB752FF000000000000000000000000E97C31FFF3B7
      9CFFEF7849FFEC6E43FFE86B3EFFFCF3F0FFFCEFE9FFE5774AFFE1713BFFDE7D
      3DFFEDB794FFC2521EFF0000000000000000FFFFFF00FFFFFF00FFFFFF002C2A
      290005030200FFFFFF00FFFFFF00FFFFFF00FFFFFF00CCCCCC00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00D3D3D32C101010EF1D1D1DE21E1E
      1EE12A2A2AD5767676890D0D0DF2222222DD434346BC7C7C7C830C0C0CF38D8D
      8D72FFFFFF007373738C0D0D0DF29F9FA060000000001B711FFF83C796FF86CB
      98FF58B56FFFE8F5EBFFFDFEFEFFF5FBF6FFEFF9F0FFFFFFFFFFF1FAF2FF69C7
      76FF92D89DFF95D6A1FF2BB952FF0000000000000000F78B46E0EFA47DFFF29C
      77FFEE7345FFEC6D40FFE86C3CFFFCF3EFFFFCF0ECFFE37443FFDE743EFFDE76
      35FFE59C6CFFE3A06EFFAF5743E000000000FFFFFF00FFFFFF00FFFFFF000F0D
      0C0005030200FFFFFF00FFFFFE00040201000503020005030200050302000503
      020005030200FFFFFF00FFFFFF00FFFFFF00FFFFFF00F8F8F807ECECEC13EBEB
      EB14F1F1F10EF9F9F906F0F0F00FEBEBEF14EEEEFF11F6F6FA09F2F2F80DF9F9
      FB06FDFDFD02F8F8FB07EFEFF610FAFAFF05000000001A701EFF9BD2ABFF64BA
      7CFF58B56EFFBAE1C2FF80CC8EFFF4FBF5FFEEF9F0FFA7DEAFFFB2E2B9FF68C8
      74FF77CE83FFA5DCAEFF2DBB52FF0000000000000000EF6D17F4F0AE90FFEE81
      56FFEC6E43FFEA6B3EFFE86D3CFFFCF0ECFFFCF4EFFFE2733FFFDA7036FFDB73
      32FFDC8345FFE8B086FF972F17F400000000FFFFFF00FFFFFF00FFFFFF000604
      030005030200FFFFFF00FFFFFF00FFFFFF00FFFFFF00FEFEFE00FFFFFF00FEFE
      FE00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FCFCFF03FBFBFF04FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF003B3B
      FFC44E4EFFB1FFFFFF00FFFFFF00FFFFFF00000000001A731EFF9BD3ABFF66BC
      7DFF57B76EFF5AB86EFF63C073FFF2FAF4FFF0F9F1FF61C36FFF63C56EFF68C8
      72FF77CE83FFA5DCAEFF31BD54FF0000000000000000E96C17F4F0AE90FFEE81
      56FFEC7143FFF3B89FFFF2AE92FFFDF0EAFFFDF4F1FFE88E63FFEFC3ABFFD772
      34FFDA8243FFE6AF86FF943017F400000000FFFFFF00FFFFFF00FFFFFF000503
      020005030200FFFFFF0006040300050302000503020005030200050302000503
      0200FFFFFE00FFFFFF00FFFFFF00FFFFFF00EAEAFF159090FF6FFFFFFF00FFFF
      FF00FFFFFF00FEFEFE01FFFFFF00FDFDFE02FCFCFE03E4E4FE1B2D2DFED20000
      FEFF0000FEFF4141FEBEEDEDFE12FDFDFE02000000001B7A1FFF87CA9AFF87CC
      98FF5ABA71FF61BC73FF66C175FFF0F9F1FFF2FAF3FF61C36EFF65C770FF6ACA
      76FF92D89DFF96D7A3FF39C25BFF0000000000000000EA8943E0EEA17CFFF29C
      77FFE97345FFFDF1EDFFFFFFFFFFFDF0EBFFFCF5F2FFFDFEFDFFF9EBE3FFD774
      34FFE49C6BFFE09C6AFFA95643E000000000FFFFFF00FFFFFF00FFFFFF000503
      020005030200FBFBFA00FFFFFF000503020069676700FFFFFF00ABAAA900DAD9
      D800FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF008D8DF372726FE49A9FA6
      BC80F7F7FA0AFFFFFF00FDFDFD02FDFDFF02FEFEFF01C1C1FF3E8181FF7E0808
      FFF71616FFE97C7CFF83D0D0FF2FFFFFFF00000000001B7E1FFF42A052FFA8DB
      B5FF60BC77FF5FBE71FF6BC478FFEDF8EFFFF3FAF4FF63C46FFF68C872FF6DCC
      7AFFAFE1B7FF59C274FF3BC55EFF000000000000000000000000E06F28FFF3B3
      9AFFEA7747FFEA8159FFFFFBF9FFFFFFFFFFFFFFFEFFFDF9F7FFDB854DFFD97B
      38FFEDB991FFB84C1AFF0000000000000000FFFFFF00FFFFFF00FFFFFF000402
      0100040202000503020005030200060403002B292800FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00F3E4C24364BA95ED063AD7FF164D
      98FF7DB14CC1F9F7F00FFFFFFF00FFFFFF00FFFFFF00FFFFFF00C2C2FF3D0000
      FFFF9494FF6BFFFFFF00FFFFFF00FFFFFF0000000000000000001B831FFF6DBE
      83FFA8DBB2FF64C179FF64C374FFA7DDAEFFA5DEADFF69C976FF6DCC7AFFAEE1
      B5FF7FCE90FF36C259FF00000000000000000000000000000000D3702EE8E68F
      59FFF1B094FFE97949FFEA7F53FFFBE8E0FFFDF6F3FFDE7A3EFFD97B39FFEDB8
      91FFD58347FF9C432EE80000000000000000FFFFFF00FFFFFF00FFFFFF000503
      01000705040005030200060403000705040006040300FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0099C085E34AF0F2FF07BCB5F8093A
      E8F6072AC1FFB3AE8C8AF4F4F012F6F6EC16E5E5FF1A6B6BFF940000FFFF5D5D
      FFA2FBFBFF04F9F9FF06FEFEFF01FFFFFF0000000000000000001C8A21FF1B8A
      20FF72C287FFAADDB4FF8DD49AFF70CA7FFF72CC80FF91D79BFFAFE1B7FF7FCE
      90FF34C055FF3DC760FF0000000000000000000000000000000000000000BE49
      14F4E18E59FFF0A88AFFE98559FFE47A44FFDF7F41FFE49968FFEEB992FFD585
      4AFF8F2A14F4000000000000000000000000FFFFFF00FFFFFF00FFFFFF000503
      02000503020005030200050302000503020005030200FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0091CE8FED56EFF8FB04B7B2FB03C2
      B4FC0235E5FD0003F8FF0000FFFF0908FFFF0000FFFF0E0EFFF19494FF6BFFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000000000000000000000001C91
      2BFF1C962FFF4CB064FF91D29FFFA6DCAFFFA7DDB1FF95D7A1FF57BF70FF34BE
      55FF3BC55EFF0000000000000000000000000000000000000000000000000000
      0000C15A31E8CD6223FFE79E6EFFEAAC88FFEBB38BFFDFA06EFFBC4C1EFFA148
      31E800000000000000000000000000000000FFFFFF00FFFFFF00FFFFFF000503
      02000503020005030200050302000503020005030200FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00B7B78B919AF1E1FF50ECF5FF01CB
      D4FF30AD6FF7CCADA875C7ADC26EABABC56E9898FF67FCFCFF03FFFFFF00FEFE
      FF01FFFFFF00FFFFFF00FFFFFF00FFFFFF000000000000000000000000000000
      0000000000001EA43DFF1FA942FF1FAD42FF26B44BFF2DBB54FF34BE59FF0000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000BB5843E0A02910F69A2810F6AE5643E0000000000000
      000000000000000000000000000000000000FFFFFF00FFFFFF00FFFFFF000504
      010005030200FFFFFE00FDFFFF000304010007030200FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00BFC58C9197C68BE16EBD
      7EDCD9DEBF43FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FBFBFF04FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFFFF00FFFFFF00FFFFFF00EEEE
      EE00706E6D00FFFFFF00FFFFFF00FFFFFF00FEFEFE00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF01FFFFFF01FFFFFF01FFFF
      FF01FFFFFF01FFFFFF01FFFFFF01FFFFFF01FFFFFF01FFFFFF01FFFFFF01FFFF
      FF01FFFFFF01FFFFFF01FFFFFF01FFFFFF010000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000F8F8
      F807E5E5E51ADCDCDC23DCDCDC23DCDCDC23DCDCDC23DCDCDC23DCDCDC23DCDC
      DC23DCDCDC23DCDCDC23E5E5E51A00000000000000000000000000000000F8F8
      F807E5E5E51ADCDCDC23DCDCDC23DCDCDC23DCDCDC23DCDCDC23DCDCDC23DCDC
      DC23DCDCDC23DCDCDC23E5E5E51A00000000FFFFFF01FFFFFF014C1BFFFF4C1B
      FFFF4C1BFFFF4C1BFFFF4C1BFFFF4C1BFFFF4C1BFFFF4B1BFFFF4B1BFFFF4B1B
      FFFF4B1BFFFFD1C4FE41FFFFFF01FFFFFF010000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000B46CA5000000000000000000000000000000000000000000DCDC
      DC237D7D7DFFA4A4A4FFA3A3A3FFA0A0A0FF9E9E9EFF9C9C9CFF9B9B9BFF9898
      98FF969696FF939393FF727272FF00000000000000000000000000000000DCDC
      DC237D7D7DFFA4A4A4FFA3A3A3FFA0A0A0FF9E9E9EFF9C9C9CFF9B9B9BFF9898
      98FF969696FF939393FF727272FF00000000FFFFFF01FFFFFF014C1BFFFF4C1B
      FFFF4C1BFFFF4C1BFFFF4C1BFFFF4C1BFFFF4B1BFFFF4B1BFFFF4B1BFFFF4B1B
      FFFF4B1BFFFFD1C5FD41FFFFFF01FFFFFF010000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000009631
      810088146F0088146F000000000000000000000000000000000000000000DCDC
      DC23A4A4A4FFFBFBFBFFF8F8F8FFF3F3F3FFF1F1F1FFECECECFFE9E9E9FFE4E4
      E4FFE2E2E2FFF8F8F8FF909090FF00000000000000000000000000000000DCDC
      DC239C9C9CFFFBFBFBFFF8F8F8FFF3F3F3FFF1F1F1FFECECECFFE9E9E9FFE4E4
      E4FFE2E2E2FFF8F8F8FF909090FF00000000FFFFFF01FFFFFF014C1BFFFF4C1B
      FFFF6E47FFFFA58CFFFF5527FFFF8D6FFEFF7F5EF9FF7958F5FF9C82FFFF582C
      FFFF4B1BFFFFD3C8FD3FFFFFFF01FFFFFF010000000000000000000000000000
      00000000000000000000000000000000000000000000C389B70088146F00E1C4
      DB00CA98C000CA98C0000000000000000000000000000000000000000000DCDC
      DC239A9A9AFF13A130FF13A130FF13A130FF13A130FFEFEFEFFFEDEDEDFFDEDE
      DEFFDBDBDBFFF7F7F7FF8C8C8CFF00000000000000000000000000000000DCDC
      DC239C9C9CFF0000000000000000FF1D1DE2FF1D1DE2F2F2F2FFEFEFEFFFDEDE
      DEFFDBDBDBFFF7F7F7FF8C8C8CFF00000000FFFFFF01FFFFFF014C1BFFFF4C1B
      FFFF5B2EFFFF9B80FFFFAF9AFDFFCFC2FCFF643EEFFF8063EDFF7E5CFDFF582B
      FFFF491BFFFFD2C9FD3FFFFFFF01FFFFFF010000000000000000000000000000
      0000000000000000000000000000000000009E408A009E408A00000000000000
      000088146F00000000000000000000000000000000000000000000000000DCDC
      DC239A9A9AFF13A130FF13A130FF13A130FF13A130FFECECECFFE9E9E9FFDADA
      DAFFD8D8D8FFF7F7F7FF8A8A8AFF00000000000000000000000000000000DCDC
      DC239C9C9CFF00000000FF1D1DE2FF1D1DE2FF1D1DE2EEEEEEFFECECECFFDADA
      DAFFD8D8D8FFF7F7F7FF8A8A8AFF00000000FFFFFF01FFFFFF014C1BFFFF4C1B
      FFFF4B1AFEFF4919F8FF4619F0FF4418E9FF4217E2FF4016DAFF3E16D4FF471C
      FFFF421DFFFFD1CAFC3FFFFFFF01FFFFFF010000000000000000000000000000
      0000000000000000000000000000E1C4DB009631810000000000000000000000
      000088146F00000000000000000000000000000000000000000000000000DCDC
      DC239A9A9AFF13A130FF13A130FF13A130FF13A130FFE5E5E5FFE3E3E3FFD4D4
      D4FFD1D1D1FFF5F5F5FF878787FF00000000000000000000000000000000DCDC
      DC239C9C9CFFFF1D1DE2FF1D1DE2FF1D1DE2FF1D1DE2FF1D1DE2FF1D1DE2D4D4
      D4FFD1D1D1FFF5F5F5FF878787FF00000000FFFFFF01FFFFFF014C1BFFFF4A1A
      FBFF5529F5FFF8F7FEFF7D5FEDFF4117DEFF3E16D7FFEBE7FAFFCEC6F2FF5F42
      FAFF3C20FFFFD1CDFC3DFFFFFF01FFFFFF010000000000000000000000000000
      00000000000000000000E4D5BE0088146F00C9AC7E00AA7B3200D4BD9800CA98
      C000C389B700000000000000000000000000000000000000000000000000DCDC
      DC239A9A9AFF13A130FF13A130FF13A130FF13A130FFE2E2E2FFDFDFDFFFD0D0
      D0FFCECECEFFF5F5F5FF858585FF00000000000000000000000000000000DCDC
      DC23FF1D1DE2FF1D1DE2FF1D1DE2FF1D1DE2FF1D1DE2FF1D1DE2FF1D1DE2D0D0
      D0FFCECECEFFF5F5F5FF858585FF00000000FFFFFF01FFFFFF014A1AFBFF4719
      F0FF4418E9FFB6A6F3FFF2F0FCFF3F17D4FFA390E7FFFFFFFFFFFFFFFFFF3A20
      FFFF3522FFFFD0CDFC3DFFFFFF01FFFFFF010000000000000000000000000000
      000079A2D100125BAE00125BAE001956AA004D84C200125BAE001B5DA6008814
      6F000000000000000000000000000000000000000000000000000000000013A1
      30FF13A130FF13A130FF13A130FF13A130FF13A130FF13A130FF13A130FFCACA
      CAFFC7C7C7FFF3F3F3FF828282FF00000000000000000000000000000000DCDC
      DC239C9C9CFFFFDCDC23FF1D1DE2FF1D1DE2FF1D1DE2DEDEDEFFDBDBDBFFCACA
      CAFFC7C7C7FFF3F3F3FF828282FF00000000FFFFFF01FFFFFF014B1BFFFF4518
      EAFF4117DEFF4A23DAFFE2DCF8FFFFFFFFFFFFFFFFFF9C8CFFFF3921FFFF3423
      FFFF2E25FFFFD1D0FB3BFFFFFF01FFFFFF01000000005C8EC700125BAE002065
      B300B4CBE50000000000C4A4720088146F0000000000000000003E79BD009234
      5B0000000000000000000000000000000000000000000000000000000000A3E1
      C87413A130FF13A130FF13A130FF13A130FF13A130FF13A130FFB3D3C6FFC6C6
      C6FFC4C4C4FFF3F3F3FF808080FF00000000000000000000000000000000DCDC
      DC239C9C9CFF00000000FF1D1DE2FF1D1DE2FF1D1DE2DADADAFFD8D8D8FFC6C6
      C6FFC4C4C4FFF3F3F3FF808080FF00000000FFFFFF01FFFFFF014B1BFFFF4B1B
      FFFF5734DAFFFFFFFFFFFFFFFFFF421DFFFF3D1FFFFFFFFFFFFFAEA9FFFF2D25
      FFFF2827FFFFD1D2FB39FFFFFF01FFFFFF0100000000B4CBE500125BAE00A6C1
      E000000000000000000000000000902D5F0096318100AD5D9C001956AA00E4D5
      BE00CFB48B00000000000000000000000000000000000000000000000000DCDC
      DC239A9A9AFF13A130FF13A130FF13A130FF13A130FFE1E1E1FFE3E3E3FFC0C0
      C0FFBDBDBDFFF2F2F2FF7C7C7CFF00000000000000000000000000000000DCDC
      DC239C9C9CFF00000000FF1D1DE2FF1D1DE2FF1D1DE2E2E2E2FFE1E1E1FFC0C0
      C0FFBDBDBDFFF2F2F2FF7C7C7CFF00000000FFFFFF01FFFFFF014B1BFFFF4B1B
      FFFF4A1BFFFF4D24FFFF6A4FFFFF3C20FFFF3622FFFF3124FFFF3933FFFF2627
      FFFF2129FFFFD0D3FB39FFFFFF01FFFFFF010000000000000000000000006A98
      CC00125BAE0079A2D10000000000EFE6D80076646000125BAE006A98CC000000
      0000AA7B3200000000000000000000000000000000000000000000000000DCDC
      DC239A9A9AFFDBE8DB2413A130FF13A130FFD9DDD9FFE3E3E3FF9C9C9CFF6767
      67FF676767FF696969FF757575FF00000000000000000000000000000000DCDC
      DC239C9C9CFF00000000FF1D1DE2FF1D1DE2FF1D1DE2E2E2E2FF9C9C9CFF6767
      67FF676767FF696969FF757575FF00000000FFFFFF01FFFFFF014B1BFFFF4A1B
      FFFF451CFFFF401EFFFF3A20FFFF3522FFFF3024FFFF2A26FFFF2528FFFF202A
      FEFF1A2BFCFFEDEFFD15FFFFFF01FFFFFF010000000000000000000000000000
      000000000000A6C1E0003E79BD002065B30079A2D100AA7B3200F9F6F2000000
      0000AA7B3200000000000000000000000000000000000000000000000000DCDC
      DC23989898FFE4E4E4FFE5E5E5FFE8E8E8FFE9E9E9FFECECECFF9C9C9CFFB7B7
      B7FFD9D9D9FF85858599FEFEFE0100000000000000000000000000000000DCDC
      DC23989898FFE4E4E4FFE5E5E5FFE8E8E8FFE9E9E9FFECECECFF9C9C9CFFB7B7
      B7FFD9D9D9FF85858599FEFEFE0100000000FFFFFF01FFFFFF01491BFFFF431D
      FFFF3E1FFFFF3921FFFF3423FFFF2E25FFFF2926FFFF2428FFFF7C80DFFFD6D8
      EBFFEFEFF14DFFFFFF01FFFFFF01FFFFFF010000000000000000000000000000
      00000000000000000000000000000000000000000000F9F6F200AA7B3200E9DE
      CB00AA7B3200000000000000000000000000000000000000000000000000DCDC
      DC239A9A9AFFE5E5E5FFE7E7E7FFE9E9E9FFEAEAEAFFEEEEEEFF9C9C9CFFAAAA
      AAFFEEEEEEFFFEFEFE010000000000000000000000000000000000000000DCDC
      DC239A9A9AFFE5E5E5FFE7E7E7FFE9E9E9FFEAEAEAFFEEEEEEFF9C9C9CFFAAAA
      AAFFEEEEEEFFFEFEFE010000000000000000FFFFFF01FFFFFF01421DFFFF3D1F
      FFFF3821FFFF3223FFFF2D25FFFF2827FFFF2329FFFF1D2BFFFFADB2E8FFF2F2
      F343FFFFFF01FFFFFF01FFFFFF01FFFFFF010000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000AF83
      3E00AA7B3200000000000000000000000000000000000000000000000000DEDE
      DE219C9C9CFFE9E9E9FFEBEBEBFFEEEEEEFFEFEFEFFFF3F3F3FF9C9C9CFF4646
      46F8FBFBFB04000000000000000000000000000000000000000000000000DEDE
      DE219C9C9CFFE9E9E9FFEBEBEBFFEEEEEEFFEFEFEFFFF3F3F3FF9C9C9CFF4646
      46F8FBFBFB04000000000000000000000000FFFFFF01FFFFFF013C20FFFF3622
      FFFF3124FFFF2C25FFFF2627FFFF2129FFFF1C2BFFFF172DFEFFF0F0F23FFFFF
      FF01FFFFFF01FFFFFF01FFFFFF01FFFFFF010000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000CFB48B00000000000000000000000000000000000000000000000000EDED
      ED12848484FFF8F8F8FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FF9C9C9CFFF9F9
      F90600000000000000000000000000000000000000000000000000000000EDED
      ED12848484FFF8F8F8FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FF9C9C9CFFF9F9
      F90600000000000000000000000000000000FFFFFF01FFFFFF01F0EFFB17EEED
      FB19ECEBFC1BE9E9FC1DE6E7FC1FE3E5FD21E1E4FE21FCFDFE03FFFFFF01FFFF
      FF01FFFFFF01FFFFFF01FFFFFF01FFFFFF010000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000FFFAFA00FFFAFA00FFF5F500FFF9F800FFFDFD000000
      000000000000000000000000000000000000000000000099CC00006699000066
      9900006699000066990000669900006699000066990000669900006699000066
      9900006699000066990000669900006699000000000099999900999999009999
      9900999999009999990099999900999999009999990099999900999999009999
      9900999999009999990099999900999999000000000000000000000000000000
      0000000000000000000000000000000000000000000080000000800000008000
      000080000000800000008000000080000000FFDAB500FFDDBB00FFDFBF00FFE2
      C600FFE3C800FFD0BC00E3CAB300B5CBA80095C39600BAC4A300FFE1D700FFF1
      E700FFF7EF00FFF8F200FFFAF50000000000000000000099CC0099FFFF000099
      CC0099FFFF000099CC0099FFFF000099CC0099FFFF000099CC0099FFFF000099
      CC0099FFFF000099CC0099FFFF000099CC000000000099999900CCCCCC009999
      9900CCCCCC0099999900CCCCCC0099999900CCCCCC0099999900CCCCCC009999
      9900CCCCCC0099999900CCCCCC00999999000000000000000000000000000000
      000000000000000000000000000000000000FFFF000080800000808000008080
      000080800000808000008080000080000000FFDFC000FFE2C600FFE4CB00FFE8
      D100FFD6C300B0E6C80090DBB3006BD0990042C37D0022B8670022B86700FFEA
      E500FFFBF600FFFCF800FFFCF90000000000000000000099CC0099FFFF0099FF
      FF0099FFFF0099FFFF0099FFFF0099FFFF0099FFFF0099FFFF0099FFFF0099FF
      FF0099FFFF0099FFFF0099FFFF0099FFFF000000000099999900CCCCCC00CCCC
      CC00CCCCCC00CCCCCC00CCCCCC00CCCCCC00CCCCCC00CCCCCC00CCCCCC00CCCC
      CC00CCCCCC00CCCCCC00CCCCCC00CCCCCC000000000000000000000000000000
      0000000000000000000000000000FFFF0000FFFF000080800000808000008080
      000080800000808000008080000080000000FFE4CB00FFE9D200FFEAD600FFEB
      D900D2E9D700B0E6C80090DBB3006BD0990042C37D0022B8670022B8670083C8
      9A00FFFDFB00FFFDFC00FFFEFD0000000000000000000099CC0099FFFF0099FF
      FF0099FFFF0099FFFF0099FFFF0099FFFF0099FFFF0099FFFF0099FFFF0099FF
      FF0099FFFF0099FFFF0099FFFF0099FFFF000000000099999900CCCCCC00CCCC
      CC00CCCCCC00CCCCCC00CCCCCC00CCCCCC00CCCCCC00CCCCCC00CCCCCC00CCCC
      CC00CCCCCC00CCCCCC00CCCCCC00CCCCCC000000000000000000000000000000
      0000000000000000000000000000FFFF0000FFFF000080800000808000008080
      000080800000808000008080000080000000FFEBD600FFEEDB00FFF0E200FFE0
      D500CBEFDB00B0E6C80090DBB3006BD0990042C37D0022B8670022B8670022B8
      6700FFF5F500FFFFFE000000000000000000000000000099CC0099FFFF0099FF
      FF0099FFFF0099FFFF0099FFFF0099FFFF0099FFFF000099CC0099FFFF0099FF
      FF0099FFFF0099FFFF0099FFFF0099FFFF000000000099999900CCCCCC00CCCC
      CC00CCCCCC00CCCCCC00CCCCCC00CCCCCC00CCCCCC0099999900CCCCCC00CCCC
      CC00CCCCCC00CCCCCC00CCCCCC00CCCCCC000000000000000000000000008080
      8000808080008080800080808000FFFF0000FFFF000080800000808000008080
      000080800000808000008080000080000000FFEFE000FFF2E400FFEDE400E7EE
      E400CBEFDB0084CC96006AC485006BD0990042C37D0022B8670022B8670022B8
      670083C69800FFFDFD000000000000000000000000000099CC0099FFFF0099FF
      FF0099FFFF000099CC0099FFFF0099FFFF0099FFFF000099CC0099FFFF0099FF
      FF0099FFFF000099CC0099FFFF0099FFFF000000000099999900CCCCCC00CCCC
      CC00CCCCCC0099999900CCCCCC00CCCCCC00CCCCCC0099999900CCCCCC00CCCC
      CC00CCCCCC0099999900CCCCCC00CCCCCC000000000000000000000000008080
      8000808080008080800080808000FFFF0000FFFF000080800000808000008080
      000080800000808000008080000080000000FFF4E900FFF7EE00FEE4DE00E2F6
      EB00CBEFDB00008000000080000044B2610010911F000A8E1A0022B8670022B8
      670022B86700FFEDEC000000000000000000000000000099CC0099FFFF000099
      CC0099FFFF000099CC0099FFFF000099CC0099FFFF000099CC0099FFFF000099
      CC0099FFFF000099CC0099FFFF000099CC000000000099999900CCCCCC009999
      9900CCCCCC0099999900CCCCCC0099999900CCCCCC0099999900CCCCCC009999
      9900CCCCCC0099999900CCCCCC00999999000000000000000000000000008080
      8000808080008080800080808000FFFF0000FFFF000080800000808000008080
      000080800000808000008080000080000000FFF8F100FFFAF500F6F1ED00E2F6
      EB00CBEFDB0042A64B0090DBB30025982F0010911F000A8E1A001AAA4D0022B8
      670022B867009ED1AD00FFFEFE0000000000000000000099CC000099CC000099
      CC000099CC000099CC000099CC000099CC000099CC000099CC000099CC000099
      CC000099CC000099CC000099CC000099CC000000000099999900999999009999
      9900999999009999990099999900999999009999990099999900999999009999
      9900999999009999990099999900999999000000000000000000000000000000
      0000000000000000000000000000FFFF000080000000FFFF0000FFFF00000000
      FF0000000000000000000000000000000000FFFBF700FFFCF900F3FBF700E2F6
      EB00CBEFDB0083CC950036A343006BD0990042C37D0022B8670013A03A001AAA
      4D0020B5610059C58900FFFCF800000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000CC66000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000009999990000000000000000000000000000000000000000000000
      000000000000000000000000000080000000FFFF0000FFFF00000000FF000000
      FF000000FF00000000000000000000000000FFFDFC00FFFEFD00F9F2F100E2F6
      EB0098D3A40042A64B0090DBB3006BD0990042C37D0022B86700008000000080
      00001AAA4D00FFF2EE00FFF8F100000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000993300000000
      000000000000CC66000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000999999000000
      000000000000999999000000000000000000000000000000FF00000000000000
      000000000000000000000000000000000000000000000000FF000000FF000000
      FF000000FF000000FF0000000000000000000000000000000000FBF0EF00E2F6
      EB00008000000080000090DBB3006BD0990042C37D0022B86700068B130022B8
      670022B86700FFEFEA00FFF4E900000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000993300009933
      000000000000CC66000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000999999009999
      99000000000099999900000000000000000000000000008080000000FF000080
      8000000000000000000000000000000000000000000000000000000000000000
      FF00000000000000000000000000000000000000000000000000FFF6F600E2F6
      EB00CBEFDB0064B9710086D5A7006BD0990042C37D000D95270022B8670022B8
      670022B86700FFF1E700FFEFDF00000000000000000000000000000000000000
      0000993300009933000099330000993300009933000099330000993300009933
      000099330000CC66000000000000000000000000000000000000000000000000
      0000999999009999990099999900999999009999990099999900999999009999
      9900999999009999990000000000000000000000000000808000008080000000
      FF000080800000000000000000000000000000000000000000000000FF000000
      FF0000000000000000000000000000000000000000000000000000000000E2F6
      EB00CBEFDB00B0E6C80076CA930049B769001A99300020B5610022B8670022B8
      670022B86700FFF0E200FFEAD500000000000000000000000000000000000000
      0000993300009933000099330000993300009933000099330000993300009933
      000099330000CC66000000000000000000000000000000000000000000000000
      0000999999009999990099999900999999009999990099999900999999009999
      9900999999009999990000000000000000000000000000808000008080000080
      80000000FF000000FF000000FF000000FF000000FF000000FF000000FF000000
      000000000000000000000000000000000000000000000000000000000000F7F6
      F300CBEFDB00B0E6C80090DBB30000800000008000001AAA4D0022B8670022B8
      6700F1EBDB00FFECD900FFE5CB00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000993300009933
      000000000000CC66000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000999999009999
      9900000000009999990000000000000000000000000000000000008080000080
      8000008080000000FF000000FF000000FF000000FF0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000F4FAF600B0E6C80090DBB3006BD0990042C37D0022B8670022B86700F1EB
      DB00FFEEDD00FFE7CE00FFE0C100000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000993300000000
      000000000000CC66000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000999999000000
      00000000000099999900000000000000000000000000000000000000000000FF
      FF00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000EAF7F000B5E4C800A0DDBA00F1F7EC00FFF5EB00FFEF
      DF00FFE9D200FFE1C400FFDBB700000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000CC66000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000009999990000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000E4E4E4FFE6E6E6FFE1E1E1FFDCDC
      DCFFDEDEDEFFDCDCDCFFDADADAFFD9D9D9FFD8D9D8FFD9DAD9FFD9D9D9FFD6D6
      D6FFDEDEDEFFE2E2E2FFE4E4E4FFDBDBDBFF000000000000000000000000CC99
      6600CC996600CC996600CC996600CC996600CC996600CC996600CC996600CC99
      6600CC996600CC996600CC996600CC9966000000000000000000000000009999
      9900999999009999990099999900999999009999990099999900999999009999
      9900999999009999990099999900999999000000000000000000000000000000
      0000000000000000000000008000000080000000800000008000000000000000
      000000000000000000000000000000000000F9F9F9FFFFFFFFFFF6F6F6FFE2D9
      DDFFEAEAEAFFF3F4F3FFF6F6F6FFF6F7F6FFF4F4F4FFECECECFFE0E0E0FFE1E1
      E1FFF4F4F4FFFCFCFCFFFCFCFCFFE5E5E5FF000000000000000000000000CC99
      6600FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00CC9966000000000000000000000000009999
      9900000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000999999000000000000000000000000000000
      000000000000000080000066990000669900DDDDDD00F0FBFF00000080000000
      000000000000000000000000000000000000F9F9F9FFFFFFFFFFF9F9F9FF59D9
      F8FFE8588EFFE3C8D2FFEBEBEBFFEEEEEEFFE4E4E4FFDFDFDFFF96546EFF7A24
      45FFEDEDEDFFFFFFFFFFFBFBFBFFE2E3E2FF000000000000000000000000CC99
      6600FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00CC9966000000000000000000000000009999
      9900000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000999999000000000000000000000000000000
      0000000080000066990000669900DDDDDD000000000000000000F0FBFF000000
      800000000000000000000000000000000000F5F5F5FFFFFFFFFFFBFBFBFF74E2
      F8FF92A6CEFFE8588EFFE8588EFFE3ADC1FF791C40FF6A0029FF6A0029FFC0C0
      C0FFF8F8F8FFFAFAFAFFF8F8F8FFDEDEDEFF000000000000000000000000CC99
      6600FFFFFF00FFFFFF00CCCCCC00CCCCCC00CCCCCC00CCCCCC00CCCCCC00CCCC
      CC00CCCCCC00FFFFFF00FFFFFF00CC9966000000000000000000000000009999
      99000000000000000000CCCCCC00CCCCCC00CCCCCC00CCCCCC00CCCCCC00CCCC
      CC00CCCCCC000000000000000000999999000000000000000000000000000000
      80000066990000669900DDDDDD000000000000000000EAEAEA009999CC006666
      990000008000000000000000000000000000EFEFEFFFFBFBFBFFFCFCFCFF9AE3
      F2FF4FE2FFFFCB72A3FFE8588EFFD84D81FF6A0029FF6A0029FFBBB4B7FFC0C0
      C0FFF8F8F8FFF4F4F4FFF0F0F0FFD7D7D7FF000099000000000000000000CC99
      6600FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00CC9966009999990000000000000000009999
      9900000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000999999000000000000000000000080000066
      990000669900DDDDDD009999CC00666699009999CC0000000000000000006666
      CC0000008000000080000000000000000000E7E7E7FFF4F4F4FFF8F8F8FFBDE2
      E9FF4FE2FFFF4FE2FFFFE8588EFFE8588EFF6A0029FF956075FFC0C0C0FFC0C0
      C0FFF0F0F0FFEDEEEDFFE9E9E9FFD1D1D1FF0000CC000000990000000000CC99
      6600FFFFFF009933000099330000993300009933000099330000993300009933
      00009933000099330000FFFFFF00CC996600B2B2B20099999900000000009999
      9900000000009999990099999900999999009999990099999900999999009999
      9900999999009999990000000000999999000000000000008000006699000066
      99009999CC0000000000C6D6EF00666699006666990000008000333399003333
      99006666CC00000080000000800000000000DFDFDFFFE8E8E8FFE2E3E2FFC0D5
      DBFF4FE2FFFF4FE2FFFF4FE2FFFFE8588EFF6F0C32FFC0C0C0FFC0C0C0FFC0C0
      C0FFD9D9D9FFE3E3E3FFE2E2E2FFCBCBCBFF0000FF000000CC0000009900CC99
      6600FFFFFF0099330000CC996600CC996600CC996600CC996600CC996600CC99
      6600CC99660099330000FFFFFF00CC996600CCCCCC00B2B2B200999999009999
      99000000000099999900CCCCCC00CCCCCC00CCCCCC00CCCCCC00CCCCCC00CCCC
      CC00CCCCCC00999999000000000099999900000080000066990000669900E3E3
      E3009999CC0000000000D6E7E700EAEAEA0000008000000080002100A5000000
      800066669900000000000000800000008000D6D7D6FFD1D1D1FFCFCFCFFF00BA
      FFFF00BAFFFF00BAFFFF23CCFFFF75C0E3FFBCBCBCFF969696FF838383FF8383
      83FF838383FFCBCCCBFFD8D8D8FFC4C4C4FF0000FF000000CC0000000000CC99
      6600FFFFFF009933000099330000993300009933000099330000993300009933
      00009933000099330000FFFFFF00CC996600CCCCCC00B2B2B200000000009999
      9900000000009999990099999900999999009999990099999900999999009999
      99009999990099999900000000009999990000008000C6D6EF00C6D6EF00CCCC
      FF009999CC0000000000C0C0C00000000000EAEAEA006666CC00000080000000
      800000008000000000006699CC0000008000C4C5C4FFBDBEBDFF00BAFFFF00BA
      FFFF00BAFFFF0FC2FFFF40DBFFFF2CD1FFFF5228D2FF6240D3FF7B7395FF8383
      83FF838383FF838383FFC4C5C4FFBFBFBFFF0000FF000000000000000000CC99
      6600FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00CC996600CCCCCC0000000000000000009999
      9900000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000999999000000000000008000C6D6EF00C6D6
      EF00C6D6EF006666CC0000000000000080000000800000008000000080000000
      800000008000DDDDDD000000800000000000D0D1D0FF00BAFFFF19C7FFFF4AE0
      FFFF4FE2FFFF4FE2FFFF45DDFFFF00BAFFFF391098FF5A30E5FF5A30E5FF5A30
      E5FF5A30E5FF7464A8FF838383FFC4C5C4FF000000000000000000000000CC99
      6600FFFFFF00FFFFFF00CCCCCC00CCCCCC00CCCCCC00CCCCCC00CCCCCC00CCCC
      CC00CCCCCC00FFFFFF00FFFFFF00CC9966000000000000000000000000009999
      99000000000000000000CCCCCC00CCCCCC00CCCCCC00CCCCCC00CCCCCC00CCCC
      CC00CCCCCC00000000000000000099999900000000000000000000008000C6D6
      EF00C6D6EF00CCCCCC009999CC00E3E3E3000000800000008000333399000000
      8000C6D6EF00000080000000000000000000DEDEDEFFC2E7EEFFA1EAF9FF63E4
      FDFF4FE2FFFF4FE2FFFF00BAFFFF00BAFFFF391098FF391098FF5A30E5FF5A30
      E5FF7E5EE6FF9F8AE5FFD1CDE2FFCCCCCCFF000000000000000000000000CC99
      6600FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00CC9966000000000000000000000000009999
      9900000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000999999000000000000000000000000000000
      8000C6D6EF00C6D6EF0066669900333399009999CC0066669900000080000000
      800000008000000000000000000000000000E5E5E5FFF0F0F0FFF8F8F8FFF8F8
      F8FFF6F7F6FFD1E8F1FF00BAFFFF00BAFFFF391098FF391098FFF5F5F5FFF3F3
      F3FFF0F0F0FFEDEDEDFFE9E9E9FFD1D2D1FF000000000000000000000000CC99
      6600FFFFFF00FFFFFF00CCCCCC00CCCCCC00CCCCCC00CCCCCC00CCCCCC00CCCC
      CC00CCCCCC00FFFFFF00FFFFFF00CC9966000000000000000000000000009999
      99000000000000000000CCCCCC00CCCCCC00CCCCCC00CCCCCC00CCCCCC00CCCC
      CC00CCCCCC000000000000000000999999000000000000000000000000000000
      000000008000C6D6EF00C6D6EF00000080000000800000008000000080000000
      800000000000000000000000000000000000EAEAEAFFF6F6F6FFFFFFFFFFFFFF
      FFFFFFFFFFFFFEFEFEFF1EC0FDFF00BAFFFF391098FF9079C5FFFFFFFFFFFEFE
      FEFFF6F6F6FFF4F4F4FFF2F2F2FFD7D8D7FF000000000000000000000000CC99
      6600FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00CC9966000000000000000000000000009999
      9900000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000999999000000000000000000000000000000
      00000000000000008000C6D6EF00C6D6EF000000800000008000000080000000
      000000000000000000000000000000000000F2F2F2FFFAFAFAFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFBFBFBFF00BAFFFF391098FFFFFFFFFFFFFFFFFFFFFF
      FFFFFDFDFDFFFAFAFAFFF6F6F6FFDEDEDEFF000000000000000000000000CC99
      6600FFFFFF00FFFFFF00CCCCCC00CCCCCC00CCCCCC00CCCCCC00CCCCCC00CCCC
      CC00CCCCCC00FFFFFF00FFFFFF00CC9966000000000000000000000000009999
      99000000000000000000CCCCCC00CCCCCC00CCCCCC00CCCCCC00CCCCCC00CCCC
      CC00CCCCCC000000000000000000999999000000000000000000000000000000
      0000000000000000000000008000000080000000800000008000000000000000
      000000000000000000000000000000000000FFFFFFFFFBFBFBFFFAFAFAFFFCFC
      FCFFFDFDFDFFFBFBFBFFFAFAFAFF7CD9FCFFB1A2D5FFFAFAFAFFFCFCFCFFFCFC
      FCFFFAFAFAFFFAFAFAFFFAFAFAFFE3E3E3FF000000000000000000000000CC99
      6600FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00CC9966000000000000000000000000009999
      9900000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000999999000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000F8F8F8FFFFFFFFFFFAFAFAFFF6F6
      F6FFF4F4F4FFF2F3F2FFF2F2F2FFF2F2F2FFF2F2F2FFF2F2F2FFF4F4F4FFF5F6
      F5FFF8F8F8FFF8F8F8FFF4F4F4FFE0E0E0FF000000000000000000000000CC99
      6600CC996600CC996600CC996600CC996600CC996600CC996600CC996600CC99
      6600CC996600CC996600CC996600CC9966000000000000000000000000009999
      9900999999009999990099999900999999009999990099999900999999009999
      9900999999009999990099999900999999000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000066CCCC0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000009999990000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000066CCCC000099CC00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000009999990099999900000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000262626006E6E6E0073730000737300007373000026262600000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000B2B2B2008080800000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000066CCCC000099CC000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000099999900999999000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000026262600737300006E6E6E00737300006E6E6E0073730000262626002626
      260026262600262626000000000000000000000000000000000000000000B2B2
      B200999999009999990080808000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000066CCCC0099FFFF000099CC0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000099999900E5E5E5009999990000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000026262600737300006E6E6E006E6E6E00737300006E6E6E00737300007373
      0000737300002626260000000000000000000000000000000000B2B2B2009999
      9900999999009999990099999900808080000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000066CCCC000099CC000099CC000099CC0066FFFF000099CC00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000099999900999999009999990099999900CCCCCC0099999900000000000000
      0000000000000000000000000000000000000000000000000000000000002626
      2600737300006E6E6E00737300006E6E6E005656560073730000C0C0C0007373
      00007373000026262600000000000000000000000000B2B2B200999999009999
      9900999999009999990099999900999999008080800000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000066CCCC0099FFFF0066FFFF0066FFFF0066FFFF0066FFFF000099CC000000
      0000000000000000000000000000000000000000000000000000000000000000
      000099999900E5E5E500CCCCCC00CCCCCC00CCCCCC00CCCCCC00999999000000
      0000000000000000000000000000000000000000000000000000262626007373
      000073730000737300007373000073730000737300006E6E6E006E6E6E007373
      00007373000026262600000000000000000000000000B2B2B200999999009999
      990080808000B2B2B20099999900999999009999990080808000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000066CCCC0099FFFF0066FFFF000099CC0066CCCC0066CCCC0066CC
      CC00000000000000000000000000000000000000000000000000000000000000
      00000000000099999900E5E5E500CCCCCC009999990099999900999999009999
      9900000000000000000000000000000000000000000026262600262626006E6E
      6E007373000073730000737300007373000073730000737300006E6E6E005656
      56005656560073730000262626000000000000000000B2B2B200999999008080
      80000000000000000000B2B2B200999999009999990099999900808080000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000066CCCC0099FFFF0066FFFF0066FFFF000099CC00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000099999900E5E5E500CCCCCC00CCCCCC0099999900000000000000
      0000000000000000000000000000000000000000000026262600737300007373
      0000737300007373000073730000737300007373000073730000737300006E6E
      6E007373000073730000262626000000000000000000B2B2B200808080000000
      0000000000000000000000000000B2B2B2009999990099999900999999008080
      800000000000000000000000000000000000000000000000000066CCCC000099
      CC000099CC000099CC000099CC0099FFFF0066FFFF0066FFFF000099CC000000
      0000000000000000000000000000000000000000000000000000999999009999
      9900999999009999990099999900E5E5E500CCCCCC00CCCCCC00999999000000
      00000000000000000000000000000000000026262600737300006E6E6E007373
      000073730000737300007373000073730000737300006E6E6E00737300007373
      0000737300002626260000000000000000000000000000000000000000000000
      000000000000000000000000000000000000B2B2B20099999900999999009999
      990080808000000000000000000000000000000000000000000066CCCC0099FF
      FF0099FFFF0066FFFF0066FFFF0066FFFF0066FFFF0066FFFF0066FFFF000099
      CC0000000000000000000000000000000000000000000000000099999900E5E5
      E500E5E5E500CCCCCC00CCCCCC00CCCCCC00CCCCCC00CCCCCC00CCCCCC009999
      990000000000000000000000000000000000262626006E6E6E0073730000C0C0
      C0007373000073730000737300007373000073730000737300006E6E6E007373
      0000737300002626260000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000B2B2B200999999009999
      99009999990080808000000000000000000000000000000000000000000066CC
      CC0099FFFF0099FFFF0066FFFF0066FFFF000099CC0066CCCC0066CCCC0066CC
      CC00000000000000000000000000000000000000000000000000000000009999
      9900E5E5E500E5E5E500CCCCCC00CCCCCC009999990099999900999999009999
      9900000000000000000000000000000000002626260026262600565656007373
      00006E6E6E007373000073730000737300006E6E6E0073730000737300006E6E
      6E00262626000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000B2B2B2009999
      99009999990080808000000000000000000000000000000000000000000066CC
      CC0099FFFF0099FFFF0099FFFF0066FFFF0066FFFF000099CC00000000000000
      0000000000000000000000000000000000000000000000000000000000009999
      9900E5E5E500E5E5E500E5E5E500CCCCCC00CCCCCC0099999900000000000000
      0000000000000000000000000000000000000000000026262600737300007373
      000073730000737300005656560073730000737300006E6E6E00737300002626
      2600000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000B2B2
      B200999999008080800000000000000000000000000000000000000000000000
      000066CCCC0099FFFF0099FFFF0099FFFF0066FFFF0066FFFF000099CC000000
      0000000000000000000000000000000000000000000000000000000000000000
      000099999900E5E5E500E5E5E500E5E5E500CCCCCC00CCCCCC00999999000000
      0000000000000000000000000000000000000000000026262600262626007373
      00007373000073730000737300006E6E6E007373000073730000262626002626
      2600000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000B2B2B2008080800000000000000000000000000000000000000000000000
      000066CCCC0099FFFF0099FFFF0099FFFF0066FFFF0066FFFF0066FFFF000099
      CC00000000000000000000000000000000000000000000000000000000000000
      000099999900E5E5E500E5E5E500E5E5E500CCCCCC00CCCCCC00CCCCCC009999
      9900000000000000000000000000000000000000000000000000262626002626
      2600737300007373000073730000737300006E6E6E0026262600262626000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000066CCCC0099FFFF0099FFFF0099FFFF0066FFFF0066FFFF0066FF
      FF000099CC000000000000000000000000000000000000000000000000000000
      00000000000099999900E5E5E500E5E5E500E5E5E500CCCCCC00CCCCCC00CCCC
      CC00999999000000000000000000000000000000000000000000000000000000
      0000262626002626260026262600262626002626260000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000066CCCC0066CCCC0066CCCC0066CCCC0066CCCC0066CCCC0066CC
      CC0066CCCC0066CCCC0000000000000000000000000000000000000000000000
      0000000000009999990099999900999999009999990099999900999999009999
      9900999999009999990000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000003399CC003399CC003399
      CC0066CCFF0066CCFF0066CCFF0066CCFF0066CCFF0066CCFF0066CCFF0066CC
      FF0066CCFF0066CCFF0066CCFF0066CCFF000000000099999900999999009999
      9900CCCCCC00CCCCCC00CCCCCC00CCCCCC00CCCCCC00CCCCCC00CCCCCC00CCCC
      CC00CCCCCC00CCCCCC00CCCCCC00CCCCCC0000000000C0C0C000C0C0C000CECE
      CE00D6D6D600DBDBDB00DDDDDD00DCDCDC00D9D9D900D5D5D500D0D0D000CBCB
      CB00C7C7C700C0C0C000C0C0C000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000066CCFF0066CCFF003399CC003399
      CC003399CC0066CCFF0066CCFF0066CCFF0066CCFF0066CCFF0066CCFF0066CC
      FF0066CCFF0066CCFF0066CCFF0066CCFF00CCCCCC00CCCCCC00999999009999
      990099999900CCCCCC00CCCCCC00CCCCCC00CCCCCC00CCCCCC00CCCCCC00CCCC
      CC00CCCCCC00CCCCCC00CCCCCC00CCCCCC00C0C0C000C0C0C000D0D0D000E3E3
      E300EEEEEE00F8F8F800FDFDFD00FAFAFA00F5F5F500EEEEEE00E6E6E600DEDE
      DE00D6D6D600C9C9C900C0C0C000C0C0C0000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000066CCFF0066CCFF0066CCFF000099
      0000008000000080000066CCFF00336699003366990033669900336699003399
      CC0066CCFF0066CCFF0066CCFF0033669900CCCCCC00CCCCCC00CCCCCC009999
      99009999990099999900CCCCCC00999999009999990099999900999999009999
      9900CCCCCC00CCCCCC00CCCCCC0099999900C0C0C000C0C0C000D4D4D400E4E4
      E400EFEFEF00F8F8F800FCFCFC00FAFAFA00F6F6F600EEEEEE00E6E6E600DEDE
      DE00D6D6D600CDCDCD00C0C0C000C0C0C0000000000000000000000000000000
      000000CC00000066000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000066CCFF0066CCFF0066CCFF000099
      000000FF00000080000066CCFF003399CC006699CC006699CC003399CC0066CC
      FF0066CCFF0066CCFF0066CCFF0066CCFF00CCCCCC00CCCCCC00CCCCCC009999
      9900CCCCCC0099999900CCCCCC0099999900CCCCCC00CCCCCC0099999900CCCC
      CC00CCCCCC00CCCCCC00CCCCCC00CCCCCC00C0C0C000C0C0C000D7D7D700D9D9
      D900E1E1E100E6E6E600E8E8E800E7E7E700E4E4E400E1E1E100DDDDDD00D9D9
      D900D5D5D500CFCFCF00C0C0C000C0C0C00000000000000000000000000000CC
      0000009900000099000000660000000000000000000000000000000000000000
      00000000000000000000000000000000000066CCFF0066CCFF0066CCFF000099
      000000FF00000080000066CCFF0066CCFF003399CC003399CC0066CCFF0066CC
      FF00336699003366990066CCFF0066CCFF00CCCCCC00CCCCCC00CCCCCC009999
      9900CCCCCC0099999900CCCCCC00CCCCCC009999990099999900CCCCCC00CCCC
      CC009999990099999900CCCCCC00CCCCCC00C0C0C000C0C0C000D2D2D200D4D4
      D400DFDFDF00E7E7E700E9E9E900E8E8E800E4E4E400DFDFDF00D8D8D800D2D2
      D200CBCBCB00C5C5C500C0C0C000C0C0C000000000000000000000CC00000099
      0000009900000099000000990000006600000000000000000000000000000000
      00000000000000000000000000000000000066CCFF0066CCFF0066CCFF000099
      000000FF000000FF00000080000066CCFF0066CCFF0066CCFF0066CCFF0066CC
      FF0066CCFF0066CCFF0066CCFF0066CCFF00CCCCCC00CCCCCC00CCCCCC009999
      9900CCCCCC00CCCCCC0099999900CCCCCC00CCCCCC00CCCCCC00CCCCCC00CCCC
      CC00CCCCCC00CCCCCC00CCCCCC00CCCCCC00C0C0C000C0C0C000D1D1D100E3E3
      E300EEEEEE00F8F8F800FCFCFC00FAFAFA00F5F5F500EEEEEE00E6E6E600DEDE
      DE00D6D6D600CACACA00C0C0C000C0C0C0000000000000CC0000009900000099
      0000009900000099000000990000009900000066000000000000000000000000
      00000000000000000000000000000000000066CCFF0066CCFF0066CCFF000099
      000000FF000033CC330000FF00000080000066CCFF0066CCFF0066CCFF0066CC
      FF0066CCFF0066CCFF0066CCFF0066CCFF00CCCCCC00CCCCCC00CCCCCC009999
      9900CCCCCC00CCCCCC00CCCCCC0099999900CCCCCC00CCCCCC00CCCCCC00CCCC
      CC00CCCCCC00CCCCCC00CCCCCC00CCCCCC00C0C0C000C0C0C000D4D4D400E6E6
      E600EFEFEF00F8F8F800FCFCFC00FBFBFB00F6F6F600EFEFEF00E8E8E800E0E0
      E000D9D9D900CECECE00C0C0C000C0C0C0000000000000CC0000009900000099
      00000066000000CC000000990000009900000099000000660000000000000000
      000000000000000000000000000000000000FFCC990066CC66000080000000FF
      000000FF00000099000000FF000000FF000000990000FFCC9900FFCC9900FFCC
      9900FFCC9900FFCC9900FFCC9900FFCC990000000000CCCCCC0099999900CCCC
      CC00CCCCCC0099999900CCCCCC00CCCCCC009999990000000000000000000000
      000000000000000000000000000000000000C0C0C000C0C0C000D2D2D200D2D2
      D200D9D9D900DDDDDD00DEDEDE00DEDEDE00DCDCDC00D9D9D900D5D5D500D2D2
      D200CFCFCF00CBCBCB00C0C0C000C0C0C0000000000000CC0000009900000066
      0000000000000000000000CC0000009900000099000000990000006600000000
      000000000000000000000000000000000000FFCC99000099000000FF00000099
      000000FF0000008000000099000000FF000000990000FFCC9900FFCC9900FFCC
      9900FFCC9900FFCC9900FFCC9900FFCC99000000000099999900CCCCCC009999
      9900CCCCCC009999990099999900CCCCCC009999990000000000000000000000
      000000000000000000000000000000000000C0C0C000C0C0C000D2D2D200DDDD
      DD00E8E8E800F1F1F100F5F5F500F3F3F300EEEEEE00E8E8E80099CCFF006699
      FF006699FF00CCCCFF00C0C0C000C0C0C0000000000000CC0000006600000000
      000000000000000000000000000000CC00000099000000990000009900000066
      000000000000000000000000000000000000FFCC99000099000000FF00000099
      000000FF00000080000066CC66000099000066CC6600FFCC9900FFCC9900FFCC
      9900FFCC9900FFCC9900FFCC9900FFCC99000000000099999900CCCCCC009999
      9900CCCCCC0099999900CCCCCC0099999900CCCCCC0000000000000000000000
      000000000000000000000000000000000000C0C0C000C0C0C000D2D2D200E3E3
      E300EEEEEE00F8F8F800FCFCFC00FAFAFA00F5F5F50099CCFF000033FF003399
      FF003366FF000033FF009999FF00C0C0C0000000000000000000000000000000
      00000000000000000000000000000000000000CC000000990000009900000099
      000000660000000000000000000000000000FFCC99000099000000FF00000099
      000000FF000000800000FFCC9900FFCC9900FFCC9900FFCC9900FFCC990000CC
      FF0000CCFF0000CCFF00FFCC9900FFCC99000000000099999900CCCCCC009999
      9900CCCCCC009999990000000000000000000000000000000000000000009999
      990099999900999999000000000000000000C0C0C000C0C0C000D6D6D600E7E7
      E700EEEEEE00F6F6F600F9F9F900F7F7F700F3F3F30099CCFF003399FF0033CC
      FF0033CCFF003399FF0099CCFF00C0C0C0000000000000000000000000000000
      0000000000000000000000000000000000000000000000CC0000009900000099
      000000990000006600000000000000000000FFCC990066CC6600009900000099
      000000FF000000800000FFCC9900FFCC9900FFCC9900FFCC990000CCFF0066FF
      FF0066FFFF0066FFFF0000CCFF00FFCC990000000000CCCCCC00999999009999
      9900CCCCCC00999999000000000000000000000000000000000099999900CCCC
      CC00CCCCCC00CCCCCC009999990000000000C0C0C000C0C0C000CDCDCD00D0D0
      D000D6D6D600DBDBDB00DDDDDD00DCDCDC0066CCFF003366FF000066FF00CCFF
      FF0099FFFF003366FF003366FF00C0C0C0000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000CC00000099
      000000990000006600000000000000000000FFCC9900FFCC9900FFCC99000099
      000000FF000000800000FFCC9900FFCC9900FFCC9900FFCC990000CCFF0066FF
      FF0066FFFF0066FFFF0000CCFF00FFCC99000000000000000000000000009999
      9900CCCCCC00999999000000000000000000000000000000000099999900CCCC
      CC00CCCCCC00CCCCCC009999990000000000C0C0C000C0C0C000CFCFCF00E2E2
      E200EEEEEE00F8F8F800FCFCFC00F9F9F900F5F5F5003399CC000033FF000033
      FF003399FF000033FF00CCCCFF00C0C0C0000000000000000000000000000000
      00000000000000000000000000000000000000000000000000000000000000CC
      000000990000006600000000000000000000FFCC9900FFCC9900FFCC990066CC
      66000099000066CC6600FFCC9900FFCC9900FFCC9900FFCC990000CCFF0066FF
      FF0066FFFF0066FFFF0000CCFF00FFCC9900000000000000000000000000CCCC
      CC0099999900CCCCCC000000000000000000000000000000000099999900CCCC
      CC00CCCCCC00CCCCCC009999990000000000C0C0C000C0C0C000D3D3D300E3E3
      E300EFEFEF00F8F8F800FDFDFD00FAFAFA00F5F5F5000033FF0099CCFF000033
      FF006699FF009999FF0099CCFF00C0C0C0000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000CC0000006600000000000000000000FFCC9900FFCC9900FFCC9900FFCC
      9900FFCC9900FFCC9900FFCC9900FFCC9900FFCC9900FFCC9900FFCC990000CC
      FF0000CCFF0000CCFF00FFCC9900FFCC99000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000009999
      990099999900999999000000000000000000C0C0C000C0C0C000DCDCDC00E2E2
      E200E9E9E900EEEEEE00F0F0F000EFEFEF00ECECEC00E8E8E800E4E4E40099CC
      FF0099CCFF00D3D3D300C0C0C000C0C0C0000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFCC9900FFCC9900FFCC9900FFCC
      9900FFCC9900FFCC9900FFCC9900FFCC9900FFCC9900FFCC9900FFCC9900FFCC
      9900FFCC9900FFCC9900FFCC9900FFCC99000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000C0C0C000C0C0C000E1E1
      E100E0E0E000E0E0E000E0E0E000E0E0E000E0E0E000E0E0E000E0E0E000DEDE
      DE00DEDEDE00C0C0C000C0C0C000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000000000000066CC
      CCFF000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000000000000066CC
      CCFF000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000FCAE4800FCAE4800EBAB
      5400FCAE4800FCAE4800FCAE4800000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000999999000000
      00000000000000000000000000000000000000000000000000000000000066CC
      CCFF0099CCFF00000000FF0000FFFF0000FF121212FF0000000000000000FF00
      00FFFF0000FF121212FF000000000000000000000000000000000000000066CC
      CCFF0099CCFF0000000000000000FF0000FFFF0000FFFF0000FFFF0000FFFF00
      00FF000000FF000000000000000000000000000000000000000000000000F8F7
      FF0000000000000000000000000000000000FCAE4800FCAE4800FEFEFE00FEFE
      FE00FEFEFE00FEFEFE00F5A64800FCAE48000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000999999009999
      9900000000000000000000000000000000000000000000000000000000000000
      000066CCCCFF0099CCFFFF0000FFFF0000FF121212FF0000000000000000FF00
      00FFFF0000FF121212FF00000000000000000000000000000000000000000000
      000066CCCCFF0099CCFFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF00
      00FFFF0000FF000000FF00000000000000000000000000000000F4F3FF000000
      00000E0B9E00000079000000790000000000F2A04100FEFEFE00FEFEFE00FEFE
      FE00FEFEFE00FEFEFE00FEFEFE00FCAE48000000000000000000000000009999
      9900999999009999990099999900999999009999990099999900999999009999
      9900999999000000000000000000000000000000000000000000000000000000
      000066CCCCFF99FFFFFFFF0000FFFF0000FF121212FF0000000000000000FF00
      00FFFF0000FF121212FF00000000000000000000000000000000000000000000
      000066CCCCFF99FFFFFFFF0000FFFF0000FF000000FF0000000000000000FF00
      00FFFF0000FF000000FF000000000000000000000000F4F3FF0000000000F9F9
      FF00F1F0FF000000FF000E0B9E0000000000F1A94700FEFEFE00FEFEFE00FEFE
      FE00FEFEFE00FEFEFE00FEFEFE00FCC158000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000999999009999
      990000000000000000000000000000000000000000000000000066CCCCFF0099
      CCFF0099CCFF0099CCFFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF00
      00FFFF0000FF121212FF0000000000000000000000000000000066CCCCFF0099
      CCFF0099CCFF0099CCFFFF0000FFFF0000FF000000FF0000000000000000FF00
      00FFFF0000FF000000FF000000000000000000000000FEFEFF00000000000000
      00000000FF00CCC8FF000000FF0000000000FCC15800FEFEFE00FEFEFE00FEFE
      FE00FEFEFE00FEFEFE00FEFEFE00FCC158000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000999999000000
      000000000000000000000000000000000000000000000000000066CCCCFF99FF
      FFFF66FFFFFF66FFFFFFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FF1212
      12FF00000000000000000000000000000000000000000000000066CCCCFF99FF
      FFFF66FFFFFF66FFFFFFFF0000FFFF0000FF000000FF00000000000000000000
      00000000000000000000000000000000000000000000F3F2FF00000000004F6C
      F20000000000000000000000000000000000FCC15800FEFEFE00FEFEFE00FEFE
      FE00FEFEFE00FEFEFE00FEFEFE00FBD86C000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000000000000066CC
      CCFF99FFFFFF66FFFFFFFF0000FFFF0000FF121212FF66CCCCFF00000000FF00
      00FFFF0000FF121212FF000000000000000000000000000000000000000066CC
      CCFF99FFFFFF66FFFFFFFF0000FFFF0000FF000000FF66CCCCFF000000000000
      00000000000000000000000000000000000000000000000000004F6CF2000000
      000000000000000000000000000000000000FBD86C00FBD86C00FEFEFE00FEFE
      FE00FEFEFE00FEFEFE00FBD86C00FBD86C009999990099999900999999009999
      9900999999009999990099999900000000000000000099999900999999009999
      99009999990099999900999999009999990000000000000000000000000066CC
      CCFF99FFFFFF66FFFFFFFF0000FFFF0000FF121212FF0000000000000000FF00
      00FFFF0000FF121212FF000000000000000000000000000000000000000066CC
      CCFF99FFFFFF66FFFFFFFF0000FFFF0000FF000000FF0000000000000000FF00
      00FFFF0000FF000000FF00000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000FBD86C00FBD86C00FBD8
      6C00FBD86C00FBD86C00FBD86C00000000009999990000000000000000000000
      0000000000000000000099999900000000000000000099999900CCCCCC00CCCC
      CC00CCCCCC00CCCCCC00CCCCCC009999990066CCCCFF0099CCFF0099CCFF0099
      CCFF0099CCFF99FFFFFFFF0000FFFF0000FF121212FF0000000000000000FF00
      00FFFF0000FF121212FF000000000000000066CCCCFF0099CCFF0099CCFF0099
      CCFF0099CCFF99FFFFFFFF0000FFFF0000FF000000FF0000000000000000FF00
      00FFFF0000FF000000FF000000000000000000000000FCAE4800FCAE4800EBAB
      5400FCAE4800FCAE4800FCAE480000000000000000000000000099CCFF006699
      FF006699FF00CCCCFF0000000000000000009999990000000000000000000000
      0000000000000000000099999900000000000000000099999900CCCCCC00CCCC
      CC00CCCCCC00CCCCCC00CCCCCC009999990066CCCCFF99FFFFFF99FFFFFF66FF
      FFFF66FFFFFF66FFFFFFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF00
      00FFFF0000FF121212FF000000000000000066CCCCFF99FFFFFF99FFFFFF66FF
      FFFF66FFFFFF66FFFFFFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF00
      00FFFF0000FF000000FF0000000000000000FCAE4800FCAE4800FEFEFE00FEFE
      FE00FEFEFE00FEFEFE00F5A64800FCAE48000000000099CCFF000033FF003399
      FF003366FF000033FF009999FF00000000009999990000000000000000000000
      0000000000000000000099999900000000000000000099999900CCCCCC00CCCC
      CC00CCCCCC00CCCCCC00CCCCCC00999999000000000066CCCCFF99FFFFFF99FF
      FFFF66FFFFFF66FFFFFFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FF1212
      12FF000000000000000000000000000000000000000066CCCCFF99FFFFFF99FF
      FFFF66FFFFFF66FFFFFF0099CCFFFF0000FFFF0000FFFF0000FFFF0000FFFF00
      00FF000000FF000000000000000000000000F2A04100FEFEFE00FEFEFE00FEFE
      FE00FEFEFE00FEFEFE00FEFEFE00FCAE4800F4F3FF0099CCFF003399FF0033CC
      FF0033CCFF003399FF0099CCFF00000000009999990000000000000000000000
      0000000000000000000099999900000000000000000099999900CCCCCC00CCCC
      CC00CCCCCC00CCCCCC00CCCCCC00999999000000000066CCCCFF99FFFFFF99FF
      FFFF99FFFFFF66FFFFFF66FFFFFF0099CCFF0000000000000000000000000000
      0000000000000000000000000000000000000000000066CCCCFF99FFFFFF99FF
      FFFF99FFFFFF66FFFFFF66FFFFFF0099CCFF0000000000000000000000000000
      000000000000000000000000000000000000F1A94700FEFEFE00FEFEFE00FEFE
      FE00FEFEFE00FEFEFE00FEFEFE00FCC1580066CCFF003366FF000066FF00CCFF
      FF0099FFFF003366FF003366FF00000000009999990000000000000000009999
      9900999999009999990099999900000000000000000099999900CCCCCC00CCCC
      CC0099999900999999009999990099999900000000000000000066CCCCFF99FF
      FFFF99FFFFFF99FFFFFF66FFFFFF66FFFFFF0099CCFF00000000000000000000
      000000000000000000000000000000000000000000000000000066CCCCFF99FF
      FFFF99FFFFFF99FFFFFF66FFFFFF66FFFFFF0099CCFF00000000000000000000
      000000000000000000000000000000000000FCC15800FEFEFE00FEFEFE00FEFE
      FE00FEFEFE00FEFEFE00FEFEFE00FCC15800F3F2FF003399CC000033FF000033
      FF003399FF000033FF00CCCCFF00000000009999990000000000000000009999
      9900E5E5E5009999990000000000000000000000000099999900CCCCCC00CCCC
      CC0099999900CCCCCC009999990000000000000000000000000066CCCCFF99FF
      FFFF99FFFFFF99FFFFFF66FFFFFF66FFFFFF66FFFFFF0099CCFF000000000000
      000000000000000000000000000000000000000000000000000066CCCCFF99FF
      FFFF99FFFFFF99FFFFFF66FFFFFF66FFFFFF66FFFFFF0099CCFF000000000000
      000000000000000000000000000000000000FCC15800FEFEFE00FEFEFE00FEFE
      FE00FEFEFE00FEFEFE00FEFEFE00FBD86C00000000000033FF0099CCFF000033
      FF006699FF009999FF0099CCFF00000000009999990000000000000000009999
      9900999999000000000000000000000000000000000099999900CCCCCC00CCCC
      CC009999990099999900000000000000000000000000000000000000000066CC
      CCFF99FFFFFF99FFFFFF99FFFFFF66FFFFFF66FFFFFF66FFFFFF0099CCFF0000
      00000000000000000000000000000000000000000000000000000000000066CC
      CCFF99FFFFFF99FFFFFF99FFFFFF66FFFFFF66FFFFFF66FFFFFF0099CCFF0000
      000000000000000000000000000000000000FBD86C00FBD86C00FEFEFE00FEFE
      FE00FEFEFE00FEFEFE00FBD86C00FBD86C0000000000000000000000000099CC
      FF0099CCFF000000000000000000000000009999990099999900999999009999
      9900000000000000000000000000000000000000000099999900999999009999
      99009999990000000000000000000000000000000000000000000000000066CC
      CCFF66CCCCFF66CCCCFF66CCCCFF66CCCCFF66CCCCFF66CCCCFF66CCCCFF66CC
      CCFF0000000000000000000000000000000000000000000000000000000066CC
      CCFF66CCCCFF66CCCCFF66CCCCFF66CCCCFF66CCCCFF66CCCCFF66CCCCFF66CC
      CCFF0000000000000000000000000000000000000000FBD86C00FBD86C00FBD8
      6C00FBD86C00FBD86C00FBD86C00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000009933
      0000993300009933000099330000993300009933000099330000993300009933
      0000993300009933000099330000993300000000000000000000000000009999
      9900999999009999990099999900999999009999990099999900999999009999
      9900999999009999990099999900999999000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000999999009999
      9900999999009999990099999900999999009999990099999900999999009999
      990099999900999999009999990000000000000000000000000099330000CC66
      0000CC66000099330000E5E5E500CC66000099330000E5E5E500E5E5E500E5E5
      E50099330000CC660000CC66000099330000000000000000000099999900CCCC
      CC00CCCCCC0099999900E5E5E500CCCCCC0099999900E5E5E500E5E5E500E5E5
      E50099999900CCCCCC00CCCCCC00999999000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000993300000000
      0000000000000000000000000000000000000000000099999900CCCCCC00CCCC
      CC0099999900E5E5E500CCCCCC0099999900E5E5E500E5E5E500E5E5E5009999
      9900CCCCCC00CCCCCC009999990000000000000000009933000099330000CC66
      0000CC66000099330000E5E5E500CC66000099330000E5E5E500E5E5E500E5E5
      E50099330000CC660000CC66000099330000000000009999990099999900CCCC
      CC00CCCCCC0099999900E5E5E500CCCCCC0099999900E5E5E500E5E5E500E5E5
      E50099999900CCCCCC00CCCCCC00999999000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000993300009933
      0000000000000000000000000000000000000000000099999900CCCCCC00CCCC
      CC0099999900E5E5E500CCCCCC0099999900E5E5E500E5E5E500E5E5E5009999
      9900CCCCCC00CCCCCC00999999000000000099330000CC66000099330000CC66
      0000CC66000099330000E5E5E500CC66000099330000E5E5E500E5E5E500E5E5
      E50099330000CC660000CC6600009933000099999900CCCCCC0099999900CCCC
      CC00CCCCCC0099999900E5E5E500CCCCCC0099999900E5E5E500E5E5E500E5E5
      E50099999900CCCCCC00CCCCCC00999999000000000000000000000000009933
      0000993300009933000099330000993300009933000099330000993300009933
      0000993300000000000000000000000000000000000099999900CCCCCC00CCCC
      CC0099999900E5E5E500CCCCCC0099999900E5E5E500E5E5E500E5E5E5009999
      9900CCCCCC00CCCCCC00999999000000000099330000CC66000099330000CC66
      0000CC66000099330000E5E5E500E5E5E500E5E5E500E5E5E500E5E5E500E5E5
      E50099330000CC660000CC6600009933000099999900CCCCCC0099999900CCCC
      CC00CCCCCC0099999900E5E5E500E5E5E500E5E5E500E5E5E500E5E5E500E5E5
      E50099999900CCCCCC00CCCCCC00999999000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000993300009933
      0000000000000000000000000000000000000000000099999900CCCCCC00CCCC
      CC0099999900E5E5E500E5E5E500E5E5E500E5E5E500E5E5E500E5E5E5009999
      9900CCCCCC00CCCCCC00999999000000000099330000CC66000099330000CC66
      0000CC660000CC66000099330000993300009933000099330000993300009933
      0000CC660000CC660000CC6600009933000099999900CCCCCC0099999900CCCC
      CC00CCCCCC00CCCCCC0099999900999999009999990099999900999999009999
      9900CCCCCC00CCCCCC00CCCCCC00999999000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000993300000000
      0000000000000000000000000000000000000000000099999900CCCCCC00CCCC
      CC00CCCCCC00999999009999990099999900999999009999990099999900CCCC
      CC00CCCCCC00CCCCCC00999999000000000099330000CC66000099330000CC66
      0000CC660000CC660000CC660000CC660000CC660000CC660000CC660000CC66
      0000CC660000CC660000CC6600009933000099999900CCCCCC0099999900CCCC
      CC00CCCCCC00CCCCCC00CCCCCC00CCCCCC00CCCCCC00CCCCCC00CCCCCC00CCCC
      CC00CCCCCC00CCCCCC00CCCCCC00999999000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000099999900CCCCCC00CCCC
      CC00CCCCCC00CCCCCC00CCCCCC00CCCCCC00CCCCCC00CCCCCC00CCCCCC00CCCC
      CC00CCCCCC00CCCCCC00999999000000000099330000CC66000099330000CC66
      0000CC6600009933000099330000993300009933000099330000993300009933
      000099330000CC660000CC6600009933000099999900CCCCCC0099999900CCCC
      CC00CCCCCC009999990099999900999999009999990099999900999999009999
      990099999900CCCCCC00CCCCCC0099999900CC996600CC996600CC996600CC99
      6600CC996600CC996600CC99660000000000000000003399CC00006699000066
      9900006699000066990000669900006699000000000099999900CCCCCC00CCCC
      CC00999999009999990099999900999999009999990099999900999999009999
      9900CCCCCC00CCCCCC00999999000000000099330000CC66000099330000CC66
      000099330000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF0099330000CC6600009933000099999900CCCCCC0099999900CCCC
      CC0099999900FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF0099999900CCCCCC0099999900CC996600FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00CC99660000000000000000003399CC0099FFFF0099FF
      FF0099FFFF0099FFFF0099FFFF00006699000000000099999900CCCCCC009999
      9900FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF0099999900CCCCCC00999999000000000099330000CC66000099330000CC66
      000099330000FFFFFF0099330000993300009933000099330000993300009933
      0000FFFFFF0099330000CC6600009933000099999900CCCCCC0099999900CCCC
      CC0099999900FFFFFF0099999900999999009999990099999900999999009999
      9900FFFFFF0099999900CCCCCC0099999900CC996600FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00CC99660000000000000000003399CC0099FFFF0099FF
      FF0099FFFF0099FFFF0099FFFF00006699000000000099999900CCCCCC009999
      9900FFFFFF00999999009999990099999900999999009999990099999900FFFF
      FF0099999900CCCCCC00999999000000000099330000CC66000099330000CC66
      000099330000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF0099330000CC6600009933000099999900CCCCCC0099999900CCCC
      CC0099999900FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF0099999900CCCCCC0099999900CC996600FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00CC99660000000000000000003399CC0099FFFF0099FF
      FF0099FFFF0099FFFF0099FFFF00006699000000000099999900CCCCCC009999
      9900FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF0099999900CCCCCC00999999000000000099330000CC66000099330000E5E5
      E50099330000FFFFFF0099330000993300009933000099330000993300009933
      0000FFFFFF0099330000993300009933000099999900CCCCCC0099999900E5E5
      E50099999900FFFFFF0099999900999999009999990099999900999999009999
      9900FFFFFF00999999009999990099999900CC996600FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00CC99660000000000000000003399CC0099FFFF0099FF
      FF0099FFFF0099FFFF0099FFFF00006699000000000099999900E5E5E5009999
      9900FFFFFF00999999009999990099999900999999009999990099999900FFFF
      FF009999990099999900999999000000000099330000CC66000099330000CC66
      000099330000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF0099330000CC6600009933000099999900CCCCCC0099999900CCCC
      CC0099999900FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF0099999900CCCCCC0099999900CC996600FFFFFF00FFFFFF00CC99
      6600CC996600CC996600CC99660000000000000000003399CC0099FFFF0099FF
      FF003399CC003399CC003399CC003399CC000000000099999900CCCCCC009999
      9900FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF0099999900CCCCCC00999999000000000099330000E5E5E500993300009933
      0000993300009933000099330000993300009933000099330000993300009933
      00009933000099330000993300009933000099999900E5E5E500999999009999
      9900999999009999990099999900999999009999990099999900999999009999
      990099999900999999009999990099999900CC996600FFFFFF00FFFFFF00CC99
      6600E5E5E500CC9966000000000000000000000000003399CC0099FFFF0099FF
      FF003399CC00CCFFFF0000669900000000000000000099999900999999009999
      9900999999009999990099999900999999009999990099999900999999009999
      99009999990099999900999999000000000099330000CC66000099330000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF009933
      0000CC66000099330000000000000000000099999900CCCCCC0099999900FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF009999
      9900CCCCCC00999999000000000000000000CC996600FFFFFF00FFFFFF00CC99
      6600CC996600000000000000000000000000000000003399CC0099FFFF0099FF
      FF003399CC000066990000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000009933000099330000993300009933
      0000993300009933000099330000993300009933000099330000993300009933
      0000993300009933000000000000000000009999990099999900999999009999
      9900999999009999990099999900999999009999990099999900999999009999
      990099999900999999000000000000000000CC996600CC996600CC996600CC99
      660000000000000000000000000000000000000000003399CC003399CC003399
      CC003399CC000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000080000000800000008000
      0000800000008000000080000000800000008000000080000000800000008000
      0000800000008000000080000000000000000000000000000000999999009999
      9900999999009999990099999900999999009999990099999900999999009999
      9900999999000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000993300009933
      0000993300009933000099330000993300009933000099330000993300009933
      0000993300009933000099330000000000000000000080000000800000008000
      0000800000008000000080000000800000008000000080000000800000008000
      00008000000080000000800000000000000000000000B2B2B200CCCCCC00CCCC
      CC00CCCCCC00CCCCCC00CCCCCC00CCCCCC00CCCCCC00CCCCCC00CCCCCC00B2B2
      B200B2B2B2009999990000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000099330000CC660000CC66
      000099330000E5E5E500CC66000099330000E5E5E500E5E5E500E5E5E5009933
      0000CC660000CC66000099330000000000000000000080000000FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00800000008000000000000000B2B2B200B2B2B200B2B2B200B2B2
      B200B2B2B200B2B2B200B2B2B200B2B2B200B2B2B200B2B2B200B2B2B200B2B2
      B20099999900B2B2B20099999900000000000000000000000000000000000000
      0000000000000000000000000000000000009933000000000000000000000000
      0000000000000000000000000000000000000000000099330000CC660000CC66
      000099330000E5E5E500CC66000099330000E5E5E500E5E5E500E5E5E5009933
      0000CC660000CC66000099330000000000000000000080000000FFFFFF00FFFF
      FF008000000080000000FFFFFF008000000080000000C0C0C000FFFFFF00FFFF
      FF00FFFFFF00800000008000000000000000B2B2B20000000000CCCCCC00CCCC
      CC00CCCCCC00CCCCCC00CCCCCC00CCCCCC00CCCCCC00CCCCCC00CCCCCC00CCCC
      CC00B2B2B2009999990099999900000000000000000000000000000000000000
      000000000000000000000000000099330000CC66000099330000000000000000
      0000000000000000000000000000000000000000000099330000CC660000CC66
      000099330000E5E5E500CC66000099330000E5E5E500E5E5E500E5E5E5009933
      0000CC660000CC66000099330000000000000000000080000000FFFFFF00FFFF
      FF008000000080000000C0C0C000800000008000000080000000FFFFFF00FFFF
      FF00FFFFFF00800000008000000000000000B2B2B20000000000CCCCCC00CCCC
      CC00CCCCCC00CCCCCC00B2B2B20099999900CCCCCC00B2B2B20099999900CCCC
      CC00B2B2B200B2B2B20099999900000000000000000000000000000000000000
      0000000000000000000099330000CC660000CC660000CC660000993300000000
      0000000000000000000000000000000000000000000099330000CC660000CC66
      000099330000E5E5E500E5E5E500E5E5E500E5E5E500E5E5E500E5E5E5009933
      0000CC660000CC66000099330000000000000000000080000000FFFFFF00FFFF
      FF00800000008000000080000000800000008000000080000000C0C0C000FFFF
      FF00FFFFFF00800000008000000000000000B2B2B20000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000B2B2B200B2B2B200B2B2B200999999000000000000000000000000000000
      00000000000099330000CC660000CC660000CC660000CC660000CC6600009933
      0000000000000000000000000000000000000000000099330000CC660000CC66
      0000CC660000993300009933000099330000993300009933000099330000CC66
      0000CC660000CC66000099330000000000000000000080000000FFFFFF00FFFF
      FF0080000000800000008000000080000000800000008000000080000000FFFF
      FF00FFFFFF00800000008000000000000000B2B2B20000000000CCCCCC00CCCC
      CC00CCCCCC00CCCCCC00CCCCCC00CCCCCC00CCCCCC00CCCCCC00CCCCCC00CCCC
      CC00B2B2B200B2B2B200B2B2B200999999000000000000000000000000000000
      000099330000CC660000CC660000CC660000CC660000CC660000CC660000CC66
      0000993300000000000000000000000000000000000099330000CC660000CC66
      0000CC660000CC660000CC660000CC660000CC660000CC660000CC660000CC66
      0000CC660000CC66000099330000000000000000000080000000FFFFFF00FFFF
      FF0080000000800000008000000080000000800000008000000080000000C0C0
      C000FFFFFF0080000000800000000000000000000000B2B2B200B2B2B200B2B2
      B200B2B2B200B2B2B200B2B2B200B2B2B200B2B2B200B2B2B200B2B2B200CCCC
      CC00CCCCCC00B2B2B200B2B2B200999999000000000000000000000000009933
      0000CC660000CC660000CC660000CC660000CC660000CC660000CC660000CC66
      0000CC6600009933000000000000000000000000000099330000CC660000CC66
      0000993300009933000099330000993300009933000099330000993300009933
      0000CC660000CC66000099330000000000000000000080000000FFFFFF00FFFF
      FF008000000080000000C0C0C000800000008000000080000000C0C0C0008000
      0000FFFFFF008000000080000000000000000000000000000000B2B2B2000000
      000000000000000000000000000000000000000000000000000000000000B2B2
      B200CCCCCC00CCCCCC00B2B2B20099999900000000000000000099330000CC66
      0000CC660000CC660000CC660000CC660000CC660000CC660000CC660000CC66
      0000CC660000CC66000099330000000000000000000099330000CC6600009933
      0000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF0099330000CC66000099330000000000000000000080000000FFFFFF00FFFF
      FF008000000080000000FFFFFF00800000008000000080000000FFFFFF008000
      0000C0C0C000800000008000000000000000000000000000000000000000B2B2
      B20000000000CCCCCC00CCCCCC00CCCCCC00CCCCCC00CCCCCC0000000000B2B2
      B200B2B2B200B2B2B20099999900000000000000000000000000993300009933
      00009933000099330000CC660000CC660000CC660000CC660000CC6600009933
      0000993300009933000099330000000000000000000099330000CC6600009933
      0000FFFFFF00993300009933000099330000993300009933000099330000FFFF
      FF0099330000CC66000099330000000000000000000080000000FFFFFF008000
      0000800000008000000080000000800000008000000080000000800000008000
      000080000000800000008000000000000000000000000000000000000000B2B2
      B200000000000000000000000000000000000000000000000000000000000000
      0000B2B2B2000000000000000000000000000000000000000000000000000000
      00000000000099330000CC660000CC660000CC660000CC660000CC6600009933
      0000000000000000000000000000000000000000000099330000CC6600009933
      0000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF0099330000CC66000099330000000000000000000080000000FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF008000000080000000000000000000000000000000000000000000
      0000B2B2B20000000000CCCCCC00CCCCCC00CCCCCC00CCCCCC00CCCCCC000000
      0000B2B2B2000000000000000000000000000000000000000000000000000000
      0000000000009933000099330000993300009933000099330000993300009933
      0000000000000000000000000000000000000000000099330000E5E5E5009933
      0000FFFFFF00993300009933000099330000993300009933000099330000FFFF
      FF00993300009933000099330000000000000000000080000000FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF008000000080000000000000000000000000000000000000000000
      0000B2B2B2000000000000000000000000000000000000000000000000000000
      000000000000B2B2B20000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000099330000CC6600009933
      0000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF0099330000CC66000099330000000000000000000080000000800000008000
      0000800000008000000080000000800000008000000080000000800000008000
      0000800000008000000080000000000000000000000000000000000000000000
      000000000000B2B2B200B2B2B200B2B2B200B2B2B200B2B2B200B2B2B200B2B2
      B200B2B2B200B2B2B20000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000099330000993300009933
      0000993300009933000099330000993300009933000099330000993300009933
      0000993300009933000099330000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000003399CC000066
      9900006699000066990000669900006699000066990000669900006699000066
      9900006699000066990000000000000000000000000000000000999999009999
      9900999999009999990099999900999999009999990099999900999999009999
      9900999999009999990000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000003399CC0066CCFF003399
      CC0099FFFF0066CCFF0066CCFF0066CCFF0066CCFF0066CCFF0066CCFF0066CC
      FF003399CC0099FFFF0000669900000000000000000099999900CCCCCC009999
      9900E5E5E500CCCCCC00CCCCCC00CCCCCC00CCCCCC00CCCCCC00CCCCCC00CCCC
      CC0099999900E5E5E50099999900000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000003399CC0066CCFF003399
      CC0099FFFF0099FFFF0099FFFF0099FFFF0099FFFF0099FFFF0099FFFF0099FF
      FF0066CCFF0099FFFF0000669900000000000000000099999900CCCCCC009999
      9900E5E5E500E5E5E500E5E5E500E5E5E500E5E5E500E5E5E500E5E5E500E5E5
      E500CCCCCC00E5E5E500999999000000000000000000000000003399CC000066
      9900006699000066990000669900006699000066990000669900006699000066
      9900006699000066990000000000000000000000000000000000999999009999
      9900999999009999990099999900999999009999990099999900999999009999
      990099999900999999000000000000000000000000003399CC0066CCFF003399
      CC0099FFFF0099FFFF00006600003399660099FFFF0099FFFF0099FFFF0099FF
      FF0066CCFF0099FFFF0000669900000000000000000099999900CCCCCC009999
      9900E5E5E500E5E5E50099999900CCCCCC00E5E5E500E5E5E500E5E5E500E5E5
      E500CCCCCC00E5E5E5009999990000000000000000003399CC0066CCFF003399
      CC0099FFFF0066CCFF0066CCFF0066CCFF0066CCFF0066CCFF0066CCFF0066CC
      FF003399CC0099FFFF0000669900000000000000000099999900CCCCCC009999
      9900E5E5E500CCCCCC00CCCCCC00CCCCCC00CCCCCC00CCCCCC00CCCCCC00CCCC
      CC0099999900E5E5E5009999990000000000000000003399CC0066CCFF003399
      CC0099FFFF0099FFFF0033999900339933003399330099FFFF0099FFFF0099FF
      FF0066CCFF0099FFFF0000669900000000000000000099999900CCCCCC009999
      9900E5E5E500E5E5E500CCCCCC009999990099999900E5E5E500E5E5E500E5E5
      E500CCCCCC00E5E5E5009999990000000000000000003399CC0066CCFF003399
      CC0099FFFF0099FFFF0099FFFF0099FFFF0099FFFF0099FFFF0099FFFF0099FF
      FF0066CCFF0099FFFF0000669900000000000000000099999900CCCCCC009999
      9900E5E5E500E5E5E500E5E5E500E5E5E500E5E5E500E5E5E500E5E5E500E5E5
      E500CCCCCC00E5E5E5009999990000000000000000003399CC0066CCFF003399
      CC0099FFFF0099FFFF0099FFCC003399330033CC66003399660099FFFF0099FF
      FF0066CCFF0099FFFF0000669900000000000000000099999900CCCCCC009999
      9900E5E5E500E5E5E500E5E5E50099999900E5E5E500CCCCCC00E5E5E500E5E5
      E500CCCCCC00E5E5E5009999990000000000000000003399CC0066CCFF003399
      CC0099FFFF0099FFFF0099FFFF0099FFFF0099FFFF0099FFFF0099FFFF0099FF
      FF0066CCFF0099FFFF0000669900000000000000000099999900CCCCCC009999
      9900E5E5E500E5E5E500E5E5E500E5E5E500E5E5E500E5E5E500E5E5E500E5E5
      E500CCCCCC00E5E5E5009999990000000000000000003399CC0066CCFF003399
      CC0099FFFF0099FFFF0099FFFF000099330066FF99003399330099FFCC0099FF
      FF0066CCFF0099FFFF0000669900000000000000000099999900CCCCCC009999
      9900E5E5E500E5E5E500E5E5E50099999900E5E5E50099999900E5E5E500E5E5
      E500CCCCCC00E5E5E5009999990000000000000000003399CC0066CCFF003399
      CC0099FFFF0099FFFF0099FFFF0099FFFF0099FFFF0099FFFF0099FFFF0099FF
      FF0066CCFF0099FFFF0000669900000000000000000099999900CCCCCC009999
      9900E5E5E500E5E5E500E5E5E500E5E5E500E5E5E500E5E5E500E5E5E500E5E5
      E500CCCCCC00E5E5E5009999990000000000000000003399CC0099FFFF0099FF
      FF003399CC003399CC003399CC000066330033CC660033CC6600339966003399
      CC003399CC003399CC003399CC00000000000000000099999900E5E5E500E5E5
      E50099999900999999009999990099999900E5E5E500E5E5E500CCCCCC009999
      990099999900999999009999990000000000000000003399CC0066CCFF003399
      CC0099FFFF0099FFFF0099FFFF0099FFFF0099FFFF0099FFFF0099FFFF0099FF
      FF0066CCFF0099FFFF0000669900000000000000000099999900CCCCCC009999
      9900E5E5E500E5E5E500E5E5E500E5E5E500E5E5E500E5E5E500E5E5E500E5E5
      E500CCCCCC00E5E5E5009999990000000000000000003399CC0099FFFF0099FF
      FF0099FFFF0099FFFF0099FFFF000080000033CC660033CC66003399330099FF
      FF00006699000000000000000000000000000000000099999900E5E5E500E5E5
      E500E5E5E500E5E5E500E5E5E50099999900E5E5E500E5E5E50099999900E5E5
      E50099999900000000000000000000000000000000003399CC0066CCFF003399
      CC00CCFFFF00CCFFFF00CCFFFF00CCFFFF00CCFFFF00CCFFFF00CCFFFF00CCFF
      FF0099FFFF00CCFFFF0000669900000000000000000099999900CCCCCC009999
      9900E5E5E500E5E5E500E5E5E500E5E5E500E5E5E500E5E5E500E5E5E500E5E5
      E500E5E5E500E5E5E500999999000000000000000000000000003399CC0099FF
      FF0099FFFF0099FFFF0099FFFF000080000033CC660033CC6600339933003399
      CC0000000000000000000000000000000000000000000000000099999900E5E5
      E500E5E5E500E5E5E500E5E5E50099999900E5E5E500E5E5E500999999009999
      990000000000000000000000000000000000000000003399CC0099FFFF0099FF
      FF003399CC003399CC003399CC003399CC003399CC003399CC003399CC003399
      CC003399CC003399CC003399CC00000000000000000099999900E5E5E500E5E5
      E500999999009999990099999900999999009999990099999900999999009999
      9900999999009999990099999900000000000000000000000000000000003399
      CC003399CC003399CC003399CC000099330033CC660033CC6600339933000000
      0000000000000000000000000000000000000000000000000000000000009999
      990099999900999999009999990099999900E5E5E500E5E5E500999999000000
      000000000000000000000000000000000000000000003399CC00CCFFFF0099FF
      FF0099FFFF0099FFFF0099FFFF00CCFFFF00CCFFFF00CCFFFF00CCFFFF00CCFF
      FF00006699000000000000000000000000000000000099999900E5E5E500E5E5
      E500E5E5E500E5E5E500E5E5E500E5E5E500E5E5E500E5E5E500E5E5E500E5E5
      E500999999000000000000000000000000000000000000000000000000000000
      00000066000000800000008000003399330033CC660033CC6600336633000080
      0000008000000000000000000000000000000000000000000000000000000000
      000099999900999999009999990099999900E5E5E500E5E5E500999999009999
      99009999990000000000000000000000000000000000000000003399CC00CCFF
      FF00CCFFFF00CCFFFF00CCFFFF003399CC003399CC003399CC003399CC003399
      CC0000000000000000000000000000000000000000000000000099999900E5E5
      E500E5E5E500E5E5E500E5E5E500999999009999990099999900999999009999
      9900000000000000000000000000000000000000000000000000000000000000
      0000669966000080000033CC330033CC330033CC660033CC6600339933000066
      0000669966000000000000000000000000000000000000000000000000000000
      0000CCCCCC0099999900E5E5E500E5E5E500E5E5E500E5E5E500999999009999
      9900CCCCCC000000000000000000000000000000000000000000000000003399
      CC003399CC003399CC003399CC00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000009999
      9900999999009999990099999900000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000336633000099330033CC330033CC33000099330033663300C0C0
      C000000000000000000000000000000000000000000000000000000000000000
      0000000000009999990099999900E5E5E500E5E5E5009999990099999900C0C0
      C000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000099CC990000800000009900000080000066999900000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000E5E5E500999999009999990099999900CCCCCC00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000006699660033993300CCCCCC0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000CCCCCC0099999900CCCCCC0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000003399CC0066CCFF003399CC0099FF
      FF0099FFFF0099FFFF0099FFFF0099FFFF000000000000000000000000000000
      00000000000000000000000000000000000099999900CCCCCC0099999900E5E5
      E500E5E5E500E5E5E500E5E5E500E5E5E5000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000003399CC0066CCFF003399CC00CCFF
      FF00CCFFFF00CCFFFF00CCFFFF00CCFFFF000000000000000000000000000000
      00000000000000000000000000000000000099999900CCCCCC0099999900E5E5
      E500E5E5E500E5E5E500E5E5E500E5E5E500000000003399CC00006699000066
      9900006699000066990000669900006699000066990000669900006699000066
      9900006699000000000000000000000000000000000099999900999999009999
      9900999999009999990099999900999999009999990099999900999999009999
      9900999999000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000003399CC0099FFFF0099FFFF003399
      CC003399CC003399CC003399CC003399CC000000000000000000000000000000
      00000000000000000000000000000000000099999900E5E5E500E5E5E5009999
      9900999999009999990099999900999999003399CC0066CCFF003399CC0099FF
      FF0066CCFF0066CCFF0066CCFF0066CCFF0066CCFF0066CCFF0066CCFF003399
      CC0099FFFF0000669900000000000000000099999900CCCCCC0099999900E5E5
      E500CCCCCC00CCCCCC00CCCCCC00CCCCCC00CCCCCC00CCCCCC00CCCCCC009999
      9900E5E5E5009999990000000000000000000000000000000000000000000000
      0000808080000000000080808000000000003399CC00CCFFFF0099FFFF0099FF
      FF0099FFFF00CCFFFF00CCFFFF00CCFFFF000000000000000000000000000000
      00008080800000000000808080000000000099999900E5E5E500E5E5E500E5E5
      E500E5E5E500E5E5E500E5E5E500E5E5E5003399CC0066CCFF003399CC0099FF
      FF0099FFFF0099FFFF0099FFFF0099FFFF0099FFFF0099FFFF0099FFFF0066CC
      FF0099FFFF0000669900000000000000000099999900CCCCCC0099999900E5E5
      E500E5E5E500E5E5E500E5E5E500E5E5E500E5E5E500E5E5E500E5E5E500CCCC
      CC00E5E5E5009999990000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000003399CC00CCFFFF00CCFF
      FF00CCFFFF003399CC003399CC003399CC000000000000000000000000000000
      0000000000000000000000000000000000000000000099999900E5E5E500E5E5
      E500E5E5E5009999990099999900999999003399CC0066CCFF003399CC0099FF
      FF0099FFFF0099FFFF0099FFFF0099FFFF0099FFFF0099FFFF0099FFFF0066CC
      FF0099FFFF0000669900000000000000000099999900CCCCCC0099999900E5E5
      E500E5E5E500E5E5E500E5E5E500E5E5E500E5E5E500E5E5E500E5E5E500CCCC
      CC00E5E5E5009999990000000000000000000000000000000000000000000000
      00008080800000000000000000000000000000000000000000003399CC003399
      CC003399CC000000000000000000000000000000000000000000000000000000
      0000808080000000000000000000000000000000000000000000999999009999
      9900999999000000000000000000000000003399CC0066CCFF003399CC0099FF
      FF0099FFFF0099FFFF0099FFFF0099FFFF0099FFFF0099FFFF0099FFFF0066CC
      FF0099FFFF0000669900000000000000000099999900CCCCCC0099999900E5E5
      E500E5E5E500E5E5E500E5E5E500E5E5E500E5E5E500E5E5E500E5E5E500CCCC
      CC00E5E5E5009999990000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000003399CC0066CCFF003399CC0099FF
      FF0099FFFF0099FFFF0099FFFF0099FFFF0099FFFF0099FFFF0099FFFF0099CC
      FF006699FF006699FF00CCCCFF000000000099999900CCCCCC0099999900E5E5
      E500E5E5E500E5E5E500E5E5E500E5E5E500E5E5E500E5E5E500E5E5E500E5E5
      E500CCCCCC00CCCCCC000000000000000000000000003399CC00006699000066
      9900006699000066990000669900006699000066990000669900000000000000
      0000000000000000000000000000000000000000000099999900999999009999
      9900999999009999990099999900999999009999990099999900000000000000
      0000000000000000000000000000000000003399CC0066CCFF003399CC0099FF
      FF0099FFFF0099FFFF0099FFFF0099FFFF0099FFFF0099FFFF0099CCFF000033
      FF003399FF003366FF000033FF009999FF0099999900CCCCCC0099999900E5E5
      E500E5E5E500E5E5E500E5E5E500E5E5E500E5E5E500E5E5E500E5E5E5009999
      9900CCCCCC00CCCCCC0099999900CCCCCC003399CC0066CCFF003399CC0099FF
      FF0066CCFF0066CCFF0066CCFF0066CCFF003399CC0099FFFF00006699000000
      00000000000000000000000000000000000099999900CCCCCC0099999900E5E5
      E500CCCCCC00CCCCCC00CCCCCC00CCCCCC0099999900E5E5E500999999000000
      0000000000000000000000000000000000003399CC0099FFFF0099FFFF003399
      CC003399CC003399CC003399CC003399CC003399CC003399CC0099CCFF003399
      FF0033CCFF0033CCFF003399FF0099CCFF0099999900E5E5E500E5E5E5009999
      9900999999009999990099999900999999009999990099999900E5E5E500CCCC
      CC009999990099999900CCCCCC00000000003399CC0066CCFF003399CC0099FF
      FF0099FFFF0099FFFF0099FFFF0099FFFF0066CCFF0099FFFF00006699000000
      00000000000000000000000000000000000099999900CCCCCC0099999900E5E5
      E500E5E5E500E5E5E500E5E5E500E5E5E500CCCCCC00E5E5E500999999000000
      0000000000000000000000000000000000003399CC0099FFFF0099FFFF0099FF
      FF0099FFFF0099FFFF0099FFFF0099FFFF0099FFFF0066CCFF003366FF000066
      FF00CCFFFF0099FFFF003366FF003366FF0099999900E5E5E500E5E5E500E5E5
      E500E5E5E500E5E5E500E5E5E500E5E5E500E5E5E500CCCCCC00CCCCCC00CCCC
      CC00E5E5E500E5E5E500CCCCCC00CCCCCC003399CC0066CCFF003399CC0099FF
      FF0099FFFF0099FFFF0099FFFF0099FFFF0066CCFF0099FFFF00006699000000
      00000000000000000000000000000000000099999900CCCCCC0099999900E5E5
      E500E5E5E500E5E5E500E5E5E500E5E5E500CCCCCC00E5E5E500999999000000
      000000000000000000000000000000000000000000003399CC0099FFFF0099FF
      FF0099FFFF0099FFFF003399CC003399CC003399CC003399CC003399CC000033
      FF000033FF003399FF000033FF00CCCCFF000000000099999900E5E5E500E5E5
      E500E5E5E500E5E5E50099999900999999009999990099999900999999009999
      990099999900CCCCCC0099999900000000003399CC0066CCFF003399CC00CCFF
      FF00CCFFFF00CCFFFF00CCFFFF00CCFFFF0099FFFF0000008000000080000000
      80000000800000008000000000000000000099999900CCCCCC0099999900E5E5
      E500E5E5E500E5E5E500E5E5E500E5E5E500E5E5E50099999900999999009999
      99009999990099999900000000000000000000000000000000003399CC003399
      CC003399CC003399CC00000000000000000000000000000000000033FF0099CC
      FF000033FF006699FF009999FF0099CCFF000000000000000000999999009999
      9900999999009999990000000000000000000000000000000000999999000000
      000099999900CCCCCC00CCCCCC00000000003399CC0099FFFF0099FFFF003399
      CC003399CC003399CC003399CC003399CC003399CC003399CC00000080000000
      80000000800000008000000000000000000099999900E5E5E500E5E5E5009999
      9900999999009999990099999900999999009999990099999900999999009999
      9900999999009999990000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000099CCFF0099CCFF0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000003399CC00CCFFFF0099FFFF0099FF
      FF0099FFFF00CCFFFF00CCFFFF00CCFFFF000066990000000000000000000000
      80000000800000008000000080000000000099999900E5E5E500E5E5E500E5E5
      E500E5E5E500E5E5E500E5E5E500E5E5E5009999990000000000000000009999
      9900999999009999990099999900000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000003399CC00CCFFFF00CCFF
      FF00CCFFFF003399CC003399CC003399CC000000000000000000000000000000
      0000000080000000000000008000000080000000000099999900E5E5E500E5E5
      E500E5E5E5009999990099999900999999000000000000000000000000000000
      0000999999000000000099999900999999000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000003399CC003399
      CC003399CC000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000080000000000000000000999999009999
      9900999999000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000999999000000000000000000000000000000
      00000000000066CCCC0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000009999990000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000CC99660099330000993300009933000099330000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000009999990066666600666666006666660066666600000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000066CCCC000099CC00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000009999990099999900000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000CC996600FFFFFF00FFCC9900FFCC9900CC996600CC996600993300000000
      0000000000000000000000000000000000000000000000000000000000000000
      000099999900FFFFFF00CCCCCC00CCCCCC009999990099999900666666000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000066CCCC000099CC000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000099999900999999000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000CC9966009933000099330000993300009933000099330000993300000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000999999006666660066666600666666006666660066666600666666000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000066CCCC0099FFFF000099CC0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000099999900E5E5E5009999990000000000000000000000
      000000000000000000000000000000000000000000000000000000000000CC99
      6600FFFFFF00FFCC9900FFCC9900FFCC9900FFCC9900FFCC9900CC9966009933
      0000000000000000000000000000000000000000000000000000000000009999
      9900FFFFFF00CCCCCC00CCCCCC00CCCCCC00CCCCCC00CCCCCC00999999006666
      6600000000000000000000000000000000000000000000000000000000000000
      000066CCCC000099CC000099CC000099CC0066FFFF000099CC00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000099999900999999009999990099999900CCCCCC0099999900000000000000
      0000000000000000000000000000000000000000000000000000CC996600FFFF
      FF00CC996600CC996600CC996600CC996600CC996600FFCC9900CC996600CC99
      660099330000000000000000000000000000000000000000000099999900FFFF
      FF009999990099999900999999009999990099999900CCCCCC00999999009999
      9900666666000000000000000000000000000000000000000000000000000000
      000066CCCC0099FFFF0066FFFF0066FFFF0066FFFF0066FFFF000099CC000000
      0000000000000000000000000000000000000000000000000000000000000000
      000099999900E5E5E500CCCCCC00CCCCCC00CCCCCC00CCCCCC00999999000000
      00000000000000000000000000000000000000000000CC996600FFFFFF00FFCC
      9900FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFCC9900FFCC9900CC99
      6600993300000000000000000000000000000000000099999900FFFFFF00CCCC
      CC00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00CCCCCC00CCCCCC009999
      9900666666000000000000000000000000000000000000000000000000000000
      00000000000066CCCC0099FFFF0066FFFF000099CC0066CCCC0066CCCC0066CC
      CC00000000000000000000000000000000000000000000000000000000000000
      00000000000099999900E5E5E500CCCCCC009999990099999900999999009999
      99000000000000000000000000000000000000000000CC996600FFFFFF00FFCC
      9900CC996600CC996600CC996600CC996600CC996600FFCC9900FFCC9900CC99
      6600CC9966009933000000000000000000000000000099999900FFFFFF00CCCC
      CC009999990099999900999999009999990099999900CCCCCC00CCCCCC009999
      9900999999006666660000000000000000000000000000000000000000000000
      00000000000066CCCC0099FFFF0066FFFF0066FFFF000099CC00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000099999900E5E5E500CCCCCC00CCCCCC0099999900000000000000
      00000000000000000000000000000000000000000000CC996600FFFFFF00FFCC
      9900FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFCC9900FFCC9900CC99
      6600CC9966009933000000000000000000000000000099999900FFFFFF00CCCC
      CC00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00CCCCCC00CCCCCC009999
      990099999900666666000000000000000000000000000000000066CCCC000099
      CC000099CC000099CC000099CC0099FFFF0066FFFF0066FFFF000099CC000000
      0000000000000000000000000000000000000000000000000000999999009999
      9900999999009999990099999900E5E5E500CCCCCC00CCCCCC00999999000000
      00000000000000000000000000000000000000000000CC996600CC996600CC99
      6600CC996600CC996600CC996600CC996600CC996600CC996600CC996600CC99
      6600993300009933000000000000000000000000000099999900999999009999
      9900999999009999990099999900999999009999990099999900999999009999
      990066666600666666000000000000000000000000000000000066CCCC0099FF
      FF0099FFFF0066FFFF0066FFFF0066FFFF0066FFFF0066FFFF0066FFFF000099
      CC0000000000000000000000000000000000000000000000000099999900E5E5
      E500E5E5E500CCCCCC00CCCCCC00CCCCCC00CCCCCC00CCCCCC00CCCCCC009999
      990000000000000000000000000000000000CC996600FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00CC99
      6600CC99660099330000000000000000000099999900FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF009999
      99009999990066666600000000000000000000000000000000000000000066CC
      CC0099FFFF0099FFFF0066FFFF0066FFFF000099CC0066CCCC0066CCCC0066CC
      CC00000000000000000000000000000000000000000000000000000000009999
      9900E5E5E500E5E5E500CCCCCC00CCCCCC009999990099999900999999009999
      990000000000000000000000000000000000CC996600FFCC9900FFCC990099CC
      CC000099CC00FFCC9900FFCC9900FFCC990099CCCC000099CC00FFCC9900FFFF
      FF00CC996600CC996600993300000000000099999900CCCCCC00CCCCCC00E5E5
      E50099999900CCCCCC00CCCCCC00CCCCCC00E5E5E50099999900CCCCCC00FFFF
      FF009999990099999900666666000000000000000000000000000000000066CC
      CC0099FFFF0099FFFF0099FFFF0066FFFF0066FFFF000099CC00000000000000
      0000000000000000000000000000000000000000000000000000000000009999
      9900E5E5E500E5E5E500E5E5E500CCCCCC00CCCCCC0099999900000000000000
      00000000000000000000000000000000000000000000CC996600FFCC990099CC
      CC0000FFFF000099CC00CC996600FFCC990099CCCC0000FFFF000099CC00FFCC
      9900FFFFFF00CC99660099330000000000000000000099999900CCCCCC00E5E5
      E500CCCCCC009999990099999900CCCCCC00E5E5E500CCCCCC0099999900CCCC
      CC00FFFFFF009999990066666600000000000000000000000000000000000000
      000066CCCC0099FFFF0099FFFF0099FFFF0066FFFF0066FFFF000099CC000000
      0000000000000000000000000000000000000000000000000000000000000000
      000099999900E5E5E500E5E5E500E5E5E500CCCCCC00CCCCCC00999999000000
      0000000000000000000000000000000000000000000000000000CC99660099CC
      CC0000FFFF000099CC00CC996600CC99660099CCCC0000FFFF000099CC00CC99
      6600CC996600CC9966000000000000000000000000000000000099999900E5E5
      E500CCCCCC00999999009999990099999900E5E5E500CCCCCC00999999009999
      9900999999009999990000000000000000000000000000000000000000000000
      000066CCCC0099FFFF0099FFFF0099FFFF0066FFFF0066FFFF0066FFFF000099
      CC00000000000000000000000000000000000000000000000000000000000000
      000099999900E5E5E500E5E5E500E5E5E500CCCCCC00CCCCCC00CCCCCC009999
      99000000000000000000000000000000000000000000000000000000000099CC
      CC0000FFFF000099CC00000000000000000099CCCC0000FFFF000099CC000000
      000000000000000000000000000000000000000000000000000000000000E5E5
      E500CCCCCC00999999000000000000000000E5E5E500CCCCCC00999999000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000066CCCC0099FFFF0099FFFF0099FFFF0066FFFF0066FFFF0066FF
      FF000099CC000000000000000000000000000000000000000000000000000000
      00000000000099999900E5E5E500E5E5E500E5E5E500CCCCCC00CCCCCC00CCCC
      CC009999990000000000000000000000000000000000000000000000000099CC
      CC0000FFFF000099CC00000000000000000099CCCC0000FFFF000099CC000000
      000000000000000000000000000000000000000000000000000000000000E5E5
      E500CCCCCC00999999000000000000000000E5E5E500CCCCCC00999999000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000066CCCC0066CCCC0066CCCC0066CCCC0066CCCC0066CCCC0066CC
      CC0066CCCC0066CCCC0000000000000000000000000000000000000000000000
      0000000000009999990099999900999999009999990099999900999999009999
      9900999999009999990000000000000000000000000000000000000000000000
      000099CCCC000099CC0000000000000000000000000099CCCC000099CC000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000E5E5E50099999900000000000000000000000000E5E5E500999999000000
      000000000000000000000000000000000000000000000000000000000000B2B2
      B200CCCCCC00CCCCCC00CCCCCC00CCCCCC00CCCCCC00B2B2B200999999000000
      0000000000000000000000000000000000000000000000000000000000009999
      9900999999009999990099999900999999009999990099999900999999000000
      000000000000000000000000000000000000000000000000000000000000E2EF
      F100E5E5E500E5E5E500E5E5E500E5E5E500E5E5E50000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000CC999900CCCC
      CC00FFCCCC00FFFFFF00FFFFFF00FFFFCC00FFFFFF00CCCCFF00FFCCCC0099A8
      AC0080808000000000000000000000000000000000000000000099999900CCCC
      CC00CCCCCC000000000000000000000000000000000000000000CCCCCC0099A8
      AC00808080000000000000000000000000000000000000000000E5E5E500C0C0
      C0009999990080808000808080009999990099A8AC00C0C0C000CCCCCC00E2EF
      F10000000000000000000000000000000000000000000000000000000000C0C0
      C00099999900999999008080800099999900CCCCCC00C0C0C000CCCCCC000000
      0000000000000000000000000000000000000000000099999900B2B2B200FFCC
      CC00FFFFFF00CCFFFF00FFCC9900FF993300CCCCFF00FF993300CC330000CC33
      0000B2B2B2008080800000000000000000000000000099999900B2B2B200CCCC
      CC000000000000000000C0C0C000808080000000000080808000999999009999
      9900B2B2B2008080800000000000000000000000000000000000CCCCCC00CCCC
      CC00CCCC9900CCCC9900CCCC990099999900808080006666660080808000B2B2
      B200E5E5E5000000000000000000000000000000000000000000CCCCCC00CCCC
      CC00C0C0C000C0C0C000C0C0C00099999900808080009999990080808000B2B2
      B200000000000000000000000000000000000000000099999900CC999900CCCC
      CC00FFCCCC00FFFFFF00FFCC9900FFCC6600FF993300CC330000FF3333009999
      CC00CC330000B2B2B2008080800000000000000000009999990099999900CCCC
      CC00CCCCCC0000000000C0C0C000B2B2B20080808000999999009999990099A8
      AC0099999900B2B2B200808080000000000000000000E5E5E500FFFFCC00F2EA
      BF00F2EABF00CCCC9900ECC6D900FFCC9900F2EABF00F2EABF00808080006666
      660099999900E5E5E50000000000000000000000000000000000000000000000
      000000000000C0C0C000CCCCCC00C0C0C0000000000000000000808080009999
      9900999999000000000000000000000000000000000099999900B2B2B200FFCC
      CC00FFFFFF00CCFFFF00FFCC9900FFFF0000FFCC3300FF663300CCCCFF00FFFF
      FF00CC999900CC33000080808000663333000000000099999900B2B2B200CCCC
      CC000000000000000000C0C0C000B2B2B20099A8AC0099999900000000000000
      00009999990099999900808080009999990000000000FFCC9900F2EABF00F2EA
      BF00CCCCCC00ECC6D90000990000CCCCCC00CCCCCC00CCCCCC00FFFFCC00B2B2
      B200646F7100CCCCCC00000000000000000000000000C0C0C000000000000000
      0000CCCCCC00CCCCCC0099999900CCCCCC00CCCCCC00CCCCCC0000000000B2B2
      B20099999900CCCCCC0000000000000000000000000099999900CC999900CCCC
      CC00FFCCCC00FFFFFF00FFCC9900FFCC3300FF993300FF993300FF663300FFFF
      FF00CCCCFF00CC9999008080800066333300000000009999990099999900CCCC
      CC00CCCCCC0000000000C0C0C00099A8AC008080800080808000999999000000
      00000000000099999900808080009999990000000000FFCC9900FFCC9900E5E5
      E500ECC6D900ECC6D9000099000000990000009900000099000099CC9900F2EA
      BF0080808000B2B2B200E2EFF1000000000000000000C0C0C000C0C0C0000000
      0000CCCCCC00CCCCCC0099999900999999009999990099999900B2B2B2000000
      000080808000B2B2B20000000000000000000000000099999900B2B2B200FFCC
      CC00FFFFFF00CCFFFF00FFCC9900FF993300FFFFCC00FFFFFF00FFFFFF00CC00
      0000CC000000CC00000080808000663333000000000099999900B2B2B200CCCC
      CC000000000000000000C0C0C000808080000000000000000000000000009999
      990099999900999999008080800099999900E5E5E500FFCC9900E5E5E500E5E5
      E500ECC6D900C0C0C000009900000099000066CC6600CCFFCC0033CC3300FFCC
      990080808000B2B2B200E2EFF1000000000000000000C0C0C000000000000000
      0000CCCCCC00C0C0C0009999990099999900CCCCCC000000000099999900C0C0
      C00080808000B2B2B20000000000000000000000000099999900CC999900CCCC
      CC00FFCCCC00FFFFFF00FFFFFF00CCCCFF00FFCC3300CCCCFF00CCFFFF00CCCC
      FF00FF000000CC0000008080800066333300000000009999990099999900CCCC
      CC00CCCCCC0000000000000000000000000099A8AC0000000000000000000000
      000099999900999999008080800099999900F2EABF00F2EABF00FFFFFF00FFFF
      FF00CC999900ECC6D90099CC9900CCCC990033CC330099CC990099CC9900CCCC
      99009999990099999900E5E5E50000000000CCCCCC0000000000000000000000
      000099999900CCCCCC00B2B2B200C0C0C00099999900B2B2B200B2B2B200C0C0
      C000999999009999990000000000000000000000000099999900B2B2B200FFCC
      CC00FFFFFF00CCFFFF00FFFFFF00FFFFFF00FFCC3300FF993300FF666600FF33
      3300CC000000CC00000080808000663333000000000099999900B2B2B200CCCC
      CC000000000000000000000000000000000099A8AC0080808000808080009999
      990099999900999999008080800099999900F2EABF00FFFFCC00FFFFFF00ECC6
      D900CC999900ECC6D90066993300FFFFFF0066CC66000099000000990000F2EA
      BF009999990099999900E5E5E50000000000CCCCCC000000000000000000CCCC
      CC0099999900CCCCCC009999990000000000CCCCCC0099999900999999000000
      0000999999009999990000000000000000000000000099999900CC999900CCCC
      CC00FFCCCC00E5E5E500E5E5E500E5E5E500E5E5E500FF993300FF333300FF00
      0000FFCC6600CC0000008080800066333300000000009999990099999900CCCC
      CC00CCCCCC000000000000000000000000000000000080808000999999009999
      9900B2B2B200999999008080800099999900F2EABF00FFFFFF00FFFFFF00ECC6
      D900ECC6D900ECC6D90099CC990000990000339933000099000000990000F2EA
      BF00CCCC990080808000E5E5E50000000000CCCCCC000000000000000000CCCC
      CC00CCCCCC00CCCCCC00B2B2B200999999009999990099999900999999000000
      0000C0C0C000808080000000000000000000000000009999990099A8AC00CCCC
      FF00CCFFFF00CCFFFF00CCFFFF00CCFFFF00CCFFFF00CCCCFF00CCCCCC00CCCC
      CC00CCCCCC00B2B2B2008080800066333300000000009999990099A8AC000000
      0000000000000000000000000000000000000000000000000000CCCCCC00CCCC
      CC00CCCCCC00B2B2B2008080800099999900FFFFCC00FFFFCC00FFFFCC00FFFF
      FF00FFFFFF00E2EFF100E5E5E50099CC990099CC990066CC660000990000FFFF
      CC00C0C0C00080808000CCCCCC0000000000CCCCCC0000000000000000000000
      0000000000000000000000000000B2B2B200B2B2B200CCCCCC00999999000000
      0000C0C0C00080808000CCCCCC00000000000000000099999900CCFFFF00646F
      7100333333006633330066333300646F71009966660099999900CCCCCC00FFFF
      FF00FFCCCC00B2B2B20080808000663333000000000099999900000000009999
      9900999999009999990099999900999999009999990099999900CCCCCC000000
      0000CCCCCC00B2B2B2008080800099999900FFFFCC00FFFFCC00FFFFCC00FFFF
      CC00E2EFF100E2EFF100E2EFF100FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFCC00646F7100CCCCCC0000000000CCCCCC0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000099999900CCCCCC00000000000000000099999900CCFFFF000066
      99009999CC00CCCCFF009999CC0066333300FFFFFF00CCCC9900CCCC9900646F
      7100B2B2B200CCCCCC0080808000663333000000000099999900000000009999
      990099A8AC000000000099A8AC009999990000000000C0C0C000C0C0C0009999
      9900B2B2B200CCCCCC008080800099999900F2EABF00F2EABF00F2EABF00E5E5
      E500E5E5E500E5E5E500E5E5E500E5E5E500E5E5E500E2EFF100F2EABF00FFFF
      CC00FFFFCC00646F7100CCCCCC000000000000000000CCCCCC00CCCCCC000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000099999900CCCCCC00000000000000000000000000999999000066
      9900FFFFFF00CCCCFF00CCCCFF000033660066333300FFFFFF00FFFFCC00CCCC
      99006633330099A8AC0080808000663333000000000000000000999999009999
      990000000000000000000000000099999900999999000000000000000000C0C0
      C0009999990099A8AC00808080009999990000000000E5E5E500E5E5E50099CC
      FF00CCFFFF00CCFFFF00CCFFFF00CCFFFF00E2EFF10099CCFF00FFCC9900FFCC
      9900FFFFCC0080808000E5E5E50000000000000000000000000000000000CCCC
      CC000000000000000000000000000000000000000000CCCCCC00C0C0C000C0C0
      C000000000008080800000000000000000000000000000000000000000009999
      990000669900FFFFFF00003366000080800000CC660066333300FFFFFF006633
      3300003366009966660099666600000000000000000000000000000000009999
      9900999999000000000099999900999999009999990099999900000000009999
      990099999900999999009999990000000000000000000000000000000000E2EF
      F10099CCFF0099CCFF0099CCFF00CCFFFF00CCFFFF0099CCFF00FFCC9900FFCC
      9900FFCC9900C0C0C000E2EFF100000000000000000000000000000000000000
      0000CCCCCC00CCCCCC00CCCCCC000000000000000000CCCCCC00C0C0C000C0C0
      C000C0C0C000C0C0C00000000000000000000000000000000000000000000000
      000000000000006699009966660000CCCC003333330099666600663333009966
      6600996666000000000000000000000000000000000000000000000000000000
      0000000000009999990099999900B2B2B2009999990099999900999999009999
      9900999999000000000000000000000000000000000000000000000000000000
      000000000000000000000000000099CCFF0099CCFF0099CCFF00F2EABF00F2EA
      BF00E5E5E500E2EFF10000000000000000000000000000000000000000000000
      0000000000000000000000000000CCCCCC00CCCCCC00CCCCCC00000000000000
      0000000000000000000000000000000000000000000000000000E1CCB400D7B3
      9000CEAC7B00D6AD7600D9AE7600D9AE7600D9AE7600DAAE7600DBAE7700D9A8
      7C00D7AD8A00DBC1AA00000000000000000000000000C0C0C000C0C0C000CECE
      CE00D6D6D600DBDBDB00DDDDDD00DCDCDC00D9D9D900D5D5D500D0D0D000CBCB
      CB00C7C7C700C0C0C000C0C0C000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFFFF00F7F7FF00F7F7F700EFE7
      E700DED6CE00DED6C600DED6CE00E7D6CE00E7D6CE00DED6C600D6CEC600D6CE
      C600E7DED600F7F7F700F7F7FF00FFFFFF0000000000DFC59100E1A95A00F0A6
      4700F3AC4100F8AF3F00F9AE4000F9AE4000F9AE4000F9AF4100FAAF4100F6AD
      4100EFA84400E1A85200DEBC7B0000000000C0C0C000C0C0C000D0D0D000E3E3
      E300EEEEEE00F8F8F800FDFDFD00FAFAFA00F5F5F500EEEEEE00E6E6E600DEDE
      DE00D6D6D600C9C9C900C0C0C000C0C0C0000000000000000000ECD9BB00E4B5
      7D00E4A95D00EAAD5100F0AC4D00F0AC4C00F0AC4C00F1AD4D00EFAC5000E8A8
      5500DEAE6B00E1CC9C000000000000000000F7FFFF00F7F7F700EFDEBD00E7B5
      7B00E7AD5A00EFAD5200F7AD4A00F7AD4A00F7AD4A00F7AD4A00EFAD5200EFAD
      5200DEAD6B00E7CE9C00F7F7E700F7FFFF00E3C89B00E5A65900F5A04100FA9F
      4500F2A04900F2A34700F4A34600F3A34600F3A34500F3A24500F3A24500F4A3
      4600F8A14300F8A13E00EAA34A00E4BB8600C0C0C000C0C0C000D4D4D400E4E4
      E400EFEFEF00F8F8F800FCFCFC00FAFAFA00F6F6F600EEEEEE00E6E6E600DEDE
      DE00D6D6D600CDCDCD00C0C0C000C0C0C00000000000F1E6D100E5B26C00F1A2
      4100F8A44100F2A74300F1A84600F1A84600F1A94A00F1A74400F2AC4B00F7A6
      4100F6A23F00E9A55000EBD0A80000000000EFF7FF00F7E7D600E7B56B00F7A5
      4200FFA54200F7A54200F7AD4200F7AD4200F7AD4A00F7A54200F7AD4A00F7A5
      4200F7A53900EFA55200EFD6AD00FFF7F700D8A66300EF9E4600F5A24100E9B2
      7100EDCFA300F5DBB500F9DDB900F9DDBA00FADDBB00F9DDBA00F8DCB800F5D7
      AB00EDBB7F00F2A34400F3A23C00DDA45800C0C0C000C0C0C000D7D7D700D9D9
      D900E1E1E100E6E6E600E8E8E800E7E7E700E4E4E400E1E1E100DDDDDD00D9D9
      D900D5D5D500CFCFCF00C0C0C000C0C0C00000000000E8CFA900EAA24B00F5A1
      4200F0B87C00F7D9B700FBE2C600FCE3C900FDE4CD00FBE2C700FAE5CB00F3CF
      A400F2A45100F49F3E00E1B4770000000000E7F7FF00EFCEAD00EFA54A00F7A5
      4200F7BD7B00F7DEB500FFE7C600FFE7CE00FFE7CE00FFE7C600FFE7CE00F7CE
      A500F7A55200F79C3900E7B57300F7EFE700EB9D4000F49E4700F8B05000F0E2
      B600F0F1D900F6E3C100F8E1C100F9E0C000FAE0C100F8DFC100F7E2C500F4EE
      D800F1E5D200F6B76600F9A34300EB9B4400C0C0C000C0C0C000D2D2D200D4D4
      D400DFDFDF00E7E7E700E9E9E900E8E8E800E4E4E400DFDFDF00D8D8D800D2D2
      D200CBCBCB00C5C5C500C0C0C000C0C0C00000000000F2C39800F3A14400F6B3
      5E00F7F1E300FEFEFD00FEFDFD00FEFEFD00FEFDFD00FEFEFD00FEFEFD00FDFD
      FB00F3CE9E00F6A04200E4AA610000000000F7F7FF00F7C69C00F7A54200F7B5
      5A00F7F7E700FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00F7CE9C00F7A54200E7AD6300F7EFDE00EF9D3600F5A14900FAB45900F9F1
      D300EBD8B800EDAD5F00F2AB5100F4A94F00F5A94F00F2A85100F0AC5A00E9CA
      9700F7F1E700FCBE7A00F7A64600ED9C3A00C0C0C000C0C0C000D1D1D100E3E3
      E300EEEEEE00F8F8F800FCFCFC00FAFAFA00F5F5F500EEEEEE00E6E6E600DEDE
      DE00D6D6D600CACACA00C0C0C000C0C0C00000000000F3C59000F4A54900F3B4
      6200F9F0E500FEFCFB00FEFEFD0000000000FEFEFD0000000000FEFEFE00FEFD
      FD00F9DEBD00F2A54700E8AB5E0000000000FFFFFF00F7C69400F7A54A00F7B5
      6300FFF7E700FFFFFF00FFFFFF0000000000FFFFFF0000000000FFFFFF00FFFF
      FF00FFDEBD00F7A54200EFAD5A00F7EFE700EA9F3600F4A94D00F9B45F00FBF0
      DE00F4D2A800F5AA4D00FCAE4800FCAF4600FCAF4600FCAE4700F8AC4A00F2C0
      7F00F9F5EA00FAC27B00F8AF4900EAA13800C0C0C000C0C0C000D4D4D400E6E6
      E600EFEFEF00F8F8F800FCFCFC00FBFBFB00F6F6F600EFEFEF00E8E8E800E0E0
      E000D9D9D900CECECE00C0C0C000C0C0C00000000000F3C78C00F7A94E00F4B6
      6D00FBF2E600FEFDFB00FEFEFE00FEFEFD00FEFEFE00FEFDFC00FEFEFE00FEFD
      FC00F8E3C400F6B04900EEAE590000000000FFFFFF00F7C68C00F7AD4A00F7B5
      6B00FFF7E700FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFE7C600F7B54A00EFAD5A00F7EFE700E9A43C00F1AE4F00F9B86200FDF0
      E400FCD8A800FBB05400FCAF5200FBB35200FAB35100FBB15000FBB05100FCC5
      7E00F9F6E700F6C67C00F8B15100EBA64100C0C0C000C0C0C000D2D2D200D2D2
      D200D9D9D900DDDDDD00DEDEDE00DEDEDE00DCDCDC00D9D9D900D5D5D500D2D2
      D200CFCFCF00CBCBCB00C0C0C000C0C0C00000000000F6CB8F00FAAF5100FBBB
      7100F9F3E500FDFCF900FEFEFE00FEFEFE00FEFEFE0000000000FEFEFE00FEFD
      FB00F9EACC00FBB85000F3B35B0000000000FFFFFF00F7CE8C00FFAD5200FFBD
      7300FFF7E700FFFFFF00FFFFFF00FFFFFF00FFFFFF0000000000FFFFFF00FFFF
      FF00FFEFCE00FFBD5200F7B55A00FFF7E700F1A74700F9B55600F7BE6100F8F0
      E400FCD8A800FAB35400FAB55200F9B85200F7B84E00F9B84F0099CCFF006699
      FF006699FF00CCCCFF00F4B35500F0AA4900C0C0C000C0C0C000D2D2D200DDDD
      DD00E8E8E800F1F1F100F5F5F500F3F3F300EEEEEE00E8E8E80099CCFF006699
      FF006699FF00CCCCFF00C0C0C000C0C0C00000000000F2CD9400F6B65300FCC5
      7300FAF7F00000000000FEFEFE00FEFEFE00FDFDFB00FEFDFB0099CCFF006699
      FF006699FF00CCCCFF00F0B5650000000000FFFFFF00F7CE9400F7B55200FFC6
      7300FFF7F70000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFE7C600F7BD5200F7B56300F7F7E700F4AB4F00F6BA5600F4C66100F9F1
      E400FADCA900F9BA5900FABA5700FABC5600FABC560099CCFF000033FF003399
      FF003366FF000033FF009999FF00F1AF4D00C0C0C000C0C0C000D2D2D200E3E3
      E300EEEEEE00F8F8F800FCFCFC00FAFAFA00F5F5F50099CCFF000033FF003399
      FF003366FF000033FF009999FF00C0C0C00000000000F2CF9800F4BC5300F9CC
      7900FBF7F200FEFEFE00FDFDFC00FDFDFC00FEFDFC0099CCFF000033FF003399
      FF003366FF000033FF009999FF0000000000FFFFFF00F7CE9C00F7BD5200FFCE
      7B00FFF7F700FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFE7C600F7C65200F7BD6B00FFF7E700F5AC4D00F6BF5300F3C86600FCEE
      E500F7E3B200F6C65F00F9C35800FAC35800FBC3580099CCFF003399FF0033CC
      FF0033CCFF003399FF0099CCFF00F3B54F00C0C0C000C0C0C000D6D6D600E7E7
      E700EEEEEE00F6F6F600F9F9F900F7F7F700F3F3F30099CCFF003399FF0033CC
      FF0033CCFF003399FF0099CCFF00C0C0C00000000000F6CF9B00FBBE5600FACF
      7B00FAF8F100FEFEFE00FEFDFA00FDFCFA00FEFEFE0099CCFF003399FF0033CC
      FF0033CCFF003399FF0099CCFF0000000000FFFFFF00F7CE9C00FFBD5200FFCE
      7B00FFFFF700FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFE7BD00FFCE5200F7C66B00F7F7E700F2B05000FCC15800F8C97400FAED
      DE00F4F0D800F5E2A700F7E19D00F8E09B0066CCFF003366FF000066FF00CCFF
      FF0099FFFF003366FF003366FF00EFB85700C0C0C000C0C0C000CDCDCD00D0D0
      D000D6D6D600DBDBDB00DDDDDD00DCDCDC0066CCFF003366FF000066FF00CCFF
      FF0099FFFF003366FF003366FF00C0C0C00000000000F5D9AA00F8C35E00F7CC
      6F00F6E5BC00F7F7E900FAF6E700F6F6E70066CCFF003366FF000066FF00CCFF
      FF0099FFFF003366FF003366FF0000000000FFFFFF00F7DEAD00FFC65A00F7CE
      6B00F7E7BD00F7F7EF00FFF7E700F7F7E700F7FFF700FFF7EF00FFF7E700FFF7
      E700F7D68C00FFCE5A00EFC68400F7F7EF00F0C37200F8C45F00F8CC6800F5DF
      A500F8F2D300F9F6E600F9F6EB00FAF6EA00FCF7EB003399CC000033FF000033
      FF003399FF000033FF00CCCCFF00EBBE6A00C0C0C000C0C0C000CFCFCF00E2E2
      E200EEEEEE00F8F8F800FCFCFC00F9F9F900F5F5F5003399CC000033FF000033
      FF003399FF000033FF00CCCCFF00C0C0C00000000000F9EAC300F8CC7000F8D0
      5B00F3D16E00F6D48000F9D67E00F8D67A00F8D773003399CC000033FF000033
      FF003399FF000033FF00CCCCFF0000000000FFFFFF00FFEFC600FFCE7300FFD6
      5A00F7D66B00F7D68400FFD67B00FFD67B00FFD67300F7D67B00F7DE7B00EFDE
      7B00F7D66B00F7CE6300FFDEA500FFFFF700F4DAA000F6CC6900F8D25A00F4D2
      6600F2D27C00F3D27E00F5D67B00F7D77A00F7D778000033FF0099CCFF000033
      FF006699FF009999FF0099CCFF00F7D39300C0C0C000C0C0C000D3D3D300E3E3
      E300EFEFEF00F8F8F800FDFDFD00FAFAFA00F5F5F5000033FF0099CCFF000033
      FF006699FF009999FF0099CCFF00C0C0C0000000000000000000F3E0AD00F1D7
      7400F5D86600F6D56A00F7D76C00F9D66D00FBD96A000033FF0099CCFF000033
      FF006699FF009999FF0099CCFF0000000000FFFFFF00FFF7EF00F7E7AD00F7D6
      7300F7DE6300F7D66B00F7D66B00FFD66B00FFDE6B00FFD66B00FFDE6300FFDE
      6300F7DE6B00F7DE9400FFF7D600FFFFFF0000000000F2DBA000EED36F00F7D7
      6400F7D46800FAD56A00FBD86C00FDD96900FEDA6800FCD96700F9D8690099CC
      FF0099CCFF00EED86D00EFD98F0000000000C0C0C000C0C0C000DCDCDC00E2E2
      E200E9E9E900EEEEEE00F0F0F000EFEFEF00ECECEC00E8E8E800E4E4E40099CC
      FF0099CCFF00D3D3D300C0C0C000C0C0C000000000000000000000000000F7F2
      CA00EFE8AE00EFE4A200F4E5A400F6E5A600F9E6A500F8E6A600F6E5A30099CC
      FF0099CCFF00000000000000000000000000FFFFFF00FFFFFF00FFFFEF00F7F7
      CE00EFEFAD00EFE7A500F7E7A500F7E7A500FFE7A500FFE7A500F7E7A500F7E7
      A500F7EFC600FFF7E700FFFFFF00FFFFFF000000000000000000F1E7AE00E9DC
      8300DFD36A00EAD56100F4D76000F6D76000F8D96000F8D75F00F6D55F00EFD1
      6800EFD97A00F1E2A300000000000000000000000000C0C0C000C0C0C000E1E1
      E100E0E0E000E0E0E000E0E0E000E0E0E000E0E0E000E0E0E000E0E0E000DEDE
      DE00DEDEDE00C0C0C000C0C0C000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00EFF7FF00E7F7FF00E7F7FF00EFFFFF00F7FFFF00F7FF
      FF00F7FFFF00FFFFFF00FFFFFF00FFFFFF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000084000000840000008400000084000000840000008400
      000084000000840000008400000084000000F7FFFF00FFFFF700FFFFFF00EFF7
      F700CEEFCE00CEE7CE00F7FFF700F7FFF700CEE7D60042947300318463004294
      7300D6E7DE00FFFFFF00FFFFFF00FFFFFF000000000000000000000000000000
      00000000000000000000000000000000000000000000FCAE4800FCAE4800EBAB
      5400FCAE4800FCAE4800FCAE4800000000000000000084000000840000008400
      0000840000008400000084000000840000008400000084000000840000008400
      0000840000008400000000000000000000000000000000000000000000000000
      0000000000000000000084000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF0084000000FFFFFF00FFFFFF00F7F7F700ADDE
      B50052C65A0094DE8C00FFFFFF00FFFFFF00D6E7DE00217B5A0010735200217B
      5A00CEE7DE00FFFFFF00FFFFFF00FFFFFF00000000000000000000000000F8F7
      FF0000000000000000000000000000000000FCAE4800FCAE4800FEFEFE00FEFE
      FE00FEFEFE00FEFEFE00F5A64800FCAE48000000000084000000FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF0084000000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF008400000000000000000000000000000000000000000000000000
      0000000000000000000084000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF0084000000FFFFFF00EFF7F700ADDEAD004ABD
      420010BD180084DE8C00F7FFFF00F7FFFF00CEE7DE0029846300187B5A002984
      6300CEDED600FFFFFF00F7FFFF00FFFFFF000000000000000000F4F3FF000000
      00000E0B9E00000079000000790000000000F2A04100FEFEFE00FEFEFE00FCC1
      5800FCC15800FEFEFE00FEFEFE00FCAE48000000000084000000FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF0084000000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF008400000000000000000000000000000000000000000000000000
      0000000000000000000084000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF0084000000FFFFFF00C6F7CE004AC6520018B5
      180010BD18008CCE9C006BAD94005AA58C005AA5840021846300218C63002184
      630052A5840063A58C0063AD9400CEDED60000000000F4F3FF0000000000F9F9
      FF00F1F0FF000000FF000E0B9E0000000000F1A94700FEFEFE00FCC15800FAA9
      3E00FAA93D00FCC15800FEFEFE00FCC158000000000084000000FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF0084000000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF008400000000000000000000000000000000000000000000008400
      0000840000008400000084000000840000008400000084000000840000008400
      000084000000840000008400000084000000F7F7F7008CDE940018BD290018BD
      2900A5E7A500BDDECE0031946B0029946B0029946B0031946B0031946B003194
      6B0029946B0031946B0031946B00BDD6CE0000000000FEFEFF00000000000000
      00000000FF00CCC8FF000000FF0000000000FCC15800FEFEFE00FCC15800FAB5
      4900FAB54700FCC15800FEFEFE00FCC158000000000084000000FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF0084000000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF008400000000000000000000000000000000000000000000008400
      0000FFFFFF00FFFFFF0084000000840000008400000084000000840000008400
      00008400000084000000FFFFFF0084000000E7F7EF005AC66B0008BD210073DE
      8400EFFFEF00C6DED600399C730039A5730039A57300399C7300399C7300399C
      730039A5730039A57300399C7300BDDECE0000000000F3F2FF00000000004F6C
      F20000000000000000000000000000000000FCC15800FEFEFE00FEFEFE00FCC1
      5800FCC15800FEFEFE00FEFEFE00FBD86C000000000084000000FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF0084000000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF008400000000000000000000000000000000000000000000008400
      0000FFFFFF00FFFFFF0084000000840000008400000084000000840000008400
      000084000000840000008400000084000000DEEFDE0039BD520008C62900D6F7
      DE00FFFFFF00E7EFEF00A5D6BD009CCEBD008CC6AD004AAD84004AAD84004AAD
      84008CC6AD009CCEBD00A5D6BD00E7EFEF0000000000000000004F6CF2000000
      000000000000000000000000000000000000FBD86C00FBD86C00FEFEFE00FEFE
      FE00FEFEFE00FEFEFE00FBD86C00FBD86C000000000084000000FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF0084000000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF008400000000000000000000000000000000000000000000008400
      0000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF0084000000000000000000000000000000D6EFD60031BD4A0010C63900DEF7
      E700FFFFFF00FFFFFF00FFFFFF00FFFFFF00D6EFE7005AB58C0052B58C0052B5
      8C00D6E7DE00FFFFFF00FFFFFF00FFFFFF000000000000000000000000000000
      00000000000000000000000000000000000000000000FBD86C00FBD86C00FBD8
      6C00FBD86C00FBD86C00FBD86C00000000000000000084000000FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF0084000000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF008400000000000000000000000000000084000000840000008400
      0000840000008400000084000000840000008400000084000000840000008400
      000084000000000000000000000000000000D6F7DE0031C65A0010CE3900DEF7
      E700FFFFFF00FFFFFF00FFFFFF00FFFFFF00D6EFE70063BD94005ABD94005ABD
      9400D6E7DE00FFFFFF00FFFFFF00FFFFFF0000000000FCAE4800FCAE4800EBAB
      5400FCAE4800FCAE4800FCAE480000000000000000000000000099CCFF006699
      FF006699FF00CCCCFF0000000000000000000000000084000000FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF0084000000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF008400000000000000000000000000000084000000FFFFFF008400
      000084000000840000008400000084000000840000008400000084000000FFFF
      FF0084000000000000000000000000000000EFF7EF005ACE7B0010CE4A007BE7
      9C00EFFFF700FFFFFF00FFFFFF00FFFFFF00E7EFEF0094CEBD008CCEB50084CE
      AD00B5E7CE00D6F7DE00EFFFF700FFFFFF00FCAE4800FCAE4800FEFEFE00FEFE
      FE00FEFEFE00FEFEFE00F5A64800FCAE48000000000099CCFF000033FF003399
      FF003366FF000033FF009999FF00000000000000000084000000FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF0084000000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF008400000000000000000000000000000084000000FFFFFF008400
      0000840000008400000084000000840000008400000084000000840000008400
      000084000000000000000000000000000000EFFFF7007BDEA50010CE5A0010D6
      5200A5EFBD00F7FFF700FFFFFF00FFFFFF00FFFFFF00FFFFFF00CEF7DE0042DE
      730018D65A004ACE8400CEF7DE00FFFFFF00F2A04100FEFEFE00FEFEFE00FCC1
      5800FCC15800FEFEFE00FEFEFE00FCAE4800F4F3FF0099CCFF003399FF0033CC
      FF0033CCFF003399FF0099CCFF00000000000000000084000000840000008400
      0000840000008400000084000000840000008400000084000000840000008400
      0000840000008400000000000000000000000000000084000000FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00840000000000
      000000000000000000000000000000000000F7FFFF00C6EFD60042CE7B0010D6
      520010DE520073E7A500F7FFF700FFFFFF00FFFFFF00ADEFC60029D66B0018DE
      5A0021CE63008CDEB500EFFFF700FFFFFF00F1A94700FEFEFE00FCC15800FAA9
      3E00FAA93D00FCC15800FEFEFE00FCC1580066CCFF003366FF000066FF00CCFF
      FF0099FFFF003366FF003366FF00000000000000000084000000840000008400
      00008400000084000000FFFFFF00840000008400000084000000840000008400
      0000FFFFFF008400000000000000000000000000000084000000840000008400
      0000840000008400000084000000840000008400000084000000840000000000
      000000000000000000000000000000000000FFFFFF00F7FFF700ADEFBD0031DE
      6B0010DE5A0010DE5A0018DE630021DE6B0018DE630018DE630018DE630010D6
      6B006BDE9400DEF7E700FFFFFF00FFFFFF00FCC15800FEFEFE00FCC15800FAB5
      4900FAB54700FCC15800FEFEFE00FCC15800F3F2FF003399CC000033FF000033
      FF003399FF000033FF00CCCCFF00000000000000000084000000840000008400
      0000840000008400000084000000840000008400000084000000840000008400
      0000840000008400000000000000000000000000000084000000840000008400
      00008400000084000000840000008400000084000000FFFFFF00840000000000
      000000000000000000000000000000000000F7FFFF00F7FFFF00EFFFEF009CEF
      C60042D6840018D6730010DE6B0008E7630010E76B0018DE6B0029D673006BDE
      A500CEF7DE00F7FFFF00FFF7FF00FFFFFF00FCC15800FEFEFE00FEFEFE00FCC1
      5800FCC15800FEFEFE00FEFEFE00FBD86C00000000000033FF0099CCFF000033
      FF006699FF009999FF0099CCFF00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000084000000840000008400
      0000840000008400000084000000840000008400000084000000840000000000
      000000000000000000000000000000000000FFFFFF00FFFFFF00FFFFFF00F7FF
      F700C6F7DE0084EFB5005AE794004ADE8C0052E7940073E7A500A5F7C600E7F7
      EF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FBD86C00FBD86C00FEFEFE00FEFE
      FE00FEFEFE00FEFEFE00FBD86C00FBD86C0000000000000000000000000099CC
      FF0099CCFF000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00F7FFF700EFFFEF00DEF7E700E7F7EF00F7FFF700F7FFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0000000000FBD86C00FBD86C00FBD8
      6C00FBD86C00FBD86C00FBD86C00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000840000008400000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000008400
      0000C6C6C6008400000084000000000000000000000000000000000000000000
      0000000000000000000000000000000000008400000084000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000084000000840000008400
      0000840000008400000084000000840000008400000084000000840000008400
      0000840000008400000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000084000000C6C6
      C600840000008400000084000000000000000000000000000000000000000000
      0000000000000000000000000000840000008400000084000000000000000000
      0000000000000000000000000000000000000000000000000000C6C6C600C6C6
      C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C6000000
      0000C6C6C6000000000000000000000000000000000084000000FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF008400000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000084000000C6C6C6008400
      0000840000008400000000000000000000000000000000000000000000000000
      0000000000000000000084000000840000008400000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000C6C6C60000000000000000000000000084000000FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF008400000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000084000000C6C6C600840000008400
      000084000000000000000000000000000000000000000000000084848400C6C6
      C600FFFFFF008484840000000000840000000000000000000000000000000000
      00000000840000000000000000000000000000000000C6C6C600C6C6C600C6C6
      C600C6C6C600C6C6C600C6C6C60000FFFF0000FFFF0000FFFF00C6C6C600C6C6
      C600000000000000000000000000000000000000000084000000FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF008400000000000000000000000000000000000000000000000000
      0000C6C6C600C6C6C600C6C6C600FFFFFF008484840084000000840000008400
      0000000000000000000000000000000000000000000084848400C6C6C600C6C6
      C600C6C6C600FFFFFF0084848400000000000000000000000000000000000000
      84000000840000000000000000000000000000000000C6C6C600C6C6C600C6C6
      C600C6C6C600C6C6C600C6C6C600848484008484840084848400C6C6C600C6C6
      C60000000000C6C6C60000000000000000000000000084000000840000008400
      0000840000008400000084000000840000008400000084000000840000008400
      000084000000840000000000000000000000000000000000000084848400C6C6
      C600C6C6C600C6C6C600C6C6C600C6C6C600FFFFFF0084848400000000000000
      00000000000000000000000000000000000000000000C6C6C600C6C6C600C6C6
      C600C6C6C600C6C6C600FFFFFF00000000000000000000000000000084000000
      8400000084000000840000008400000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000C6C6C600C6C6C600000000000000000084000000840000008400
      0000840000008400000084000000840000008400000084000000840000008400
      0000FFFFFF008400000000000000000000000000000000000000C6C6C600C6C6
      C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600FFFFFF00000000000000
      00000000000000000000000000000000000000000000C6C6C600FFFFFF00FFFF
      0000C6C6C600C6C6C600C6C6C600000000000000000000000000000000000000
      84000000840000000000000000000000840000000000C6C6C600C6C6C600C6C6
      C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C6000000
      0000C6C6C60000000000C6C6C600000000000000000084000000840000008400
      0000840000008400000084000000840000008400000084000000840000008400
      00008400000084000000000000000000000000000000C6C6C600C6C6C600C6C6
      C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C6000000
      0000000000000000000000000000000000000000000084848400FFFFFF00FFFF
      FF00C6C6C600C6C6C60084848400000000000000000000000000000000000000
      0000000084000000000000000000000084000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000C6C6
      C60000000000C6C6C60000000000000000000000000084000000FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF0084000000000000000000000000000000C6C6C600C6C6C600C6C6
      C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C6000000
      000000000000000000000000000000000000000000000000000084848400C6C6
      C600C6C6C6008484840000000000000000000000000000000000000000000000
      000000000000000000000000000000008400000000000000000000000000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000
      0000C6C6C60000000000C6C6C600000000000000000084000000FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF0084000000000000000000000000000000C6C6C600FFFFFF00FFFF
      0000C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C6000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000008400000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000FFFFFF000000000000000000000000000000000000000000FFFFFF000000
      0000000000000000000000000000000000000000000084000000FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF0084000000000000000000000000000000C6C6C600FFFFFF00FFFF
      0000C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C6000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000008400000000000000
      0000000084000000000000000000000000000000000000000000000000000000
      0000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00000000000000000000000000000000000000000084000000840000008400
      0000840000008400000084000000840000008400000084000000840000008400
      0000840000008400000000000000000000000000000000000000FFFFFF00FFFF
      FF00FFFF0000FFFF0000C6C6C600C6C6C600C6C6C600C6C6C600000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000008400000000000000
      0000000084000000840000000000000000000000000000000000000000000000
      000000000000FFFFFF000000000000000000000000000000000000000000FFFF
      FF00000000000000000000000000000000000000000084000000840000008400
      0000840000008400000084000000840000008400000084000000840000008400
      0000FFFFFF00840000000000000000000000000000000000000084848400FFFF
      FF00FFFFFF00FFFFFF00C6C6C600C6C6C600C6C6C60084848400000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000084000000
      8400000084000000840000008400000000000000000000000000000000000000
      000000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF000000000000000000000000000000000084000000840000008400
      0000840000008400000084000000840000008400000084000000840000008400
      0000840000008400000000000000000000000000000000000000000000000000
      0000C6C6C600C6C6C600C6C6C600C6C6C6000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000084000000840000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000084000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000008484000084
      8400000000000000000000000000000000000000000000000000C6C6C600C6C6
      C6000000000000848400000000000000000000000000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000
      00000000000000000000000000000000000000000000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000008484000084
      8400000000000000000000000000000000000000000000000000C6C6C600C6C6
      C6000000000000848400000000000000000000000000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000000000000000000000000000
      00000000000000000000000000000000000000000000FFFFFF00000000000000
      0000FFFFFF000000000000000000000000000000000000000000FFFFFF000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000840000008400
      0000840000000000000000000000000000000000000000000000008484000084
      8400000000000000000000000000000000000000000000000000C6C6C600C6C6
      C6000000000000848400000000000000000000000000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF000000000084848400C6C6C600C6C6C6008484
      84000000000000000000000000000000000000000000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000840000008400
      0000840000000000000000000000000000000000000000000000008484000084
      8400000000000000000000000000000000000000000000000000000000000000
      00000000000000848400000000000000000000000000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF000000000084848400C6C6C600C6C6C600FFFF00008484
      84008484840000000000000000000000000000000000FFFFFF00000000000000
      0000FFFFFF000000000000000000000000000000000000000000FFFFFF000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000008484000084
      8400008484000084840000848400008484000084840000848400008484000084
      84000084840000848400000000000000000000000000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF0000000000C6C6C600C6C6C600C6C6C600C6C6C6008484
      8400C6C6C60000000000000000000000000000000000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000840000008400
      0000840000000000000000000000000000000000000000000000008484000084
      8400000000000000000000000000000000000000000000000000000000000000
      00000084840000848400000000000000000000000000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF0000000000C6C6C600FFFF0000C6C6C600C6C6C6008484
      8400C6C6C60000000000000000000000000000000000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0000000000FFFFFF00FFFFFF000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000840000008400
      0000840000000000000000000000000000000000000000000000008484000000
      0000C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6
      C6000000000000848400000000000000000000000000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF000000000084848400FFFF0000FFFF0000C6C6C6008484
      84008484840000000000000000000000000000000000FFFFFF00000000000000
      0000FFFFFF00FFFFFF00FFFFFF0000000000C6C6C60000000000FFFFFF000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000008400
      0000840000008400000000000000000000000000000000000000008484000000
      0000C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6
      C6000000000000848400000000000000000000000000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF000000000084848400C6C6C600C6C6C6008484
      84000000000000000000000000000000000000000000FFFFFF0000000000C6C6
      C60000000000FFFFFF0000000000C6C6C60000000000C6C6C600000000000000
      0000000000000000000084000000840000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000840000008400000084000000000000000000000000000000008484000000
      0000C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6
      C6000000000000848400000000000000000000000000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000000000000000000000000000
      00000000000000000000000000000000000000000000FFFFFF00FFFFFF000000
      0000C6C6C60000000000C6C6C60000000000C6C6C60000000000C6C6C600C6C6
      C600C6C6C6000000000084000000840000000000000000000000000000000000
      0000000000000000000000000000840000008400000084000000000000000000
      0000000000008400000084000000840000000000000000000000008484000000
      0000C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6
      C6000000000000848400000000000000000000000000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000C6C6C60000000000C6C6C60000000000C6C6C600C6C6C600C6C6
      C600C6C6C600C6C6C60084000000840000000000000000000000000000000000
      0000000000000000000000000000840000008400000084000000000000000000
      0000000000008400000084000000840000000000000000000000008484000000
      0000C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6
      C6000000000000000000000000000000000000000000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000C6C6C60000000000C6C6C600C6C6C600C6C6C600C6C6
      C600C6C6C600C6C6C60084000000840000000000000000000000000000000000
      0000000000000000000000000000840000008400000084000000000000000000
      0000000000008400000084000000840000000000000000000000008484000000
      0000C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6
      C60000000000C6C6C600000000000000000000000000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0000000000C6C6C600000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000C6C6C600C6C6C600C6C6C600C6C6C600C6C6
      C600C6C6C6000000000084000000840000000000000000000000000000000000
      0000000000000000000000000000000000008400000084000000840000008400
      0000840000008400000084000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000084000000840000000000000000000000000000000000
      0000000000000000000000000000000000000000000084000000840000008400
      0000840000008400000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00000000000000000000000000000000000000000000000000008484000084
      8400008484000084840000848400008484000084840000848400008484000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00000000000000000000000000000000000000000000FFFF00000000000084
      8400008484000084840000848400008484000084840000848400008484000084
      8400000000000000000000000000000000000000000000000000000000008400
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF000000000000000000000000000000000000000000FFFFFF0000FFFF000000
      0000008484000084840000848400008484000084840000848400008484000084
      8400008484000000000000000000000000000000000000000000000000008400
      0000000000000000000000000000000000000000000084000000840000008400
      0000840000008400000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00000000000000000000000000000000000000000000FFFF00FFFFFF0000FF
      FF00000000000084840000848400008484000084840000848400008484000084
      8400008484000084840000000000000000000000000000000000840000000000
      0000000000000000000000000000000000000000000000000000840000008400
      0000840000008400000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF000000000000000000000000000000000000000000FFFFFF0000FFFF00FFFF
      FF0000FFFF000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000840000000000
      0000000000000000000000000000000000000000000000000000000000008400
      0000840000008400000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00000000000000000000000000000000000000000000FFFF00FFFFFF0000FF
      FF00FFFFFF0000FFFF00FFFFFF0000FFFF00FFFFFF0000FFFF00000000000000
      0000000000000000000000000000000000000000000000000000840000000000
      0000000000000000000000000000000000000000000000000000840000000000
      0000840000008400000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF000000000000000000000000000000000000000000FFFFFF0000FFFF00FFFF
      FF0000FFFF00FFFFFF0000FFFF00FFFFFF0000FFFF00FFFFFF00000000000000
      0000000000000000000000000000000000000000000000000000000000008400
      0000000000000000000000000000000000008400000084000000000000000000
      0000000000008400000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00000000000000000000000000000000000000000000FFFF00FFFFFF0000FF
      FF00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000840000008400000084000000840000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0000000000FFFFFF000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000008400000084000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000084000000840000008400000084000000840000008400
      0000840000008400000084000000840000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000840000000000000000000000840000000000000000000000840000008400
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000840000008400000084000000840000008400
      0000840000008400000084000000840000000000000000000000000000000000
      0000000000000000000084000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00840000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000840000000000000000000000840000000000000084000000000000000000
      0000840000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000084000000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00840000000000000084848400008484008484
      8400008484008484840084000000FFFFFF000000000000000000000000000000
      00000000000000000000FFFFFF00840000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000840000000000000000000000840000000000000084000000000000000000
      0000840000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000084000000FFFFFF0000000000000000000000
      00000000000000000000FFFFFF00840000000000000000848400848484000084
      8400848484000084840084000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00840000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000008400000084000000840000000000000084000000000000000000
      0000840000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000084000000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00840000000000000084848400008484008484
      8400008484008484840084000000FFFFFF00000000000000000000000000FFFF
      FF00840000008400000084000000840000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000840000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000840000000000000084000000840000008400
      0000000000000000000000000000000000000000000000000000FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF0084000000FFFFFF0000000000000000000000
      00000000000000000000FFFFFF00840000000000000000848400848484000084
      8400848484000084840084000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF0084000000FFFFFF0084000000000000000000000000000000840000008400
      0000840000008400000084000000000000000000000000000000000000000000
      0000840000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000840000000000000084000000000000000000
      0000000000000000000000000000000000000000000000000000FFFFFF000000
      000000000000000000000000000084000000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00840000000000000084848400008484008484
      8400008484008484840084000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00840000008400000000000000000000000000000000000000840000008400
      0000840000008400000000000000000000000000000000000000000000000000
      0000000000008400000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF0084000000FFFFFF000000000000000000FFFF
      FF00840000008400000084000000840000000000000000848400848484000084
      8400848484000084840084000000840000008400000084000000840000008400
      0000840000000000000000000000000000000000000000000000840000008400
      0000840000000000000000000000000000000000000000000000000000000000
      0000000000008400000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000FFFFFF000000
      000000000000000000000000000084000000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF0084000000FFFFFF0084000000000000000000000084848400008484008484
      8400008484008484840000848400848484000084840084848400008484008484
      8400008484000000000000000000000000000000000000000000840000008400
      0000000000008400000000000000000000000000000000000000000000000000
      0000000000008400000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF0084000000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00840000008400000000000000000000000000000000848400848484000000
      0000000000000000000000000000000000000000000000000000000000008484
      8400848484000000000000000000000000000000000000000000840000000000
      0000000000000000000084000000840000000000000000000000000000000000
      0000840000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000FFFFFF000000
      000000000000FFFFFF0000000000840000008400000084000000840000008400
      0000840000000000000000000000000000000000000084848400848484000000
      0000C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600000000008484
      8400008484000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000008400000084000000840000008400
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000FFFFFF00FFFF
      FF00FFFFFF00FFFFFF0000000000FFFFFF000000000000000000000000000000
      0000000000000000000000000000000000000000000000848400848484000084
      84000000000000FFFF00000000000000000000FFFF0000000000848484000084
      8400848484000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000FFFFFF00FFFF
      FF00FFFFFF00FFFFFF0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000FFFF0000FFFF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000424D3E000000000000003E000000
      2800000040000000500100000100010000000000800A00000000000000000000
      000000000000000000000000FFFFFF00FFFFFFFFFFFF0000FF01FF01FF7F0000
      FF01FF01FF7F0000FF01FF01F80F0000E001E001FBEF0000E001EF01FBEF0000
      E001EF01FBEF0000E001EF01F80F0000000F01EFFFFF0000000F01EFE0030000
      000F01EFEFFB0000000F01EFEFFB0000000F000FEFFB000001FF01FFE0030000
      01FF01FFFF7F0000FFFFFFFFFFFF00000000FC01000000000000FC0100000000
      0000FC01000000000000FC01000000000000FC01000000000000800100000000
      0000A8010000000000009401000000000000A803000000000000940700000000
      0000A80F000000000000953F000000000000A83F000000000000947F00000000
      0000A8FF00000000000081FF000000000000FFFFFFFF00000000F81FFC3F0000
      0000E007F00F00000000C003E00700000000C003C003000000008001C0030000
      0000800180010000000080018001000000008001800100000000800180010000
      00008001C00300000000C003C00300000000C003E00700000000E007F00F0000
      0000F81FFC3F00000000FFFFFFFF00000000FFFFE001E0010000FFFBE001E001
      0000FFE3E001E0010000FF83E001E6010000FF37E001E4010000FE77E001E001
      0000FC07E001E0010000F00FE001E001000084CFE001E40100008E07E001E401
      0000E217E001E4010000F817E001E0010000FF87E003E0030000FFE7E007E007
      0000FFF7E00FE00F0000FFFFFFFFFFFFFFFFFC1F80008000FF80000180008000
      FF00000180008000FE00000180008000FE00000380008000E000000380008000
      E000000380008000E000000180008000FE0F0001FFFBFFFBFE070001FFDBFFDB
      BF83C001FFCBFFCB8FEFC001F003F00387CFE001F003F003801FE001FFCBFFCB
      C07FF001FFDBFFDBEFFFFC01FFFBFFFBFFFF0000E000E000FC3F0000E000EFFE
      F81F0000E000EFFEF0CF0000E000EC06E187000060006FFEC063000020002802
      840100000000080204040000200028020504000060006FFE82010000E000EC06
      C0030000E000EFFEE0070000E000EC06F00F0000E000EFFEF81F0000E000EC06
      FC3F0000E000EFFEFFFF0000E000E000FFFFFBFFFBFFFFFFFFFFF9FFF9FFF03F
      F3FFFCFFFCFFF003E1FFFC7FFC7FF003C0FFF03FF03FE003807FF01FF01FC003
      803FF80FF80F80018C1FF83FF83F80019E0FC01FC01F0003FF07C00FC00F0003
      FF83E00FE00F0007FFC3E03FE03F800FFFE3F01FF01F800FFFF3F00FF00FC01F
      FFFFF807F807F07FFFFFF803F803FFFF800080008001FFFF000000000000FFFF
      000000000000F3FF000000000000E1FF000000000000C0FF000000000000807F
      000000000000803F0000807F00008C1F0000807F00009E0F0000807F0000FF07
      000083E30000FF83000083C10000FFC30000E3C10000FFE30000E3C10000FFF3
      0000FFE30000FFFF0000FFFF8001FFFFFFFFEFFFEFFFFF81FFDFE463E607EF00
      FFCFF063F003D100E007F063F063A100FFCFC003C063B100FFDFC00FC07FAF00
      FFFFE023E03FDF000180E063E063FF817D800063006381C37D80000300030081
      7D80800F800700017D8080FF80FF00016180C07FC07F00016381C03FC03F0081
      6783E01FE01F00E70F87E00FE00F81FFFFFFE000E000FFFFC001C000C000FFDF
      800180008000FFCF800100000000E007800100000000FFCF800100000000FFDF
      800100000000FFFF800100000000018080010000000001808001000000000180
      8001000000000180800100000000018080010000000001808001000000000381
      8001000300030783FFFF000300030F87FFFFFFFFFFFFFFFF8001C007FFFFC001
      80018003FFFF800180010001FF7F800180014001FE3F800180014001FC1F8001
      80017FF0F80F800180014000F007800180018000E00380018001DFE0C0018001
      8001E821C00180018001EFF7F80F80018001F417F80F80018001F7FBFFFF8001
      8001F803FFFF8001FFFFFFFFFFFFFFFFFFFFFFFFC003C003FFFFFFFF80018001
      FFFFFFFF80018001C003C0038001800180018001800180018001800180018001
      80018001800180018001800180018001800180018007800780018001C00FC00F
      80018001E01FE01F80078007F007F007C00FC00FF007F007E1FFE1FFF80FF80F
      FFFFFFFFF83FF83FFFFFFFFFFC7FFC7FFFFFFFFFFF00FF00FFFFFFFFFF00FF00
      80078007FF00FF0000030003F500F50000030003FF80FF8000030003F7C7F7C7
      00030003FFFFFFFF00010003803F803F00000000001F001F00000001001F001F
      00000000001F001F8000800100030003C3C0C3D100030003FFF3FFFF00610061
      FFFFFFFF80F480F4FFFFFFFFC7FEC7FEFBFFFBFFF83FF83FF9FFF9FFF01FF01F
      FCFFFCFFF01FF01FFC7FFC7FE00FE00FF03FF03FC007C007F01FF01F80078007
      F80FF80F80038003F83FF83F80038003C01FC01F80038003C00FC00F00030003
      E00FE00F00010001E03FE03F80018001F01FF01FC003C003F00FF00FE31FE31F
      F807F807E31FE31FF803F803F39FF39FE01FE01FE07FFFFFC007C7C7C00FE01F
      80038C83C007C00F800184018003F8C780008C308003B0238000841880019013
      80008CE00001B043800087700001700380008F00000161138000878000016013
      80009FC000017E118000A01000017FF98000A48000019FF9C000CE608001EF8B
      E001E421E001F183F807F807FE03FE3FC0038001FFFF000080010000C0030000
      0000000080010000000000008001000000000000800100000000000081410140
      0000000080010000000000008041004000000000840104000000000080010000
      00000000800100000000000080010000000000008001000000000000C0010000
      80010000E0070000C0038001FFFF0000FFFFFC000000FF818003FC000000EF00
      8003FC000000D1008003FC000000A1008003E0000000B1008003E0000000AF00
      8003E0000000DF008003E0070000FF8180038007000081C38003800700000081
      80038007000000018003801F000000018003801F000000018003801F00000081
      FFFF801F000000E7FFFFFFFF000081FFFFF3FFFFFFFFFFFFFFE1FF3FC0078003
      FFC1FE3F80038003FF83C07F00018003F00780F700018003C00F00E700018003
      801F00C100008003801F00E600008003000F00F680008003000F81FEC0008003
      000FC3BFE0018003000FFFB7E0078003801FFFB3F0078003801FFFC1F0038003
      C03FFFF3F803FFFFF0FFFFF7FFFFFFFFFFFFFFFFFFFFFFFFC001000C000FF9FF
      80010008000FF9FF80010001000FF3C780010003000F73C780010003000F27FF
      80010003000F07C780010003000F00C780010003000F01E380010007000403F1
      8001000F000006388001000F00000E388001000FF8001E388001001FFC003F01
      8001003FFE047F83FFFF007FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFEFFDC007001FFFFFC7FFC007000FFFFFC3FBC0070007EFFFE3F7C0070003
      EF83F1E7C0070001DFC3F8CFC0070000DFE3FC1FC007001FDFD3FE3FC007001F
      EF3BFC1FC007001FF0FFF8CFC0078FF1FFFFE1E7C00FFFF9FFFFC3F3C01FFF75
      FFFFC7FDC03FFF8FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF9FFFFFFFC00FFFF
      F6CFFE008000FFFFF6B7FE000000FFFFF6B7FE000000FFFFF8B780000000FFF7
      FE8F80000001C1F7FE3F80000003C3FBFF7F80000003C7FBFE3F80010003CBFB
      FEBF80030003DCF7FC9F80070003FF0FFDDF807F0003FFFFFDDF80FF8007FFFF
      FDDF81FFF87FFFFFFFFFFFFFFFFFFFFF00000000000000000000000000000000
      000000000000}
  end
  object XMLDocument1: TXMLDocument
    Left = 520
    DOMVendorDesc = 'MSXML'
  end
  object OpenDialog1: TOpenDialog
    Ctl3D = False
    DefaultExt = '*.ekb'
    Options = [ofOverwritePrompt, ofHideReadOnly, ofNoChangeDir, ofEnableSizing]
    Left = 552
  end
  object SaveDialog1: TSaveDialog
    Left = 584
  end
  object rzblnhnts1: TRzBalloonHints
    Bitmaps.TransparentColor = clOlive
    CenterThreshold = 0
    FrameColor = cl3DDkShadow
    Corner = hcLowerLeft
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clInfoText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ShowBalloon = False
    Left = 392
  end
  object ImageList2: TImageList
    Left = 344
    Bitmap = {
      494C010113001800080110001000FFFFFFFFFF10FFFFFFFFFFFFFFFF424D3600
      0000000000003600000028000000400000005000000001002000000000000050
      000000000000000000000000000000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFF08089CFF00007BFF00007BFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFF0000FFFF08089CFFFFFFFFFFFFFFFFFFFFAD4AFFFFAD4AFFEFAD
      52FFFFAD4AFFFFAD4AFFFFAD4AFFFFFFFFFF00000000000000003399CC000066
      9900006699000066990000669900006699000066990000669900006699000066
      9900006699000066990000000000000000000000000000000000999999009999
      9900999999009999990099999900999999009999990099999900999999009999
      9900999999009999990000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFF0000FFFFFFFFFFFF0000FFFFFFFFFFFFFFAD4AFFFFAD4AFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFF7A54AFFFFAD4AFF000000003399CC0066CCFF003399
      CC0099FFFF0066CCFF0066CCFF0066CCFF0066CCFF0066CCFF0066CCFF0066CC
      FF003399CC0099FFFF0000669900000000000000000099999900CCCCCC009999
      9900E5E5E500CCCCCC00CCCCCC00CCCCCC00CCCCCC00CCCCCC00CCCCCC00CCCC
      CC0099999900E5E5E50099999900000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFFFFFFFFFFFFFFFFFFFFFF4A6B
      F7FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF7A542FFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFAD4AFF000000003399CC0066CCFF003399
      CC0099FFFF0099FFFF0099FFFF0099FFFF0099FFFF0099FFFF0099FFFF0099FF
      FF0066CCFF0099FFFF0000669900000000000000000099999900CCCCCC009999
      9900E5E5E500E5E5E500E5E5E500E5E5E500E5E5E500E5E5E500E5E5E500E5E5
      E500CCCCCC00E5E5E50099999900000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFFFFFFFFFFFFFF4A6BF7FFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF7AD42FFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC65AFF000000003399CC0066CCFF003399
      CC0099FFFF0099FFFF0099FFFF0099FFFF0099FFFF0099FFFF0099FFFF0099FF
      FF0066CCFF0099FFFF0000669900000000000000000099999900CCCCCC009999
      9900E5E5E500E5E5E500E5E5E500E5E5E500E5E5E500E5E5E500E5E5E500E5E5
      E500CCCCCC00E5E5E50099999900000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC65AFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC65AFF000000003399CC0066CCFF003399
      CC0099FFFF0099FFFF0099FFFF0099FFFF0099FFFF0099FFFF0099FFFF0099FF
      FF0066CCFF0099FFFF0000669900000000000000000099999900CCCCCC009999
      9900E5E5E500E5E5E500E5E5E500E5E5E500E5E5E500E5E5E500E5E5E500E5E5
      E500CCCCCC00E5E5E50099999900000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFFFFFFFFAD4AFFFFAD4AFFEFAD
      52FFFFAD4AFFFFAD4AFFFFAD4AFFFFFFFFFFFFC65AFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDE6BFF000000003399CC0066CCFF003399
      CC0099FFFF0099FFFF0099FFFF0099FFFF0099FFFF0099FFFF0099FFFF0099FF
      FF0066CCFF0099FFFF0000669900000000000000000099999900CCCCCC009999
      9900E5E5E500E5E5E500E5E5E500E5E5E500E5E5E500E5E5E500E5E5E500E5E5
      E500CCCCCC00E5E5E50099999900000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFAD4AFFFFAD4AFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFF7A54AFFFFAD4AFFFFDE6BFFFFDE6BFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFDE6BFFFFDE6BFF000000003399CC0066CCFF003399
      CC00CCFFFF00CCFFFF00CCFFFF00CCFFFF00CCFFFF00CCFFFF00CCFFFF00CCFF
      FF0099FFFF00CCFFFF0000669900000000000000000099999900CCCCCC009999
      9900E5E5E500E5E5E500E5E5E500E5E5E500E5E5E500E5E5E500E5E5E500E5E5
      E500E5E5E500E5E5E50099999900000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000F7A542FFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFAD4AFFFFFFFFFFFFDE6BFFFFDE6BFFFFDE
      6BFFFFDE6BFFFFDE6BFFFFDE6BFFFFFFFFFF000000003399CC0099FFFF0099FF
      FF003399CC003399CC003399CC003399CC003399CC003399CC003399CC003399
      CC003399CC003399CC003399CC00000000000000000099999900E5E5E500E5E5
      E500999999009999990099999900999999009999990099999900999999009999
      9900999999009999990099999900000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000F7AD42FFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC65AFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000003399CC00CCFFFF0099FF
      FF0099FFFF0099FFFF0099FFFF00CCFFFF00CCFFFF00CCFFFF00CCFFFF00CCFF
      FF00006699000000000000000000000000000000000099999900E5E5E500E5E5
      E500E5E5E500E5E5E500E5E5E500E5E5E500E5E5E500E5E5E500E5E5E500E5E5
      E500999999000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFC65AFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC65AFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00000000000000003399CC00CCFF
      FF00CCFFFF00CCFFFF00CCFFFF003399CC003399CC003399CC003399CC003399
      CC0000000000000000000000000000000000000000000000000099999900E5E5
      E500E5E5E500E5E5E500E5E5E500999999009999990099999900999999009999
      9900000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFC65AFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDE6BFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000000000000000000000003399
      CC003399CC003399CC003399CC00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000009999
      9900999999009999990099999900000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFDE6BFFFFDE6BFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFDE6BFFFFDE6BFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFFFFFFFFDE6BFFFFDE6BFFFFDE
      6BFFFFDE6BFFFFDE6BFFFFDE6BFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000866A59FF82634EFF90715AFF8A6955FF83644FFF785C4BFF0000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000866A59FF82634EFF90715AFF8A6955FF83644FFF785C4BFF0000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000DEBD
      9400D6AD7300DEB56B00DEB56B00DEB56B00DEB56B00E7B57300DEAD7300DEB5
      8400000000000000000000000000000000000000000000000000000000009982
      73FF9A7D6EFFD9BBA8FFFADAC3FFFEDFC6FFFFE0C9FFFCDCC5FFCCAE9BFF8167
      56FF896F63FF0000000000000000000000000000000000000000000000009982
      73FF9A7D6EFFD9BBA8FFFADAC3FFFEDFC6FFFFE0C9FFFCDCC5FFCCAE9BFF8167
      56FF896F63FF0000000000000000000000000000000000000000000000000000
      0000E7A55200EFA54200EFA53900EFA53900EFA53900EFA54200EFA54A000000
      0000000000000000000000000000000000000000000000000000DEB57300EFA5
      4200F7A53900F7A53100F7A53100F7A53100F7A53100F7A53100F7A53900EFA5
      4200E7AD5A000000000000000000000000000000000000000000A38B7FFF8B71
      61FFF2D4C1FFF3D4BDFFC2A088FFAE8B71FFAA876DFFC09E86FFEECEB7FFE1C3
      B0FF785E4EFF8A7266FF00000000000000000000000000000000A38B7FFF8B71
      61FFF2D4C1FFF3D4BDFFC2A088FFAE8B71FFAA876DFFC09E86FFEECEB7FFE1C3
      B0FF785E4EFF8A7266FF0000000000000000000000000000000000000000EF9C
      3900F7A54200F7B56B00F7BD7B00F7BD7B00F7BD7B00F7C67B00F7B56300F794
      31000000000000000000000000000000000000000000DEB57B00EF9C4200F79C
      4200EFAD6300F7BD7300F7BD7B00F7BD7B00F7BD7B00F7BD7300F7B56B00F7A5
      4A00F79C3100E7AD630000000000000000000000000000000000A48A7AFFFDE2
      CEFFE9CAB3FFAC8B71FFC29D81FFD7B395FFCAA688FFB49275FFA38268FFE7C8
      B1FFF5DAC6FF866D5DFF00000000000000000000000000000000A48A7AFFFDE2
      CEFFE9CAB3FFAC8B71FFC29D81FFD7B395FFCAA688FFB49275FFA38268FFE7C8
      B1FFF5DAC6FF866D5DFF00000000000000000000000000000000EFB58400F79C
      3900F7CEA500FFF7F700FFFFF700FFFFF700FFFFF700FFFFFF00F7EFDE00F7B5
      6300EF9C420000000000000000000000000000000000E79C4A00F79C3900EFBD
      6B00EFE7CE00F7EFCE00F7E7CE00FFE7CE00F7E7CE00F7E7CE00F7EFDE00EFCE
      9C00F7A54200E79C4200000000000000000000000000A58C7CFFE4C9B5FFFBDF
      C7FFA7856DFFC09E81FFA37D5DFFFFFAD8FFFFFDDDFF9B7555FFAA886BFF9D7F
      64FFF3D4BFFFD4B9A5FF7E6555FF0000000000000000A58C7CFFE4C9B5FFFBDF
      C7FFA7856DFFC09E81FFA37D5DFFFFFAD8FFFFFDDDFF9B7555FFAA886BFF9D7F
      64FFF3D4BFFFD4B9A5FF7E6555FF000000000000000000000000F7BD7B00F7A5
      4200F7DEC600FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00F7CE
      9400EF9C390000000000000000000000000000000000EF9C3900F79C4200FFD6
      9400EFEFD600EFB57300F7AD5A00F7AD5A00F7AD5A00EFAD5A00EFD6AD00F7E7
      CE00FFAD5200EF9C3900000000000000000000000000BFA594FFFFE6D1FFC8AA
      91FFC6A389FFB89476FFB99371FFAC8663FFB48B6AFFBD9775FFA17D5FFFB999
      7CFFB4947DFFFFE5D0FF9D8372FF0000000000000000BFA594FFFFE6D1FFC8AA
      91FFC6A389FFB89476FFB99371FFAC8663FFB48B6AFFBD9775FFA17D5FFFB999
      7CFFB4947DFFFFE5D0FF9D8372FF000000000000000000000000F7BD7B00F7A5
      4A00F7DEBD00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00F7D6
      9C00F7AD390000000000000000000000000000000000EFA53900F7A54200FFD6
      A500F7E7CE00F7AD4A00FFAD4200FFAD4200FFAD4200F7A54200F7C68C00F7E7
      CE00F7B55200EFA53900000000000000000000000000C8AF9BFFFADDC8FFCBAD
      94FFAA886BFFB49170FFBE9876FFFFFFDCFFFFE8C5FFC29C7AFFAA8668FFAA8A
      6DFFB6977EFFFFE3CEFFA08675FF0000000000000000C8AF9BFFFADDC8FFCBAD
      94FFAA886BFFB49170FFBE9876FFFFFFDCFFFFE8C5FFC29C7AFFAA8668FFAA8A
      6DFFB6977EFFFFE3CEFFA08675FF000000000000000000000000F7C67B00FFAD
      4A00F7E7C600FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00F7D6
      9C00F7AD420000000000000000000000000000000000EFA54200F7AD4200F7D6
      A500FFE7CE00FFB55A00FFAD4A00F7B55200F7B54A00FFAD4A00FFCE8C00F7EF
      CE00F7B55A00EFA54200000000000000000000000000C9B19FFFFDE2CEFFC6AA
      92FFB5947AFFB69476FFC19B7BFFF6D1AFFFFFFFE2FFFFE2C0FFE3C1A3FFB698
      7DFFAE8F78FFFFECD7FFA8907EFF0000000000000000C9B19FFFFDE2CEFFC6AA
      92FFB5947AFFB69476FFC19B7BFFF6D1AFFFFFFFE2FFFFE2C0FFE3C1A3FFB698
      7DFFAE8F78FFFFECD7FFA8907EFF000000000000000000000000EFC68400F7BD
      5200FFE7CE00FFFFFF00FFFFFF00FFFFFF00FFFFF700FFFFFF00FFFFFF00F7D6
      9C00F7B54A0000000000000000000000000000000000F7AD5200F7B54A00F7DE
      A500FFE7CE00F7B55A00F7B55200F7BD5200F7BD5200F7B54A00F7D69400F7EF
      CE00F7BD5A00EFAD4A00000000000000000000000000D0B9A9FFFFEEDCFFDFC4
      AFFFAC8E75FFC7A78AFFFFE1C3FFF1CEADFFF5D2B1FFFFFFE4FFF7D7BAFFBB9D
      84FFC5AA95FFF2DAC6FFA79080FF0000000000000000D0B9A9FFFFEEDCFFDFC4
      AFFFAC8E75FFC7A78AFFFFE1C3FFF1CEADFFF5D2B1FFFFFFE4FFF7D7BAFFBB9D
      84FFC5AA95FFF2DAC6FFA79080FF000000000000000000000000F7C68400F7BD
      5200F7EFCE00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00F7DE
      9C00F7BD4A0000000000000000000000000000000000F7AD5200F7BD4A00F7DE
      A500F7EFD600F7C65A00F7BD5200FFBD5200FFBD5200F7BD5200F7D69C00F7EF
      D600F7C65A00F7B54A00000000000000000000000000D5C2B3FFF0DCCBFFF5DD
      C9FFBEA48CFFBC9F84FFFFFFE6FFFFFFE5FFFFFFE3FFFFFCDFFFB99B82FFB49A
      82FFF3DBC7FFEFDBCAFFBBA89BFF0000000000000000D5C2B3FFF0DCCBFFF5DD
      C9FFBEA48CFFBC9F84FFFFFFE6FFFFFFE5FFFFFFE3FFFFFCDFFFB99B82FFB49A
      82FFF3DBC7FFEFDBCAFFBBA89BFF000000000000000000000000F7D69400F7C6
      5200F7DE9C00F7F7DE00FFF7DE00F7F7DE00F7F7DE00FFF7DE00F7EFD600F7CE
      7300FFC6630000000000000000000000000000000000F7B55200FFBD5200F7D6
      A500F7F7E700F7E7B500F7E7AD00F7E7AD00F7E7AD00F7E7AD00F7EFD600F7E7
      C600F7CE5A00EFBD520000000000000000000000000000000000E0CFC2FFFBE7
      D6FFF6DECAFFBBA38BFFDCC1A7FFFADDC2FFFFEED3FFE1C6ACFFC6AB96FFE8D0
      BCFFEFDBCAFFC3B2A5FF00000000000000000000000000000000E0CFC2FFFBE7
      D6FFF6DECAFFBBA38BFFDCC1A7FFFADDC2FFFFEED3FFE1C6ACFFC6AB96FFE8D0
      BCFFEFDBCAFFC3B2A5FF0000000000000000000000000000000000000000F7D6
      6300EFCE5A00F7CE6B00F7D66B00F7D66300F7CE6300F7D66B00EFD66300F7CE
      5A000000000000000000000000000000000000000000F7CE7B00F7C65A00F7D6
      7300F7E7AD00F7EFCE00F7EFCE00F7EFCE00F7EFCE00F7EFCE00F7EFBD00F7D6
      8C00F7CE5A00F7C66B0000000000000000000000000000000000EADAD3FFDFCF
      C3FFFFF1E2FFF2DCCAFFD6BDA9FFD7BFA9FFC7AF99FFC9B29CFFF7E1CFFFEFDC
      CDFFCFBFB3FFD2C6BCFF00000000000000000000000000000000EADAD3FFDFCF
      C3FFFFF1E2FFF2DCCAFFD6BDA9FFD7BFA9FFC7AF99FFC9B29CFFF7E1CFFFEFDC
      CDFFCFBFB3FFD2C6BCFF00000000000000000000000000000000000000000000
      0000F7E79400F7DE8400F7DE8400FFE78400FFE78400FFE78400FFE784000000
      0000000000000000000000000000000000000000000000000000F7D67B00F7CE
      5200F7CE6300F7CE6B00F7D66300FFD66300F7D66300F7D66300F7D66300F7D6
      5A00F7D66300000000000000000000000000000000000000000000000000DED1
      C9FFE4D4C8FFFDEADBFFF6E2D1FFF4DECCFFFDE7D5FFF5E1CFFFF9E6D7FFCFBF
      B3FFD9CCC4FF000000000000000000000000000000000000000000000000DED1
      C9FFE4D4C8FFFDEADBFFF6E2D1FFF4DECCFFFDE7D5FFF5E1CFFFF9E6D7FFCFBF
      B3FFD9CCC4FF0000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000EFE7
      8C00E7D66B00EFD66300F7D66300F7D66300FFD66300F7D66300F7D66300F7DE
      7B00000000000000000000000000000000000000000000000000000000000000
      0000E8DCD2FFE8D8CBFFECDCCCFFECDAC9FFE4D2C1FFE4D4C4FFE5D5C9FFE1D5
      CBFF000000000000000000000000000000000000000000000000000000000000
      0000E8DCD2FFE8D8CBFFECDCCCFFECDAC9FFE4D2C1FFE4D4C4FFE5D5C9FFE1D5
      CBFF000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000F7FFF700FFF7FF00E7EF
      EF00BDDEBD008CCE8C006BC66B005AC65A0063C663007BC67B00A5D6A500DEEF
      E700FFF7FF00F7F7F700F7F7F700FFFFFF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000F7FFF700FFF7F700E7EFEF00ADDE
      B50063C6630031BD310010BD100008BD080008B5080021B518004ABD4A008CCE
      8C00D6EFD600F7F7F700FFF7F700FFFFFF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFF7FF00EFF7EF00ADD6A50042BD
      420000AD000000B5080029BD290039C6390029BD290021BD210021BD210029B5
      29007BCE7B00D6EFD600FFF7F700FFF7FF000000000000000000FFFFF700F7F7
      FF00CEE7CE008CCE8C006BC663005AC65A0073C67300A5D69C00E7EFE700FFF7
      FF00F7FFF700FFFFFF0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000FFFFFF00DEEFDE007BCE7B0042BD390039BD390084C67B00DEEFDE00FFF7
      FF00F7FFF700000000000000000000000000FFF7FF00C6EFC60052BD520000A5
      000021BD210084DE8C00D6EFD600E7F7E700D6EFDE00C6EFC6007BDE840000AD
      000018B5210094D69C00E7EFEF00FFFFFF0000000000F7FFF700FFF7F700C6E7
      C60052C65A0018BD180000BD000000BD000008B5000029BD290073C67B00DEEF
      DE00FFFFF700FFFFFF0000000000000000000000000000000000000000000000
      0000F7FFFF00EFAD5A00DEB57B00EFEFEF0000000000FFFFFF00FFFFFF00FFFF
      FF0000000000000000000000000000000000000000000000000000000000FFF7
      FF00DEEFDE005AC65A0010B5100021BD210021BD210010B510005AC66300DEEF
      DE00FFF7FF00000000000000000000000000EFF7EF008CDE9C0010B5210018B5
      2100A5E7AD00FFFFFF00DEF7DE00CEEFCE00CEEFCE00EFF7EF00F7FFF70063CE
      630008B518004ABD5A00C6E7CE00FFFFFF0000000000FFFFFF00CEEFCE0052BD
      520000B5080029C631007BD67B0084D68C006BD66B004ACE520010B5180073CE
      7300E7F7E700FFFFFF000000000000000000000000000000000000000000FFFF
      FF00EFB56300EF9C3900EF9C3900E7B58400EFEFEF00FFFFFF00FFFFFF00FFFF
      FF0000000000000000000000000000000000000000000000000000000000F7FF
      FF006BCE730000AD08007BDE8400D6EFD600D6EFD6007BD67B0000B508006BC6
      7300F7F7F700000000000000000000000000DEEFDE0063C6730000B518007BDE
      8400FFFFFF00E7F7E70010B5180000A5000000A5000039BD420000000000FFFF
      FF0039C6520010B52900A5DEAD00FFFFFF0000000000F7F7F7007BD6840000AD
      10004ACE5200F7FFF700FFFFFF00FFFFFF00FFFFFF00E7F7EF0021BD290018B5
      2900A5DEAD00FFFFFF000000000000000000000000000000000000000000EFAD
      5A00EF943900E7943100EFAD4A00EFA54200DEB57B00EFEFEF0000000000FFFF
      FF0000000000000000000000000000000000000000000000000000000000C6E7
      CE0021BD390073D67B00FFFFFF00FFFFFF00FFFFFF00FFFFFF006BD67B0018B5
      3100D6EFDE00000000000000000000000000CEE7CE0039BD520018BD3100C6F7
      CE00DEF7DE0010B5180000AD000000AD000000AD080000A5000031BD4200EFFF
      F70052D66B0000B521008CD69400FFFFFF0000000000DEEFE70039C6520021C6
      3100F7FFF700FFFFFF0000AD100000AD100000AD1000FFFFFF00FFFFFF0008B5
      29006BC67300F7FFF7000000000000000000000000000000000000000000DEAD
      7B00EFB54A00EFB54A00EFBD5A00F7B55200E79C3900DEAD7B00EFEFEF000000
      00000000000000000000000000000000000000000000000000000000000094D6
      A50021BD4200CEF7D600FFFFFF00F7FFF700F7F7F700FFFFFF00CEF7D60008BD
      3100BDE7C600000000000000000000000000BDE7C60029BD4A0021C64200D6F7
      DE00D6EFD60000A5000000AD000008B5080008B5100000A5000010B52100E7F7
      EF005AD67B0000B529007BD69400FFFFFF0000000000C6E7CE0018B5310063D6
      7B00FFFFFF0000AD100000B5080000B5080000AD100000AD1000EFFFEF0018C6
      390042C65A00EFF7F7000000000000000000000000000000000000000000EFEF
      EF00E7C69400F7BD5200EFB54A00F7C66300FFCE5A00EFAD4200DEAD7B00EFEF
      EF000000000000000000000000000000000000000000000000000000000094DE
      A50021C64A00C6EFCE00FFFFFF00F7FFF700F7F7F700FFFFFF00C6EFCE0008BD
      3900BDE7C600000000000000000000000000C6E7CE0039C65A0018C64200C6F7
      D600CEEFCE0000A5000000AD000008B5100008AD180000A5000008AD1800EFF7
      EF005ADE7B0000BD310084D69400FFFFFF0000000000BDE7C60010BD39006BDE
      8400FFFFFF0000AD100000B5080000B5080000AD100000AD1000F7FFF70021C6
      4A0039C65A00EFF7EF0000000000000000000000000000000000000000000000
      0000EFE7E700E7BD8C00F7C65A00F7CE5A00FFDE7300FFD66300EFAD4A00DEA5
      6B0000000000000000000000000000000000000000000000000000000000CEEF
      DE0029CE630052D67B00F7FFF700FFFFFF00FFFFFF00F7FFF7004ADE7B0018C6
      5A00D6F7E700000000000000000000000000D6EFDE005ACE7B0008C639008CE7
      AD00E7F7E7004AC6520000AD100000A5000000AD080018AD180063CE6B00FFFF
      FF004ADE730000BD39009CDEAD00FFFFFF0000000000CEEFD60029C652004AD6
      6B00EFFFF70010B5210000AD100000AD100000AD100000AD1000FFFFFF0010CE
      4A004ACE6B00F7F7F7000000000000000000000000000000000000000000FFFF
      FF0000000000EFE7E700EFD69400F7BD5200F7BD5200FFD66300FFD66300EFAD
      6B0000000000000000000000000000000000000000000000000000000000FFFF
      FF0084DEAD0000CE42004ADE8400BDEFCE00B5EFCE0052DE840000CE520084DE
      AD00F7FFFF00000000000000000000000000E7F7EF008CDEAD0000C64A0031D6
      6B00E7FFEF00FFFFFF005AC65A0018B5210031BD39009CDEA500FFFFFF00E7FF
      EF0021CE630029CE6B00C6EFD600FFFFFF0000000000E7F7EF005AD68C0000C6
      4200C6F7D600FFFFFF0021BD310000AD100052C65A00F7FFF700F7FFF70000CE
      4A007BDEA500FFFFFF000000000000000000000000000000000000000000FFFF
      FF00FFFFFF0000000000EFE7E700E7C68C00EFBD5200F7C65200FFE79C00F7FF
      FF0000000000000000000000000000000000000000000000000000000000F7F7
      FF00EFF7EF0073DEA50008CE630000D6520000D6520008D663006BDEA500E7F7
      EF00FFF7FF00000000000000000000000000F7FFFF00BDEFD6004ACE7B0000CE
      390042E77300FFFFFF00EFFFEF00DEF7E700DEF7E700FFFFFF00EFFFEF0021D6
      630018CE5A008CDEB500E7F7EF00FFFFFF0000000000FFFFFF00ADE7C60021CE
      630000D64A00E7FFEF00E7FFEF00E7FFEF00EFFFF700F7FFF70008D6520042D6
      7B00CEEFDE00FFFFFF000000000000000000000000000000000000000000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00EFE7EF00E7B57300F7D68400FFFFFF00FFFF
      F70000000000000000000000000000000000000000000000000000000000F7FF
      FF00FFF7FF00F7F7F700BDEFD6009CE7BD009CE7BD00BDEFD600EFF7F700FFF7
      FF00FFFFFF00000000000000000000000000F7F7FF00EFF7EF00A5E7B50031D6
      6B0000CE520031DE730042DE840042E7840042E7840042DE7B0029DE730008CE
      5A006BDE9400D6EFDE00F7F7FF00FFFFFF0000000000F7F7FF00EFF7EF008CE7
      AD0018D6630008D65A0000D65A0008DE5A0008D65A0008D65A0029D67B00ADEF
      C600F7F7F700FFFFFF0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000F7F7F700F7F7F700E7F7E7009CE7
      BD0042D6840000CE5A0000CE4A0000D64A0000D64A0000CE4A0018D66B0073DE
      A500CEEFDE00F7F7F700F7F7F700F7F7F70000000000F7FFFF00F7FFF700EFF7
      F7009CE7C6004ADE940029DE7B0021DE730031DE7B005ADE9400B5EFD600F7FF
      F700F7F7FF00FFFFFF0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000F7FFFF00F7F7F700F7F7FF00E7F7
      EF00BDEFD60084E7B5006BE7A5005AE7940063E79C007BE7AD009CEFC600D6F7
      E700F7F7F700F7F7F700F7F7F700FFFFFF0000000000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00E7FFEF00CEF7DE00BDEFD600CEF7DE00E7FFF700FFFFFF00FFFF
      FF00FFFFFF00FFFFFF0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFFFF00FFFFFF00F7F7F700FFFF
      FF00FFFFFF00F7FFF700DEF7E700D6EFDE00D6EFDE00E7F7EF00F7FFFF00FFFF
      FF00F7FFFF00F7F7F700FFFFFF00FFFFFF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000E7CEB500D6B5
      9400CEAD7B00D6AD7300DEAD7300DEAD7300DEAD7300DEAD7300DEAD7300DEAD
      7B00D6AD8C00DEC6AD000000000000000000F7FFFF00FFFFF700FFFFFF00EFF7
      F700CEEFCE009CD69C007BC6730063BD6B006BBD73008CCE8C00BDDEBD00E7F7
      EF00FFF7FF00FFFFFF00F7FFFF00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000DEC69400E7AD5A00F7A5
      4200F7AD4200FFAD3900FFAD4200FFAD4200FFAD4200FFAD4200FFAD4200F7AD
      4200EFAD4200E7AD5200DEBD7B0000000000FFFFFF00FFFFFF00F7F7F700ADDE
      B50052C65A0021BD210018C6100010CE080010C6100018BD180039BD390084CE
      8C00D6EFDE00FFFFFF00FFFFFF00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000E7CE9C00E7A55A00F7A54200FF9C
      4200F7A54A00F7A54200F7A54200F7A54200F7A54200F7A54200F7A54200F7A5
      4200FFA54200FFA53900EFA54A00E7BD8400FFFFFF00EFF7F700ADDEAD004ABD
      420010BD180010BD180018BD210018BD210018BD180018BD180010BD180021BD
      29007BCE8400DEF7DE00FFFFFF00000000000000000000000000FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00F7FFF700F7F7F700F7F7F700F7F7
      F700F7F7F700FFFFFF0000000000000000000000000000000000FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFF700FFFFF700FFFF
      F700FFFFF700FFFFFF000000000000000000DEA56300EF9C4200F7A54200EFB5
      7300EFCEA500F7DEB500FFDEBD00FFDEBD00FFDEBD00FFDEBD00FFDEBD00F7D6
      AD00EFBD7B00F7A54200F7A53900DEA55A00FFFFFF00C6F7CE004AC6520018B5
      180010BD180073DE7B00EFFFEF000000000000000000A5E7A50021C6310010BD
      180029BD31008CDE9C00F7F7F700000000000000000000000000FFFFFF000000
      0000BDBDE700BDBDCE00C6CEE700FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF0000000000000000000000000000000000FFFFFF000000
      0000BDBDE700BDBDCE00C6C6DE00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00000000000000000000000000EF9C4200F79C4200FFB55200F7E7
      B500F7F7DE00F7E7C600FFE7C600FFE7C600FFE7C600FFDEC600F7E7C600F7EF
      DE00F7E7D600F7B56300FFA54200EF9C4200F7F7F7008CDE940018BD290018BD
      2900A5E7A500F7FFF70000000000000000000000000000000000CEF7D60039C6
      420010B521004AC65A00D6EFDE000000000000000000FFFFFF00FFFFFF00FFFF
      FF00ADADD60000009C0018188C00FFFFFF00CED6BD007B9C7300849C6B0084A5
      6B00849C7B00F7FFF700000000000000000000000000FFFFFF00FFFFFF00FFFF
      FF00ADADD60000009C0021218C00FFFFFF00F7E7D600FFCE9400F7CE9C00FFCE
      9400FFCE9400FFFFFF000000000000000000EF9C3100F7A54A00FFB55A00FFF7
      D600EFDEBD00EFAD5A00F7AD5200F7AD4A00F7AD4A00F7AD5200F7AD5A00EFCE
      9400F7F7E700FFBD7B00F7A54200EF9C3900E7F7EF005AC66B0008BD210073DE
      8400EFFFEF000000000000000000000000000000000000000000000000009CE7
      AD0021C6420021B53100ADDEB500000000000000000000000000FFFFFF00FFFF
      FF009494FF007B7BFF004239E700D6DEBD00104208007B9C7300B5C6A500ADBD
      9C00426B2900426B310000000000000000000000000000000000FFFFFF00FFFF
      FF009494FF007B7BFF003139E700FFF7CE00F7A53100FFCE9400F7DEBD00FFDE
      BD00F7B56300FFB563000000000000000000EF9C3100F7AD4A00FFB55A00FFF7
      DE00F7D6AD00F7AD4A00FFAD4A00FFAD4200FFAD4200FFAD4200FFAD4A00F7C6
      7B00FFF7EF00FFC67B00FFAD4A00EFA53900DEEFDE0039BD520008C62900D6F7
      DE00000000000000000000000000000000000000000000000000000000000000
      000042CE630008BD290094DE9C000000000000000000F7FFFF00F7F7FF00A5B5
      F700949CF700FFFFF700EFE7FF0094AD7B0073946B00FFFFFF004A7339008CAD
      7B00FFFFF700426B2100000000000000000000000000F7FFFF00F7F7FF009CAD
      F700949CF700FFFFF700DEE7FF00F7D69C00F7C68C00FFFFFF00FFCE7300FFDE
      A500FFFFFF00FFB55A000000000000000000EFA53900F7AD4A00FFBD6300FFF7
      E700FFDEAD00FFB55200FFAD5200FFB55200FFB55200FFB55200FFB55200FFC6
      7B00FFF7E700F7C67B00FFB55200EFA54200D6EFD60031BD4A0010C63900DEF7
      E700000000000000000000000000000000000000000000000000000000000000
      00004ACE630008C631008CD69C000000000000000000FFFFFF00CEDEFF00A5BD
      FF00FFFFFF00F7FFFF00FFFFFF0094AD7300ADC69400638C3900185A0000399C
      0000B5DE94008CC65200000000000000000000000000FFFFFF00DEE7FF00BDC6
      FF00FFFFFF00FFFFFF00FFFFFF00F7CE9C00F7DEB500FFD68400FFA53100FFA5
      2900FFE7BD00FFD68C000000000000000000F7A54200FFB55200F7BD6300FFF7
      E700FFDEAD00FFB55200FFB55200FFBD5200F7BD4A00FFBD4A00FFB55200FFCE
      7B00FFF7E700FFCE7B00F7B55200F7AD4A00D6F7DE0031C65A0010CE3900DEF7
      E700000000000000000000000000000000000000000000000000000000000000
      00004AD6730008C639008CDEA5000000000000000000FFFFFF00FFDEB500FFDE
      A500F7D6A500FFD69C00FFEFD600A5DE8C00B5DE9400B5DE940052AD00006BB5
      2100D6EFC60094C66300000000000000000000000000FFFFFF00ADBD940094AD
      7B008CA57B008CA57B00C6D6BD00FFEFC600FFDEB500FFE7BD00FFAD3100FFBD
      4A00FFF7DE00FFD694000000000000000000F7AD4A00F7BD5200F7C66300FFF7
      E700FFDEAD00FFBD5A00FFBD5200FFBD5200FFBD5200FFBD5A00FFBD5A00F7CE
      8400F7F7EF00FFCE8400F7BD5A00F7AD4A00EFF7EF005ACE7B0010CE4A007BE7
      9C00EFFFF700000000000000000000000000000000000000000000000000A5EF
      BD0021DE5A0018C64A00A5E7B5000000000000000000FFBD6B00FFAD4A00F7D6
      AD00F7DEB500F7CE9400FFAD4A00B5BD5A0073BD4200FFFFFF00D6E7BD00E7F7
      DE00DEEFCE0073B53100000000000000000000000000527B4A00215200009CB5
      8C00A5BD94008CA57B00084A0000ADAD6300FFDE7B00FFFFFF00FFE7C600FFF7
      E700FFF7DE00FFD663000000000000000000F7AD4A00F7BD5200F7CE6300FFEF
      E700F7E7B500F7C65A00FFC65A00FFC65A00FFC65A00FFC65A00F7C65A00F7D6
      8C00F7F7EF00FFD68400F7C65200F7B54A00EFFFF7007BDEA50010CE5A0010D6
      5200A5EFBD00F7FFF70000000000000000000000000000000000CEF7DE0031DE
      6B0008D6520039CE7B00CEF7DE000000000000000000F7A54200FFF7EF00FFEF
      D600FFCE7300FFFFFF00FFDEAD00F7C67B0094D684007BBD4200A5CE73009CCE
      730073B53100C6DEAD0000000000000000000000000021520800EFEFE700C6CE
      BD004A734A00FFFFFF00A5B5940063844200FFF7AD00F7D66B00FFE79C00FFE7
      9400FFD66300FFEFBD000000000000000000F7B55200FFC65A00FFCE7300FFEF
      DE00F7F7DE00F7E7A500F7E79C00FFE79C00FFDE9C00FFE79C00FFE7A500FFEF
      C600FFF7E700FFD68400FFCE5200EFBD5200F7FFFF00C6EFD60042CE7B0010D6
      520010DE520073E7A500F7FFF7000000000000000000ADEFC60029D66B0018DE
      5A0021CE63008CDEB500EFFFF7000000000000000000F7C68400FFEFD600FFAD
      3100F7A53100FFC66300FFEFD600FFD69400FFFFFF00F7F7E700EFF7E700EFF7
      EF00F7F7EF00FFFFFF0000000000000000000000000073945200C6D6BD000842
      00003984000063AD1000CEE7B50084C65200FFFFFF00FFFFEF00FFFFEF00FFFF
      EF00FFFFF700FFFFFF000000000000000000F7C67300FFC65A00FFCE6B00F7DE
      A500FFF7D600FFF7E700FFF7EF00FFF7EF00FFF7EF00FFF7EF00F7F7EF00FFF7
      DE00F7E7BD00F7D66B00F7CE5A00EFBD6B00FFFFFF00F7FFF700ADEFBD0031DE
      6B0010DE5A0010DE5A0018DE630021DE6B0018DE630018DE630018DE630010D6
      6B006BDE9400DEF7E700FFFFFF000000000000000000FFD68400FFF7E700FFBD
      5A00F7AD2900FFD69400FFF7DE00FFDE9400FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF0000000000000000000000000084C64200E7F7DE005AAD
      21005AAD080094C66300D6EFC60094C65A00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF000000000000000000F7DEA500F7CE6B00FFD65A00F7D6
      6300F7D67B00F7D67B00F7D67B00F7D67B00F7D67B00F7D67300F7D67B00EFD6
      7B00F7D67300F7D66300F7CE6300F7D69400F7FFFF00F7FFFF00EFFFEF009CEF
      C60042D6840018D6730010DE6B0008E7630010E76B0018DE6B0029D673006BDE
      A500CEF7DE00F7FFFF00FFF7FF000000000000000000FFCE5200FFF7CE00FFF7
      F700FFDEAD00FFFFFF00FFE79400FFE79400FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF000000000000000000000000005AA50800D6E7BD00FFFF
      F700BDDEA500FFFFFF009CCE7300A5CE7300FFFFFF00FFFFF700FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00000000000000000000000000F7DEA500EFD66B00F7D6
      6300F7D66B00FFD66B00FFDE6B00FFDE6B00FFDE6B00FFDE6300FFDE6B00FFDE
      6B00FFDE6300EFDE6B00EFDE8C0000000000FFFFFF00FFFFFF00FFFFFF00F7FF
      F700C6F7DE0084EFB5005AE794004ADE8C0052E7940073E7A500A5F7C600E7F7
      EF00FFFFFF00FFFFFF00FFFFFF000000000000000000FFEFC600FFD66B00FFE7
      9400FFE79C00FFDE8400FFDE7300FFFFEF00FFFFFF00FFFFFF00000000000000
      0000FFFFFF0000000000000000000000000000000000C6E7AD0073B539009CCE
      6B00A5CE7B008CC65A0084BD4A00EFF7E700FFFFFF00FFFFFF00000000000000
      0000FFFFFF000000000000000000000000000000000000000000F7E7AD00EFDE
      8400DED66B00EFD66300F7D66300F7D66300FFDE6300FFD65A00F7D65A00EFD6
      6B00EFDE7B00F7E7A5000000000000000000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00F7FFF700EFFFEF00DEF7E700E7F7EF00F7FFF700F7FFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000EFF7EF009CC6B5008CBDA500BDDECE00FFFFFF00FFFF
      FF0000000000000000000000000000000000000000000000000000000000CECE
      CE00D6D6D600DEDEDE00DEDEDE00DEDEDE00DEDEDE00D6D6D600D6D6D600CECE
      CE00C6C6C6000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000FFFF
      FF00FFFFFF00FFFFFF007BB5A5001073520008734A0031846B00ADCEC600FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00000000000000000000000000D6D6D600E7E7
      E700EFEFEF00FFFFFF00FFFFFF00FFFFFF00F7F7F700EFEFEF00E7E7E700DEDE
      DE00D6D6D600CECECE0000000000000000000000000000000000EFDEBD00E7B5
      7B00E7AD5A00EFAD5200F7AD4A00F7AD4A00F7AD4A00F7AD4A00EFAD5200EFAD
      5200DEAD6B00E7CE9C0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000FFFF
      FF00FFFFFF00F7F7F7004A947B0010734A0010734A0010734A00398C7300BDD6
      CE00FFFFFF00FFFFFF00FFFFFF00000000000000000000000000D6D6D600E7E7
      E700EFEFEF00FFFFFF00FFFFFF00FFFFFF00F7F7F700EFEFEF00E7E7E700DEDE
      DE00D6D6D600CECECE00000000000000000000000000F7E7D600E7B56B00F7A5
      4200FFA54200F7A54200F7AD4200F7AD4200F7AD4A00F7A54200F7AD4A00F7A5
      4200F7A53900EFA55200EFD6AD00000000000000000000000000000000000000
      000008089C0000007B0000007B00000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000FFFF
      FF00FFFFFF00F7FFFF0073AD9C00107B5200107B5200107B5200107B52004A94
      7B00C6DED600FFFFFF00FFFFFF00000000000000000000000000D6D6D600DEDE
      DE00E7E7E700E7E7E700EFEFEF00E7E7E700E7E7E700E7E7E700DEDEDE00DEDE
      DE00D6D6D600CECECE00000000000000000000000000EFCEAD00EFA54A00F7A5
      4200F7BD7B00F7DEB500FFE7C600FFE7CE00FFE7CE00FFE7C600FFE7CE00F7CE
      A500F7A55200F79C3900E7B57300000000000000000000000000000000000000
      0000000000000000FF0008089C000000000000000000FFAD4A00FFAD4A00EFAD
      5200FFAD4A00FFAD4A00FFAD4A000000000000000000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00C6DED6004294730018845A0018845A0018845A00187B
      5A0063AD9400DEEFE700FFFFFF00FFFFFF000000000000000000D6D6D600D6D6
      D600DEDEDE00E7E7E700EFEFEF00EFEFEF00E7E7E700DEDEDE00DEDEDE00D6D6
      D600CECECE00C6C6C600000000000000000000000000F7C69C00F7A54200F7B5
      5A00F7F7E700FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00F7CE9C00F7A54200E7AD6300000000000000000000000000000000000000
      00000000FF00000000000000FF0000000000FFAD4A00FFAD4A00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00F7A54A00FFAD4A00FFFFFF00C6DED60084B5A5006BAD
      94006BAD94006BAD94006BAD9400318C6B0018845A00218C630021846300218C
      63002184630073AD9C00E7EFEF00FFFFFF000000000000000000D6D6D600E7E7
      E700EFEFEF00FFFFFF00FFFFFF00FFFFFF00F7F7F700EFEFEF00E7E7E700DEDE
      DE00D6D6D600CECECE00000000000000000000000000F7C69400F7A54A00F7B5
      6300FFF7E700FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFDEBD00F7A54200EFAD5A00000000000000000000000000000000004A6B
      F70000000000000000000000000000000000F7A54200FFFFFF00FFFFFF00FFC6
      5A00FFC65A00FFFFFF00FFFFFF00FFAD4A00EFF7EF005AA58C00298C6300298C
      6300298C6B00298C6B00298C6300298C6B00298C6B00298C6B00298C6B00298C
      6B00298C6B00298C63007BB59C00EFF7EF000000000000000000D6D6D600E7E7
      E700EFEFEF00FFFFFF00FFFFFF00FFFFFF00F7F7F700EFEFEF00EFEFEF00E7E7
      E700DEDEDE00CECECE00000000000000000000000000F7C68C00F7AD4A00F7B5
      6B00FFF7E700FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFE7C600F7B54A00EFAD5A000000000000000000000000004A6BF7000000
      000000000000000000000000000000000000F7AD4200FFFFFF00FFC65A00FFAD
      3900FFAD3900FFC65A00FFFFFF00FFC65A00CEDED6003194730031946B003194
      73003194730031946B0031946B0031946B0031946B0031946B0031946B003194
      6B0031946B0031946B0029946B009CC6B5000000000000000000D6D6D600D6D6
      D600DEDEDE00DEDEDE00DEDEDE00DEDEDE00DEDEDE00DEDEDE00D6D6D600D6D6
      D600CECECE00CECECE00000000000000000000000000F7CE8C00FFAD5200FFBD
      7300FFF7E700FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFEFCE00FFBD5200F7B55A00000000000000000000000000000000000000
      000000000000000000000000000000000000FFC65A00FFFFFF00FFC65A00FFB5
      4A00FFB54200FFC65A00FFFFFF00FFC65A00CEE7DE00429C7B00399C7300399C
      7300399C7300399C7300399C7300399C7300399C7300399C7300399C7300399C
      7300399C730039A57300429C7B00ADCEBD000000000000000000D6D6D600DEDE
      DE00EFEFEF00F7F7F700F7F7F700F7F7F700EFEFEF00EFEFEF00E7E7E700DEDE
      DE00D6D6D600C6C6C600000000000000000000000000F7CE9400F7B55200FFC6
      7300FFF7F700FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFE7C600F7BD5200F7B563000000000000000000FFAD4A00FFAD4A00EFAD
      5200FFAD4A00FFAD4A00FFAD4A0000000000FFC65A00FFFFFF00FFFFFF00FFC6
      5A00FFC65A00FFFFFF00FFFFFF00FFDE6B00F7FFF7007BBDA50042A57B0042AD
      7B0042A57B0042A57B0042A57B0039A57B0042A57B0042A57B0042A57B0042A5
      7B0042A57B0042A57B009CCEBD00FFFFFF000000000000000000D6D6D600E7E7
      E700EFEFEF00FFFFFF00FFFFFF00FFFFFF00F7F7F700EFEFEF00E7E7E700DEDE
      DE00D6D6D600CECECE00000000000000000000000000F7CE9C00F7BD5200FFCE
      7B00FFF7F700FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFE7C600F7C65200F7BD6B0000000000FFAD4A00FFAD4A00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00F7A54A00FFAD4A00FFDE6B00FFDE6B00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFDE6B00FFDE6B0000000000EFF7EF00BDDED600B5D6
      C600B5D6C600B5D6C600ADD6C60052A5840042A57B004AAD84004AAD84004AAD
      84004AAD84009CCEBD00F7FFFF00FFFFFF000000000000000000D6D6D600E7E7
      E700EFEFEF00F7F7F700FFFFFF00F7F7F700F7F7F700EFEFEF00E7E7E700E7E7
      E700DEDEDE00CECECE00000000000000000000000000F7CE9C00FFBD5200FFCE
      7B00FFFFF700FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFE7BD00FFCE5200F7C66B0000000000F7A54200FFFFFF00FFFFFF00FFC6
      5A00FFC65A00FFFFFF00FFFFFF00FFAD4A0000000000FFDE6B00FFDE6B00FFDE
      6B00FFDE6B00FFDE6B00FFDE6B0000000000000000000000000000000000FFFF
      FF00FFFFFF00FFFFFF00B5D6CE0052AD840052B58C0052B58C0052B58C004AAD
      840094CEB500F7F7F700FFFFFF00000000000000000000000000CECECE00D6D6
      D600D6D6D600DEDEDE00DEDEDE00DEDEDE00DEDEDE00D6D6D600D6D6D600CECE
      CE00CECECE00C6C6C600000000000000000000000000F7DEAD00FFC65A00F7CE
      6B00F7E7BD00F7F7EF00FFF7E700F7F7E700F7FFF700FFF7EF00FFF7E700FFF7
      E700F7D68C00FFCE5A00EFC6840000000000F7AD4200FFFFFF00FFC65A00FFAD
      3900FFAD3900FFC65A00FFFFFF00FFC65A000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000FFFF
      FF00FFFFFF00F7FFF7007BBDA50052BD8C0052BD8C0052BD8C0052B58C0084C6
      AD00E7EFEF00FFFFFF00FFFFFF00000000000000000000000000CECECE00E7E7
      E700EFEFEF00FFFFFF00FFFFFF00FFFFFF00F7F7F700EFEFEF00E7E7E700DEDE
      DE00D6D6D600CECECE00000000000000000000000000FFEFC600FFCE7300FFD6
      5A00F7D66B00F7D68400FFD67B00FFD67B00FFD67300F7D67B00F7DE7B00EFDE
      7B00F7D66B00F7CE6300FFDEA50000000000FFC65A00FFFFFF00FFC65A00FFB5
      4A00FFB54200FFC65A00FFFFFF00FFC65A000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000FFFF
      FF00FFFFFF00F7F7F70073BD9C005ABD94005ABD94005ABD94007BC6AD00DEEF
      E700FFFFFF00FFFFFF00FFFFFF00000000000000000000000000D6D6D600E7E7
      E700EFEFEF00FFFFFF00FFFFFF00FFFFFF00F7F7F700EFEFEF00E7E7E700DEDE
      DE00D6D6D600CECECE0000000000000000000000000000000000F7E7AD00F7D6
      7300F7DE6300F7D66B00F7D66B00FFD66B00FFDE6B00FFD66B00FFDE6300FFDE
      6300F7DE6B00F7DE94000000000000000000FFC65A00FFFFFF00FFFFFF00FFC6
      5A00FFC65A00FFFFFF00FFFFFF00FFDE6B000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000FFFF
      FF00FFFFFF00FFFFFF00A5CEC60063BD94005AC6940084CEAD00D6E7DE00FFFF
      FF00FFFFFF000000000000000000000000000000000000000000DEDEDE00E7E7
      E700EFEFEF00EFEFEF00F7F7F700EFEFEF00EFEFEF00EFEFEF00E7E7E700DEDE
      DE00DEDEDE00D6D6D6000000000000000000000000000000000000000000F7F7
      CE00EFEFAD00EFE7A500F7E7A500F7E7A500FFE7A500FFE7A500F7E7A500F7E7
      A500F7EFC600000000000000000000000000FFDE6B00FFDE6B00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFDE6B00FFDE6B000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000FFFFFF00FFFFFF00FFFFFF00D6EFDE00C6E7DE00E7F7EF00FFFFFF00FFFF
      FF0000000000000000000000000000000000000000000000000000000000E7E7
      E700E7E7E700E7E7E700E7E7E700E7E7E700E7E7E700E7E7E700E7E7E700DEDE
      DE00DEDEDE000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000FFDE6B00FFDE6B00FFDE
      6B00FFDE6B00FFDE6B00FFDE6B00000000000000000000000000000000000000
      000000000000000000000000000000000000424D3E000000000000003E000000
      2800000040000000500000000100010000000000800200000000000000000000
      000000000000000000000000FFFFFF000000FFFFFFFF00000000FFFFFFFF0000
      0000FFFFFFFF00000000C003C003000000008001800100000000800180010000
      0000800180010000000080018001000000008001800100000000800180010000
      000080018001000000008007800700000000C00FC00F00000000E1FFE1FF0000
      0000FFFFFFFF00000000FFFFFFFF0000FFFFFFFFFFFFFFFFFFFFFFFFF81FF81F
      FFFFE00FE007E007F01FC007C003C003E00F8003C003C003C007800380018001
      C007800380018001C007800380018001C007800380018001C007800380018001
      C007800380018001C0078003C003C003E00F8003C003C003F01FC007E007E007
      FFFFE00FF00FF00FFFFFFFFFFFFFFFFFFFFFFFFF8000FFFFFFFFFFFF0000FFFF
      FFFFFFFF0000C003FFFFF00700008003F08FE00700008003E00FE00700208003
      E02FE00700008003E01FE00700008003E00FE00700008003F00FE00700008003
      E80FE00700008003E40FE00700008003E00FE00700008003FFFFFFFF00008003
      FFFFFFFF00008003FFFFFFFF0000FFFFC0030001FFFFFFFF80010001FFFFFFFF
      00000001C003C00300000181D003D007000003C180038003000007E1C003C003
      00000FF18003800300000FF18003800300000FF180038003000007E180038003
      000003C180038003000001818003800300000001800380030000000180038003
      8001000180378037C0030001FFFFFFFFFC0FE007FFFFFFFFE001C003C003FFFF
      E001C0038001F1FFE001C0038001F9818000C0038001F5000000C0038001EF00
      0000C0038001DF000000C0038001FF000000C003800181000000C00380010000
      8000C00380010081E001C003800100FFE001C003800100FFE001C003C00300FF
      E007C003E00700FFF00FE007FFFF81FF00000000000000000000000000000000
      000000000000}
  end
  object PopupMenu1: TPopupMenu
    Images = ImageList1
    OnPopup = PopupMenu1Popup
    Left = 232
    Top = 281
    object N23: TMenuItem
      Caption = #1057#1086#1079#1076#1072#1090#1100
      ImageIndex = 6
      object N24: TMenuItem
        Caption = #1064#1072#1073#1083#1086#1085' '#1092#1072#1082#1090#1072' ('#1087#1088#1077#1094#1077#1076#1077#1085#1090#1072')'
        Hint = #1057#1086#1079#1076#1072#1090#1100' '#1096#1072#1073#1083#1086#1085' '#1092#1072#1082#1090#1072' ('#1087#1088#1077#1094#1077#1076#1077#1085#1090#1072')'
        ImageIndex = 22
        OnClick = NewTClick
      end
      object N26: TMenuItem
        Caption = #1060#1072#1082#1090' ('#1087#1088#1077#1094#1077#1076#1077#1085#1090')'
        Hint = #1057#1086#1079#1076#1072#1090#1100' '#1092#1072#1082#1090' ('#1087#1088#1077#1094#1077#1076#1077#1085#1090')'
        ImageIndex = 20
        OnClick = NewFClick
      end
      object N32: TMenuItem
        Caption = #1064#1072#1073#1083#1086#1085' '#1087#1088#1072#1074#1080#1083#1072
        Hint = #1057#1086#1079#1076#1072#1090#1100' '#1096#1072#1073#1083#1086#1085' '#1087#1088#1072#1074#1080#1083#1072
        ImageIndex = 51
        OnClick = ToolButton13Click
      end
      object N25: TMenuItem
        Caption = #1055#1088#1072#1074#1080#1083#1086
        Hint = #1057#1086#1079#1076#1072#1090#1100' '#1087#1088#1072#1074#1080#1083#1086
        ImageIndex = 19
        OnClick = NewRClick
      end
    end
    object N20: TMenuItem
      Caption = #1057#1086#1079#1076#1072#1090#1100
      ImageIndex = 6
      OnClick = N20Click
    end
    object N21: TMenuItem
      Caption = #1048#1079#1084#1077#1085#1080#1090#1100
      ImageIndex = 10
      OnClick = EditItemClick
    end
    object N22: TMenuItem
      Caption = #1059#1076#1072#1083#1080#1090#1100
      ImageIndex = 5
      OnClick = DeleteItemClick
    end
    object N28: TMenuItem
      Caption = #1057#1082#1086#1087#1080#1088#1086#1074#1072#1090#1100' '#1074
      ImageIndex = 38
    end
    object N27: TMenuItem
      Caption = #1058#1088#1072#1085#1089#1083#1080#1090#1077#1088#1072#1094#1080#1103
      object RUENG2: TMenuItem
        Caption = 'RU -> ENG'
        OnClick = RUENG1Click
      end
      object ENGRU2: TMenuItem
        Caption = 'ENG -> RU'
        OnClick = ENGRU1Click
      end
    end
    object doc1: TMenuItem
      Caption = #1057#1092#1086#1088#1084#1080#1088#1086#1074#1072#1090#1100' '#1086#1090#1095#1077#1090' (.doc)'
      ImageIndex = 40
      OnClick = doc1Click
    end
    object Join1: TMenuItem
      Caption = 'Join with'
    end
  end
  object PopupMenu2: TPopupMenu
    Left = 232
    Top = 313
    object RUENG1: TMenuItem
      Caption = 'RU -> ENG'
      OnClick = RUENG1Click
    end
    object ENGRU1: TMenuItem
      Caption = 'ENG -> RU'
      OnClick = ENGRU1Click
    end
  end
  object SavePictureDialog1: TSavePictureDialog
    Filter = 'Bitmaps (*.bmp)|*.bmp'
    Left = 632
  end
  object ImageList3: TImageList
    Left = 712
    Bitmap = {
      494C010102000400080110001000FFFFFFFFFF10FFFFFFFFFFFFFFFF424D3600
      0000000000003600000028000000400000001000000001002000000000000010
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000FFFF
      FF00FFFEFF00FDFFFF00FDFFFF00FFFEFF00FDFFFF00FFFFFF00FFFEFF00FFFF
      FF00FEFEFE00000000000000000000000000000000000000000000000000FFFF
      FF00FFFEFF00FDFFFF00FDFFFF00FFFEFF00FDFFFF00FFFFFF00FFFEFF00FFFF
      FF00FEFEFE000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000FFFEFF009CA9
      AB009AA9AC009BA7AB0099AAAD0099A8AB009AA9AC0099A8AA0099A8AB009CA8
      AC00FFFFFF000000000000000000000000000000000000000000FFFEFF009CA9
      AB009AA9AC009BA7AB0099AAAD0099A8AB009AA9AC0099A8AA0099A8AB009CA8
      AC00FFFFFF000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000FDFFFF009BA7
      AB00FFFFFF00FFFFFF00FFFEFF0000000000FFFFFF00FFFFFF00FFFFFF0099A8
      AB00FFFEFF000000000000000000000000000000000000000000FDFFFF009BA7
      AB00FFFFFF00FFFFFF00FFFEFF0000000000FFFFFF00FFFFFF00FFFFFF0099A8
      AB00FFFEFF000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000FFFFFF009BA7
      AB00FFFFFF00FDFFFF00FFFFFF00FCFEFE00FFFFFF00FFFFFF00FFFFFF0099A8
      AA00FFFFFF000000000000000000000000000000000000000000FFFFFF009CA8
      AC00FFFFFF00FDFFFF00FFFFFF0000000000FEFEFE00FFFFFF00FFFFFF0099A8
      AA00FFFFFF000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000FEFEFE0098A9
      AC00FFFFFF00FDFFFF00FFFFFF00FFFFFF00FFFEFE00FFFFFF00FFFFFF009AA9
      AC00FDFFFF000000000000000000000000000000000000000000FFFFFF0097A8
      AB00FEFEFE00FDFFFF00FFFFFF0000000000FFFFFF00FEFEFE00FFFFFF009AA9
      AC00FDFFFF000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000FDFFFF0094A7
      AA00FFFFFF0000000000020000000200000000000000000000000000000099A8
      AB00FFFEFF000000000000000000000000000000000000000000FCFEFF0097AA
      AD00FFFFFF0000000000020000000200000000000000000000000000000099A8
      AB00FFFEFF000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000FFFEFE0098AA
      AB00FFFFFF00FFFFFF00FDFFFE00FFFFFF00FFFFFF00FFFFFF00FFFEFF0099AA
      AD00FDFFFF000000000000000000000000000000000000000000FFFFFF0098AA
      AB00FFFFFF00FFFFFF00FDFFFE0002000000FFFFFF00FFFFFF00FFFEFF0099AA
      AD00FDFFFF000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000FFFFFF0099A8
      AB00FFFFFF00FFFEFF00FFFFFF00FEFEFE00FDFFFF00FDFFFF00FFFFFF009BA7
      AB00FDFFFF000000000000000000000000000000000000000000FFFFFF0099A8
      AB00FFFFFF00FFFEFF00FFFFFF0000000000FDFFFF00FDFFFF00FFFFFF009BA7
      AB00FDFFFF000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000FDFFFE009CA9
      AB00FDFFFF00FFFFFF00FFFFFF00FFFFFF00FEFEFE00FEFEFE00FFFFFF009AA9
      AC00FFFEFF000000000000000000000000000000000000000000FDFFFE009CA9
      AB00FDFFFF00FFFFFF00FFFFFF00FFFFFF00FEFEFE00FFFFFF00FFFFFF009AA9
      AC00FFFEFF000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000FDFFFF009CA8
      AE009BA8AA0099A8AB0099ABAC0094A7AA0098A9AC009CA8AC009BA7AB009CA9
      AB00FFFFFF000000000000000000000000000000000000000000FDFFFF009CA8
      AE009CA9AB0099A8AB0098AAAB0097AAAD0097A8AB009CA8AC009BA7AB009CA9
      AB00FFFFFF000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000FFFFFC00FDFF
      FF00FDFFFE00FFFFFF00FFFFFF00FDFFFF00FCFEFE00FFFFFF00FDFFFF00FFFE
      FF00000000000000000000000000000000000000000000000000FFFFFC00FDFF
      FF00FDFFFE00FFFFFF00FFFFFF00FCFEFF00FDFFFF00FFFFFF00FDFFFF00FFFE
      FF00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000424D3E000000000000003E000000
      2800000040000000100000000100010000000000800000000000000000000000
      000000000000000000000000FFFFFF00FFFFFFFF00000000FFFFFFFF00000000
      FFFFFFFF00000000E007E00700000000C007C00700000000C107C10700000000
      C007C00700000000C007C00700000000C027C02700000000C007C00700000000
      C007C00700000000C007C00700000000C007C00700000000C00FC00F00000000
      FFFFFFFF00000000FFFFFFFF0000000000000000000000000000000000000000
      000000000000}
  end
  object PopupMenu3: TPopupMenu
    OnPopup = PopupMenu3Popup
    Left = 456
    Top = 104
    object Edit1: TMenuItem
      Caption = 'Detail'
      OnClick = Edit1Click
    end
  end
  object ImageList4: TImageList
    Height = 32
    Left = 520
    Top = 256
    Bitmap = {
      494C010115001800080110002000FFFFFFFFFF10FFFFFFFFFFFFFFFF424D3600
      000000000000360000002800000040000000C0000000010020000000000000C0
      0000000000000000000000000000000000000000000000000000FEFEFE01FCFB
      FB05FBF9F907FBF9F907FBF9F907FBF9F907FBF9F907FBF9F907FBF9F907FBF9
      F907FCFBFB05FEFEFE0100000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000E7DDDF2BAA88
      8E919A727AAC9A727AAC9B727AAC9A727AAC9A727AAC9B727AAC9A727AAC9A72
      7AACA9878D93E5DBDD2D00000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000FDFDFD02AF8F958E6F36
      41F46F353FF66F353FF66F343FF66F353FF66F353FF66F343FF66F353FF66F35
      3FF66F3641F4AC8B9293FDFDFD02000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000C9B3B75F733B44FFBB9D
      A4FBD4C2C6FBD4C1C6FBD4C0C5FBD7C5CAFBD8C5CAFBD4C0C5FBD4C1C6FBD4C2
      C6FBBB9EA5FB733A46FFC7B1B562000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000986F77B4966B74FBF6F3
      F3FDF9F7F8FEF9F7F8FEF9F7F7FEF5F1F2FEF5F1F2FEF9F7F7FEF9F7F8FEF9F7
      F8FEF6F3F4FD976C77FB956C73B8000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FAF8F9086E343FF6EFE7EAFDF9F5
      F7FEFBF7F8FFF9F6F6FFF3EDEEFF5E3139FF562C35FFEFE7E9FFF9F5F6FFFAF8
      F9FFF9F4F7FEF0E9EBFD6E323EF9F8F6F60B0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000EDE7E81F763D49FDFBF9FAFEF9F6
      F8FEFAF7F8FFF9F6F6FFF0EAEBFF4E1E26FF340E16FFEFE5E7FFF9F6F7FFF9F6
      F7FFF9F6F8FEFBFAFAFE78414CFEE8DFE1290000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000D1BFC352966A74FCFBF9FAFEFDFB
      FCFF9A7B81FFAD959BFFBEA9ADFF6F3541FF4D2029FFBBA5AAFFB49CA1FF9274
      7AFFFDFCFCFFFAF9FAFE9A717AFDCDB9BD5A0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000CCB8BB5BA07980FDFBF9FAFEFAF7
      F8FF563036FF67434AFF633E45FF5F2E37FF51272FFF5F3B42FF6E4750FF4E2B
      31FFF9F5F6FFFBF9F9FEA17B83FDCAB5B85F0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000CDB8BB5BA17A83FEFCF9FAFFBEA3
      A9FF63363FFF492028FF52252EFF6F3641FF713842FF50242CFF4D2229FF4A1F
      27FFB89EA4FFFCFAFAFFA17A83FECBB6BA5E0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000CDB8BB5BA17A83FEFBF9FAFFC4AE
      B3FF946A72FF652E38FF6E3540FF804D57FF8A5B64FF6C323DFF69323CFF5D28
      32FFC3ADB1FFFBF9F9FFA27B83FECBB6BA5E0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000CCB7BB5CA27B83FEFBFAFBFFFEFE
      FEFF7F525AFF703641FF703A44FF936970FFA07B83FF9C757CFF6E333FFF572E
      36FFFFFFFFFFFBFAFAFFA27B83FECAB5B95F0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000CCB7BB5CA27B83FEFDFCFDFFFEFE
      FEFF61323BFF713741FF6A3640FFCDB9BCFFCDBABEFF9B747CFF79404BFF4A25
      2CFFFEFEFEFFFDFDFDFFA27B83FECAB5B95F0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000CCB7BB5CA27B82FEE6DBDEFFAE92
      98FF5E2A34FF57262FFFBEA5AAFFFEFCFDFFFEFDFDFFC5AEB3FF8A5B64FF471D
      25FFAE9096FFE2D8D9FFA17B83FECAB5B95F0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000CCB7BB5CA27B82FEC3ABB0FF4C27
      2EFF622E38FF4A1C24FFE2D3D6FFF9F5F6FFF9F6F6FFE0D5D7FF824F58FF5124
      2DFF4C262EFFBAA2A6FFA27B83FECAB5B95F0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000CCB7BB5CA27B84FEB99DA2FF622F
      39FF703540FF481E26FFFAF4F5FFFAF6F8FFFAF7F8FFF8F4F5FF743D48FF6B32
      3CFF52262EFFA89094FFA37D85FECAB5B95F0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000CCB7BB5CA27B84FEB89CA2FF824F
      59FF753B46FF481E26FFF9F3F4FFFAF6F8FFFAF7F8FFF9F5F6FF6D343EFF6F36
      40FF6F4048FFA68D92FFA37D85FECAB5B95F0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000CCB7BB5CA27B82FEC6B0B4FF9268
      70FF8A5962FF431820FFDED0D3FFF9F5F6FFF9F5F6FFE3D6D9FF5C252FFF5F2D
      36FF8F626AFFBCA4A8FFA27B82FECAB5B95F0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000CCB7BB5CA27B82FEE9E0E2FFB99E
      A4FF86555FFF4A1D25FFB79FA4FFFEFDFDFFFEFDFDFFBFA7ABFF5C2832FF4E21
      29FFBD9FA5FFE6DDDFFFA17A82FECAB5B95F0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000CCB7BB5CA27B83FEFDFBFDFFFEFE
      FEFF90646DFF6C343EFF452027FFC2ADB2FFC5B0B4FF4C262DFF703641FF552B
      33FFFEFEFEFFFDFBFDFFA27B83FECAB5B95F0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000CCB7BB5CA27B83FEFBF9FAFFFFFE
      FEFF73464EFF713641FF482128FF5D3A42FF603D43FF4B222AFF703640FF512A
      32FFFEFEFEFFFBF9FAFFA27B83FECAB5B95F0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000CDB8BC5BA27A83FEFBF9FAFFC7AD
      B2FF50242CFF763D48FF733A45FF5B2B34FF5B2B35FF713642FF7A424DFF421A
      22FFBCA2A7FFFBFAFAFFA17A83FECBB6BA5E0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000CDB8BC5BA17A83FEFCFAFAFFBEA3
      A8FF855A62FF733D48FF966B73FF6E3641FF703642FF78424DFF956B73FF5521
      2BFFB79AA0FFFCFBFBFFA17A83FECBB6BA5E0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000CCB8BB5BA17982FDFBF9FAFEFAF8
      F9FF9B737CFF82545DFF9F7980FF8C5E66FF63313BFF8D5F67FFA17A81FF7846
      50FFFBF8F9FFFBF9F9FEA17B83FDCAB5B85F0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000D0BDC155996E78FDFAF9FAFEFDFB
      FCFFB3969CFFBEA4A8FFCBB7BAFF79424DFF4B1E27FFCAB1B5FFC6AFB3FFA885
      8CFFFEFCFDFFFAF8FAFE9B737CFDCCB7BB5C0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000EBE3E52378404CFEFBFAFAFEF9F6
      F7FFFBF9FAFFFAF7F8FFEEE7E9FF86565FFF63343DFFEEE4E6FFF9F7F8FFFBF8
      FAFFFAF6F7FFFBF9FAFE7B4650FEE5DCDE2E0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FAF8F8096E323EF9F1EBEDFDF8F4
      F6FFFBF8F9FFF9F5F7FFF2ECEEFF8E6169FF81525CFFF0E9EBFFF9F5F6FFFBF8
      F9FFF8F5F6FFF3EDEEFD6D333FFBF8F6F60C0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000093686FBCA07881FBF8F5
      F6FDFBF9FAFEFBF9FAFEFBF9FAFEF7F4F5FEF7F4F5FEFBF9F9FEFBF9FAFEFBF9
      FAFEF8F5F6FDA27A83FB90646CC0000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000C0A7AB6F773F4AFFC5AC
      B2FAE3D5D9FBE3D5D9FBE3D6DAFBE5D8DBFBE5D8DBFBE3D6D9FBE3D5D9FBE3D5
      D9FBC6AEB5FA763F4AFFBEA4A972000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000FDFCFC03A27C84A56E35
      3FF5713743F8713743F8713743F8713743F8713743F8713743F8713743F87137
      43F86E353FF59F7980AAFDFCFC03000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000E1D5D7359E76
      7EA68B5C65C78B5C66C78B5C66C78B5C66C78B5C66C78B5C66C78B5C66C78B5C
      65C79E767EA6DFD3D53800000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000FDFDFD02F7F4
      F50DF4F0F112F4F0F112F4F0F112F4F0F112F4F0F112F4F0F112F4F0F112F4F0
      F112F7F4F50DFDFDFD0200000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFFFF00FBFFFF00FEFEFE00FFFF
      FF00FFFFFF00FFFFFF00FDFFFF00FFFFFF00FEFEFE00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FDFFFF00FFFFFF00FFFFFF00FFFFFF00FBFFFF00FEFEFE00FFFF
      FF00FFFFFF00FFFFFF00FDFFFF00FFFFFF00FFFFFF00FFFFFF00FDFFFF00FFFF
      FF00FFFFFF00FDFFFF00FFFEFE00FDFFFF00FFFFFF00FBFFFF00FEFEFE00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FDFFFF00FFFFFF00FDFFFF00FDFFFF00FFFFFF00FBFFFF00FEFEFE00FFFF
      FF00FDFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FDFFFF00FFFFFF00FDFFFF00FDFFFF00FCFEFE00FFFFFF00FFFEFE00FFFF
      FF00FBFFFF00FDFFFF00FFFFFF00FFFFFF00FBFFFF00FFFFFF00FDFFFF00FFFF
      FF00FFFFFF00FFFFFF00FBFFFF00FFFEFE00FCFEFE00FFFFFF00FFFEFE00FFFF
      FF00FBFFFF00FDFFFF00FFFFFF00FFFFFF00FDFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FDFFFF00FFFFFF00FFFFFF00FCFEFE00FFFFFF00FFFEFE00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FEFEFE00FDFFFF00FFFEFE00FFFFFF00FCFEFE00FFFFFF00FFFEFE00FFFF
      FF00FFFFFF00FEFEFE00FFFFFF00FFFFFF00FCFEFE00FDFFFF00FFFFFF00FEFE
      FE00FEFEFE00FDFFFF00FFFEFE00FFFFFF00FFFFFF00FFFFFF00F8F3F400A47A
      8100703942007538420073364000733A430072364100753944006A3B43007738
      4200CBB4B800FDF8F900FFFEFE00FFFFFF00FFFFFF00FFFFFF00F8F3F400A47A
      8100703942007538420073364000733A430070364100773A4400F5EFF000FFFF
      FF00F6F1F200FCFAFA00FCFEFE00FFFFFF00FFFFFF00FFFFFF00F8F3F400A47A
      8100703942007438420073354100834C5500FFFFFF00FFFFFF006C3D4500733A
      4300CBB4B800FAFAFA00FEFEFE00FFFFFF00FFFFFF00FFFFFF00F8F3F400A47A
      81006B3A4200FFFFFF00FFFFFF00FFFFFF0071374200783844006D3A42007639
      4300CBB4B800FAFAFA00FEFEFE00FFFFFF00FFFFFF00FEFEFE00B7979C006F33
      3D00613038005F2E3600632F3900612D37005A2D36005E2F38005B2F3600632C
      35008A515A00CABDBF00FFFFFF00FFFFFF00FFFFFF00FEFEFE00B7979C006F33
      3D00613038005F2E3600632F3900612D37005A2D3600602E3800FDFFFF00FFFF
      FF00FFFFFF00CBBDBF00FFFFFF00FFFFFF00FFFFFF00FEFEFE00B7979C006F33
      3D00622F37005D2E3700632F3900A2898D00FFFFFF00FFFFFF0087656B00672B
      350087525B00CCBBBE00FFFFFF00FFFFFF00FFFFFF00FEFEFE00B7979C006F33
      3D0061303800FFFFFF00FDFFFF00FFFFFF005B2C3500642F39005E2F3700682B
      350087525B00CCBBBE00FFFFFF00FFFFFF00FFFFFF00F4F2F200723942009259
      6200B08A9000B28D9500AE8C9300B7929A00B2909700A9878E00AC8A9000AC7D
      850084515900E8E2E300FFFEFE00FFFFFF00FFFFFF00F4F2F200723942009259
      6200B08A9000B28D9500AE8C9300B7929A00B1909700AC858D00FFFFFF00FEFE
      FE00FDFFFF00A17F8500FEFEFE00FFFFFF00FFFFFF00F4F2F200723942009259
      6200B28C9200B18C9400AD8C9300D4C3C700FEFEFE00FEFEFE00C2A7AB00AD7E
      8600713841009E838700FFFEFE00FEFEFE00FFFFFF00F4F2F200723942009259
      6200B18B9100F9F4F500FFFFFF00EEE9EA00B3919800AB868E00AC8C9100AB7F
      8600713841009E838700FFFEFE00FEFEFE00FDFFFF00B7979C006F3E4600F6D6
      DB00FFF4F600FFEEF200FFF2F600F2E1E500F9E3E800FBF0F300FFF3F500FFF2
      F400F9F7F700FFFEFE00FEFEFE00FEFEFE00FDFFFF00B7979C006F3E4600F6D6
      DB00FFF4F600FFEEF200FFF2F600F2E1E500F9E2E700FFF1F500FEFEFE00FDFF
      FF00F2E7E9007C495100F9F9F900FEFEFE00FDFFFF00B7979C006F3E4600F6D6
      DB00FCF4F500FEEFF300FDF2F500F5E1E600FFFFFF00FFFFFF00FFF3F500FFF1
      F300BD949B007E495200FCFAFA00FFFFFF00FDFFFF00B7979C006F3E4600F6D6
      DB00FFF4F600FDF2F400FFFBFD00F2E1E500F9E3E800FEF0F400FEF3F500FFF2
      F400BD949B007E495200FCFAFA00FFFFFF00FFFFFF0076414A00B5979C00F9FE
      FD00F6FBFA00FFFBFC00F1E2E600634C51008A747900FEFBFD00FFFFFF00F8F8
      F800FEFEFE00FFFFFF00FDFFFF00FFFFFF00FFFFFF0076414A00B5979C00F9FE
      FD00F6FBFA00FFFBFC00F1E2E600634C51008A747900FEFBFD00FFFFFF00FFFD
      FD00FFF1F300693A4200D4C3C600FFFFFF00FFFFFF0076414A00B5979C00F9FE
      FD00FDFBFB00FFFCFD00F1E3E700624C5100CEC0C400FDFCFE00FBFFFF00F8F8
      F800FFEEF10069384000D6C3C600FFFFFF00FFFFFF0076414A00B5979C00F9FE
      FD00F8FAFA00FFFAFB00F1E2E600644D520087737800FCFBFD00FDFFFF00FAF8
      F800FFEEF10069384000D6C3C600FFFFFF00FFFFFF0061303800EBDDDF00F6F8
      F800F2F2F200F7F1F200EEDBDE00371D23004B313700FFFEFF00D6D8D800F9FE
      FD00FFFFFF00FDFFFF00FFFFFF00FFFFFF00FFFFFF0061303800EBDDDF00F6F8
      F800F2F2F200F7F1F200EEDBDE00371D23004A303600FFFEFF00D5D7D700F9FE
      FD00FAFFFE0086666B00A1777E00FDFFFF00FFFFFF0061303800EBDDDF00F6F8
      F800F0F2F200F9F1F200EDD9DE003B1C23004D313700FFFEFF00DAD7D900F9FE
      FD00FDFFFF0087656B00A0777E00FFFFFF00FFFFFF0061303800EBDDDF00F6F8
      F800F0F2F200F9F1F200E9DADE003B1C23004A303600FFFEFF00D9D7D700F8FD
      FC00FDFFFF0087656B00A0777E00FFFFFF00FCFEFE00562C3300F9F4F500FAFF
      FE00A29597009F8E9100AB8C93005F343D00522B3300E1CDD2005C474A00F1F3
      F300FFFEFE00FDFFFF00E2D7D900FFFFFF00FCFEFE00562C3300F9F4F500FAFF
      FE00A29597009F8E9100AB8C93005F343D00522B3300E1CDD2005C474A00F1F3
      F300F2F8F700A68B8F007A454E00FFFFFF00FCFEFE00562C3300F9F4F500FAFF
      FE00A29597009F8E9100AB8C93005F343D00522B3300E1CDD2005C474A00F1F3
      F300F2F8F700A68B8F007A454E00FFFFFF00FCFEFE00562C3300F9F4F500FAFF
      FE00A29597009F8E9100AB8C93005F343D00522B3300E1CDD2005C474A00F1F3
      F300F2F8F700A68B8F007A454E00FFFFFF00FFFFFF005C303700FEF6F700F7F1
      F20049272D004D292F004C1F28006D313C004F1B25005E373F003F0E1600A28B
      8F00F8FAFA00E5DFE00079404900FFFFFF00FFFFFF005C303700FEF6F700F7F1
      F20049272D004D292F004C1F28006D313C004F1B25005E373F003F0E1600A28B
      8F00F5FAF900AD969A0074384200FFFFFF00FFFFFF005C303700FEF6F700F7F1
      F20049272D004D292F004C1F28006D313C004F1B25005E373F003F0E1600A28B
      8F00F5FAF900AD969A0074384200FFFFFF00FFFFFF005C303700FEF6F700F7F1
      F20049272D004D292F004C1F28006D313C004F1B25005E373F003F0E1600A28B
      8F00F5FAF900AD969A0074384200FFFFFF00FEFEFE0061303800FDF2F400EAD9
      DC007A3E480055242C00602C3600813B48007C3C480044192200792F3B006B47
      4D00FFFDFD00B3959A0077384200FFFFFF00FEFEFE0061303800FDF2F400EAD9
      DC007A3E480055242C00602C3600813B48007C3C480044192200792F3B006B47
      4D00FFFEFE00B1969A0077384200FFFFFF00FEFEFE0061303800FDF2F400EAD9
      DC007A3E480055242C00602C3600813B48007C3C480044192200792F3B006B47
      4D00FFFEFE00B1969A0077384200FFFFFF00FEFEFE0061303800FDF2F400EAD9
      DC007A3E480055242C00602C3600813B48007C3C480044192200792F3B006B47
      4D00FFFEFE00B1969A0077384200FFFFFF00FFFFFF00602F3700FFF2F400F7EF
      F000957177006A333C006E3B43008158600093697000763F48005B2C3400B49B
      9F00FFFCFD00B5959A0070333D00FFFFFF00FFFFFF00602F3700FFF2F400F7EF
      F000957177006A333C006E3B43008158600093697000763F48005B2C3400B49B
      9F00FFFBFC00B7979C0072333D00FFFFFF00FFFFFF00602F3700FFF2F400F7EF
      F000957177006A333C006E3B43008158600093697000763F48005B2C3400B49B
      9F00FFFBFC00B7979C0072333D00FFFFFF00FFFFFF00602F3700FFF2F400F7EF
      F000957177006A333C006E3B43008158600093697000763F48005B2C3400B49B
      9F00FFFBFC00B7979C0072333D00FFFFFF00FFFFFF0062313900FFF2F400FFFF
      FF00734D5300703942006A404700BFACAF00AF91960096656D00491D2400E3D0
      D300FFFCFD00B490960074353F00FFFFFF00FFFFFF0062313900FFF2F400FFFF
      FF00734D5300703942006A404700BFACAF00AF91960096656D00491D2400E3D0
      D300FEFCFC00B08E940070343E00FFFFFF00FFFFFF0062313900FFF2F400FFFF
      FF00734D5300703942006A404700BFACAF00AF91960096656D00491D2400E3D0
      D300FEFCFC00B08E940070343E00FFFFFF00FFFFFF0062313900FFF2F400FFFF
      FF00734D5300703942006A404700BFACAF00AF91960096656D00491D2400E3D0
      D300FEFCFC00B08E940070343E00FFFFFF00FFFEFE0062313900FFF4F600E2D4
      D6005B2F36005F2C3400B2909600FFFAFB00F0DFE200996F7600622D3600A186
      8A00F1E0E300B6969B0071353F00FCFEFE00FFFEFE0062313900FFF4F600E2D4
      D6005B2F36005F2C3400B2909600FFFAFB00F0DFE200996F7600622D3600A186
      8A00EBE0E200B7959B006F333D00FDFFFF00FFFEFE0062313900FFF4F600E2D4
      D6005B2F36005F2C3400B2909600FFFAFB00F0DFE200996F7600622D3600A186
      8A00EBE0E200B7959B006F333D00FDFFFF00FFFEFE0062313900FFF4F600E2D4
      D6005B2F36005F2C3400B2909600FFFAFB00F0DFE200996F7600622D3600A186
      8A00EBE0E200B7959B006F333D00FDFFFF00FFFFFF005D2E3600FCE9EC004D34
      38005A2931004B212800F9E4E700FFFBFC00FFFCFD00A5858A00773842004F29
      2F008A777A00BB9BA0006C353E00FFFFFF00FFFFFF005D2E3600FCE9EC004D34
      38005A2931004B212800F9E4E700FFFBFC00FFFCFD00A5858A00773842004F29
      2F008C777A00BE9AA0006E353E00FFFFFF00FFFFFF005D2E3600FCE9EC004D34
      38005A2931004B212800F9E4E700FFFBFC00FFFCFD00A5858A00773842004F29
      2F008C777A00BE9AA0006E353E00FFFFFF00FFFFFF005D2E3600FCE9EC004D34
      38005A2931004B212800F9E4E700FFFBFC00FFFCFD00A5858A00773842004F29
      2F008C777A00BE9AA0006E353E00FFFFFF00FFFFFF005E2F3700F8E5E8004123
      28006B323B00421C2200FFFBFC00F3F5F500FAF8F800B9A4A7007C3742005026
      2D0063505300C29EA40070374000FFFFFF00FFFFFF005E2F3700F8E5E8004123
      28006B323B00421C2200FFFBFC00F3F5F500FAF8F800B9A4A7007C3742005026
      2D0064515400BF9DA30070374000FFFFFF00FFFFFF005E2F3700F8E5E8004123
      28006B323B00421C2200FFFBFC00F3F5F500FAF8F800B9A4A7007C3742005026
      2D0064515400BF9DA30070374000FFFFFF00FFFFFF005E2F3700F8E5E8004123
      28006B323B00421C2200FFFBFC00F3F5F500FAF8F800B9A4A7007C3742005026
      2D0064515400BF9DA30070374000FFFFFF00FFFFFF00602F3700FAE5E800694E
      520082495200421E2400FFFAFB00F4F9F800FCF7F900B39EA100702C3700754B
      520066535600C3A1A70072394200FFFFFF00FFFFFF00602F3700FAE5E800694E
      520082495200421E2400FFFAFB00F4F9F800FCF7F900B39EA100702C3700754B
      520066535600C3A1A70072394200FFFFFF00FFFFFF00602F3700FAE5E800694E
      520082495200421E2400FFFAFB00F4F9F800FCF7F900B39EA100702C3700754B
      520066535600C3A1A70072394200FFFFFF00FFFFFF00602F3700FAE5E800694E
      520082495200421E2400FFFAFB00F4F9F800FCF7F900B39EA100702C3700754B
      520066535600C3A1A70072394200FFFFFF00FDFFFF0062333B00FAE7EA008B70
      74009160680045192000FAE5E800F9F7F700FFFBFC008C6E730077333E007854
      5A0095828500BD9BA10070343E00FDFFFF00FDFFFF0062333B00FAE7EA008B70
      74009160680045192000FAE5E800F9F7F700FFFBFC008C6E730077333E007854
      5A0095828500BD9BA10070343E00FDFFFF00FDFFFF0062333B00FAE7EA008B70
      74009160680045192000FAE5E800F9F7F700FFFBFC008C6E730077333E007854
      5A0095828500BD9BA10070343E00FDFFFF00FDFFFF0062333B00FAE7EA008B70
      74009160680045192000FAE5E800F9F7F700FFFBFC008C6E730077333E007854
      5A0095828500BD9BA10070343E00FDFFFF00FCFEFE0060313900FFF3F500DFCC
      CF008C60670052212900A5838900FFFAFB00F5E8EA00532A3100642F3800AA8C
      9100F4E7E900B593990074353F00FFFFFF00FCFEFE0060313900FFF3F500DFCC
      CF008C60670052212900A5838900FFFAFB00F5E8EA00532A3100642F3800AA8C
      9100F4E7E900B593990074353F00FFFFFF00FCFEFE0060313900FFF3F500DFCC
      CF008C60670052212900A5838900FFFAFB00F5E8EA00532A3100642F3800AA8C
      9100F4E7E900B593990074353F00FFFFFF00FCFEFE0060313900FFF3F500DFCC
      CF008C60670052212900A5838900FFFAFB00F5E8EA00532A3100642F3800AA8C
      9100F4E7E900B593990074353F00FFFFFF00FFFFFF00612E3600FDF5F600FDFF
      FF00896369006A333C004B222900A79295008462680056232B0050242B00E0CD
      D000FEFEFE00B6949A0075364000FFFFFF00FFFFFF00612E3600FDF5F600FDFF
      FF00896369006A333C004B222900A79295008462680056232B0050242B00E0CD
      D000FEFEFE00B6949A0075364000FFFFFF00FFFFFF00612E3600FDF5F600FDFF
      FF00896369006A333C004B222900A79295008462680056232B0050242B00E0CD
      D000FEFEFE00B6949A0075364000FFFFFF00FFFFFF00612E3600FDF5F600FDFF
      FF00896369006A333C004B222900A79295008462680056232B0050242B00E0CD
      D000FEFEFE00B6949A0075364000FFFFFF00FEFEFE0061303800FFF3F500F9F1
      F200512D3300723F470053202800431F250042181F006C37400054232B00A68F
      9300FFFAFB00B6969B0071343E00FFFFFF00FEFEFE0061303800FFF3F500F9F1
      F200512D3300723F470053202800431F250042181F006C37400054232B00A68F
      9300FFFAFB00B6969B0071343E00FFFFFF00FEFEFE0061303800FFF3F500F9F1
      F200512D3300723F470053202800431F250042181F006C37400054232B00A68F
      9300FFFAFB00B6969B0071343E00FFFFFF00FEFEFE0061303800FFF3F500F9F1
      F200512D3300723F470053202800431F250042181F006C37400054232B00A68F
      9300FFFAFB00B6969B0071343E00FFFFFF00FFFFFF0059303700F9F4F500E0D8
      D900703F47006A3B430089565E00702C370075364000764C53007E3F49005E45
      4900FFFEFE00AA979A006D363F00FFFFFF00FFFFFF0059303700F9F4F500E0D8
      D900703F47006A3B430089565E00702C370075364000764C53007E3F49005E45
      4900FFFEFE00AA979A006D363F00FFFFFF00FFFFFF0059303700F9F4F500E0D8
      D900703F47006A3B430089565E00702C370075364000764C53007E3F49005E45
      4900FFFEFE00AA979A006D363F00FFFFFF00FFFFFF0059303700F9F4F500E0D8
      D900703F47006A3B430089565E00702C370075364000764C53007E3F49005E45
      4900FFFEFE00AA979A006D363F00FFFFFF00FCFEFE005F303800FFF7F800F3EE
      EF00926E74006B474D00A2767D007E454E00723F4700885F660085545C00A893
      9600FCFCFC00B1969A0070333D00FFFFFF00FCFEFE005F303800FFF7F800F3EE
      EF00926E74006B474D00A2767D007E454E00723F4700885F660085545C00A893
      9600FCFCFC00B1969A0070333D00FFFFFF00FCFEFE005F303800FFF7F800F3EE
      EF00926E74006B474D00A2767D007E454E00723F4700885F660085545C00A893
      9600FCFCFC00B1969A0070333D00FFFFFF00FCFEFE005F303800FFF7F800F3EE
      EF00926E74006B474D00A2767D007E454E00723F4700885F660085545C00A893
      9600FCFCFC00B1969A0070333D00FFFFFF00FFFFFF00602B3400FDF2F400FEFC
      FC00C1AEB100AD9C9F00C1A3A800693F460059353B00E5D2D50087696E00F9F1
      F200FAF8F800AF898F0077333E00FFFFFF00FFFFFF00602B3400FDF2F400FEFC
      FC00C1AEB100AD9C9F00C1A3A800693F460059353B00E5D2D50087696E00F9F1
      F200FAF8F800AF898F0077333E00FFFFFF00FFFFFF00602B3400FDF2F400FEFC
      FC00C1AEB100AD9C9F00C1A3A800693F460059353B00E5D2D50087696E00F9F1
      F200FAF8F800AF898F0077333E00FFFFFF00FFFFFF00602B3400FDF2F400FEFC
      FC00C1AEB100AD9C9F00C1A3A800693F460059353B00E5D2D50087696E00F9F1
      F200FAF8F800AF898F0077333E00FFFFFF00FCFEFE006A2E3800F1DEE100FDF7
      F800F4EEEF00F9F3F400DCCBCE0070575B00553C4000FFFFFF00E6DBDD00FFFE
      FE00FFFDFD0091656C007B364100FFFFFF00FCFEFE006A2E3800F1DEE100FDF7
      F800F4EEEF00F9F3F400DCCBCE0070575B00553C4000FFFFFF00E6DBDD00FFFE
      FE00FFFDFD0091656C007B364100FFFFFF00FCFEFE006A2E3800F1DEE100FDF7
      F800F4EEEF00F9F3F400DCCBCE0070575B00553C4000FFFFFF00E6DBDD00FFFE
      FE00FFFDFD0091656C007B364100FFFFFF00FCFEFE006A2E3800F1DEE100FDF7
      F800F4EEEF00F9F3F400DCCBCE0070575B00553C4000FFFFFF00E6DBDD00FFFE
      FE00FFFDFD0091656C007B364100FFFFFF00FFFFFF006F363F00C09CA200FDFD
      FD00FCFCFC00FDFBFB00F7E6E900937E81009B868900FEFEFE00FFFFFF00FBF6
      F700FFF5F7006B384000BA969C00FFFFFF00FFFFFF006F363F00C09CA200FDFD
      FD00FCFCFC00FDFBFB00F7E6E900937E81009B868900FEFEFE00FFFFFF00FBF6
      F700FFF5F7006B384000BA969C00FFFFFF00FFFFFF006F363F00C09CA200FDFD
      FD00FCFCFC00FDFBFB00F7E6E900937E81009B868900FEFEFE00FFFFFF00FBF6
      F700FFF5F7006B384000BA969C00FFFFFF00FFFFFF006F363F00C09CA200FDFD
      FD00FCFCFC00FDFBFB00F7E6E900937E81009B868900FEFEFE00FFFFFF00FBF6
      F700FFF5F7006B384000BA969C00FFFFFF00FFFFFF008B61680070474E00F6E1
      E400FFFAFB00FFF7F900FFF8FB00FCE9EC00FAECEE00FCF6F700FDF8F900FFF7
      F800C4A2A80064353D00F6F1F200FEFEFE00FFFFFF008B61680070474E00F6E1
      E400FFFAFB00FFF7F900FFF8FB00FCE9EC00FAECEE00FCF6F700FDF8F900FFF7
      F800C4A2A80064353D00F6F1F200FEFEFE00FFFFFF008B61680070474E00F6E1
      E400FFFAFB00FFF7F900FFF8FB00FCE9EC00FAECEE00FCF6F700FDF8F900FFF7
      F800C4A2A80064353D00F6F1F200FEFEFE00FFFFFF008B61680070474E00F6E1
      E400FFFAFB00FFF7F900FFF8FB00FCE9EC00FAECEE00FCF6F700FDF8F900FFF7
      F800C4A2A80064353D00F6F1F200FEFEFE00FFFEFF00B3A0A30064333B009066
      6D00B9A0A400BEA0A500C4A2A800C4A4A900C3A1A700BE9CA200B6A3A600B08E
      94006C3941007D575D00FAF8F800FDFFFF00FFFEFF00B3A0A30064333B009066
      6D00B9A0A400BEA0A500C4A2A800C4A4A900C3A1A700BE9CA200B6A3A600B08E
      94006C3941007D575D00FAF8F800FDFFFF00FFFEFF00B3A0A30064333B009066
      6D00B9A0A400BEA0A500C4A2A800C4A4A900C3A1A700BE9CA200B6A3A600B08E
      94006C3941007D575D00FAF8F800FDFFFF00FFFEFF00B3A0A30064333B009066
      6D00B9A0A400BEA0A500C4A2A800C4A4A900C3A1A700BE9CA200B6A3A600B08E
      94006C3941007D575D00FAF8F800FDFFFF00FDFFFF00F2F2F200875D64006930
      390062333B0067343C0063323A0063323A006130380065323A005C333A00642F
      3800743F4800D2C5C700FEFEFE00FFFEFE00FDFFFF00F2F2F200875D64006930
      390062333B0067343C0063323A0063323A006130380065323A005C333A00642F
      3800743F4800D2C5C700FEFEFE00FFFEFE00FDFFFF00F2F2F200875D64006930
      390062333B0067343C0063323A0063323A006130380065323A005C333A00642F
      3800743F4800D2C5C700FEFEFE00FFFEFE00FDFFFF00F2F2F200875D64006930
      390062333B0067343C0063323A0063323A006130380065323A005C333A00642F
      3800743F4800D2C5C700FEFEFE00FFFEFE00FEFEFE00FFFEFE00D7C4C7007D35
      410072353F0073343E0070343E006E353E006C333C0073343E0069343D007834
      3F00B48E9400FEFCFC00FDFDFD00FFFFFF00FEFEFE00FFFEFE00D7C4C7007D35
      410072353F0073343E0070343E006E353E006C333C0073343E0069343D007834
      3F00B48E9400FEFCFC00FDFDFD00FFFFFF00FEFEFE00FFFEFE00D7C4C7007D35
      410072353F0073343E0070343E006E353E006C333C0073343E0069343D007834
      3F00B48E9400FEFCFC00FDFDFD00FFFFFF00FEFEFE00FFFEFE00D7C4C7007D35
      410072353F0073343E0070343E006E353E006C333C0073343E0069343D007834
      3F00B48E9400FEFCFC00FDFDFD00FFFFFF00FDFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FEFEFE00FFFEFE00FFFFFF00FDFFFF00FFFFFF00FFFFFF00FDFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FDFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FEFEFE00FFFEFE00FFFFFF00FDFFFF00FFFFFF00FFFFFF00FDFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FDFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FEFEFE00FFFEFE00FFFFFF00FDFFFF00FFFFFF00FFFFFF00FDFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FDFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FEFEFE00FFFEFE00FFFFFF00FDFFFF00FFFFFF00FFFFFF00FDFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FDFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFEFE00FDFFFF00FDFFFF00FFFFFF00FFFF
      FF00FDFFFF00FFFFFF00FFFFFF00FFFFFF00FDFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFEFE00FDFFFF00FDFFFF00FFFFFF00FFFF
      FF00FDFFFF00FFFFFF00FFFFFF00FFFFFF00FDFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFEFE00FDFFFF00FDFFFF00FFFFFF00FFFF
      FF00FDFFFF00FFFFFF00FFFFFF00FFFFFF00FDFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFEFE00FDFFFF00FDFFFF00FFFFFF00FFFF
      FF00FDFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FBFFFF00FEFEFE00FFFF
      FF00FFFFFF00FFFFFF00FDFFFF00FFFFFF00FEFEFE00FFFFFF00FFFFFF00FFFF
      FF00FDFFFF00FFFFFF00FDFFFF00FDFFFF00FFFFFF00FBFFFF00FEFEFE00FFFF
      FF00FFFFFF00FFFFFF00FDFFFF00FFFFFF00FEFEFE00FFFFFF00FFFFFF00FFFF
      FF00FDFFFF00FFFFFF00FDFFFF00FDFFFF00FFFFFF00FBFFFF00FEFEFE00FFFF
      FF00FFFFFF00FFFFFF00FDFFFF00FFFFFF00FEFEFE00FFFFFF00FFFFFF00FFFF
      FF00FDFFFF00FFFFFF00FDFFFF00FDFFFF00FFFFFF00FBFFFF00FEFEFE00FFFF
      FF00FFFFFF00FFFFFF00FDFFFF00FFFFFF00FEFEFE00FFFFFF00FFFFFF00FFFF
      FF00FDFFFF00FFFFFF00FDFFFF00FDFFFF00FCFEFE00FFFFFF00FFFEFE00FFFF
      FF00FBFFFF00FDFFFF00FFFFFF00FFFFFF00FBFFFF00FFFFFF00FDFFFF00FFFF
      FF00FEFEFE00FDFFFF00FFFEFE00FFFFFF00FCFEFE00FFFFFF00FFFEFE00FFFF
      FF00FBFFFF00FDFFFF00FFFFFF00FFFFFF00FBFFFF00FFFFFF00FDFFFF00FFFF
      FF00FEFEFE00FDFFFF00FFFEFE00FFFFFF00FCFEFE00FFFFFF00FFFEFE00FFFF
      FF00FBFFFF00FDFFFF00FFFFFF00FFFFFF00FBFFFF00FFFFFF00FDFFFF00FFFF
      FF00FEFEFE00FDFFFF00FFFEFE00FFFFFF00FCFEFE00FFFFFF00FFFEFE00FFFF
      FF00FBFFFF00FDFFFF00FFFFFF00FFFFFF00FBFFFF00FFFFFF00FDFFFF00FFFF
      FF00FEFEFE00FDFFFF00FFFEFE00FFFFFF00FFFFFF00FFFFFF00F8F3F400A47A
      8100703942007538420073364000733A430072364100753944006A3B43007738
      4200CBB4B800FAFAFA00FEFEFE00FFFFFF00FFFFFF00FFFFFF00F8F3F400A47A
      8100703942007538420073364000733A430072364100753944006A3B43007738
      4200CBB4B800FAFAFA00FEFEFE00FFFFFF00FFFFFF00FFFFFF00F8F3F400A47A
      8100703942007538420073364000733A430072364100753944006A3B43007738
      4200CBB4B800FAFAFA00FEFEFE00FFFFFF00FFFFFF00FFFFFF00F8F3F400A47A
      8100703942007538420073364000733A430072364100753944006A3B43007738
      4200CBB4B800FAFAFA00FEFEFE00FFFFFF00FFFFFF00FEFEFE00B7979C006F33
      3D00613038005F2E3600632F3900612D37005A2D36005E2F38005B2F3600632C
      350087525B00CCBBBE00FFFFFF00FFFFFF00FFFFFF00FEFEFE00B7979C006F33
      3D00613038005F2E3600632F3900612D37005A2D36005E2F38005B2F3600632C
      350087525B00CCBBBE00FFFFFF00FFFFFF00FFFFFF00FEFEFE00B7979C006F33
      3D00613038005F2E3600632F3900612D37005A2D36005E2F38005B2F3600632C
      350087525B00CCBBBE00FFFFFF00FFFFFF00FFFFFF00FEFEFE00B7979C006F33
      3D00613038005F2E3600632F3900612D37005A2D36005E2F38005B2F3600632C
      350087525B00CCBBBE00FFFFFF00FFFFFF00FFFFFF00F4F2F200723942009259
      6200B08A9000B28D9500AE8C9300B7929A00B2909700A9878E00AC8A9000AC7D
      8500713841009E838700FFFEFE00FEFEFE00FFFFFF00F4F2F200723942009259
      6200B08A9000B28D9500AE8C9300B7929A00B2909700A9878E00AC8A9000AC7D
      8500713841009E838700FFFEFE00FEFEFE00FFFFFF00F4F2F200723942009259
      6200B08A9000B28D9500AE8C9300B7929A00B2909700A9878E00AC8A9000AC7D
      8500713841009E838700FFFEFE00FEFEFE00FFFFFF00F4F2F200723942009259
      6200B08A9000B28D9500AE8C9300B7929A00B2909700A9878E00AC8A9000AC7D
      8500713841009E838700FFFEFE00FEFEFE00FDFFFF00B7979C006F3E4600F6D6
      DB00FFF4F600FFEEF200FFF2F600F2E1E500F9E3E800FBF0F300FFF3F500FFF2
      F400BD949B007E495200FCFAFA00FFFFFF00FDFFFF00B7979C006F3E4600F6D6
      DB00FFF4F600FFEEF200FFF2F600F2E1E500F9E3E800FBF0F300FFF3F500FFF2
      F400BD949B007E495200FCFAFA00FFFFFF00FDFFFF00B7979C006F3E4600F6D6
      DB00FFF4F600FFEEF200FFF2F600F2E1E500F9E3E800FBF0F300FFF3F500FFF2
      F400BD949B007E495200FCFAFA00FFFFFF00FDFFFF00B7979C006F3E4600F6D6
      DB00FFF4F600FFEEF200FFF2F600F2E1E500F9E3E800FBF0F300FFF3F500FFF2
      F400BD949B007E495200FCFAFA00FFFFFF00FFFFFF0076414A00B5979C00F9FE
      FD00F6FBFA00FFFBFC00F1E2E600634C51008A747900FEFBFD00FFFFFF00F8F8
      F800FFEEF10069384000D6C3C600FFFFFF00FFFFFF0076414A00B5979C00F9FE
      FD00F6FBFA00FFFBFC00F1E2E600634C51008A747900FEFBFD00FFFFFF00F8F8
      F800FFEEF10069384000D6C3C600FFFFFF00FFFFFF0076414A00B5979C00F9FE
      FD00F6FBFA00FFFBFC00F1E2E600634C51008A747900FEFBFD00FFFFFF00F8F8
      F800FFEEF10069384000D6C3C600FFFFFF00FFFFFF0076414A00B5979C00F9FE
      FD00F6FBFA00FFFBFC00F1E2E600634C51008A747900FEFBFD00FFFFFF00F8F8
      F800FFEEF10069384000D6C3C600FFFFFF00FFFFFF0061303800EBDDDF00F6F8
      F800F2F2F200F7F1F200EEDBDE00371D23004B313700FFFEFF00D6D8D800F9FE
      FD00FDFFFF0087656B00A0777E00FFFFFF00FFFFFF0061303800EBDDDF00F6F8
      F800F2F2F200F7F1F200EEDBDE00371D23004B313700FFFEFF00D6D8D800F9FE
      FD00FDFFFF0087656B00A0777E00FFFFFF00FFFFFF0061303800EBDDDF00F6F8
      F800F2F2F200F7F1F200EEDBDE00371D23004B313700FFFEFF00D6D8D800F9FE
      FD00FDFFFF0087656B00A0777E00FFFFFF00FFFFFF0061303800EBDDDF00F6F8
      F800F2F2F200F7F1F200EEDBDE00371D23004B313700FFFEFF00D6D8D800F9FE
      FD00FDFFFF0087656B00A0777E00FFFFFF00FCFEFE00562C3300F9F4F500FAFF
      FE00A29597009F8E9100AB8C93005F343D00522B3300E1CDD2005C474A00F1F3
      F300F2F8F700A68B8F007A454E00FFFFFF00FCFEFE00562C3300F9F4F500FAFF
      FE00A29597009F8E9100AB8C93005F343D00522B3300E1CDD2005C474A00F1F3
      F300F2F8F700A68B8F007A454E00FFFFFF00FCFEFE00562C3300F9F4F500FAFF
      FE00A29597009F8E9100AB8C93005F343D00522B3300E1CDD2005C474A00F1F3
      F300F2F7F600A48B8F007A474F00FDFFFF00FCFEFE00562C3300F9F4F500FAFF
      FE00A29597009F8E9100AB8C93005F343D00522B3300E1CDD2005C474A00F1F3
      F300F6F6F600A18A8E0079464E00FFFFFF00FFFFFF005C303700FEF6F700F7F1
      F20049272D004D292F004C1F28006D313C004F1B25005E373F003F0E1600A28B
      8F00F5FAF900AD969A0074384200FFFFFF00FFFFFF005C303700FEF6F700F7F1
      F20049272D004D292F004C1F28006D313C004F1B25005E373F003F0E1600A28B
      8F00F5FAF900AD969A0074384200FFFFFF00FFFFFF005C303700FEF6F700F7F1
      F20049272D004D292F004C1F28006D313C004F1B25005E373F003F0E1600A28B
      8F00FCFAFA00AE979B0076394300FFFEFE00FFFFFF005C303700FEF6F700F7F1
      F20049272D004D292F004C1F28006D313C004F1B25005E373F003F0E1600A28B
      8F00F6F8F800B8A5A800DED1D300FFFFFF00FEFEFE0061303800FDF2F400EAD9
      DC007A3E480055242C00602C3600813B48007C3C480044192200792F3B006B47
      4D00FFFEFE00B1969A0077384200FFFFFF00FEFEFE0061303800FDF2F400EAD9
      DC007A3E480055242C00602C3600813B48007C3C480044192200792F3B006B47
      4D00FFFEFE00B1969A0077384200FFFFFF00FEFEFE0061303800FDF2F400EAD9
      DC007A3E480055242C00602C3600813B48007C3C480044192200792F3B006B47
      4D00FEFEFE00B3959A0076374100FBFFFF00FEFEFE0061303800FDF2F400EAD9
      DC007A3E480055242C00602C3600813B48007C3C480044192200792F3B006B47
      4D00FEFEFE00F9F7F700FFFFFF00FFFFFF00FFFFFF00602F3700FFF2F400F7EF
      F000957177006A333C006E3B43008158600093697000763F48005B2C3400B49B
      9F00FFFBFC00B7979C0072333D00FFFFFF00FFFFFF00602F3700FFF2F400F7EF
      F000957177006A333C006E3B43008158600093697000763F48005B2C3400B49B
      9F00FFFBFC00B7979C0072333D00FFFFFF00FFFFFF00602F3700FFF2F400F7EF
      F000957177006A333C006E3B43008158600093697000763F48005B2C3400B49B
      9F00FFFCFD00B8949A0070333D00FFFFFF00FFFFFF00602F3700FFF2F400F7EF
      F000957177006A333C006E3B43008158600093697000763F48005B2C3400B49B
      9F00FFFBFC00FFFFFF00FEFEFE00FFFFFF00FFFFFF0062313900FFF2F400FFFF
      FF00734D5300703942006A404700BFACAF00AF91960096656D00491D2400E3D0
      D300FEFCFC00B08E940070343E00FFFFFF00FFFFFF0062313900FFF2F400FFFF
      FF00734D5300703942006A404700BFACAF00AF91960096656D00491D2400E3D0
      D300FEFCFC00B08E940070343E00FFFFFF00FFFFFF0062313900FFF2F400FFFF
      FF00734D5300703942006A404700BFACAF00AF91960096656D00491D2400E3D0
      D300FFFBFC00B191960074353F00FFFFFF00FFFFFF0062313900FFF2F400FFFF
      FF00734D5300703942006A404700BFACAF00AF91960096656D00491D2400E3D0
      D300FFFCFD00FEFEFE00FDFFFF00FFFFFF00FFFEFE0062313900FFF4F600E2D4
      D6005B2F36005F2C3400B2909600FFFAFB00F0DFE200996F7600622D3600A186
      8A00EBE0E200B7959B006F333D00FDFFFF00FFFEFE0062313900FFF4F600E2D4
      D6005B2F36005F2C3400B2909600FFFAFB00F0DFE200996F7600622D3600A186
      8A00EBE0E200B7959B006F333D00FDFFFF00FFFEFE0062313900FFF4F600E2D4
      D6005B2F36005F2C3400B2909600FFFAFB00F0DFE200996F7600622D3600A186
      8A00EFE1E300BDA2A600DBD0D200FFFFFF00FFFEFE0062313900FFF4F600E2D4
      D6005B2F36005F2C3400B2909600FFFAFB00F0DFE200996F7600622D3600A186
      8A00ECDFE100FAF5F600FFFFFF00FFFFFF00FFFFFF005D2E3600FCE9EC004D34
      38005A2931004B212800F9E4E700FFFBFC00FFFCFD00A5858A00773842004F29
      2F008C777A00BE9AA0006E353E00FFFFFF00FFFFFF005D2E3600FCE9EC004D34
      38005A2931004B212800F9E4E700FFFBFC00FFFCFD00A5858A00773842004F29
      2F008C777A00BE9AA0006E353E00FFFFFF00FFFFFF005D2E3600FCE9EC004D34
      38005A2931004B212800F9E4E700FFFBFC00FFFCFD00A5858A00773842004F29
      2F0086787A00F9F9F900FFFFFF00FFFFFF00FFFFFF005D2E3600FCE9EC004D34
      38005A2931004B212800F9E4E700FFFBFC00FFFCFD00A5858A00773842004F29
      2F008D787B00C2A4A900D3C0C300FFFFFF00FFFFFF005E2F3700F8E5E8004123
      28006B323B00421C2200FFFBFC00F3F5F500FAF8F800B9A4A7007C3742005026
      2D0064515400BF9DA30070374000FFFFFF00FFFFFF005E2F3700F8E5E8004123
      28006B323B00421C2200FFFBFC00F3F5F500FAF8F800B9A4A7007C3742005026
      2D0064515400BF9DA30070374000FFFFFF00FFFFFF005E2F3700F8E5E8004123
      28006B323B00421C2200FFFBFC00F3F5F500FAF8F800B9A4A7007C3742005026
      2D0064515400FFFFFF00FDFFFF00FFFFFF00FFFFFF005E2F3700F8E5E8004123
      28006B323B00421C2200FFFBFC00F3F5F500FAF8F800B9A4A7007C3742005026
      2D0062515400BF9DA30073374100FFFFFF00FFFFFF00602F3700FAE5E800694E
      520082495200421E2400FFFAFB00F4F9F800FCF7F900B39EA100702C3700754B
      520067525500C4A0A60074384200FFFFFF00FFFFFF00602F3700FAE5E800694E
      520082495200421E2400FFFAFB00F4F9F800FCF7F900B39EA100702C3700754B
      520069525600C2A0A60074384200FFFFFF00FFFFFF00602F3700FAE5E800694E
      520082495200421E2400FFFAFB00F4F9F800FCF7F900B39EA100702C3700754B
      520068535600FFFFFF00FFFFFF00FFFFFF00FFFFFF00602F3700FAE5E800694E
      520082495200421E2400FFFAFB00F4F9F800FCF7F900B39EA100702C3700754B
      520066535600C3A1A70072394200FFFFFF00FDFFFF0062333B00FAE7EA008B70
      74009160680045192000FAE5E800F9F7F700FFFBFC008C6E730077333E007854
      5A0096838600BB9BA00071343E00FFFFFF00FDFFFF0062333B00FAE7EA008B70
      74009160680045192000FAE5E800F9F7F700FFFBFC008C6E730077333E007854
      5A0096838600C9A7AD00DCCFD100FFFFFF00FDFFFF0062333B00FAE7EA008B70
      74009160680045192000FAE5E800F9F7F700FFFBFC008C6E730077333E007854
      5A0094838600FAF5F600FEFEFE00FFFFFF00FDFFFF0062333B00FAE7EA008B70
      74009160680045192000FAE5E800F9F7F700FFFBFC008C6E730077333E007854
      5A0095828500BD9BA10070343E00FDFFFF00FCFEFE0060313900FFF3F500DFCC
      CF008C60670052212900A5838900FFFAFB00F5E8EA00532A3100642F3800AA8C
      9100F4E6E800B49298006F363F00FFFFFF00FCFEFE0060313900FFF3F500DFCC
      CF008C60670052212900A5838900FFFAFB00F5E8EA00532A3100642F3800AA8C
      9100F3E8EA00F9F7F700FFFFFF00FFFFFF00FCFEFE0060313900FFF3F500DFCC
      CF008C60670052212900A5838900FFFAFB00F5E8EA00532A3100642F3800AA8C
      9100F4E7E900BE9EA300D1C0C300FEFEFE00FCFEFE0060313900FFF3F500DFCC
      CF008C60670052212900A5838900FFFAFB00F5E8EA00532A3100642F3800AA8C
      9100F4E7E900B593990074353F00FFFFFF00FFFFFF00612E3600FDF5F600FDFF
      FF00896369006A333C004B222900A79295008462680056232B0050242B00E0CD
      D000FEFEFE00B6949A0072353F00FFFFFF00FFFFFF00612E3600FDF5F600FDFF
      FF00896369006A333C004B222900A79295008462680056232B0050242B00E0CD
      D000FEFEFE00FFFFFF00FFFFFF00FFFFFF00FFFFFF00612E3600FDF5F600FDFF
      FF00896369006A333C004B222900A79295008462680056232B0050242B00E0CD
      D000FEFEFE00BB959B0072353F00FFFFFF00FFFFFF00612E3600FDF5F600FDFF
      FF00896369006A333C004B222900A79295008462680056232B0050242B00E0CD
      D000FEFEFE00B6949A0075364000FFFFFF00FEFEFE0061303800FFF3F500F9F1
      F200512D3300723F470053202800431F250042181F006C37400054232B00A68F
      9300FFFAFB00B8969C0074353F00FFFFFF00FEFEFE0061303800FFF3F500F9F1
      F200512D3300723F470053202800431F250042181F006C37400054232B00A68F
      9300FDFBFB00FCFEFE00FEFEFE00FFFFFF00FEFEFE0061303800FFF3F500F9F1
      F200512D3300723F470053202800431F250042181F006C37400054232B00A68F
      9300FCFAFA00B6969B0071353F00FDFFFF00FEFEFE0061303800FFF3F500F9F1
      F200512D3300723F470053202800431F250042181F006C37400054232B00A68F
      9300FFFAFB00B6969B0071343E00FFFFFF00FFFFFF0059303700F9F4F500E0D8
      D900703F47006A3B430089565E00702C370075364000764C53007E3F49005E45
      4900FFFFFF00EBE5E60075404900FDFFFF00FFFFFF0059303700F9F4F500E0D8
      D900703F47006A3B430089565E00702C370075364000764C53007E3F49005E45
      4900FFFEFE00F7F7F700FFFFFF00FDFFFF00FFFFFF0059303700F9F4F500E0D8
      D900703F47006A3B430089565E00702C370075364000764C53007E3F49005E45
      4900FFFFFF00A99699006C353E00FFFFFF00FFFFFF0059303700F9F4F500E0D8
      D900703F47006A3B430089565E00702C370075364000764C53007E3F49005E45
      4900FFFEFE00AA979A006D363F00FFFFFF00FCFEFE005F303800FFF7F800F3EE
      EF00926E74006B474D00A2767D007E454E00723F4700885F660085545C00A893
      9600FFFEFE00FFFFFF00E6D9DB00FFFFFF00FCFEFE005F303800FFF7F800F3EE
      EF00926E74006B474D00A2767D007E454E00723F4700885F660085545C00A893
      9600FAFCFC00B89FA300D2C1C400FFFFFF00FCFEFE005F303800FFF7F800F3EE
      EF00926E74006B474D00A2767D007E454E00723F4700885F660085545C00A893
      9600FCFAFA00AD969A0074353F00FDFFFF00FCFEFE005F303800FFF7F800F3EE
      EF00926E74006B474D00A2767D007E454E00723F4700885F660085545C00A893
      9600FCFCFC00B1969A0070333D00FFFFFF00FFFFFF00602B3400FDF2F400FEFC
      FC00C1AEB100AD9C9F00C1A3A800693F460059353B00E5D2D50087696E00F9F1
      F200FFFFFF00FFFFFF00FDFFFF00FFFFFF00FFFFFF00602B3400FDF2F400FEFC
      FC00C1AEB100AD9C9F00C1A3A800693F460059353B00E5D2D50087696E00F9F1
      F200FCF7F800AA888E0077333E00FDFFFF00FFFFFF00602B3400FDF2F400FEFC
      FC00C1AEB100AD9C9F00C1A3A800693F460059353B00E5D2D50087696E00F9F1
      F200FDF8F900AD898F0078333E00FFFFFF00FFFFFF00602B3400FDF2F400FEFC
      FC00C1AEB100AD9C9F00C1A3A800693F460059353B00E5D2D50087696E00F9F1
      F200FAF8F800AF898F0077333E00FFFFFF00FCFEFE006A2E3800F1DEE100FDF7
      F800F4EEEF00F9F3F400DCCBCE0070575B00553C4000FFFFFF00E6DBDD00FFFE
      FE00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FCFEFE006A2E3800F1DEE100FDF7
      F800F4EEEF00F9F3F400DCCBCE0070575B00553C4000FFFFFF00E6DBDD00FFFE
      FE00FFFDFD0091656C007B364100FFFFFF00FCFEFE006A2E3800F1DEE100FDF7
      F800F4EEEF00F9F3F400DCCBCE0070575B00553C4000FFFFFF00E6DBDD00FFFE
      FE00FFFDFD0091656C007B364100FFFFFF00FCFEFE006A2E3800F1DEE100FDF7
      F800F4EEEF00F9F3F400DCCBCE0070575B00553C4000FFFFFF00E6DBDD00FFFE
      FE00FFFDFD0091656C007B364100FFFFFF00FFFFFF006F363F00C09CA200FDFD
      FD00FCFCFC00FDFBFB00F7E6E900937E81009B868900FEFEFE00FFFFFF00FBF6
      F700FFFFFF00FFFFFF00EEE9EA00FFFFFF00FFFFFF006F363F00C09CA200FDFD
      FD00FCFCFC00FDFBFB00F7E6E900937E81009B868900FEFEFE00FFFFFF00FBF6
      F700FFF5F7006B384000BA969C00FFFFFF00FFFFFF006F363F00C09CA200FDFD
      FD00FCFCFC00FDFBFB00F7E6E900937E81009B868900FEFEFE00FFFFFF00FBF6
      F700FFF5F7006B384000BA969C00FFFFFF00FFFFFF006F363F00C09CA200FDFD
      FD00FCFCFC00FDFBFB00F7E6E900937E81009B868900FEFEFE00FFFFFF00FBF6
      F700FFF5F7006B384000BA969C00FFFFFF00FFFFFF008B61680070474E00F6E1
      E400FFFAFB00FFF7F900FFF8FB00FCE9EC00FAECEE00FCF6F700FDF8F900FFF7
      F800C6ABAF00CEC1C300F5F0F100FFFFFF00FFFFFF008B61680070474E00F6E1
      E400FFFAFB00FFF7F900FFF8FB00FCE9EC00FAECEE00FCF6F700FDF8F900FFF7
      F800C4A2A80064353D00F6F1F200FEFEFE00FFFFFF008B61680070474E00F6E1
      E400FFFAFB00FFF7F900FFF8FB00FCE9EC00FAECEE00FCF6F700FDF8F900FFF7
      F800C4A2A80064353D00F6F1F200FEFEFE00FFFFFF008B61680070474E00F6E1
      E400FFFAFB00FFF7F900FFF8FB00FCE9EC00FAECEE00FCF6F700FDF8F900FFF7
      F800C4A2A80064353D00F6F1F200FEFEFE00FFFEFF00B3A0A30064333B009066
      6D00B9A0A400BEA0A500C4A2A800C4A4A900C3A1A700BE9CA200B6A3A600B08E
      94006B3A42007B575D00FBF9F900FFFFFF00FFFEFF00B3A0A30064333B009066
      6D00B9A0A400BEA0A500C4A2A800C4A4A900C3A1A700BE9CA200B6A3A600B08E
      94006C3941007D575D00FAF8F800FDFFFF00FFFEFF00B3A0A30064333B009066
      6D00B9A0A400BEA0A500C4A2A800C4A4A900C3A1A700BE9CA200B6A3A600B08E
      94006C3941007D575D00FAF8F800FDFFFF00FFFEFF00B3A0A30064333B009066
      6D00B9A0A400BEA0A500C4A2A800C4A4A900C3A1A700BE9CA200B6A3A600B08E
      94006C3941007D575D00FAF8F800FDFFFF00FDFFFF00F2F2F200875D64006930
      390062333B0067343C0063323A0063323A006130380065323A005C333A00642F
      38007A3E4800D0C3C500FFFEFE00FDFFFF00FDFFFF00F2F2F200875D64006930
      390062333B0067343C0063323A0063323A006130380065323A005C333A00642F
      3800743F4800D2C5C700FEFEFE00FFFEFE00FDFFFF00F2F2F200875D64006930
      390062333B0067343C0063323A0063323A006130380065323A005C333A00642F
      3800743F4800D2C5C700FEFEFE00FFFEFE00FDFFFF00F2F2F200875D64006930
      390062333B0067343C0063323A0063323A006130380065323A005C333A00642F
      3800743F4800D2C5C700FEFEFE00FFFEFE00FEFEFE00FFFEFE00D7C4C7007D35
      410072353F0073343E0070343E006E353E006C333C0073343E0069343D007834
      3F00B28E9400FFFDFD00FAFCFC00FCFEFE00FEFEFE00FFFEFE00D7C4C7007D35
      410072353F0073343E0070343E006E353E006C333C0073343E0069343D007834
      3F00B48E9400FEFCFC00FDFDFD00FFFFFF00FEFEFE00FFFEFE00D7C4C7007D35
      410072353F0073343E0070343E006E353E006C333C0073343E0069343D007834
      3F00B48E9400FEFCFC00FDFDFD00FFFFFF00FEFEFE00FFFEFE00D7C4C7007D35
      410072353F0073343E0070343E006E353E006C333C0073343E0069343D007834
      3F00B48E9400FEFCFC00FDFDFD00FFFFFF00FDFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FEFEFE00FFFEFE00FFFFFF00FDFFFF00FFFFFF00FFFFFF00FDFF
      FF00FFFFFF00FDFFFF00FFFFFF00FFFEFF00FDFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FEFEFE00FFFEFE00FFFFFF00FDFFFF00FFFFFF00FFFFFF00FDFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FDFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FEFEFE00FFFEFE00FFFFFF00FDFFFF00FFFFFF00FFFFFF00FDFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FDFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FEFEFE00FFFEFE00FFFFFF00FDFFFF00FFFFFF00FFFFFF00FDFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FDFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFEFE00FDFFFF00FDFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FEFEFE00FFFFFF00FDFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFEFE00FDFFFF00FDFFFF00FFFFFF00FFFF
      FF00FDFFFF00FFFFFF00FFFFFF00FFFFFF00FDFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFEFE00FDFFFF00FDFFFF00FFFFFF00FFFF
      FF00FDFFFF00FFFFFF00FFFFFF00FFFFFF00FDFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFEFE00FDFFFF00FDFFFF00FFFFFF00FFFF
      FF00FDFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FBFFFF00FEFEFE00FFFF
      FF00FFFFFF00FFFFFF00FDFFFF00FFFFFF00FEFEFE00FFFFFF00FFFFFF00FFFF
      FF00FDFFFF00FFFFFF00FDFFFF00FDFFFF00FFFFFF00FBFFFF00FEFEFE00FFFF
      FF00FFFFFF00FFFFFF00FDFFFF00FFFFFF00FEFEFE00FFFFFF00FFFFFF00FFFF
      FF00FDFFFF00FFFFFF00FDFFFF00FDFFFF00FFFFFF00FBFFFF00FEFEFE00FFFF
      FF00FFFFFF00FFFFFF00FDFFFF00FFFFFF00FEFEFE00FFFFFF00FFFFFF00FFFF
      FF00FDFFFF00FFFFFF00FDFFFF00FDFFFF00FFFFFF00FBFFFF00FEFEFE00FFFF
      FF00FFFFFF00FFFFFF00FDFFFF00FFFFFF00FEFEFE00FFFFFF00FFFFFF00FFFF
      FF00FDFFFF00FFFFFF00FDFFFF00FDFFFF00FCFEFE00FFFFFF00FFFEFE00FFFF
      FF00FBFFFF00FDFFFF00FFFFFF00FFFFFF00FBFFFF00FFFFFF00FDFFFF00FFFF
      FF00FEFEFE00FDFFFF00FFFEFE00FFFFFF00FCFEFE00FFFFFF00FFFEFE00FFFF
      FF00FBFFFF00FDFFFF00FFFFFF00FFFFFF00FBFFFF00FFFFFF00FDFFFF00FFFF
      FF00FEFEFE00FDFFFF00FFFEFE00FFFFFF00FCFEFE00FFFFFF00FFFEFE00FFFF
      FF00FBFFFF00FDFFFF00FFFFFF00FFFFFF00FBFFFF00FFFFFF00FDFFFF00FFFF
      FF00FEFEFE00FDFFFF00FFFEFE00FFFFFF00FCFEFE00FFFFFF00FFFEFE00FFFF
      FF00FBFFFF00FDFFFF00FFFFFF00FFFFFF00FBFFFF00FFFFFF00FDFFFF00FFFF
      FF00FEFEFE00FDFFFF00FFFEFE00FFFFFF00FFFFFF00FFFFFF00F8F3F400A47A
      8100703942007538420073364000733A430072364100753944006A3B43007738
      4200CBB4B800FAFAFA00FEFEFE00FFFFFF00FFFFFF00FFFFFF00F8F3F400A47A
      8100703942007538420073364000733A430072364100753944006A3B43007738
      4200CBB4B800FAFAFA00FEFEFE00FFFFFF00FFFFFF00FFFFFF00F8F3F400A47A
      8100703942007538420073364000733A430072364100753944006A3B43007738
      4200CBB4B800FAFAFA00FEFEFE00FFFFFF00FFFFFF00FFFFFF00F8F3F400A47A
      8100703942007538420073364000733A430072364100753944006A3B43007738
      4200CBB4B800FAFAFA00FEFEFE00FFFFFF00FFFFFF00FEFEFE00B7979C006F33
      3D00613038005F2E3600632F3900612D37005A2D36005E2F38005B2F3600632C
      350087525B00CCBBBE00FFFFFF00FFFFFF00FFFFFF00FEFEFE00B7979C006F33
      3D00613038005F2E3600632F3900612D37005A2D36005E2F38005B2F3600632C
      350087525B00CCBBBE00FFFFFF00FFFFFF00FFFFFF00FEFEFE00B7979C006F33
      3D00613038005F2E3600632F3900612D37005A2D36005E2F38005B2F3600632C
      350087525B00CCBBBE00FFFFFF00FFFFFF00FFFFFF00FEFEFE00B7979C006F33
      3D00613038005F2E3600632F3900612D37005A2D36005E2F38005B2F3600632C
      350087525B00CCBBBE00FFFFFF00FFFFFF00FFFFFF00F4F2F200723942009259
      6200B08A9000B28D9500AE8C9300B7929A00B2909700A9878E00AC8A9000AC7D
      8500713841009E838700FFFEFE00FEFEFE00FFFFFF00F4F2F200723942009259
      6200B08A9000B28D9500AE8C9300B7929A00B2909700A9878E00AC8A9000AC7D
      8500713841009E838700FFFEFE00FEFEFE00FFFFFF00F4F2F200723942009259
      6200B08A9000B28D9500AE8C9300B7929A00B2909700A9878E00AC8A9000AC7D
      8500713841009E838700FFFEFE00FEFEFE00FFFFFF00F4F2F200723942009259
      6200B08A9000B28D9500AE8C9300B7929A00B2909700A9878E00AC8A9000AC7D
      8500713841009E838700FFFEFE00FEFEFE00FDFFFF00B7979C006F3E4600F6D6
      DB00FFF4F600FFEEF200FFF2F600F2E1E500F9E3E800FBF0F300FFF3F500FFF2
      F400BD949B007E495200FCFAFA00FFFFFF00FDFFFF00B7979C006F3E4600F6D6
      DB00FFF4F600FFEEF200FFF2F600F2E1E500F9E3E800FBF0F300FFF3F500FFF2
      F400BD949B007E495200FCFAFA00FFFFFF00FDFFFF00B7979C006F3E4600F6D6
      DB00FFF4F600FFEEF200FFF2F600F2E1E500F9E3E800FBF0F300FFF3F500FFF2
      F400BD949B007E495200FCFAFA00FFFFFF00FDFFFF00B7979C006F3E4600F6D6
      DB00FFF4F600FFEEF200FFF2F600F2E1E500F9E3E800FBF0F300FFF3F500FFF2
      F400BD949B007E495200FCFAFA00FFFFFF00FFFFFF0076414A00B5979C00F9FE
      FD00F6FBFA00FFFBFC00F1E2E600634C51008A747900FEFBFD00FFFFFF00F8F8
      F800FFEEF10069384000D6C3C600FFFFFF00FFFFFF0076414A00B5979C00F9FE
      FD00F6FBFA00FFFBFC00F1E2E600634C51008A747900FEFBFD00FFFFFF00F8F8
      F800FFEEF10069384000D6C3C600FFFFFF00FFFFFF0076414A00B5979C00F9FE
      FD00F6FBFA00FFFBFC00F1E2E600634C51008A747900FEFBFD00FFFFFF00F8F8
      F800FFEEF10069384000D6C3C600FFFFFF00FFFFFF0076414A00B5979C00F9FE
      FD00F6FBFA00FFFBFC00F1E2E600634C51008A747900FEFBFD00FFFFFF00F8F8
      F800FFEEF10069384000D6C3C600FFFFFF00FFFFFF0061303800EBDDDF00F6F8
      F800F2F2F200F7F1F200EEDBDE00371D23004B313700FFFEFF00D6D8D800F9FE
      FD00FDFFFF0087656B00A0777E00FFFFFF00FFFFFF0061303800EBDDDF00F6F8
      F800F2F2F200F7F1F200EEDBDE00371D23004B313700FFFEFF00D6D8D800F9FE
      FD00FDFFFF0087656B00A0777E00FFFFFF00FFFFFF0061303800EBDDDF00F6F8
      F800F2F2F200F7F1F200EEDBDE00371D23004B313700FFFEFF00D6D8D800F9FE
      FD00FDFFFF0087656B00A0777E00FFFFFF00FFFFFF0061303800EBDDDF00F6F8
      F800F2F2F200F7F1F200EEDBDE00371D23004B313700FFFEFF00D6D8D800F9FE
      FD00FDFFFF0087656B00A0777E00FFFFFF00FCFEFE00562C3300F9F4F500FAFF
      FE00A29597009F8E9100AB8C93005F343D00522B3300E1CDD2005C474A00F1F3
      F300F2F8F700A68B8F007A454E00FFFFFF00FCFEFE00562C3300F9F4F500FAFF
      FE00A29597009F8E9100AB8C93005F343D00522B3300E1CDD2005C474A00F1F3
      F300F2F8F700A68B8F007A454E00FFFFFF00FCFEFE00562C3300F9F4F500FAFF
      FE00A29597009F8E9100AB8C93005F343D00522B3300E1CDD2005C474A00F1F3
      F300F2F8F700A68B8F007A454E00FFFFFF00FCFEFE00562C3300F9F4F500FAFF
      FE00A29597009F8E9100AB8C93005F343D00522B3300E1CDD2005C474A00F1F3
      F300F2F8F700A68B8F007A454E00FFFFFF00FFFFFF005C303700FEF6F700F7F1
      F20049272D004D292F004C1F28006D313C004F1B25005E373F003F0E1600A28B
      8F00F5FAF900AD969A0074384200FFFFFF00FFFFFF005C303700FEF6F700F7F1
      F20049272D004D292F004C1F28006D313C004F1B25005E373F003F0E1600A28B
      8F00F5FAF900AD969A0074384200FFFFFF00FFFFFF005C303700FEF6F700F7F1
      F20049272D004D292F004C1F28006D313C004F1B25005E373F003F0E1600A28B
      8F00F5FAF900AD969A0074384200FFFFFF00FFFFFF005C303700FEF6F700F7F1
      F20049272D004D292F004C1F28006D313C004F1B25005E373F003F0E1600A28B
      8F00F5FAF900AD969A0074384200FFFFFF00FEFEFE0061303800FDF2F400EAD9
      DC007A3E480055242C00602C3600813B48007C3C480044192200792F3B006B47
      4D00FFFEFE00B1969A0077384200FFFFFF00FEFEFE0061303800FDF2F400EAD9
      DC007A3E480055242C00602C3600813B48007C3C480044192200792F3B006B47
      4D00FFFEFE00B1969A0077384200FFFFFF00FEFEFE0061303800FDF2F400EAD9
      DC007A3E480055242C00602C3600813B48007C3C480044192200792F3B006B47
      4D00FFFEFE00B1969A0077384200FFFFFF00FEFEFE0061303800FDF2F400EAD9
      DC007A3E480055242C00602C3600813B48007C3C480044192200792F3B006B47
      4D00FFFEFE00B1969A0077384200FFFFFF00FFFFFF00602F3700FFF2F400F7EF
      F000957177006A333C006E3B43008158600093697000763F48005B2C3400B49B
      9F00FFFBFC00B7979C0072333D00FFFFFF00FFFFFF00602F3700FFF2F400F7EF
      F000957177006A333C006E3B43008158600093697000763F48005B2C3400B49B
      9F00FFFBFC00B7979C0072333D00FFFFFF00FFFFFF00602F3700FFF2F400F7EF
      F000957177006A333C006E3B43008158600093697000763F48005B2C3400B49B
      9F00FFFBFC00B7979C0072333D00FFFFFF00FFFFFF00602F3700FFF2F400F7EF
      F000957177006A333C006E3B43008158600093697000763F48005B2C3400B49B
      9F00FFFBFC00B7979C0072333D00FFFFFF00FFFFFF0062313900FFF2F400FFFF
      FF00734D5300703942006A404700BFACAF00AF91960096656D00491D2400E3D0
      D300FEFCFC00B08E940070343E00FFFFFF00FFFFFF0062313900FFF2F400FFFF
      FF00734D5300703942006A404700BFACAF00AF91960096656D00491D2400E3D0
      D300FEFCFC00B08E940070343E00FFFFFF00FFFFFF0062313900FFF2F400FFFF
      FF00734D5300703942006A404700BFACAF00AF91960096656D00491D2400E3D0
      D300FEFCFC00B08E940070343E00FFFFFF00FFFFFF0062313900FFF2F400FFFF
      FF00734D5300703942006A404700BFACAF00AF91960096656D00491D2400E3D0
      D300FEFCFC00B08E940070343E00FFFFFF00FFFEFE0062313900FFF4F600E2D4
      D6005B2F36005F2C3400B2909600FFFAFB00F0DFE200996F7600622D3600A186
      8A00EBE0E200B7959B006F333D00FDFFFF00FFFEFE0062313900FFF4F600E2D4
      D6005B2F36005F2C3400B2909600FFFAFB00F0DFE200996F7600622D3600A186
      8A00EBE0E200B7959B006F333D00FDFFFF00FFFEFE0062313900FFF4F600E2D4
      D6005B2F36005F2C3400B2909600FFFAFB00F0DFE200996F7600622D3600A186
      8A00EBE0E200B7959B006F333D00FDFFFF00FFFEFE0062313900FFF4F600E2D4
      D6005B2F36005F2C3400B2909600FFFAFB00F0DFE200996F7600622D3600A186
      8A00EBE0E200B7959B006F333D00FDFFFF00FFFFFF005D2E3600FCE9EC004D34
      38005A2931004B212800F9E4E700FFFBFC00FFFCFD00A5858A00773842004F29
      2F008C777A00BE9AA0006E353E00FFFFFF00FFFFFF005D2E3600FCE9EC004D34
      38005A2931004B212800F9E4E700FFFBFC00FFFCFD00A5858A00773842004F29
      2F008C777A00BE9AA0006E353E00FFFFFF00FFFFFF005D2E3600FCE9EC004D34
      38005A2931004B212800F9E4E700FFFBFC00FFFCFD00A5858A00773842004F29
      2F008C777A00BE9AA0006E353E00FFFFFF00FFFFFF005D2E3600FCE9EC004D34
      38005A2931004B212800F9E4E700FFFBFC00FFFCFD00A5858A00773842004F29
      2F008C777A00BE9AA0006E353E00FFFFFF00FFFFFF005E2F3700F8E5E8004123
      28006B323B00421C2200FFFBFC00F3F5F500FAF8F800B9A4A7007C3742005026
      2D0064515400BF9DA30070374000FFFFFF00FFFFFF005E2F3700F8E5E8004123
      28006B323B00421C2200FFFBFC00F3F5F500FAF8F800B9A4A7007C3742005026
      2D0064515400BF9DA30070374000FFFFFF00FFFFFF005E2F3700F8E5E8004123
      28006B323B00421C2200FFFBFC00F3F5F500FAF8F800B9A4A7007C3742005026
      2D0064515400BF9DA30070374000FFFFFF00FFFFFF005E2F3700F8E5E8004123
      28006B323B00421C2200FFFBFC00F3F5F500FAF8F800B9A4A7007C3742005026
      2D0064515400BF9DA30070374000FFFFFF00FFFFFF00602F3700FAE5E800694E
      520082495200421E2400FFFAFB00F4F9F800FCF7F900B39EA100702C3700754B
      520066535600C3A1A70072394200FFFFFF00FFFFFF00602F3700FAE5E800694E
      520082495200421E2400FFFAFB00F4F9F800FCF7F900B39EA100702C3700754B
      520066535600C3A1A70072394200FFFFFF00FFFFFF00602F3700FAE5E800694E
      520082495200421E2400FFFAFB00F4F9F800FCF7F900B39EA100702C3700754B
      520066535600C3A1A70072394200FFFFFF00FFFFFF00602F3700FAE5E800694E
      520082495200421E2400FFFAFB00F4F9F800FCF7F900B39EA100702C3700754B
      520066535600C3A1A70072394200FFFFFF00FDFFFF0062333B00FAE7EA008B70
      74009160680045192000FAE5E800F9F7F700FFFBFC008C6E730077333E007854
      5A0095828500BD9BA10070343E00FDFFFF00FDFFFF0062333B00FAE7EA008B70
      74009160680045192000FAE5E800F9F7F700FFFBFC008C6E730077333E007854
      5A0095828500BD9BA10070343E00FDFFFF00FDFFFF0062333B00FAE7EA008B70
      74009160680045192000FAE5E800F9F7F700FFFBFC008C6E730077333E007854
      5A0095828500BD9BA10070343E00FDFFFF00FDFFFF0062333B00FAE7EA008B70
      74009160680045192000FAE5E800F9F7F700FFFBFC008C6E730077333E007854
      5A0095828500BD9BA10070343E00FDFFFF00FCFEFE0060313900FFF3F500DFCC
      CF008C60670052212900A5838900FFFAFB00F5E8EA00532A3100642F3800AA8C
      9100F4E7E900B593990074353F00FFFFFF00FCFEFE0060313900FFF3F500DFCC
      CF008C60670052212900A5838900FFFAFB00F5E8EA00532A3100642F3800AA8C
      9100F4E7E900B593990074353F00FFFFFF00FCFEFE0060313900FFF3F500DFCC
      CF008C60670052212900A5838900FFFAFB00F5E8EA00532A3100642F3800AA8C
      9100F4E7E900B593990074353F00FFFFFF00FCFEFE0060313900FFF3F500DFCC
      CF008C60670052212900A5838900FFFAFB00F5E8EA00532A3100642F3800AA8C
      9100F4E7E900B593990074353F00FFFFFF00FFFFFF00612E3600FDF5F600FDFF
      FF00896369006A333C004B222900A79295008462680056232B0050242B00E0CD
      D000FEFEFE00B6949A0075364000FFFFFF00FFFFFF00612E3600FDF5F600FDFF
      FF00896369006A333C004B222900A79295008462680056232B0050242B00E0CD
      D000FEFEFE00B6949A0075364000FFFFFF00FFFFFF00612E3600FDF5F600FDFF
      FF00896369006A333C004B222900A79295008462680056232B0050242B00E0CD
      D000FEFEFE00B6949A0075364000FFFFFF00FFFFFF00612E3600FDF5F600FDFF
      FF00896369006A333C004B222900A79295008462680056232B0050242B00E0CD
      D000FEFEFE00B6949A0075364000FFFFFF00FEFEFE0061303800FFF3F500F9F1
      F200512D3300723F470053202800431F250042181F006C37400054232B00A68F
      9300FFFAFB00B6969B0071343E00FFFFFF00FEFEFE0061303800FFF3F500F9F1
      F200512D3300723F470053202800431F250042181F006C37400054232B00A68F
      9300FFFAFB00B6969B0071343E00FFFFFF00FEFEFE0061303800FFF3F500F9F1
      F200512D3300723F470053202800431F250042181F006C37400054232B00A68F
      9300FFFAFB00B6969B0071343E00FFFFFF00FEFEFE0061303800FFF3F500F9F1
      F200512D3300723F470053202800431F250042181F006C37400054232B00A68F
      9300FFFAFB00B6969B0071343E00FFFFFF00FFFFFF0059303700F9F4F500E0D8
      D900703F47006A3B430089565E00702C370075364000764C53007E3F49005E45
      4900FFFEFE00AA979A006D363F00FFFFFF00FFFFFF0059303700F9F4F500E0D8
      D900703F47006A3B430089565E00702C370075364000764C53007E3F49005E45
      4900FFFEFE00AA979A006D363F00FFFFFF00FFFFFF0059303700F9F4F500E0D8
      D900703F47006A3B430089565E00702C370075364000764C53007E3F49005E45
      4900FFFEFE00AA979A006D363F00FFFFFF00FFFFFF0059303700F9F4F500E0D8
      D900703F47006A3B430089565E00702C370075364000764C53007E3F49005E45
      4900FFFEFE00AA979A006D363F00FFFFFF00FCFEFE005F303800FFF7F800F3EE
      EF00926E74006B474D00A2767D007E454E00723F4700885F660085545C00A893
      9600FCFCFC00B1969A0070333D00FFFFFF00FCFEFE005F303800FFF7F800F3EE
      EF00926E74006B474D00A2767D007E454E00723F4700885F660085545C00A893
      9600FCFCFC00B1969A0070333D00FFFFFF00FCFEFE005F303800FFF7F800F3EE
      EF00926E74006B474D00A2767D007E454E00723F4700885F660085545C00A893
      9600FCFCFC00B1969A0070333D00FFFFFF00FCFEFE005F303800FFF7F800F3EE
      EF00926E74006B474D00A2767D007E454E00723F4700885F660085545C00A893
      9600FCFCFC00B1969A0070333D00FFFFFF00FFFFFF00602B3400FDF2F400FEFC
      FC00C1AEB100AD9C9F00C1A3A800693F460059353B00E5D2D50087696E00F9F1
      F200FAF8F800AF898F0077333E00FFFFFF00FFFFFF00602B3400FDF2F400FEFC
      FC00C1AEB100AD9C9F00C1A3A800693F460059353B00E5D2D50087696E00F9F1
      F200FAF8F800AF898F0077333E00FFFFFF00FFFFFF00602B3400FDF2F400FEFC
      FC00C1AEB100AD9C9F00C1A3A800693F460059353B00E5D2D50087696E00F9F1
      F200FAF8F800AF898F0077333E00FFFFFF00FFFFFF00602B3400FDF2F400FEFC
      FC00C1AEB100AD9C9F00C1A3A800693F460059353B00E5D2D50087696E00F9F1
      F200FAF8F800AF898F0077333E00FFFFFF00FFFFFF00672E3700F2DFE200FCF7
      F800F0F0F000FCF4F500E0CBCE0071565A00553C4000FFFFFF00E6DBDD00FFFE
      FE00FFFDFD0091656C007B364100FFFFFF00FCFEFE006A2E3800F1DEE100FDF7
      F800F1EFEF00FAF4F500DDCCCF0074565B00543D4100FFFFFF00E4DCDD00FDFF
      FF00FFFDFD0091656C007B364100FFFFFF00FCFEFE006A2E3800F1DEE100FDF7
      F800F4EEEF00F9F3F400DCCBCE0070575B00553C4000FDFFFF00E5DDDE00FFFF
      FF00FFFDFD0091656C007B364100FFFFFF00FCFEFE006A2E3800F1DEE100FDF7
      F800F4EEEF00F9F3F400DCCBCE0070575B00533C4000FEFEFE00E7DCDE00FFFF
      FF00FFFDFD008F666D007E364200FFFFFF00FEFEFE0071353F00BD9BA100FFFC
      FD00FBFBFB00FDFBFB00F5E8EA00957E82009B868900FEFEFE00FFFFFF00FBF6
      F700FFF5F7006B384000BA969C00FFFFFF00FFFFFF006F363F00C09CA200FDFD
      FD00FDFBFB00FCFAFA00F3E6E800947D810096858800FFFDFE00FFFFFF00FBF6
      F700FFF5F7006B384000BA969C00FFFFFF00FFFFFF006F363F00C09CA200FDFD
      FD00FCFCFC00FDFBFB00F7E6E900937E810099868900FFFEFE00FFFEFE00F9F7
      F700FFF5F7006B384000BA969C00FFFFFF00FFFFFF006F363F00C09CA200FDFD
      FD00FCFCFC00FDFBFB00F7E6E900937E81009A878A00FFFEFE00FFFFFF00FCF7
      F800FFFDFE0072434B00BD979D00FFFFFF00FFFFFF008D61680074484F00F4E1
      E400FFFDFE00FFFBFC00FEF8F900FAE9EC00FAECEE00FCF6F700FDF8F900FFF7
      F800C4A2A80064353D00F6F1F200FEFEFE00FFFFFF008B61680070474E00F6E1
      E400FFFAFB00FFF7F800FEF9FB00FFFAFB00FBEDEF00FFF5F700FEF9FA00FFF7
      F800C4A2A80064353D00F6F1F200FEFEFE00FFFFFF008B61680070474E00F6E1
      E400FFFAFB00FFF7F900FFF8FB00FCE9EC00FEEBEE00FFFAFB00FCFCFC00FFF7
      F800C4A2A80064353D00F6F1F200FEFEFE00FFFFFF008B61680070474E00F6E1
      E400FFFAFB00FFF7F900FFF8FB00FCE9EC00FEEBEE00FFF5F700FCFAFA00FFFF
      FF00FCFEFE00E4DCDD00F6F1F200FCFEFE00FFFFFF00B1A0A30066333B009A74
      7A00FFFFFF00FFFFFF00C6A4AA00C7A3A900C3A1A700BE9CA200B6A3A600B08E
      94006C3941007D575D00FAF8F800FDFFFF00FFFEFF00B3A0A30064333B009066
      6D00B9A0A400BFA1A600FCF7F800FDFFFF00F4EEEF00BD9BA100B9A4A700B08E
      94006C3941007D575D00FAF8F800FDFFFF00FFFEFF00B3A0A30064333B009066
      6D00B9A0A400BEA0A500C4A2A800C4A4A900CAAAAF00FFFFFF00FFFFFF00B490
      96006C3941007D575D00FAF8F800FDFFFF00FFFEFF00B3A0A30064333B009066
      6D00B9A0A400BEA0A500C4A2A800C4A4A900C3A3A800C09CA200B8A3A600FFFF
      FF00FFFFFF00FFFFFF00FAF8F800FDFFFF00FDFFFF00F4F2F200885C6300A989
      8E00FFFFFF00FEFEFE0089676D0062333B006130380065323A005C333A00642F
      3800743F4800D2C5C700FEFEFE00FFFEFE00FDFFFF00F2F2F200875D64006930
      390060343B005E343B00FDFFFF00FFFFFF00FFFFFF0069323B005C333A006330
      3800743F4800D2C5C700FEFEFE00FFFEFE00FDFFFF00F2F2F200875D64006930
      390062333B0067343C0063323A0063323A00A88A8F00FFFFFF00FFFFFF008C63
      6A00743F4800D2C5C700FEFEFE00FFFEFE00FDFFFF00F2F2F200875D64006930
      390062333B0067343C0063323A0063323A006031390064333B005B353B00FFFF
      FF00FFFFFF00FFFFFF00FCFEFE00FFFEFF00FFFFFF00FFFFFF00D5C4C700B58C
      9300FDFFFF00FFFFFF0094636B006D363F006C333C0073343E0069343D007834
      3F00B48E9400FEFCFC00FDFDFD00FFFFFF00FEFEFE00FFFEFE00D7C4C7007D35
      41007236400073343E00FEFEFE00FDFFFF00FDFFFF0073343E006D343D007834
      3F00B48E9400FEFCFC00FDFDFD00FFFFFF00FEFEFE00FFFEFE00D7C4C7007D35
      410072353F0073343E0070343E006E353E00AF8B9100FEFEFE00FDFFFF009564
      6C00B48E9400FEFCFC00FDFDFD00FFFFFF00FEFEFE00FFFEFE00D7C4C7007D35
      410072353F0073343E0070343E006E353E006E313B0073343E006E353E00F5ED
      EE00FFFFFF00FEFEFE00FDFDFD00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FCFE
      FE00FDFFFF00FFFFFF00FDFFFF00FFFFFF00FDFFFF00FFFFFF00FFFFFF00FDFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FDFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FDFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FDFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FEFEFE00FFFEFE00FFFFFF00FDFFFF00FFFEFF00FFFEFE00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FDFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FEFEFE00FFFEFE00FFFFFF00FFFFFF00FBFFFF00FDFFFF00FBFF
      FF00FEFEFE00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FDFFFF00FFFF
      FF00FAFFFE00FFFFFF00FDFFFF00FFFFFF00FDFFFF00FDFFFF00FFFFFF00FFFF
      FF00FDFFFF00FFFFFF00FFFFFF00FFFFFF00FDFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FEFEFE00FEFEFE00FFFFFF00FDFFFF00FDFFFF00FDFF
      FF00FDFFFF00FFFFFF00FFFFFF00FFFFFF00FDFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFEFE00FFFFFF00FDFFFF00FDFFFF00FFFF
      FF00FDFFFF00FFFFFF00FFFFFF00FFFFFF00FDFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFEFE00FFFFFF00FFFEFE00FFFFFF00FFFF
      FF00FFFFFF00FFFEFE00FDFFFF00FEFEFE00FFFFFF00FBFFFF00FEFEFE00FFFF
      FF00FFFFFF00FFFFFF00FDFFFF00FFFFFF00FEFEFE00FFFFFF00FFFFFF00FFFF
      FF00FDFFFF00FFFFFF00FDFFFF00FDFFFF00FFFFFF00FBFFFF00FEFEFE00FFFF
      FF00FFFFFF00FFFFFF00FDFFFF00FFFFFF00FEFEFE00FFFFFF00FFFFFF00FFFF
      FF00FDFFFF00FFFFFF00FDFFFF00FDFFFF00FFFFFF00FBFFFF00FEFEFE00FFFF
      FF00FFFFFF00FFFFFF00FDFFFF00FFFFFF00FEFEFE00FFFFFF00FFFFFF00FFFF
      FF00FDFFFF00FFFFFF00FDFFFF00FDFFFF00FFFFFF00FBFFFF00FEFEFE00FFFF
      FF00FFFFFF00FFFFFF00FDFFFF00FFFFFF00FEFEFE00FFFFFF00FFFFFF00FFFF
      FF00FDFFFF00FFFFFF00FDFFFF00FDFFFF00FCFEFE00FFFFFF00FFFEFE00FFFF
      FF00FBFFFF00FDFFFF00FFFFFF00FFFFFF00FBFFFF00FFFFFF00FDFFFF00FFFF
      FF00FEFEFE00FDFFFF00FFFEFE00FFFFFF00FCFEFE00FFFFFF00FFFEFE00FFFF
      FF00FBFFFF00FDFFFF00FFFFFF00FFFFFF00FBFFFF00FFFFFF00FDFFFF00FFFF
      FF00FEFEFE00FDFFFF00FFFEFE00FFFFFF00FCFEFE00FFFFFF00FFFEFE00FFFF
      FF00FBFFFF00FDFFFF00FFFFFF00FFFFFF00FBFFFF00FFFFFF00FDFFFF00FFFF
      FF00FEFEFE00FDFFFF00FFFEFE00FFFFFF00FCFEFE00FFFFFF00FFFEFE00FFFF
      FF00FBFFFF00FDFFFF00FFFFFF00FFFFFF00FBFFFF00FFFFFF00FDFFFF00FFFF
      FF00FEFEFE00FDFFFF00FFFEFE00FFFFFF00FFFFFF00FFFFFF00F8F3F400A47A
      8100703942007538420073364000733A430072364100753944006A3B43007738
      4200CBB4B800FAFAFA00FEFEFE00FFFFFF00FFFFFF00FFFFFF00F8F3F400A47A
      8100703942007538420073364000733A430072364100753944006A3B43007738
      4200CBB4B800FAFAFA00FEFEFE00FFFFFF00FFFFFF00FFFFFF00F8F3F400A47A
      8100703942007538420073364000733A430072364100753944006A3B43007738
      4200CBB4B800FAFAFA00FEFEFE00FFFFFF00FFFFFF00FFFFFF00F8F3F400A47A
      8100703942007538420073364000733A430072364100753944006A3B43007738
      4200CBB4B800FAFAFA00FEFEFE00FFFFFF00FFFFFF00FEFEFE00B7979C006F33
      3D00613038005F2E3600632F3900612D37005A2D36005E2F38005B2F3600632C
      350087525B00CCBBBE00FFFFFF00FFFFFF00FFFFFF00FEFEFE00B7979C006F33
      3D00613038005F2E3600632F3900612D37005A2D36005E2F38005B2F3600632C
      350087525B00CCBBBE00FFFFFF00FFFFFF00FFFFFF00FEFEFE00B7979C006F33
      3D00613038005F2E3600632F3900612D37005A2D36005E2F38005B2F3600632C
      350087525B00CCBBBE00FFFFFF00FFFFFF00FFFFFF00FEFEFE00B7979C006F33
      3D00613038005F2E3600632F3900612D37005A2D36005E2F38005B2F3600632C
      350087525B00CCBBBE00FFFFFF00FFFFFF00FFFFFF00F4F2F200723942009259
      6200B08A9000B28D9500AE8C9300B7929A00B2909700A9878E00AC8A9000AC7D
      8500713841009E838700FFFEFE00FEFEFE00FFFFFF00F4F2F200723942009259
      6200B08A9000B28D9500AE8C9300B7929A00B2909700A9878E00AC8A9000AC7D
      8500713841009E838700FFFEFE00FEFEFE00FFFFFF00F4F2F200723942009259
      6200B08A9000B28D9500AE8C9300B7929A00B2909700A9878E00AC8A9000AC7D
      8500713841009E838700FFFEFE00FEFEFE00FFFFFF00F4F2F200723942009259
      6200B08A9000B28D9500AE8C9300B7929A00B2909700A9878E00AC8A9000AC7D
      8500713841009E838700FFFEFE00FEFEFE00FDFFFF00B7979C006F3E4600F6D6
      DB00FFF4F600FFEEF200FFF2F600F2E1E500F9E3E800FBF0F300FFF3F500FFF2
      F400BD949B007E495200FCFAFA00FFFFFF00FDFFFF00B7979C006F3E4600F6D6
      DB00FFF4F600FFEEF200FFF2F600F2E1E500F9E3E800FBF0F300FFF3F500FFF2
      F400BD949B007E495200FCFAFA00FFFFFF00FDFFFF00B7979C006F3E4600F6D6
      DB00FFF4F600FFEEF200FFF2F600F2E1E500F9E3E800FBF0F300FFF3F500FFF2
      F400BD949B007E495200FCFAFA00FFFFFF00FDFFFF00B7979C006F3E4600F6D6
      DB00FFF4F600FFEEF200FFF2F600F2E1E500F9E3E800FBF0F300FFF3F500FFF2
      F400BD949B007E495200FCFAFA00FFFFFF00FFFFFF0076414A00B5979C00F9FE
      FD00F6FBFA00FFFBFC00F1E2E600634C51008A747900FEFBFD00FFFFFF00F8F8
      F800FFEEF10069384000D6C3C600FFFFFF00FFFFFF0076414A00B5979C00F9FE
      FD00F6FBFA00FFFBFC00F1E2E600634C51008A747900FEFBFD00FFFFFF00F8F8
      F800FFEEF10069384000D6C3C600FFFFFF00FFFFFF0076414A00B5979C00F9FE
      FD00F6FBFA00FFFBFC00F1E2E600634C51008A747900FEFBFD00FFFFFF00F8F8
      F800FFEEF10069384000D6C3C600FFFFFF00FFFFFF0076414A00B5979C00F9FE
      FD00F6FBFA00FFFBFC00F1E2E600634C51008A747900FEFBFD00FFFFFF00F8F8
      F800FFEEF10069384000D6C3C600FFFFFF00FFFFFF0061303800EBDDDF00F6F8
      F800F2F2F200F7F1F200EEDBDE00371D23004B313700FFFEFF00D6D8D800F9FE
      FD00FDFFFF0087656B00A0777E00FFFFFF00FFFFFF0061303800EBDDDF00F6F8
      F800F2F2F200F7F1F200EEDBDE00371D23004B313700FFFEFF00D6D8D800F9FE
      FD00FDFFFF0087656B00A0777E00FFFFFF00FFFFFF0061303800EBDDDF00F6F8
      F800F2F2F200F7F1F200EEDBDE00371D23004B313700FFFEFF00D6D8D800F9FE
      FD00FDFFFF0087656B00A0777E00FFFFFF00FFFFFF0061303800EBDDDF00F6F8
      F800F2F2F200F7F1F200EEDBDE00371D23004B313700FFFEFF00D6D8D800F9FE
      FD00FDFFFF0087656B00A0777E00FFFFFF00FFFFFF00562C3300FBF5F600F8FE
      FD00A29597009F8E9100AB8C93005F343D00522B3300E1CDD2005C474A00F1F3
      F300F2F8F700A68B8F007A454E00FFFFFF00FCFEFE00562C3300F9F4F500FAFF
      FE00A29597009F8E9100AB8C93005F343D00522B3300E1CDD2005C474A00F1F3
      F300F2F8F700A68B8F007A454E00FFFFFF00FCFEFE00562C3300F9F4F500FAFF
      FE00A29597009F8E9100AB8C93005F343D00522B3300E1CDD2005C474A00F1F3
      F300F2F8F700A68B8F007A454E00FFFFFF00FCFEFE00562C3300F9F4F500FAFF
      FE00A29597009F8E9100AB8C93005F343D00522B3300E1CDD2005C474A00F1F3
      F300F2F8F700A68B8F007A454E00FFFFFF00FFFFFF005C303700FEF6F700F7F2
      F30049272D004D292F004C1F28006D313C004F1B25005E373F003F0E1600A28B
      8F00F5FAF900AD969A0074384200FFFFFF00FFFFFF005C303700FEF6F700F7F1
      F20049272D004D292F004C1F28006D313C004F1B25005E373F003F0E1600A28B
      8F00F5FAF900AD969A0074384200FFFFFF00FFFFFF005C303700FEF6F700F7F1
      F20049272D004D292F004C1F28006D313C004F1B25005E373F003F0E1600A28B
      8F00F5FAF900AD969A0074384200FFFFFF00FFFFFF005C303700FEF6F700F7F1
      F20049272D004D292F004C1F28006D313C004F1B25005E373F003F0E1600A28B
      8F00F5FAF900AD969A0074384200FFFFFF00FFFFFF005E2F3700FEF1F300EBD8
      DB007A3E480055242C00602C3600813B48007C3C480044192200792F3B006B47
      4D00FFFEFE00B1969A0077384200FFFFFF00FEFEFE0061303800FDF2F400EAD9
      DC007A3E480055242C00602C3600813B48007C3C480044192200792F3B006B47
      4D00FFFEFE00B1969A0077384200FFFFFF00FEFEFE0061303800FDF2F400EAD9
      DC007A3E480055242C00602C3600813B48007C3C480044192200792F3B006B47
      4D00FFFEFE00B1969A0077384200FFFFFF00FEFEFE0061303800FDF2F400EAD9
      DC007A3E480055242C00602C3600813B48007C3C480044192200792F3B006B47
      4D00FFFEFE00B1969A0077384200FFFFFF00FEFEFE00602F3700FFF2F400FBEE
      F000957177006A333C006E3B43008158600093697000763F48005B2C3400B49B
      9F00FFFBFC00B7979C0072333D00FFFFFF00FFFFFF00602F3700FFF2F400F7EF
      F000957177006A333C006E3B43008158600093697000763F48005B2C3400B49B
      9F00FFFBFC00B7979C0072333D00FFFFFF00FFFFFF00602F3700FFF2F400F7EF
      F000957177006A333C006E3B43008158600093697000763F48005B2C3400B49B
      9F00FFFBFC00B7979C0072333D00FFFFFF00FFFFFF00602F3700FFF2F400F7EF
      F000957177006A333C006E3B43008158600093697000763F48005B2C3400B49B
      9F00FFFBFC00B7979C0072333D00FFFFFF00FCFEFE0064313900FDF2F400FFFF
      FF00734D5300703942006A404700BFACAF00AF91960096656D00491D2400E3D0
      D300FEFCFC00B08E940070343E00FFFFFF00FFFFFF0062313900FFF2F400FFFF
      FF00734D5300703942006A404700BFACAF00AF91960096656D00491D2400E3D0
      D300FEFCFC00B08E940070343E00FFFFFF00FFFFFF0062313900FFF2F400FFFF
      FF00734D5300703942006A404700BFACAF00AF91960096656D00491D2400E3D0
      D300FEFCFC00B08E940070343E00FFFFFF00FFFFFF0062313900FFF2F400FFFF
      FF00734D5300703942006A404700BFACAF00AF91960096656D00491D2400E3D0
      D300FEFCFC00B08E940070343E00FFFFFF00FFFFFF0062313900FFF5F700E6D3
      D6005B2F36005F2C3400B2909600FFFAFB00F0DFE200996F7600622D3600A186
      8A00EBE0E200B7959B006F333D00FDFFFF00FFFEFE0062313900FFF4F600E2D4
      D6005B2F36005F2C3400B2909600FFFAFB00F0DFE200996F7600622D3600A186
      8A00EBE0E200B7959B006F333D00FDFFFF00FFFEFE0062313900FFF4F600E2D4
      D6005B2F36005F2C3400B2909600FFFAFB00F0DFE200996F7600622D3600A186
      8A00EBE0E200B7959B006F333D00FDFFFF00FFFEFE0062313900FFF4F600E2D4
      D6005B2F36005F2C3400B2909600FFFAFB00F0DFE200996F7600622D3600A186
      8A00EBE0E200B7959B006F333D00FDFFFF00FBFFFF00DBCED000FAE9EC004A33
      37005A2931004B212800F9E4E700FFFBFC00FFFCFD00A5858A00773842004F29
      2F008C777A00BE9AA0006E353E00FFFFFF00FFFFFF005D2E3600FCE9EC004D34
      38005A2931004B212800F9E4E700FFFBFC00FFFCFD00A5858A00773842004F29
      2F008C777A00BE9AA0006E353E00FFFFFF00FFFFFF005D2E3600FCE9EC004D34
      38005A2931004B212800F9E4E700FFFBFC00FFFCFD00A5858A00773842004F29
      2F008C777A00BE9AA0006E353E00FFFFFF00FFFFFF005D2E3600FCE9EC004D34
      38005A2931004B212800F9E4E700FFFBFC00FFFCFD00A5858A00773842004F29
      2F008C777A00BE9AA0006E353E00FFFFFF00FFFFFF00FCFEFE00FEF9FA003E23
      27006B323B00421C2200FFFBFC00F3F5F500FAF8F800B9A4A7007C3742005026
      2D0064515400BF9DA30070374000FFFFFF00FFFFFF005E2F3700F8E5E8004123
      28006B323B00421C2200FFFBFC00F3F5F500FAF8F800B9A4A7007C3742005026
      2D0064515400BF9DA30070374000FFFFFF00FFFFFF005E2F3700F8E5E8004123
      28006B323B00421C2200FFFBFC00F3F5F500FAF8F800B9A4A7007C3742005026
      2D0064515400BF9DA30070374000FFFFFF00FFFFFF005E2F3700F8E5E8004123
      28006B323B00421C2200FFFBFC00F3F5F500FAF8F800B9A4A7007C3742005026
      2D0064515400BF9DA30070374000FFFFFF00FFFFFF00FDFFFF00FFFFFF006A4F
      530082495200421E2400FFFAFB00F4F9F800FCF7F900B39EA100702C3700754B
      520066535600C3A1A70072394200FFFFFF00FDFFFF0061303800F8E5E800674E
      520082495200421E2400FFFAFB00F4F9F800FCF7F900B39EA100702C3700754B
      520066535600C3A1A70072394200FFFFFF00FFFEFF0061303800F6E5E8006A4F
      530082495200421E2400FFFAFB00F4F9F800FCF7F900B39EA100702C3700754B
      520066535600C3A1A70072394200FFFFFF00FFFFFF00602F3700FAE5E800694E
      520082495200421E2400FFFAFB00F4F9F800FCF7F900B39EA100702C3700754B
      520066535600C3A1A70072394200FFFFFF00FFFDFE00FFFFFF00FFFFFF00866F
      73009160680045192000FAE5E800F9F7F700FFFBFC008C6E730077333E007854
      5A0095828500BD9BA10070343E00FDFFFF00FFFFFF005F333A00FDE8EB00886F
      73009160680045192000FAE5E800F9F7F700FFFBFC008C6E730077333E007854
      5A0095828500BD9BA10070343E00FDFFFF00FEFEFE0061323A00F8E7EA008770
      74009160680045192000FAE5E800F9F7F700FFFBFC008C6E730077333E007854
      5A0095828500BD9BA10070343E00FDFFFF00FDFFFF0062333B00FAE7EA008B70
      74009160680045192000FAE5E800F9F7F700FFFBFC008C6E730077333E007854
      5A0095828500BD9BA10070343E00FDFFFF00FFFFFF00FDFFFF00FDFDFD00E0CD
      D0008C60670052212900A5838900FFFAFB00F5E8EA00532A3100642F3800AA8C
      9100F4E7E900B593990074353F00FFFFFF00FDFFFF00DBCED000FFF4F600DBCD
      CF008C60670052212900A5838900FFFAFB00F5E8EA00532A3100642F3800AA8C
      9100F4E7E900B593990074353F00FFFFFF00FDFFFF0061303800FFF4F600DDCC
      CF008C60670052212900A5838900FFFAFB00F5E8EA00532A3100642F3800AA8C
      9100F4E7E900B593990074353F00FFFFFF00FCFEFE0060313900FFF3F500DFCC
      CF008C60670052212900A5838900FFFAFB00F5E8EA00532A3100642F3800AA8C
      9100F4E7E900B593990074353F00FFFFFF00FCFEFE00CFBEC100FDF5F600FFFF
      FF00896369006A333C004B222900A79295008462680056232B0050242B00E0CD
      D000FEFEFE00B6949A0075364000FFFFFF00FFFFFF00FFFFFF00FFFDFD00FFFF
      FF00896369006A333C004B222900A79295008462680056232B0050242B00E0CD
      D000FEFEFE00B6949A0075364000FFFFFF00FFFFFF00632E3700FEF3F500FFFF
      FF00896369006A333C004B222900A79295008462680056232B0050242B00E0CD
      D000FEFEFE00B6949A0075364000FFFFFF00FFFFFF00612E3600FDF5F600FDFF
      FF00896369006A333C004B222900A79295008462680056232B0050242B00E0CD
      D000FEFEFE00B6949A0075364000FFFFFF00FFFFFF005E2F3700FDF2F400F8F0
      F100512D3300723F470053202800431F250042181F006C37400054232B00A68F
      9300FFFAFB00B6969B0071343E00FFFFFF00FFFFFF00FFFFFF00FFFFFF00F9EE
      F000512D3300723F470053202800431F250042181F006C37400054232B00A68F
      9300FFFAFB00B6969B0071343E00FFFFFF00FEFEFE005C303700FFF4F600FAEF
      F100512D3300723F470053202800431F250042181F006C37400054232B00A68F
      9300FFFAFB00B6969B0071343E00FFFFFF00FEFEFE0061303800FFF3F500F9F1
      F200512D3300723F470053202800431F250042181F006C37400054232B00A68F
      9300FFFAFB00B6969B0071343E00FFFFFF00FDFFFF005B313800FAF5F600E2D7
      D900703F47006A3B430089565E00702C370075364000764C53007E3F49005E45
      4900FFFEFE00AA979A006D363F00FFFFFF00FFFFFF00FFFFFF00FCFEFE00E0D8
      D900703F47006A3B430089565E00702C370075364000764C53007E3F49005E45
      4900FFFEFE00AA979A006D363F00FFFFFF00FFFFFF0058323800F9F3F400E0D8
      D900703F47006A3B430089565E00702C370075364000764C53007E3F49005E45
      4900FFFEFE00AA979A006D363F00FFFFFF00FFFFFF0059303700F9F4F500E0D8
      D900703F47006A3B430089565E00702C370075364000764C53007E3F49005E45
      4900FFFEFE00AA979A006D363F00FFFFFF00FFFFFF005E2F3700FCF6F700F3EE
      EF00926E74006B474D00A2767D007E454E00723F4700885F660085545C00A893
      9600FCFCFC00B1969A0070333D00FFFFFF00FFFFFF00FFFFFF00FFFDFE00F4EE
      EF00926E74006B474D00A2767D007E454E00723F4700885F660085545C00A893
      9600FCFCFC00B1969A0070333D00FFFFFF00FFFFFF00DACDCF00FDF7F800F2ED
      EE00926E74006B474D00A2767D007E454E00723F4700885F660085545C00A893
      9600FCFCFC00B1969A0070333D00FFFFFF00FCFEFE005F303800FFF7F800F3EE
      EF00926E74006B474D00A2767D007E454E00723F4700885F660085545C00A893
      9600FCFCFC00B1969A0070333D00FFFFFF00FFFFFF005F2A3300FFF2F400FEFC
      FC00C1AEB100AD9C9F00C1A3A800693F460059353B00E5D2D50087696E00F9F1
      F200FAF8F800AF898F0077333E00FFFFFF00FFFFFF00CEBDC000FDF2F400FEFC
      FC00C1AEB100AD9C9F00C1A3A800693F460059353B00E5D2D50087696E00F9F1
      F200FAF8F800AF898F0077333E00FFFFFF00FFFFFF00FBFFFF00FFFDFD00FFFD
      FD00C1AEB100AD9C9F00C1A3A800693F460059353B00E5D2D50087696E00F9F1
      F200FAF8F800AF898F0077333E00FFFFFF00FFFFFF00602B3400FDF2F400FEFC
      FC00C1AEB100AD9C9F00C1A3A800693F460059353B00E5D2D50087696E00F9F1
      F200FAF8F800AF898F0077333E00FFFFFF00FCFEFE006A2E3800F1DEE100FDF7
      F800F4EEEF00F9F3F400DCCBCE0070575B00553C4000FFFFFF00E6DBDD00FFFE
      FE00FFFDFD0091656C007B364100FFFFFF00FCFEFE006A2E3800F1DEE100FDF7
      F800F4EEEF00F9F3F400DCCBCE0070575B00553C4000FFFFFF00E6DBDD00FFFE
      FE00FFFDFD0091656C007B364100FFFFFF00FFFFFF00FFFFFF00FDFFFF00FDF7
      F800F4EEEF00F9F3F400DCCBCE0070575B00553C4000FFFFFF00E6DBDD00FFFE
      FE00FFFDFD0091656C007B364100FFFFFF00FFFFFF00652E3700F1DEE100FCF6
      F700F3EEEF00F9F3F400DDCACD0072575B00553C4000FFFFFF00E6DBDD00FFFE
      FE00FFFDFD0091656C007B364100FFFFFF00FFFFFF006F363F00C09CA200FDFD
      FD00FCFCFC00FDFBFB00F7E6E900937E81009B868900FEFEFE00FFFFFF00FBF6
      F700FFF5F7006B384000BA969C00FFFFFF00FFFFFF006F363F00C09CA200FDFD
      FD00FCFCFC00FDFBFB00F7E6E900937E81009B868900FEFEFE00FFFFFF00FBF6
      F700FFF5F7006B384000BA969C00FFFFFF00FEFEFE00FFFFFF00FFFFFF00FFFB
      FC00FCFCFC00FDFBFB00F7E6E900937E81009B868900FEFEFE00FFFFFF00FBF6
      F700FFF5F7006B384000BA969C00FFFFFF00FFFFFF0071353F00E4D6D800FEFE
      FE00FBFDFD00FDFBFB00F5E7E900947D81009B868900FEFEFE00FFFFFF00FBF6
      F700FFF5F7006B384000BA969C00FFFFFF00FFFFFF008B61680070474E00F6E1
      E400FFFAFB00FFF7F900FFF8FB00FCE9EC00FAECEE00FCF6F700FDF8F900FFF7
      F800C4A2A80064353D00F6F1F200FEFEFE00FFFFFF008B61680070474E00F6E1
      E400FFFAFB00FFF7F900FFF8FB00FCE9EC00FAECEE00FCF6F700FDF8F900FFF7
      F800C4A2A80064353D00F6F1F200FEFEFE00FFFFFF00FFFFFF00E1D6D800F3E2
      E500FFFAFB00FFF7F900FFF8FB00FCE9EC00FAECEE00FCF6F700FDF8F900FFF7
      F800C4A2A80064353D00F6F1F200FEFEFE00FDFFFF00946E7400FFFFFF00FDFF
      FF00FFF9FA00FFF8F900FFF8F900FCE9EC00FAECEE00FCF6F700FDF8F900FFF7
      F800C4A2A80064353D00F6F1F200FEFEFE00FFFEFF00B3A0A30064333B009066
      6D00B9A0A400BEA0A500C4A2A800C4A4A900C3A1A700BE9CA200B6A3A600B08E
      94006C3941007D575D00FAF8F800FDFFFF00FFFEFF00B3A0A30064333B009066
      6D00B9A0A400BEA0A500C4A2A800C4A4A900C3A1A700BE9CA200B6A3A600B08E
      94006C3941007D575D00FAF8F800FDFFFF00FFFFFF00E7E2E300693A42009064
      6B00B9A0A400BEA0A500C4A2A800C4A4A900C3A1A700BE9CA200B6A3A600B08E
      94006C3941007D575D00FAF8F800FDFFFF00FFFFFF00D5CACC00FDFFFF00FEFE
      FE00CDB8BB00BDA2A600C1A3A800C5A3A900C3A1A700BE9CA200B6A3A600B08E
      94006C3941007D575D00FAF8F800FDFFFF00FDFFFF00F2F2F200875D64006930
      390062333B0067343C0063323A0063323A006130380065323A005C333A00642F
      3800743F4800D2C5C700FEFEFE00FFFEFE00FDFFFF00F2F2F200875D64006930
      390062333B0067343C0063323A0063323A006130380065323A005C333A00642F
      3800743F4800D2C5C700FEFEFE00FFFEFE00FFFFFF00F2F0F0008A5E65006C30
      3A0062333B0067343C0063323A0063323A006130380065323A005C333A00642F
      3800743F4800D2C5C700FEFEFE00FFFEFE00FFFFFF00F7F7F700FEFEFE00FFFE
      FF008462680062333B0064333B0063323A006130380065323A005C333A00642F
      3800743F4800D2C5C700FEFEFE00FFFEFE00FEFEFE00FFFEFE00D7C4C7007D35
      410072353F0073343E0070343E006E353E006C333C0073343E0069343D007834
      3F00B48E9400FEFCFC00FDFDFD00FFFFFF00FEFEFE00FFFEFE00D7C4C7007D35
      410072353F0073343E0070343E006E353E006C333C0073343E0069343D007834
      3F00B48E9400FEFCFC00FDFDFD00FFFFFF00FFFFFF00FFFFFF00D3C5C7007D35
      410072353F0073343E0070343E006E353E006C333C0073343E0069343D007834
      3F00B48E9400FEFCFC00FDFDFD00FFFFFF00FDFFFF00FFFFFF00FFFFFF00FFFF
      FF00763A440074353F0070333D006E353E006C333C0073343E0069343D007834
      3F00B48E9400FEFCFC00FDFDFD00FFFFFF00FDFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FEFEFE00FFFEFE00FFFFFF00FDFFFF00FFFFFF00FFFFFF00FDFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FDFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FEFEFE00FFFEFE00FFFFFF00FDFFFF00FFFFFF00FFFFFF00FDFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FEFEFE00FFFFFF00FDFF
      FF00FFFFFF00FEFEFE00FFFEFE00FFFFFF00FDFFFF00FFFFFF00FFFFFF00FDFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FEFEFE00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FDFFFF00FFFFFF00FFFFFF00FDFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FDFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFEFE00FDFFFF00FDFFFF00FFFFFF00FFFF
      FF00FDFFFF00FFFFFF00FFFFFF00FFFFFF00FDFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFEFE00FDFFFF00FDFFFF00FFFFFF00FFFF
      FF00FDFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFEFE00FDFFFF00FDFFFF00FFFFFF00FFFF
      FF00FDFFFF00FFFFFF00FFFFFF00FFFFFF00FFFEFE00FFFFFF00FFFFFF00FDFF
      FF00FDFFFF00FFFFFF00FFFFFF00FDFFFF00FDFFFF00FDFFFF00FFFFFF00FFFF
      FF00FDFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FBFFFF00FDFFFF00FFFF
      FF00FFFFFF00FFFFFF00FEFEFE00FFFFFF00FEFEFE00FFFFFF00FFFFFF00FFFF
      FF00FDFFFF00FFFFFF00FDFFFF00FDFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FBFFFF00FFFFFF00FFFFFF00FFFFFF00FEFEFE00FFFFFF00FFFFFF00FFFF
      FF00FDFFFF00FFFFFF00FDFFFF00FDFFFF00FFFFFF00FFFFFF00FEFEFE00FFFF
      FF00FFFFFF00FFFFFF00FDFFFF00FFFFFF00FEFEFE00FFFFFF00FFFFFF00FFFF
      FF00FDFFFF00FFFFFF00FDFFFF00FDFFFF00FFFFFF00FBFFFF00FEFEFE00FFFF
      FF00FFFFFF00FFFFFF00FDFFFF00FFFFFF00FEFEFE00FFFFFF00FFFFFF00FFFF
      FF00FDFFFF00FFFFFF00FDFFFF00FDFFFF00FFFFFF00FFFFFF00FFFEFF00FFFF
      FF00FEFEFE00FFFFFF00FFFFFF00FFFFFF00FBFFFF00FFFFFF00FDFFFF00FFFF
      FF00FEFEFE00FDFFFF00FFFEFE00FFFFFF00FFFFFF00FCFEFE00FBFFFF00FDFF
      FF00FDFFFF00FFFFFF00FFFFFF00FFFFFF00FBFFFF00FFFFFF00FDFFFF00FFFF
      FF00FEFEFE00FDFFFF00FFFEFE00FFFFFF00FDFFFF00FEFEFE00FFFFFF00FFFF
      FF00FBFFFF00FDFFFF00FFFFFF00FFFFFF00FBFFFF00FFFFFF00FDFFFF00FFFF
      FF00FEFEFE00FDFFFF00FFFEFE00FFFFFF00FCFEFE00FFFFFF00FFFEFE00FFFF
      FF00FBFFFF00FDFFFF00FFFFFF00FFFFFF00FBFFFF00FFFFFF00FDFFFF00FFFF
      FF00FEFEFE00FDFFFF00FFFEFE00FFFFFF00FFFFFF00FFFFFF00FCF7F800FFFF
      FF00FDFFFF00956B720072364000783B450072364100753944006A3B43007738
      4200CBB4B800FAFAFA00FEFEFE00FFFFFF00FFFFFF00FFFFFF00FFFDFD00AB81
      88006F3841007438420074364200733A430072364100753944006A3B43007738
      4200CBB4B800FAFAFA00FEFEFE00FFFFFF00FFFFFF00FFFFFF00F7F2F300A67A
      8100703942007538420073364000733A430072364100753944006A3B43007738
      4200CBB4B800FAFAFA00FEFEFE00FFFFFF00FFFFFF00FFFFFF00F8F3F400A47A
      8100703942007538420073364000733A430072364100753944006A3B43007738
      4200CBB4B800FAFAFA00FEFEFE00FFFFFF00FEFEFE00FFFEFE00D4C3C600FFFF
      FF00FEFEFE00835F6500642F39005C2D36005A2D36005E2F38005B2F3600632C
      350087525B00CCBBBE00FFFFFF00FFFFFF00FFFFFF00FCFEFE00FFFFFF00E4D9
      DB00622F3700612E3600622E38005B2E37005A2D36005E2F38005B2F3600632C
      350087525B00CCBBBE00FFFFFF00FFFFFF00FFFFFF00FBFDFD00B5979C006C33
      3C00613038005F2E3600632F3900612D37005A2D36005E2F38005B2F3600632C
      350087525B00CCBBBE00FFFFFF00FFFFFF00FFFFFF00FEFEFE00B7979C006F33
      3D00613038005F2E3600632F3900612D37005A2D36005E2F38005B2F3600632C
      350087525B00CCBBBE00FFFFFF00FFFFFF00FFFFFF00F6F1F2007C475000FFFF
      FF00FDFFFF00B08F9600AE8C9300B6959C00B2909700A9878E00AC8A9000AC7D
      8500713841009E838700FFFEFE00FEFEFE00FFFFFF00FFFFFF00FDFFFF00FDFF
      FF00AD8B9100B18D9300AE8D9400B8939B00B2909700A9878E00AC8A9000AC7D
      8500713841009E838700FFFEFE00FEFEFE00FFFFFF00F5F3F30072394200915A
      6300B08A9000B28D9500AE8C9300B7929A00B2909700A9878E00AC8A9000AC7D
      8500713841009E838700FFFEFE00FEFEFE00FFFFFF00F4F2F200723942009259
      6200B08A9000B28D9500AE8C9300B7929A00B2909700A9878E00AC8A9000AC7D
      8500713841009E838700FFFEFE00FEFEFE00FEFEFE00B6969B006D3E4600FBED
      EF00FFFAFB00FEEFF300FDF2F500F3DFE400F9E3E800FBF0F300FFF3F500FFF2
      F400BD949B007E495200FCFAFA00FFFFFF00FFFFFF00FEFEFE00FFFFFF00FFFF
      FF00FFF3F500FEEFF300FFF2F600F4E0E500F9E3E800FBF0F300FFF3F500FFF2
      F400BD949B007E495200FCFAFA00FFFFFF00FDFFFF00B7979C00713E4600F4D6
      DB00FFF4F600FFEEF200FFF2F600F2E1E500F9E3E800FBF0F300FFF3F500FFF2
      F400BD949B007E495200FCFAFA00FFFFFF00FDFFFF00B7979C006F3E4600F6D6
      DB00FFF4F600FFEEF200FFF2F600F2E1E500F9E3E800FBF0F300FFF3F500FFF2
      F400BD949B007E495200FCFAFA00FFFFFF00FFFFFF007A414A00B8989D00FFFE
      FF00F7FCFB00FDFDFD00F1E3E700624C51008A747900FEFBFD00FFFFFF00F8F8
      F800FFEEF10069384000D6C3C600FFFFFF00FFFFFF00F4EEEF00FEFEFE00FEFE
      FE00F8FAFA00FFFCFD00F2E3E700604C51008A747900FEFBFD00FFFFFF00F8F8
      F800FFEEF10069384000D6C3C600FFFFFF00FFFEFF00E0D2D400BD9DA200FFFE
      FE00F6FBFA00FFFBFC00F1E2E600634C51008A747900FEFBFD00FFFFFF00F8F8
      F800FFEEF10069384000D6C3C600FFFFFF00FFFFFF0076414A00B5979C00F9FE
      FD00F6FBFA00FFFBFC00F1E2E600634C51008A747900FEFBFD00FFFFFF00F8F8
      F800FFEEF10069384000D6C3C600FFFFFF00FFFFFF005F303800EADDDF00F6F8
      F800EFF1F100F8F0F100EADCDE003A1E24004B313700FFFEFF00D6D8D800F9FE
      FD00FDFFFF0087656B00A0777E00FFFFFF00FFFFFF006E424900F9F4F500F4F9
      F800EEF3F200F8F0F100F0DADF00391E22004B313700FFFEFF00D6D8D800F9FE
      FD00FDFFFF0087656B00A0777E00FFFFFF00FFFFFF00FFFFFF00F8FAFA00F7F7
      F700F2F2F200F7F1F200EEDBDE00371D23004B313700FFFEFF00D6D8D800F9FE
      FD00FDFFFF0087656B00A0777E00FFFFFF00FFFFFF0061303800EBDDDF00F6F8
      F800F2F2F200F7F1F200EEDBDE00371D23004B313700FFFEFF00D6D8D800F9FE
      FD00FDFFFF0087656B00A0777E00FFFFFF00FCFEFE00562C3300F9F4F500FAFF
      FE00A29597009F8E9100AB8C93005F343D00522B3300E1CDD2005C474A00F1F3
      F300F2F8F700A68B8F007A454E00FFFFFF00FCFEFE00562C3300F9F4F500FAFF
      FE00A29597009F8E9100AB8C93005F343D00522B3300E1CDD2005C474A00F1F3
      F300F2F8F700A68B8F007A454E00FFFFFF00FFFEFF00FFFFFF00FFFFFF00F9FF
      FE00A29597009F8E9100AB8C93005F343D00522B3300E1CDD2005C474A00F1F3
      F300F2F8F700A68B8F007A454E00FFFFFF00FFFFFF00582C3300FCF4F500FBFD
      FD00A29597009F8E9100AB8C93005F343D00522B3300E1CDD2005C474A00F1F3
      F300F2F8F700A68B8F007A454E00FFFFFF00FFFFFF005C303700FEF6F700F7F1
      F20049272D004D292F004C1F28006D313C004F1B25005E373F003F0E1600A28B
      8F00F5FAF900AD969A0074384200FFFFFF00FFFFFF005C303700FEF6F700F7F1
      F20049272D004D292F004C1F28006D313C004F1B25005E373F003F0E1600A28B
      8F00F5FAF900AD969A0074384200FFFFFF00FFFEFF00FFFFFF00FDFFFF00F6F1
      F20049272D004D292F004C1F28006D313C004F1B25005E373F003F0E1600A28B
      8F00F5FAF900AD969A0074384200FFFFFF00FFFFFF005D313800FCF6F700F7F2
      F30049272D004D292F004C1F28006D313C004F1B25005E373F003F0E1600A28B
      8F00F5FAF900AD969A0074384200FFFFFF00FEFEFE0061303800FDF2F400EAD9
      DC007A3E480055242C00602C3600813B48007C3C480044192200792F3B006B47
      4D00FFFEFE00B1969A0077384200FFFFFF00FEFEFE0061303800FDF2F400EAD9
      DC007A3E480055242C00602C3600813B48007C3C480044192200792F3B006B47
      4D00FFFEFE00B1969A0077384200FFFFFF00FFFFFF00FEFEFE00FFFBFC00EBD8
      DB007A3E480055242C00602C3600813B48007C3C480044192200792F3B006B47
      4D00FFFEFE00B1969A0077384200FFFFFF00FFFFFF00DCCED000FFF2F400EDD8
      DB007A3E480055242C00602C3600813B48007C3C480044192200792F3B006B47
      4D00FFFEFE00B1969A0077384200FFFFFF00FFFFFF00602F3700FFF2F400F7EF
      F000957177006A333C006E3B43008158600093697000763F48005B2C3400B49B
      9F00FFFBFC00B7979C0072333D00FFFFFF00FFFFFF00602F3700FFF2F400F7EF
      F000957177006A333C006E3B43008158600093697000763F48005B2C3400B49B
      9F00FFFBFC00B7979C0072333D00FFFFFF00FFFFFF00CEC0C200FEF3F500FAED
      EF00957177006A333C006E3B43008158600093697000763F48005B2C3400B49B
      9F00FFFBFC00B7979C0072333D00FFFFFF00FFFEFE00FDFFFF00FDFDFD00FBEE
      F000957177006A333C006E3B43008158600093697000763F48005B2C3400B49B
      9F00FFFBFC00B7979C0072333D00FFFFFF00FFFFFF0062313900FFF2F400FFFF
      FF00734D5300703942006A404700BFACAF00AF91960096656D00491D2400E3D0
      D300FEFCFC00B08E940070343E00FFFFFF00FFFFFF0062313900FFF2F400FFFF
      FF00734D5300703942006A404700BFACAF00AF91960096656D00491D2400E3D0
      D300FEFCFC00B08E940070343E00FFFFFF00FFFFFF0063323A00FFF3F500FFFF
      FF00734D5300703942006A404700BFACAF00AF91960096656D00491D2400E3D0
      D300FEFCFC00B08E940070343E00FFFFFF00FDFFFF00FFFFFF00FDFFFF00FEFE
      FE00734D5300703942006A404700BFACAF00AF91960096656D00491D2400E3D0
      D300FEFCFC00B08E940070343E00FFFFFF00FFFEFE0062313900FFF4F600E2D4
      D6005B2F36005F2C3400B2909600FFFAFB00F0DFE200996F7600622D3600A186
      8A00EBE0E200B7959B006F333D00FDFFFF00FFFEFE0062313900FFF4F600E2D4
      D6005B2F36005F2C3400B2909600FFFAFB00F0DFE200996F7600622D3600A186
      8A00EBE0E200B7959B006F333D00FDFFFF00FFFFFF0064313900FFF4F600E4D3
      D6005B2F36005F2C3400B2909600FFFAFB00F0DFE200996F7600622D3600A186
      8A00EBE0E200B7959B006F333D00FDFFFF00FFFFFF00FFFFFF00FFFFFF00E6D3
      D6005B2F36005F2C3400B2909600FFFAFB00F0DFE200996F7600622D3600A186
      8A00EBE0E200B7959B006F333D00FDFFFF00FFFFFF005D2E3600FCE9EC004D34
      38005A2931004B212800F9E4E700FFFBFC00FFFCFD00A5858A00773842004F29
      2F008C777A00BE9AA0006E353E00FFFFFF00FFFFFF005D2E3600FCE9EC004D34
      38005A2931004B212800F9E4E700FFFBFC00FFFCFD00A5858A00773842004F29
      2F008C777A00BE9AA0006E353E00FFFFFF00FFFFFF005C2D3500F7E9EB004A33
      37005A2931004B212800F9E4E700FFFBFC00FFFCFD00A5858A00773842004F29
      2F008C777A00BE9AA0006E353E00FFFFFF00FFFFFF00FFFFFF00FDFBFB004A33
      37005A2931004B212800F9E4E700FFFBFC00FFFCFD00A5858A00773842004F29
      2F008C777A00BE9AA0006E353E00FFFFFF00FFFFFF005E2F3700F8E5E8004123
      28006B323B00421C2200FFFBFC00F3F5F500FAF8F800B9A4A7007C3742005026
      2D0064515400BF9DA30070374000FFFFFF00FFFFFF005E2F3700F8E5E8004123
      28006B323B00421C2200FFFBFC00F3F5F500FAF8F800B9A4A7007C3742005026
      2D0064515400BF9DA30070374000FFFFFF00FFFFFF005F2E3600FAE5E8004123
      28006B323B00421C2200FFFBFC00F3F5F500FAF8F800B9A4A7007C3742005026
      2D0064515400BF9DA30070374000FFFFFF00FCFEFE00CEBDC000FAE7EA003F24
      28006B323B00421C2200FFFBFC00F3F5F500FAF8F800B9A4A7007C3742005026
      2D0064515400BF9DA30070374000FFFFFF00FFFFFF00602F3700FAE5E800694E
      520082495200421E2400FFFAFB00F4F9F800FCF7F900B39EA100702C3700754B
      520066535600C3A1A70072394200FFFFFF00FFFFFF00602F3700FAE5E800694E
      520082495200421E2400FFFAFB00F4F9F800FCF7F900B39EA100702C3700754B
      520066535600C3A1A70072394200FFFFFF00FFFFFF00602F3700FAE5E800694E
      520082495200421E2400FFFAFB00F4F9F800FCF7F900B39EA100702C3700754B
      520066535600C3A1A70072394200FFFFFF00FFFFFF00602F3700FAE5E800694E
      520082495200421E2400FFFAFB00F4F9F800FCF7F900B39EA100702C3700754B
      520066535600C3A1A70072394200FFFFFF00FDFFFF0062333B00FAE7EA008B70
      74009160680045192000FAE5E800F9F7F700FFFBFC008C6E730077333E007854
      5A0095828500BD9BA10070343E00FDFFFF00FDFFFF0062333B00FAE7EA008B70
      74009160680045192000FAE5E800F9F7F700FFFBFC008C6E730077333E007854
      5A0095828500BD9BA10070343E00FDFFFF00FDFFFF0062333B00FAE7EA008B70
      74009160680045192000FAE5E800F9F7F700FFFBFC008C6E730077333E007854
      5A0095828500BD9BA10070343E00FDFFFF00FDFFFF0062333B00FAE7EA008B70
      74009160680045192000FAE5E800F9F7F700FFFBFC008C6E730077333E007854
      5A0095828500BD9BA10070343E00FDFFFF00FCFEFE0060313900FFF3F500DFCC
      CF008C60670052212900A5838900FFFAFB00F5E8EA00532A3100642F3800AA8C
      9100F4E7E900B593990074353F00FFFFFF00FCFEFE0060313900FFF3F500DFCC
      CF008C60670052212900A5838900FFFAFB00F5E8EA00532A3100642F3800AA8C
      9100F4E7E900B593990074353F00FFFFFF00FCFEFE0060313900FFF3F500DFCC
      CF008C60670052212900A5838900FFFAFB00F5E8EA00532A3100642F3800AA8C
      9100F4E7E900B593990074353F00FFFFFF00FCFEFE0060313900FFF3F500DFCC
      CF008C60670052212900A5838900FFFAFB00F5E8EA00532A3100642F3800AA8C
      9100F4E7E900B593990074353F00FFFFFF00FFFFFF00612E3600FDF5F600FDFF
      FF00896369006A333C004B222900A79295008462680056232B0050242B00E0CD
      D000FEFEFE00B6949A0075364000FFFFFF00FFFFFF00612E3600FDF5F600FDFF
      FF00896369006A333C004B222900A79295008462680056232B0050242B00E0CD
      D000FEFEFE00B6949A0075364000FFFFFF00FFFFFF00612E3600FDF5F600FDFF
      FF00896369006A333C004B222900A79295008462680056232B0050242B00E0CD
      D000FEFEFE00B6949A0075364000FFFFFF00FFFFFF00612E3600FDF5F600FDFF
      FF00896369006A333C004B222900A79295008462680056232B0050242B00E0CD
      D000FEFEFE00B6949A0075364000FFFFFF00FEFEFE0061303800FFF3F500F9F1
      F200512D3300723F470053202800431F250042181F006C37400054232B00A68F
      9300FFFAFB00B6969B0071343E00FFFFFF00FEFEFE0061303800FFF3F500F9F1
      F200512D3300723F470053202800431F250042181F006C37400054232B00A68F
      9300FFFAFB00B6969B0071343E00FFFFFF00FEFEFE0061303800FFF3F500F9F1
      F200512D3300723F470053202800431F250042181F006C37400054232B00A68F
      9300FFFAFB00B6969B0071343E00FFFFFF00FEFEFE0061303800FFF3F500F9F1
      F200512D3300723F470053202800431F250042181F006C37400054232B00A68F
      9300FFFAFB00B6969B0071343E00FFFFFF00FFFFFF0059303700F9F4F500E0D8
      D900703F47006A3B430089565E00702C370075364000764C53007E3F49005E45
      4900FFFEFE00AA979A006D363F00FFFFFF00FFFFFF0059303700F9F4F500E0D8
      D900703F47006A3B430089565E00702C370075364000764C53007E3F49005E45
      4900FFFEFE00AA979A006D363F00FFFFFF00FFFFFF0059303700F9F4F500E0D8
      D900703F47006A3B430089565E00702C370075364000764C53007E3F49005E45
      4900FFFEFE00AA979A006D363F00FFFFFF00FFFFFF0059303700F9F4F500E0D8
      D900703F47006A3B430089565E00702C370075364000764C53007E3F49005E45
      4900FFFEFE00AA979A006D363F00FFFFFF00FCFEFE005F303800FFF7F800F3EE
      EF00926E74006B474D00A2767D007E454E00723F4700885F660085545C00A893
      9600FCFCFC00B1969A0070333D00FFFFFF00FCFEFE005F303800FFF7F800F3EE
      EF00926E74006B474D00A2767D007E454E00723F4700885F660085545C00A893
      9600FCFCFC00B1969A0070333D00FFFFFF00FCFEFE005F303800FFF7F800F3EE
      EF00926E74006B474D00A2767D007E454E00723F4700885F660085545C00A893
      9600FCFCFC00B1969A0070333D00FFFFFF00FCFEFE005F303800FFF7F800F3EE
      EF00926E74006B474D00A2767D007E454E00723F4700885F660085545C00A893
      9600FCFCFC00B1969A0070333D00FFFFFF00FFFFFF00602B3400FDF2F400FEFC
      FC00C1AEB100AD9C9F00C1A3A800693F460059353B00E5D2D50087696E00F9F1
      F200FAF8F800AF898F0077333E00FFFFFF00FFFFFF00602B3400FDF2F400FEFC
      FC00C1AEB100AD9C9F00C1A3A800693F460059353B00E5D2D50087696E00F9F1
      F200FAF8F800AF898F0077333E00FFFFFF00FFFFFF00602B3400FDF2F400FEFC
      FC00C1AEB100AD9C9F00C1A3A800693F460059353B00E5D2D50087696E00F9F1
      F200FAF8F800AF898F0077333E00FFFFFF00FFFFFF00602B3400FDF2F400FEFC
      FC00C1AEB100AD9C9F00C1A3A800693F460059353B00E5D2D50087696E00F9F1
      F200FAF8F800AF898F0077333E00FFFFFF00FCFEFE006A2E3800F1DEE100FDF7
      F800F4EEEF00F9F3F400DCCBCE0070575B00553C4000FFFFFF00E6DBDD00FFFE
      FE00FFFDFD0091656C007B364100FFFFFF00FCFEFE006A2E3800F1DEE100FDF7
      F800F4EEEF00F9F3F400DCCBCE0070575B00553C4000FFFFFF00E6DBDD00FFFE
      FE00FFFDFD0091656C007B364100FFFFFF00FCFEFE006A2E3800F1DEE100FDF7
      F800F4EEEF00F9F3F400DCCBCE0070575B00553C4000FFFFFF00E6DBDD00FFFE
      FE00FFFDFD0091656C007B364100FFFFFF00FCFEFE006A2E3800F1DEE100FDF7
      F800F4EEEF00F9F3F400DCCBCE0070575B00553C4000FFFFFF00E6DBDD00FFFE
      FE00FFFDFD0091656C007B364100FFFFFF00FFFFFF006F363F00C09CA200FDFD
      FD00FCFCFC00FDFBFB00F7E6E900937E81009B868900FEFEFE00FFFFFF00FBF6
      F700FFF5F7006B384000BA969C00FFFFFF00FFFFFF006F363F00C09CA200FDFD
      FD00FCFCFC00FDFBFB00F7E6E900937E81009B868900FEFEFE00FFFFFF00FBF6
      F700FFF5F7006B384000BA969C00FFFFFF00FFFFFF006F363F00C09CA200FDFD
      FD00FCFCFC00FDFBFB00F7E6E900937E81009B868900FEFEFE00FFFFFF00FBF6
      F700FFF5F7006B384000BA969C00FFFFFF00FFFFFF006F363F00C09CA200FDFD
      FD00FCFCFC00FDFBFB00F7E6E900937E81009B868900FEFEFE00FFFFFF00FBF6
      F700FFF5F7006B384000BA969C00FFFFFF00FFFFFF008B61680070474E00F6E1
      E400FFFAFB00FFF7F900FFF8FB00FCE9EC00FAECEE00FCF6F700FDF8F900FFF7
      F800C4A2A80064353D00F6F1F200FEFEFE00FFFFFF008B61680070474E00F6E1
      E400FFFAFB00FFF7F900FFF8FB00FCE9EC00FAECEE00FCF6F700FDF8F900FFF7
      F800C4A2A80064353D00F6F1F200FEFEFE00FFFFFF008B61680070474E00F6E1
      E400FFFAFB00FFF7F900FFF8FB00FCE9EC00FAECEE00FCF6F700FDF8F900FFF7
      F800C4A2A80064353D00F6F1F200FEFEFE00FFFFFF008B61680070474E00F6E1
      E400FFFAFB00FFF7F900FFF8FB00FCE9EC00FAECEE00FCF6F700FDF8F900FFF7
      F800C4A2A80064353D00F6F1F200FEFEFE00FFFEFF00B3A0A30064333B009066
      6D00B9A0A400BEA0A500C4A2A800C4A4A900C3A1A700BE9CA200B6A3A600B08E
      94006C3941007D575D00FAF8F800FDFFFF00FFFEFF00B3A0A30064333B009066
      6D00B9A0A400BEA0A500C4A2A800C4A4A900C3A1A700BE9CA200B6A3A600B08E
      94006C3941007D575D00FAF8F800FDFFFF00FFFEFF00B3A0A30064333B009066
      6D00B9A0A400BEA0A500C4A2A800C4A4A900C3A1A700BE9CA200B6A3A600B08E
      94006C3941007D575D00FAF8F800FDFFFF00FFFEFF00B3A0A30064333B009066
      6D00B9A0A400BEA0A500C4A2A800C4A4A900C3A1A700BE9CA200B6A3A600B08E
      94006C3941007D575D00FAF8F800FDFFFF00FDFFFF00F2F2F200875D64006930
      390062333B0067343C0063323A0063323A006130380065323A005C333A00642F
      3800743F4800D2C5C700FEFEFE00FFFEFE00FDFFFF00F2F2F200875D64006930
      390062333B0067343C0063323A0063323A006130380065323A005C333A00642F
      3800743F4800D2C5C700FEFEFE00FFFEFE00FDFFFF00F2F2F200875D64006930
      390062333B0067343C0063323A0063323A006130380065323A005C333A00642F
      3800743F4800D2C5C700FEFEFE00FFFEFE00FDFFFF00F2F2F200875D64006930
      390062333B0067343C0063323A0063323A006130380065323A005C333A00642F
      3800743F4800D2C5C700FEFEFE00FFFEFE00FEFEFE00FFFEFE00D7C4C7007D35
      410072353F0073343E0070343E006E353E006C333C0073343E0069343D007834
      3F00B48E9400FEFCFC00FDFDFD00FFFFFF00FEFEFE00FFFEFE00D7C4C7007D35
      410072353F0073343E0070343E006E353E006C333C0073343E0069343D007834
      3F00B48E9400FEFCFC00FDFDFD00FFFFFF00FEFEFE00FFFEFE00D7C4C7007D35
      410072353F0073343E0070343E006E353E006C333C0073343E0069343D007834
      3F00B48E9400FEFCFC00FDFDFD00FFFFFF00FEFEFE00FFFEFE00D7C4C7007D35
      410072353F0073343E0070343E006E353E006C333C0073343E0069343D007834
      3F00B48E9400FEFCFC00FDFDFD00FFFFFF00FDFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FEFEFE00FFFEFE00FFFFFF00FDFFFF00FFFFFF00FFFFFF00FDFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FDFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FEFEFE00FFFEFE00FFFFFF00FDFFFF00FFFFFF00FFFFFF00FDFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FDFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FEFEFE00FFFEFE00FFFFFF00FDFFFF00FFFFFF00FFFFFF00FDFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FDFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FEFEFE00FFFEFE00FFFFFF00FDFFFF00FFFFFF00FFFFFF00FDFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FDFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFEFE00FDFFFF00FDFFFF00FFFFFF00FFFF
      FF00FDFFFF00FFFFFF00FFFFFF00FFFFFF00FDFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFEFE00FDFFFF00FDFFFF00FFFFFF00FFFF
      FF00FDFFFF00FFFFFF00FFFFFF00FFFFFF00FDFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFEFE00FDFFFF00FDFFFF00FFFFFF00FFFF
      FF00FDFFFF00FFFFFF00FFFFFF00FFFFFF00FDFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFEFE00FDFFFF00FDFFFF00FFFFFF00FFFF
      FF00FDFFFF00FFFFFF00FFFFFF00FFFFFF00424D3E000000000000003E000000
      2800000040000000C00000000100010000000000000600000000000000000000
      000000000000000000000000FFFFFF00C003000000000000C003000000000000
      8001000000000000800100000000000080010000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000800100000000000080010000000000008001000000000000
      C003000000000000C00300000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000}
  end
  object Timer1: TTimer
    Enabled = False
    Interval = 10000
    OnTimer = Timer1Timer
    Left = 232
  end
end
