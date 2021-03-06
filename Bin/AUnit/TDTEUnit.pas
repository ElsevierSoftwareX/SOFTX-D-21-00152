unit TDTEUnit;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ComCtrls, ToolWin, RzPanel;

type
  TTDTForm = class(TForm)
    ScrollBox1: TScrollBox;
    ToolBar2: TToolBar;
    ToolButton1: TToolButton;
    ToolButton2: TToolButton;
    ToolButton9: TToolButton;
    ToolButton3: TToolButton;
    ToolButton4: TToolButton;
    ToolButton5: TToolButton;
    ToolButton6: TToolButton;
    ToolButton7: TToolButton;
    ToolButton8: TToolButton;
    procedure FormShow(Sender: TObject);
    procedure ScrollBox1MouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure ScrollBox1MouseWheelDown(Sender: TObject; Shift: TShiftState;
      MousePos: TPoint; var Handled: Boolean);
    procedure ScrollBox1MouseWheelUp(Sender: TObject; Shift: TShiftState;
      MousePos: TPoint; var Handled: Boolean);
    procedure FormActivate(Sender: TObject);
    procedure ToolButton9Click(Sender: TObject);
    procedure ToolButton1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  TDTForm: TTDTForm;
  HeaderWidths : TStringList;

implementation

uses UPKBClass, USTDIClass, MAIN, UMsgBoxForm;

{$R *.dfm}

procedure TTDTForm.FormActivate(Sender: TObject);
//var
// i,j,j1 : Integer;
begin
 ToolButton1Click(Self);
{ j:=0;
 for i := 0 to ScrollBox1.ControlCount-1 do
  begin
   if ScrollBox1.Controls[i] is trzpanel then
    j1:=ScrollBox1.Controls[i].Width+ScrollBox1.Controls[i].Left;
   if j1>j then j:=j1;
  end;
 ScrollBox1.Controls[ScrollBox1.ControlCount-1].Left:=j;
 ScrollBox1.ClientWidth:=j;
 if ScrollBox1.ControlCount>0 then
  TRzPanel(ScrollBox1.Controls[0]).SetFocus;

 ScrollBox1.VertScrollBar.Position:=0;
 ScrollBox1.HorzScrollBar.Position:=0; }
 OnActivate:=nil;
end;

procedure TTDTForm.FormShow(Sender: TObject);
begin
 if MainForm.TreeView1.Selected=nil then
  MainForm.MMessageBox(1,0,'0='+
   STDIClass.LoadSingleString('Please, select the knowledge base',
    LangLocaleDir+LangPrefix+'012.lan')
   )
  else
   begin
     HeaderWidths:=TStringList.Create;

     Self.Tag:=0;
//     ToolButton1Click(Self);
//     MainForm.GetKBForNode(
//      MainForm.TreeView1.Selected).ShowRulesAsTable(ScrollBox1,Self.Tag);
    // ScrollBox1.HorzScrollBar.Range := ScrollBox1.ClientWidth+1;
    // ScrollBox1.Align:=alClient;
   end;
end;

procedure TTDTForm.ScrollBox1MouseMove(Sender: TObject; Shift: TShiftState; X,
  Y: Integer);
begin
 SetFocusedControl(TScrollBox(Sender));
end;

procedure TTDTForm.ScrollBox1MouseWheelDown(Sender: TObject; Shift: TShiftState;
  MousePos: TPoint; var Handled: Boolean);
var
 m  : Integer;
begin
if Sender is TScrollBox then
begin
 m:=15;
 Refresh;
 if TScrollBox(Sender).VertScrollBar.Position+m>
  TScrollBox(Sender).VertScrollBar.Range then
  m:=m-abs(TScrollBox(Sender).VertScrollBar.Range-
   TScrollBox(Sender).VertScrollBar.Position-m);
 TScrollBox(Sender).VertScrollBar.Position:=
  TScrollBox(Sender).VertScrollBar.Position+m;
 end;
end;

procedure TTDTForm.ScrollBox1MouseWheelUp(Sender: TObject; Shift: TShiftState;
  MousePos: TPoint; var Handled: Boolean);
var
 m  : Integer;
begin
if Sender is TScrollBox then
begin
 m:=15;
 Refresh;
 if TScrollBox(Sender).VertScrollBar.Position-m<0 then
  m:=m-abs(TScrollBox(Sender).VertScrollBar.Position-m);
  TScrollBox(Sender).VertScrollBar.Position:=
   TScrollBox(Sender).VertScrollBar.Position-m;
end;
end;

procedure TTDTForm.ToolButton1Click(Sender: TObject);
begin
 if Tag=0 then Tag:=1 else Tag:=0;
 MainForm.GetKBForNode(
  MainForm.TreeView1.Selected).ShowRulesAsTable(ScrollBox1,Self.Tag);
end;

procedure TTDTForm.ToolButton9Click(Sender: TObject);
begin
 if MainForm.MMessageBox(1,1,'0='+
  STDIClass.LoadSingleString('Exit',LangLocaleDir+LangPrefix+'012.lan'))=0
   then
    Close;
end;

end.
