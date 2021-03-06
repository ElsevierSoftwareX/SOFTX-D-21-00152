object TRVMLEForm: TTRVMLEForm
  Left = 0
  Top = 0
  Caption = 'Tiny RVML Editor'
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
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
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
    TabOrder = 0
    Wrapable = False
    object ToolButton1: TToolButton
      Tag = 20
      Left = 5
      Top = 0
      Hint = #1054#1090#1082#1088#1099#1090#1100' '#1073#1072#1079#1091' '#1079#1085#1072#1085#1080#1081
      Caption = 'Cange orientation'
      ImageIndex = 82
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
  object RzSplitter1: TRzSplitter
    Left = 0
    Top = 32
    Width = 934
    Height = 559
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
      559)
    UpperLeftControls = (
      RzSplitter2)
    LowerRightControls = (
      ScrollBox1)
    object RzSplitter2: TRzSplitter
      Left = 0
      Top = 0
      Width = 326
      Height = 559
      MarginMax = 56
      MarginMin = 334
      Orientation = orVertical
      Position = 334
      Percent = 60
      PercentMax = 90
      PercentMin = 60
      UsePercent = True
      Align = alClient
      TabOrder = 0
      ExplicitHeight = 569
      BarSize = (
        0
        334
        326
        338)
      UpperLeftControls = (
        RzGroupBox1)
      LowerRightControls = (
        RzPageControl2)
      object RzGroupBox1: TRzGroupBox
        AlignWithMargins = True
        Left = 3
        Top = 3
        Width = 320
        Height = 328
        Align = alClient
        Caption = ' '#1041#1072#1079#1099' '#1079#1085#1072#1085#1080#1081' ('#1087#1088#1086#1077#1082#1090#1099'): '
        TabOrder = 0
        ExplicitHeight = 384
        object TreeView1: TTreeView
          Tag = 2
          AlignWithMargins = True
          Left = 4
          Top = 17
          Width = 285
          Height = 307
          Align = alClient
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Default'
          Font.Style = []
          Images = MainForm.ImageList2
          Indent = 19
          ParentFont = False
          TabOrder = 0
          OnClick = TreeView1Click
          Items.NodeData = {
            0301000000500000000000000000000000FFFFFFFFFFFFFFFF00000000000000
            000000000001191104300437044B04200037043D0430043D0438043904200028
            003F0440043E0435043A0442044B04290020005B0030005D00}
          ExplicitTop = 25
        end
        object ToolBar1: TToolBar
          AlignWithMargins = True
          Left = 293
          Top = 17
          Width = 25
          Height = 309
          Margins.Left = 1
          Margins.Right = 1
          Margins.Bottom = 1
          Align = alRight
          AutoSize = True
          ButtonHeight = 25
          ButtonWidth = 25
          Caption = 'ToolBar1'
          TabOrder = 1
          ExplicitHeight = 365
          object ToolButton15: TToolButton
            Left = 0
            Top = 0
            Width = 17
            Hint = #1057#1086#1079#1076#1072#1090#1100' '#1087#1072#1087#1082#1091
            Caption = 'ToolButton15'
            ImageIndex = 51
            ParentShowHint = False
            Wrap = True
            ShowHint = True
            Style = tbsSeparator
          end
          object NewKB: TToolButton
            Tag = 3
            Left = 0
            Top = 42
            Hint = #1057#1086#1079#1076#1072#1090#1100' '#1085#1086#1074#1091#1102' '#1073#1072#1079#1091' '#1079#1085#1072#1085#1080#1081
            AutoSize = True
            Caption = 'New'
            ImageIndex = 21
            ParentShowHint = False
            ShowHint = True
          end
          object NewT: TToolButton
            Tag = 5
            Left = 8
            Top = 42
            Hint = #1057#1086#1079#1076#1072#1090#1100' '#1085#1086#1074#1099#1081' '#1096#1072#1073#1083#1086#1085' '#1076#1083#1103' '#1092#1072#1082#1090#1086#1074' ('#1087#1088#1077#1094#1077#1076#1077#1085#1090#1086#1074')'
            AutoSize = True
            Caption = 'NewT'
            Enabled = False
            ImageIndex = 22
            ParentShowHint = False
            ShowHint = True
          end
          object NewF: TToolButton
            Tag = 6
            Left = 16
            Top = 42
            Hint = #1057#1086#1079#1076#1072#1090#1100' '#1085#1086#1074#1099#1081' '#1092#1072#1082#1090' ('#1087#1088#1077#1094#1077#1076#1077#1085#1090')'
            AutoSize = True
            Caption = 'NewF'
            Enabled = False
            ImageIndex = 20
            ParentShowHint = False
            Wrap = True
            ShowHint = True
          end
          object ToolButton13: TToolButton
            Tag = 101
            Left = 0
            Top = 67
            Hint = #1057#1086#1079#1076#1072#1090#1100' '#1085#1086#1074#1099#1081' '#1096#1072#1073#1083#1086#1085' '#1087#1088#1072#1074#1080#1083#1072
            Caption = 'ToolButton13'
            Enabled = False
            ImageIndex = 51
            ParentShowHint = False
            Wrap = True
            ShowHint = True
          end
          object NewR: TToolButton
            Tag = 4
            Left = 0
            Top = 92
            Hint = #1057#1086#1079#1076#1072#1090#1100' '#1085#1086#1074#1086#1077' '#1087#1088#1072#1074#1080#1083#1086
            Caption = 'NewR'
            Enabled = False
            ImageIndex = 19
            ParentShowHint = False
            Wrap = True
            ShowHint = True
          end
          object ToolButton11: TToolButton
            Tag = 24
            Left = 0
            Top = 117
            Hint = #1057#1086#1079#1076#1072#1090#1100' '#1087#1072#1087#1082#1091
            Caption = 'ToolButton11'
            Enabled = False
            ImageIndex = 32
            ParentShowHint = False
            Wrap = True
            ShowHint = True
          end
          object EditItem: TToolButton
            Tag = 17
            Left = 0
            Top = 142
            Hint = #1048#1079#1084#1077#1085#1080#1090#1100
            AutoSize = True
            Caption = 'ToolButton2'
            Enabled = False
            ImageIndex = 10
            ParentShowHint = False
            Wrap = True
            ShowHint = True
          end
          object DeleteItem: TToolButton
            Tag = 18
            Left = 0
            Top = 167
            Hint = #1059#1076#1072#1083#1080#1090#1100
            Caption = '&Delete'
            Enabled = False
            ImageIndex = 5
            ParentShowHint = False
            ShowHint = True
          end
          object ToolButton14: TToolButton
            Left = 0
            Top = 167
            Width = 9
            Caption = 'ToolButton14'
            ImageIndex = 51
            Wrap = True
            Style = tbsSeparator
          end
          object ToolButton10: TToolButton
            Tag = 19
            Left = 0
            Top = 201
            Hint = #1055#1088#1086#1074#1077#1088#1080#1090#1100' '#1088#1072#1073#1086#1090#1086#1089#1087#1086#1089#1086#1073#1085#1086#1089#1090#1100' '#1087#1088#1086#1076#1091#1082#1094#1080#1086#1085#1085#1086#1081' '#1073#1072#1079#1099' '#1079#1085#1072#1085#1080#1081
            Caption = 'ToolButton10'
            Enabled = False
            ImageIndex = 49
            ParentShowHint = False
            Wrap = True
            ShowHint = True
          end
          object ToolButton12: TToolButton
            Tag = 102
            Left = 0
            Top = 226
            Hint = #1055#1088#1086#1074#1077#1088#1080#1090#1100' '#1088#1072#1073#1086#1090#1086#1089#1087#1086#1089#1086#1073#1085#1086#1089#1090#1100' '#1087#1088#1077#1094#1077#1076#1077#1085#1090#1085#1086#1081' '#1073#1072#1079#1099' '#1079#1085#1072#1085#1080#1081
            Caption = 'ToolButton12'
            Enabled = False
            ImageIndex = 50
            ParentShowHint = False
            ShowHint = True
          end
          object ToolButton16: TToolButton
            Left = 0
            Top = 226
            Width = 8
            Caption = 'ToolButton16'
            ImageIndex = 51
            Wrap = True
            Style = tbsSeparator
          end
          object ToolButton18: TToolButton
            Left = 0
            Top = 259
            Hint = 'Create an expert system for the task'
            Caption = 'ToolButton18'
            Enabled = False
            ImageIndex = 64
            ParentShowHint = False
            ShowHint = True
          end
        end
      end
      object RzPageControl2: TRzPageControl
        AlignWithMargins = True
        Left = 3
        Top = 3
        Width = 320
        Height = 215
        ActivePage = TabSheet4
        Align = alClient
        Font.Charset = DEFAULT_CHARSET
        Font.Color = cl3DDkShadow
        Font.Height = -11
        Font.Name = 'Default'
        Font.Style = [fsBold]
        ParentFont = False
        TabIndex = 0
        TabOrder = 0
        ExplicitHeight = 159
        FixedDimension = 20
        object TabSheet4: TRzTabSheet
          AlignWithMargins = True
          Caption = ' Object Inspector'
          ExplicitLeft = 1
          ExplicitTop = 21
          ExplicitWidth = 316
          ExplicitHeight = 135
          object RzListView2: TRzListView
            Left = 0
            Top = 0
            Width = 310
            Height = 185
            Align = alClient
            Color = clCream
            Columns = <
              item
                Caption = 'Used in the rule'
                Width = 90
              end
              item
                Caption = 'Role'
                Width = 216
              end>
            ColumnClick = False
            FlatScrollBars = True
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Default'
            Font.Style = []
            FrameColor = clDefault
            FrameVisible = True
            GridLines = True
            GroupHeaderImages = MainForm.ImageList3
            HeaderDefaultDrawing = False
            HeaderSortDisplayMode = hsdmNone
            HideSelection = False
            Items.ItemData = {
              051C0000000100000000000000FFFFFFFFFFFFFFFF00000000FFFFFFFF000000
              00013100}
            ParentFont = False
            ShowColumnHeaders = False
            SmallImages = MainForm.ImageList3
            TabOrder = 0
            ViewStyle = vsReport
            OnClick = RzListView2Click
            ExplicitWidth = 316
            ExplicitHeight = 135
          end
        end
      end
    end
    object ScrollBox1: TScrollBox
      AlignWithMargins = True
      Left = 0
      Top = 0
      Width = 601
      Height = 556
      Margins.Left = 0
      Margins.Top = 0
      Align = alClient
      DragMode = dmAutomatic
      Color = clWhite
      ParentColor = False
      PopupMenu = PopupMenu3
      TabOrder = 0
      OnDragOver = ScrollBox1DragOver
      ExplicitWidth = 604
      ExplicitHeight = 559
    end
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
end
