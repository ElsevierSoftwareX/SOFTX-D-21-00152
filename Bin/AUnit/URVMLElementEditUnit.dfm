object RVMLElementEditForm: TRVMLElementEditForm
  Left = 0
  Top = 0
  Caption = 'Detail'
  ClientHeight = 466
  ClientWidth = 431
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poOwnerFormCenter
  OnCreate = FormCreate
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object RzPanel2: TRzPanel
    AlignWithMargins = True
    Left = 3
    Top = 431
    Width = 425
    Height = 32
    Align = alBottom
    BorderOuter = fsGroove
    TabOrder = 0
    object RzButton1: TRzButton
      AlignWithMargins = True
      Left = 4
      Top = 4
      Width = 100
      Height = 24
      Margins.Left = 2
      Margins.Top = 2
      Margins.Right = 2
      Margins.Bottom = 2
      FrameColor = 7617536
      Align = alLeft
      Caption = 'Edit'
      Color = 15791348
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Default'
      Font.Style = [fsBold]
      HotTrack = True
      ParentFont = False
      TabOrder = 0
      OnClick = RzButton1Click
    end
    object RzButton2: TRzButton
      AlignWithMargins = True
      Left = 106
      Top = 4
      Width = 315
      Height = 24
      Margins.Left = 0
      Margins.Top = 2
      Margins.Right = 2
      Margins.Bottom = 2
      Default = True
      FrameColor = 7617536
      Align = alClient
      Caption = 'Ok'
      Color = 15791348
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Default'
      Font.Style = [fsBold]
      HotTrack = True
      ParentFont = False
      TabOrder = 1
      OnClick = RzButton2Click
    end
  end
  object RzPageControl1: TRzPageControl
    AlignWithMargins = True
    Left = 3
    Top = 3
    Width = 425
    Height = 422
    ActivePage = TabSheet3
    Align = alClient
    BoldCurrentTab = True
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Default'
    Font.Style = []
    FlatColor = clDefault
    ParentFont = False
    ParentShowHint = False
    ShowHint = True
    ShowShadow = False
    TabIndex = 0
    TabOrder = 1
    TabStyle = tsRoundCorners
    FixedDimension = 21
    object TabSheet3: TRzTabSheet
      Tag = 7
      Caption = 'General properties'
      object GroupBox3: TGroupBox
        AlignWithMargins = True
        Left = 3
        Top = 3
        Width = 417
        Height = 390
        Align = alClient
        TabOrder = 0
        object RzPanel4: TRzPanel
          AlignWithMargins = True
          Left = 5
          Top = 77
          Width = 407
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
            Caption = 'ID:'
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
            Width = 296
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
            Font.Name = 'Default'
            Font.Style = [fsBold]
            FrameVisible = True
            ParentFont = False
            TabOrder = 0
            ExplicitHeight = 21
          end
        end
        object RzPanel9: TRzPanel
          AlignWithMargins = True
          Left = 5
          Top = 193
          Width = 407
          Height = 192
          Align = alClient
          BorderOuter = fsFlat
          BorderColor = clBlue
          BorderShadow = clBlue
          Ctl3D = False
          ParentCtl3D = False
          TabOrder = 1
          object RzLabel1: TRzLabel
            AlignWithMargins = True
            Left = 11
            Top = 4
            Width = 392
            Height = 13
            Margins.Left = 10
            Align = alTop
            Caption = 'Description:'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clNavy
            Font.Height = -11
            Font.Name = 'Default'
            Font.Style = []
            ParentFont = False
            ExplicitWidth = 57
          end
          object Memo1: TMemo
            AlignWithMargins = True
            Left = 2
            Top = 21
            Width = 403
            Height = 169
            Margins.Left = 1
            Margins.Top = 1
            Margins.Right = 1
            Margins.Bottom = 1
            Align = alClient
            Enabled = False
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clNavy
            Font.Height = -11
            Font.Name = 'Default'
            Font.Style = []
            Lines.Strings = (
              'Memo1')
            ParentFont = False
            TabOrder = 0
          end
        end
        object RzPanel1: TRzPanel
          AlignWithMargins = True
          Left = 5
          Top = 19
          Width = 407
          Height = 23
          Align = alTop
          BorderOuter = fsFlat
          BorderColor = clBlue
          BorderShadow = clBlue
          TabOrder = 2
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
            Width = 296
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
            Font.Name = 'Default'
            Font.Style = [fsBold]
            FrameVisible = True
            ParentFont = False
            TabOrder = 0
            OnChange = RzEdit1Change
            ExplicitHeight = 21
          end
        end
        object RzPanel3: TRzPanel
          AlignWithMargins = True
          Left = 5
          Top = 48
          Width = 407
          Height = 23
          Align = alTop
          BorderOuter = fsFlat
          BorderColor = clBlue
          BorderShadow = clBlue
          TabOrder = 3
          object RzLabel3: TRzLabel
            AlignWithMargins = True
            Left = 11
            Top = 4
            Width = 94
            Height = 15
            Margins.Left = 10
            Align = alLeft
            AutoSize = False
            Caption = 'Short name:'
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
            Width = 296
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
            Font.Name = 'Default'
            Font.Style = [fsBold]
            FrameVisible = True
            ParentFont = False
            TabOrder = 0
            ExplicitHeight = 21
          end
        end
        object RzPanel5: TRzPanel
          AlignWithMargins = True
          Left = 5
          Top = 135
          Width = 407
          Height = 23
          Align = alTop
          BorderOuter = fsFlat
          BorderColor = clBlue
          BorderShadow = clBlue
          TabOrder = 4
          Visible = False
          object RzLabel4: TRzLabel
            AlignWithMargins = True
            Left = 11
            Top = 4
            Width = 94
            Height = 15
            Margins.Left = 10
            Align = alLeft
            AutoSize = False
            Caption = 'Value:'
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
            Width = 296
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
            Font.Name = 'Default'
            Font.Style = [fsBold]
            FrameVisible = True
            ParentFont = False
            TabOrder = 0
            ExplicitHeight = 21
          end
        end
        object RzPanel6: TRzPanel
          AlignWithMargins = True
          Left = 5
          Top = 106
          Width = 407
          Height = 23
          Align = alTop
          BorderOuter = fsFlat
          BorderColor = clBlue
          BorderShadow = clBlue
          TabOrder = 5
          Visible = False
          object RzLabel5: TRzLabel
            AlignWithMargins = True
            Left = 11
            Top = 4
            Width = 94
            Height = 15
            Margins.Left = 10
            Align = alLeft
            AutoSize = False
            Caption = 'DataType:'
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
            Width = 296
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
            Font.Name = 'Default'
            Font.Style = [fsBold]
            FrameVisible = True
            ParentFont = False
            TabOrder = 0
            ExplicitHeight = 21
          end
        end
        object RzPanel7: TRzPanel
          AlignWithMargins = True
          Left = 5
          Top = 164
          Width = 407
          Height = 23
          Align = alTop
          BorderOuter = fsFlat
          BorderColor = clBlue
          BorderShadow = clBlue
          TabOrder = 6
          Visible = False
          object RzLabel6: TRzLabel
            AlignWithMargins = True
            Left = 11
            Top = 4
            Width = 94
            Height = 15
            Margins.Left = 10
            Align = alLeft
            AutoSize = False
            Caption = 'Salience:'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clNavy
            Font.Height = -11
            Font.Name = 'Default'
            Font.Style = []
            ParentFont = False
            ExplicitTop = 8
          end
          object RzEdit6: TRzEdit
            AlignWithMargins = True
            Left = 109
            Top = 2
            Width = 296
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
            Font.Name = 'Default'
            Font.Style = [fsBold]
            FrameVisible = True
            ParentFont = False
            TabOrder = 0
            ExplicitHeight = 21
          end
        end
      end
    end
    object TabSheet1: TRzTabSheet
      Tag = 8
      Caption = 'Properties (Atributes)'
      object GroupBox4: TGroupBox
        AlignWithMargins = True
        Left = 3
        Top = 3
        Width = 417
        Height = 390
        Align = alClient
        TabOrder = 0
        object RzListView1: TRzListView
          Left = 2
          Top = 16
          Width = 413
          Height = 372
          Align = alClient
          Color = clCream
          Columns = <
            item
              Caption = 'Name'
              Width = 100
            end
            item
              Caption = 'DataType'
              Width = 70
            end
            item
              Caption = 'Value'
              Width = 222
            end>
          ColumnClick = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Default'
          Font.Style = []
          FrameColor = clDefault
          GridLines = True
          Items.ItemData = {
            051C0000000100000000000000FFFFFFFFFFFFFFFF00000000FFFFFFFF000000
            00013100}
          ParentFont = False
          PopupMenu = PopupMenu1
          ReadOnly = True
          RowSelect = True
          TabOrder = 0
          ViewStyle = vsReport
          OnDblClick = RzListView1DblClick
        end
      end
    end
    object TabSheet5: TRzTabSheet
      Caption = 'Relations'
      object GroupBox1: TGroupBox
        AlignWithMargins = True
        Left = 3
        Top = 3
        Width = 417
        Height = 390
        Align = alClient
        TabOrder = 0
        object RzListView2: TRzListView
          Left = 2
          Top = 16
          Width = 413
          Height = 372
          Align = alClient
          Color = clCream
          Columns = <
            item
              Caption = 'Used in the rule'
              Width = 190
            end
            item
              Caption = 'Role'
              Width = 202
            end>
          ColumnClick = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Default'
          Font.Style = []
          FrameColor = clDefault
          GridLines = True
          Items.ItemData = {
            051C0000000100000000000000FFFFFFFFFFFFFFFF00000000FFFFFFFF000000
            00013100}
          ParentFont = False
          PopupMenu = PopupMenu1
          ReadOnly = True
          RowSelect = True
          TabOrder = 0
          ViewStyle = vsReport
          OnDblClick = RzListView2DblClick
        end
      end
    end
    object TabSheet2: TRzTabSheet
      Caption = 'Facts'
      object GroupBox2: TGroupBox
        AlignWithMargins = True
        Left = 3
        Top = 3
        Width = 417
        Height = 390
        Align = alClient
        TabOrder = 0
        object RzListView3: TRzListView
          Left = 2
          Top = 16
          Width = 413
          Height = 372
          Align = alClient
          Color = clCream
          Columns = <
            item
              Caption = 'Used in the fact'
              Width = 392
            end>
          ColumnClick = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Default'
          Font.Style = []
          FrameColor = clDefault
          GridLines = True
          Items.ItemData = {
            051C0000000100000000000000FFFFFFFFFFFFFFFF00000000FFFFFFFF000000
            00013100}
          ParentFont = False
          PopupMenu = PopupMenu1
          ReadOnly = True
          RowSelect = True
          TabOrder = 0
          ViewStyle = vsReport
          OnDblClick = RzListView3DblClick
        end
      end
    end
    object TabSheet6: TRzTabSheet
      Caption = 'Conditions1'
      object GroupBox6: TGroupBox
        AlignWithMargins = True
        Left = 3
        Top = 3
        Width = 417
        Height = 390
        Align = alClient
        TabOrder = 0
        object RzListView5: TRzListView
          Left = 2
          Top = 16
          Width = 413
          Height = 372
          Align = alClient
          Color = clCream
          Columns = <
            item
              Caption = 'Templates4'
              Width = 392
            end>
          ColumnClick = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Default'
          Font.Style = []
          FrameColor = clDefault
          GridLines = True
          Items.ItemData = {
            051C0000000100000000000000FFFFFFFFFFFFFFFF00000000FFFFFFFF000000
            00013100}
          ParentFont = False
          PopupMenu = PopupMenu1
          ReadOnly = True
          RowSelect = True
          TabOrder = 0
          ViewStyle = vsReport
        end
      end
    end
    object TabSheet7: TRzTabSheet
      Caption = 'Actions1'
      object GroupBox7: TGroupBox
        AlignWithMargins = True
        Left = 3
        Top = 3
        Width = 417
        Height = 390
        Align = alClient
        TabOrder = 0
        object RzListView6: TRzListView
          Left = 2
          Top = 16
          Width = 413
          Height = 372
          Align = alClient
          Color = clCream
          Columns = <
            item
              Caption = 'Operations'
              Width = 65
            end
            item
              Caption = 'Facts'
              Width = 327
            end>
          ColumnClick = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Default'
          Font.Style = []
          FrameColor = clDefault
          GridLines = True
          Items.ItemData = {
            051C0000000100000000000000FFFFFFFFFFFFFFFF00000000FFFFFFFF000000
            00013100}
          ParentFont = False
          PopupMenu = PopupMenu1
          ReadOnly = True
          RowSelect = True
          TabOrder = 0
          ViewStyle = vsReport
        end
      end
    end
    object TabSheet8: TRzTabSheet
      Caption = 'Actions1'
      object GroupBox8: TGroupBox
        AlignWithMargins = True
        Left = 3
        Top = 3
        Width = 417
        Height = 390
        Align = alClient
        TabOrder = 0
        object RzListView7: TRzListView
          Left = 2
          Top = 16
          Width = 413
          Height = 372
          Align = alClient
          Color = clCream
          Columns = <
            item
              Caption = 'Templates4'
              Width = 392
            end>
          ColumnClick = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Default'
          Font.Style = []
          FrameColor = clDefault
          GridLines = True
          Items.ItemData = {
            051C0000000100000000000000FFFFFFFFFFFFFFFF00000000FFFFFFFF000000
            00013100}
          ParentFont = False
          PopupMenu = PopupMenu1
          ReadOnly = True
          RowSelect = True
          TabOrder = 0
          ViewStyle = vsReport
        end
      end
    end
    object TabSheet4: TRzTabSheet
      Caption = 'Rules1'
      object GroupBox5: TGroupBox
        AlignWithMargins = True
        Left = 3
        Top = 3
        Width = 417
        Height = 390
        Align = alClient
        TabOrder = 0
        object RzListView4: TRzListView
          Left = 2
          Top = 16
          Width = 413
          Height = 372
          Align = alClient
          Color = clCream
          Columns = <
            item
              Caption = 'Used in the rule'
              Width = 392
            end>
          ColumnClick = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          FrameColor = clDefault
          GridLines = True
          Items.ItemData = {
            051C0000000100000000000000FFFFFFFFFFFFFFFF00000000FFFFFFFF000000
            00013100}
          ParentFont = False
          PopupMenu = PopupMenu1
          ReadOnly = True
          RowSelect = True
          TabOrder = 0
          ViewStyle = vsReport
          OnDblClick = RzListView4DblClick
        end
      end
    end
  end
  object PopupMenu1: TPopupMenu
    OnPopup = PopupMenu1Popup
    Left = 256
    Top = 144
    object Edit1: TMenuItem
      Caption = 'Detail'
      OnClick = Edit1Click
    end
  end
end
