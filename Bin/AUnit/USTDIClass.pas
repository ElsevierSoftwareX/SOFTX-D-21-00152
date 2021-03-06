{------------------------------------------------------------------------------}
{                                                                              }
{  Personal Knowledge Base Designer                                            }
{  by A.Yu. Yurin, N.O. Dorodnykh                                              }
{                                                                              }
{  iskander@icc.ru                                                             }
{  http://knowledge-core.ru/                                                   }
{                                                                              }
{------------------------------------------------------------------------------}

unit USTDIClass;

interface

uses SysUtils, Classes, Dialogs, StdCtrls, Variants,
     Forms, Windows, ExtCtrls, Buttons, Controls, Graphics,
     ComCtrls, RzTreeVw, RzLabel, RzPanel, RzButton, rzCommon, RzListVw,
     RzCmboBx, Grids, Math, RzLine, Chart, Series, TeEngine, Menus, RzRadChk,
     RzSpnEdt;

type

 TSTDIClass = class (TObject)
 private
//  LHandle  : HMODULE;
 public
//  procedure AfterConstruction;  override;
//  destructor Destroy; override;
 published
  Procedure ReleaseObjects(NComp:TWinControl);
  function ClearCaptions(s:string;LV:TRzListView):Integer;

  Function AddLabel(NComp:TWinControl;
   Name:String;T,L,W:integer;C,BGC:TColor;B:TFontStyles):integer;
  Function AddRzLabel(NComp:TWinControl;
   Name:String;T,L,W:integer;C,BGC:TColor;B:TFontStyles):integer;
  Function AddCombo(NComp:TWinControl;T,L,W:integer;Text:string):integer;
  Function AddRzCombo(NComp:TWinControl;T,L,W:integer;Text:string):TRzComboBox;

  Function AddDateTimePicker(NComp:TWinControl;T,L,W:integer;Text:string):integer;
  Function AddMemo(NComp:TWinControl;T,L,W:integer;Text:string):integer;
  Function AddEdit(NComp:TWinControl;T,L,W:integer;Text:string):integer;
  Function AddSpinEdit(NComp:TWinControl;T,L,W:integer;Text:string):integer;

  Function AddTable(NComp:TWinControl;T,L,W:integer; nl,vl:TStringList):integer;
  Function AddTableAsPanels(NComp:TWinControl;T,L,W,ti:integer;nl,vl:TStringList):integer;
  Function AddTableAsPanelsV2(NComp:TWinControl;T,L,W,ti:Integer;fsc:TObject):integer;

  Function AddSimpleGraphAsPanel(NComp:TWinControl;T,L,W:Integer;nl,vl:TStringList):integer;

  Function AddImage(NComp:TWinControl;T,L,W,i:integer;IL:TImageList;A:TAlign):TImage;
  Function AddLine(NComp:TWinControl;T,L,H,W:Integer):TRzLine;
  Function AddChart(NComp:TWinControl;T,L,H,W:Integer;nl,vl:TStringList):integer;
  Function AddChartV2(NComp:TWinControl;T,L,H,W,ti:Integer;fsc:TObject):integer;

  Procedure BreakStr(CName:TComboBox;s:string);

  function LoadLocalLang(Cm:TComponent;FileName:String):Integer;
  function LoadSingleCapOrHint(Cm:TComponent;Source:TStrings):Integer;
  function LoadSingleString(CmName:String;FileName:String):String;

  Function MakeControlsDisable(WC:TWinControl;V:Boolean):Integer;
  Function AddRzPanel(T,L,H,W:Integer;P:TWinControl;
   ti:Integer;A:TAlign;C:TColor;BI,BO:TBevelCut;BS:TBorderStyle;Text:String):TRzPanel;
  Function AddCheckBox(NF:TWinControl;T,L:integer;Ex:boolean):integer;
  Function AddPanel(NComp:TWinControl;Name:String;T,L,W,B:integer):integer;
  Function AddScrollBox(NComp:TWinControl;ID:integer):integer;

  Function AddGroupBox(T,L,H,W:Integer;P:TWinControl;s:String;
   A:TAlign):TRzGroupBox;

  function GetUserFormDescription(UserControl:TWinControl;FileName:String):Integer;
  procedure InternalGetMethodEntryPoint(ModuleHandle: THandle;
                                                 const NameOfMethod: String;
                                                 out EntryPoint: Pointer);
  Function AddRzBtn(NComp:TWinControl;Name:String;T,L,W:integer):TRzBitBtn;
  Function AddContainerForDataModule(ID,T,L,H,W:Integer;P:TWinControl;Txt:string):Integer;
  procedure CheckBoxCheckClick_2(Sender: TObject);
  Function CreateProgressIndicator(nF:TForm;s:string):TRzPanel;
  Function GetPrefix(s:string):string;

  procedure DrawArrowV2(obj1,obj2:TStringList;
   op:String;Canvas:TCanvas;ps:TPenStyle;col:TColor;sbdX,sbdY:Integer;
    doi:string);
 end;

 var
 STDIClass	:	TSTDIClass;

implementation

uses USEClass, UPKBClass, MAIN;
//------------------------------------------------------------------
Function TSTDIClass.GetPrefix(s:string):string;
var
 i : Integer;
 tmTs : TStringList;
begin
 tmTs:=TStringList.Create;
 tmTs.Delimiter:='-';
 tmTs.DelimitedText:=s;
 Result:='';
 for i := 0 to tmTs.Count-1 do
  if Trim(tmTs.Strings[i])<>'' then Result:=Result+Trim(tmTs.Strings[i])[1];
 Result:=AnsiLowerCase(Result);
end;
//------------------------------------------------------------------
procedure TSTDIClass.DrawArrowV2(obj1,obj2:TStringList;
 op:String;Canvas:TCanvas;ps:TPenStyle;col:TColor;sbdX,sbdY:Integer;doi:string);
//------------------------
function solve(x1, y1, x2, y2, x3, y3, x4, y4: integer; var xp, yp: integer): boolean;
var a, b, c, d, e, f,
  dt, ds, det, t, s: real;
begin
  a := x2 - x1;
  b := x3 - x4;
  c := x3 - x1;
  d := y2 - y1;
  e := y3 - y4;
  f := y3 - y1;

  det := a * e - b * d;
  if det = 0 then
  begin
    solve := false;
    exit;
  end;
  dt := c * e - f * b;
  ds := a * f - c * d;
  t := dt / det;
  s := ds / det;

  if (0 <= s) and (s <= 1)
    and (0 <= t) and (t <= 1) then
  begin
    xp := round(x1 * (1 - t) + x2 * t);
    yp := round(y1 * (1 - t) + y2 * t);
//    xp := round(x1 * (1 - t) + x2 * t)-5;
//    yp := round(y1 * (1 - t) + y2 * t)-5;
    solve := true;
  end
  else
  begin
    solve := false;
    exit;
  end;
end;

procedure DrawArrowHead(Canvas: TCanvas; X, Y: Integer; Angle, LW: Extended);
var
  A1, A2: Extended;
  Arrow: array[0..3] of TPoint;
  OldWidth: Integer;
const
  Beta = 0.322;
  LineLen = 4;
  CentLen = 1;
//  LineLen = 4.74;
//  CentLen = 3;
begin
  Angle := Pi + Angle;
  Arrow[0] := Point(X, Y);
  A1 := Angle - Beta;
  A2 := Angle + Beta;
  Arrow[1] := Point(X + Round(LineLen * LW * Cos(A1)), Y - Round(LineLen * LW * Sin(A1)));
//  Arrow[2] := Point(X + Round(CentLen * LW * Cos(Angle)), Y - Round(CentLen * LW * Sin(Angle)));
  Arrow[2] := Point(X, Y);
  Arrow[3] := Point(X + Round(LineLen * LW * Cos(A2)), Y - Round(LineLen * LW * Sin(A2)));
  OldWidth := Canvas.Pen.Width;
  Canvas.Pen.Width := 1;
  Canvas.Polygon(Arrow);
  Canvas.Pen.Width := OldWidth
end;
//---------------------------
procedure DrawArrow(Canvas: TCanvas; X1, Y1, X2, Y2: Integer; LW: Extended; ps:TPenStyle);
var
  Angle: Extended;
begin
  Angle := ArcTan2(Y1 - Y2, X2 - X1);
  canvas.Pen.Style := ps;
  Canvas.MoveTo(X1, Y1);
  Canvas.LineTo(X2, Y2);
//  Canvas.LineTo(X2 - Round(2 * LW * Cos(Angle)), Y2 + Round(2 * LW * Sin(Angle)));
  DrawArrowHead(Canvas, X2, Y2, Angle, LW);
end;
//---------------------------
//------------------------
var xa, ya: integer;
   xaa, yaa: integer;
  x1, y1, x2, y2, h1, h2, w1, w2: integer;
  dx, dy: integer;
  ds : Extended;
  s: string;
begin
  x1:=StrToInt(obj1.Values['x'+doi]);
  x2:=StrToInt(obj2.Values['x'+doi]);
  y1:=StrToInt(obj1.Values['y'+doi]);
  y2:=StrToInt(obj2.Values['y'+doi]);
  h1:=StrToInt(obj1.Values['h']);
  h2:=StrToInt(obj2.Values['h']);
  w1:=StrToInt(obj1.Values['w']);
  w2:=StrToInt(obj2.Values['w']);

  begin
    if not solve(x1 + (w1 div 2), y1 + (h1 div 2),
     x2 + (w2 div 2), y2 + (h2 div 2),
      x1, y1, x1 + w1, y1, xa, ya) then
       if not solve(x1 + (w1 div 2), y1 + (h1 div 2), x2 + (w2 div 2), y2 + (h2 div 2),
         x1, y1, x1, y1 + h1, xa, ya) then
        if not solve(x1 + (w1 div 2), y1 + (h1 div 2), x2 + (w2 div 2), y2 + (h2 div 2),
         x1 + w1, y1, x1 + w1, y1 + h1, xa, ya) then
          if not solve(x1 + (w1 div 2), y1 + (h1 div 2), x2 + (w2 div 2), y2 + (h2 div 2),
          x1, y1 + h1, x1 + w1, y1 + h1, xa, ya) then ;

    if not solve(x1 + (w1 div 2), y1 + (h1 div 2), x2 + (w2 div 2), y2 + (h2 div 2),
    x2, y2, x2 + w2, y2, xaa, yaa) then
      if not solve(x1 + (w1 div 2), y1 + (h1 div 2), x2 + (w2 div 2), y2 + (h2 div 2),
      x2, y2, x2, y2 + h2, xaa, yaa) then
        if not solve(x1 + (w1 div 2), y1 + (h1 div 2), x2 + (w2 div 2), y2 + (h2 div 2),
        x2 + w2, y2, x2 + w2, y2 + h2, xaa, yaa) then
          if not solve(x1 + (w1 div 2), y1 + (h1 div 2), x2 + (w2 div 2), y2 + (h2 div 2),
          x2, y2 + h2, x2 + w2, y2 + h2, xaa, yaa) then ;

    canvas.Pen.Color := col;

//    DrawArrow(Canvas, xa+sbdX, ya+sbdY-3, xaa+sbdX, yaa+sbdY+3, 3, ps);
    DrawArrow(Canvas, xa+sbdX, ya+sbdY, xaa+sbdX, yaa+sbdY, 3, ps);

 //drow operation
 if op<>'' then
  begin
//    dx := 30;
//    dy := 30;
    ds:=sqrt(sqr(xaa-xa)+sqr(yaa-ya));
    dx:=Round(ds/2)+5;
    dy:=dx;

    if not solve(x1 + (w1 div 2), y1 + (h1 div 2), x2 + (w2 div 2), y2 + (h2 div 2),
     x2 - dx, y2 - dy, x2 + dx + w2, y2 - dy, xa, ya) then
      if not solve(x1 + (w1 div 2), y1 + (h1 div 2), x2 + (w2 div 2), y2 + (h2 div 2),
      x2 - dx, y2 - dy, x2 - dx, y2 + dy + h2, xa, ya) then
        if not solve(x1 + (w1 div 2), y1 + (h1 div 2), x2 + (w2 div 2), y2 + (h2 div 2),
        x2 + dx + w2, y2 - dy, x2 + dx + w2, y2 + dy + h2, xa, ya) then
          if not solve(x1 + (w1 div 2), y1 + (h1 div 2), x2 + (w2 div 2), y2 + (h2 div 2),
          x2 - dx, y2 + dy + h2, x2 + dx + w2, y2 + dy + h2, xa, ya) then ;
    canvas.Pen.Width := 1;
    canvas.Brush.Color := clWhite;
    canvas.Pen.Color := col;

    dx := 10;
    if op='add' then s:='+';

    canvas.Ellipse(xa - dx + sbdX, ya - dx+ sbdY, xa + dx + sbdX, ya + dx + sbdY);
    canvas.font.Size := 10;
    canvas.TextOut(xa - (canvas.TextWidth(s) div 2)+ sbdX,
     ya - (canvas.TextHeight(s) div 2)+ sbdY, s);
    canvas.font.Size := 8;
    canvas.Pen.Width := 1;
  end;
  end;
end;
//------------------------------------------------------------------
Function TSTDIClass.CreateProgressIndicator(nF:TForm;s:string):TRzPanel;
var
 tmP : TRzPanel;
begin
   tmP:=TRzPanel.Create(nF);
//   tmP.Visible:=False;
//   Screen.Cursor:=crHourGlass;

   tmP.Parent:=nF;

   tmP.Constraints.MinWidth:=200;
   tmP.Constraints.MinHeight:=40;
   tmP.Font.Size:=10;
   tmP.Caption:='Please,wait (0%)';
   tmP.Width:=150;
   tmP.Height:=40;

   tmP.Top:=Round(nF.Height/2);
   tmP.Left:=Round(nF.Width/2)-100;

   tmP.BorderInner:=fsNone;
   tmP.BorderOuter:=fsGroove;
   Result:=tmP;

{  Result:=TImage.Create(tmP);
  Result.Parent:=tmP;
  Result.Top:=1;
  Result.Left:=1;
  Result.Constraints.MinWidth:=32;
  Result.Constraints.MinHeight:=32;
  Result.Width:=32;
  Result.Height:=32;
  Result.Align:=alClient;

//  Result.AutoSize:=True;
  MainForm.ImageList4.GetBitmap(0,Result.Picture.Bitmap); }
end;
//------------------------------------------------------------------
procedure TSTDIClass.CheckBoxCheckClick_2(Sender: TObject);
var
 tmP1,tmP2  : TPanel;
 i,j : Integer;
 tmTs : TStringList;
begin
 tmP2:=TPanel(TCheckBox(Sender).Parent);
 tmP1:=TPanel(tmP2.Parent);
// tmP1.Height:=150;
// tmP1.BorderStyle:=bsSingle;

 if TCheckBox(Sender).Checked then
  begin
   tmP1.Parent.Tag:=tmP1.Parent.Tag+1;  //count facts for run buttion

   for i :=tmP1.ControlCount-1  downto 1 do
    TWinControl(tmP1.Controls[i]).Free;

   tmP2.Align:=alTop;
   TCheckBox(Sender).Caption:=
    StringReplace(TCheckBox(Sender).Caption,'Describe facts based on the template:',
     'Remove facts based on the template:',[rfReplaceAll]);
   tmP2.Font.Style:=[fsBold];

   //show facts or template description
   tmTs:=TStringList.Create;
   tmTs:=KB.GetListOfFactsByTemplate(
    TTemplate(KB.Templates.Items[tmP2.Tag])
     );
   if tmTs.Count>0 then
    begin
      for i := 0 to tmTs.Count-1 do
       begin
        //show fact in template box
        TTemplate(KB.Templates.Items[tmP2.Tag]).ShowInputModule(
         tmP1,tmP2.Tag,KB,TFact(tmTs.Objects[i]));
       end;
    end
   else
//    TTemplate(KB.Templates.Items[tmP2.Tag]).ShowInputModule(
//     TWinControl(tmP1.Controls[tmP1.ControlCount-1]),2,KB);
    TTemplate(KB.Templates.Items[tmP2.Tag]).ShowInputModule(
     tmP1,tmP2.Tag,KB,nil);
    //fill data

  end
 else
  begin
   tmP1.Parent.Tag:=tmP1.Parent.Tag-1;  //count facts for run buttion

   for i :=tmP1.ControlCount-1  downto 1 do
    TWinControl(tmP1.Controls[i]).Free;

   tmP1.Height:=26;
   TCheckBox(Sender).Caption:=
    StringReplace(TCheckBox(Sender).Caption,'Remove facts based on the template:',
     'Describe facts based on the template:',[rfReplaceAll]);
   tmP2.Font.Style:=[];
  end;

  //resize panel
  j:=0;
  for i := 0 to tmP1.ControlCount-1 do
   j:=j+tmP1.Controls[i].Height+6;
  tmP1.Height:=j;

  //control for run button
  if tmP1.Parent.Tag<=0 then
   MainForm.RzBitBtn2.Enabled:=False
    else
     MainForm.RzBitBtn2.Enabled:=True;
end;
//------------------------------------------------------------------
Function TSTDIClass.AddContainerForDataModule(ID,T,L,H,W:Integer;P:TWinControl;Txt:string):Integer;
var
 tmP1,tmP2  : TRzPanel;
 CBox : TCheckBox;
begin
 tmP1:=STDIClass.AddRzPanel(1,1,26,P.Width,P,ID,alTop,clBtnFace,
  bvLowered,bvRaised,bsSingle,'');
 tmP1.Tag:=ID;
 tmP2:=STDIClass.AddRzPanel(1,1,22,tmP1.Width,tmP1,ID,alTop,clBtnFace,
  bvNone,bvRaised,bsNone,'');
 tmP2.Tag:=ID;

 CBox:=TCheckBox.Create(tmP2);
 CBox.Parent:=tmP2;
 CBox.Left:=5;
 CBox.Top:=2;
 CBox.Width:=tmP2.Width-35;

 CBox.Caption:='Describe facts based on the template: '+Txt;
 CBox.OnClick:=CheckBoxCheckClick_2;
 // create scroll
// AddScrollBox(tmP1,ID);
end;
//------------------------------------------------------------------
Function TSTDIClass.AddRzBtn(NComp:TWinControl;
 Name:String;T,L,W:integer):TRzBitBtn;
var
  Btn:TRzBitBtn;
begin
 try
  Btn:=TRzBitBtn.Create(NComp);
  Btn.Parent:=NComp;
  Btn.Top:=T;
  Btn.Left:=L;
  Btn.Width:=W;
  Btn.Caption:=Name;
  Result:=Btn;
 except
   Result:=nil;
 end;
end;
//------------------------------------------------------------------------
procedure TSTDIClass.InternalGetMethodEntryPoint(ModuleHandle: THandle;
                                                 const NameOfMethod: String;
                                                 out EntryPoint: Pointer);
begin
 EntryPoint:=nil;
  try
   if ModuleHandle=0
    then
     raise EAccessViolation.
            Create('Dll Loading Error');
   EntryPoint:=Windows.
                GetProcAddress(ModuleHandle,
                               PChar(NameOfMethod));
 finally;
 end;
end;

//-------------------------------------------------------
function TSTDIClass.ClearCaptions(s:string;LV:TRzListView):Integer;
var
 i : Integer;
begin
 for i := 0 to LV.Columns.Count-1 do
  LV.Column[i].Caption:=Trim(
   StringReplace(LV.Column[i].Caption,s,'',[rfReplaceAll])
   );
end;
//-------------------------------------------------------
Function TSTDIClass.GetUserFormDescription(UserControl:TWinControl;FileName:String):Integer;
var
 i,j  : Integer;
 tmpS : TStrings;
begin
 tmpS:=TStringList.Create;
 for i:=0 to UserControl.ControlCount-1 do
  begin
   if UserControl.Controls[i] is TForm then
     tmpS.Add(TForm(UserControl.Controls[i]).Name+'c='+TForm(UserControl.Controls[i]).Caption);

   if UserControl.Controls[i] is TLabel then
     tmpS.Add(TLabel(UserControl.Controls[i]).Name+'c='+TLabel(UserControl.Controls[i]).Caption);
   if UserControl.Controls[i] is TButton then
    begin
     tmpS.Add(TButton(UserControl.Controls[i]).Name+'c='+TButton(UserControl.Controls[i]).Caption);
     tmpS.Add(TButton(UserControl.Controls[i]).Name+'h='+TButton(UserControl.Controls[i]).Hint);
    end;
   if UserControl.Controls[i] is TGroupBox then
    begin
     tmpS.Add(TGroupBox(UserControl.Controls[i]).Name+'c='+TGroupBox(UserControl.Controls[i]).Caption);
     tmpS.Add(TGroupBox(UserControl.Controls[i]).Name+'h='+TGroupBox(UserControl.Controls[i]).Hint);
    end;
   if UserControl.Controls[i] is TListBox then
    begin
//     tmpS.Add(TListBox(UserControl.Controls[i]).Name+'c='+TListBox(UserControl.Controls[i]).Caption);
     tmpS.Add(TListBox(UserControl.Controls[i]).Name+'h='+TListBox(UserControl.Controls[i]).Hint);
    end;
   if UserControl.Controls[i] is TComboBox then
    begin
//     tmpS.Add(TListBox(UserControl.Controls[i]).Name+'c='+TListBox(UserControl.Controls[i]).Caption);
     tmpS.Add(TComboBox(UserControl.Controls[i]).Name+'h='+TComboBox(UserControl.Controls[i]).Hint);
    end;
   if UserControl.Controls[i] is TSpeedButton then
    begin
     tmpS.Add(TSpeedButton(UserControl.Controls[i]).Name+'c='+TSpeedButton(UserControl.Controls[i]).Caption);
     tmpS.Add(TSpeedButton(UserControl.Controls[i]).Name+'h='+TSpeedButton(UserControl.Controls[i]).Hint);
    end;
   if UserControl.Controls[i] is TRzButton then
    begin
     tmpS.Add(TRzButton(UserControl.Controls[i]).Name+'c='+TRzButton(UserControl.Controls[i]).Caption);
     tmpS.Add(TRzButton(UserControl.Controls[i]).Name+'h='+TRzButton(UserControl.Controls[i]).Hint);
    end;
   if UserControl.Controls[i] is TRzBitBtn then
    begin
     tmpS.Add(TRzBitBtn(UserControl.Controls[i]).Name+'c='+TRzBitBtn(UserControl.Controls[i]).Caption);
     tmpS.Add(TRzBitBtn(UserControl.Controls[i]).Name+'h='+TRzBitBtn(UserControl.Controls[i]).Hint);
    end;
   if UserControl.Controls[i] is TToolButton then
    begin
     tmpS.Add(TToolButton(UserControl.Controls[i]).Name+'h='+TToolButton(UserControl.Controls[i]).Hint);
    end;
   if UserControl.Controls[i] is TPanel then
    begin
     tmpS.Add(TPanel(UserControl.Controls[i]).Name+'h='+TPanel(UserControl.Controls[i]).Hint);
    end;
   if UserControl.Controls[i] is TRzPanel then
    begin
     tmpS.Add(TRzPanel(UserControl.Controls[i]).Name+'h='+TRzPanel(UserControl.Controls[i]).Hint);
    end;
   if UserControl.Controls[i] is TWinControl then
    GetUserFormDescription(TWinControl(UserControl.Controls[i]),IntToStr(i)+'_'+FileName);
  end;

//
 for i:=0 to tmpS.Count-2 do
  for j:=0 to tmpS.Count-2 do
   if tmpS.Names[j]>tmpS.Names[j+1] then
    tmpS.Exchange(j,j+1);
 tmpS.SaveToFile(ExtractFileDir(Application.ExeName)+'/Lang/'+FileName);
end;

Function TSTDIClass.AddGroupBox(T,L,H,W:Integer;P:TWinControl;
 s:String;A:TAlign):TRzGroupBox;
var
 tmGB : TRzGroupBox;
begin
try
  //groupbox area
   tmGB:=TRzGroupBox.Create(P);
   with tmGB do
    begin
     Parent:=P;
     Top:=T;
     Left:=L;
     Width:=W;
     AlignWithMargins:=True;
//     Constraints.MinWidth:=W;
     if H<>0 then Height:=H;
     Caption:=' '+s+' ';
     if A<>alNone then Align:=A;
    end;
 Result:=tmGB;
except
 Result:=nil;
end;
end;
//-----------------------------------------------------------------
Function TSTDIClass.AddScrollBox(NComp:TWinControl;ID:integer):integer;
var
 tSB : TScrollBox;
begin
 try
   tSB:=TScrollBox.Create(NComp);
   tSB.Parent:=NComp;
   tSB.Top:=10;
   tSB.Left:=10;
   tSB.Align:=alClient;
   tSB.Tag:=ID;
   Result:=0;
 except
  Result:=-1;
 end;
end;
//-----------------------------------------------------------------
//???????? ??????
Function TSTDIClass.AddPanel(NComp:TWinControl;Name:String;T,L,W,B:integer):integer;
var
  Panel:TPanel;
begin
 try
   Panel:=TPanel.Create(NComp);
   Panel.Parent:=NComp;
   Panel.Top:=T;
   Panel.Left:=L;
//   if B=1 then Label1.Font.Style:=[fsBold];
//   Label1.WordWrap:=True;
   Panel.Width:=W;
   Panel.Height:=B;
   Panel.Caption:=Name;
   if Panel.Parent is TScrollBox then
    Panel.Color:=TScrollBox(Panel.Parent).Color;
   Panel.BorderStyle:=bsSingle;

   //   Label1.AutoSize:=True;

   Result:=T+Panel.Height+3;
  except
//   ShowMessage(SIClass.LoadSingleString('e_60','./Lang/msgs_01.lan')+Name);
   Result:=T;
  end;
end;


Function TSTDIClass.AddCheckBox(NF:TWinControl;T,L:integer;Ex:boolean):integer;
var
  CBox:TCheckBox;
begin
 try
  CBox:=TCheckBox.Create(NF);
  CBox.Parent:=NF;
  CBox.Left:=L;
  CBox.Top:=T;
  CBox.Caption:='';
  CBox.Width:=30;
//  CBox.Hint:='???????/????????? ??????????? ??????? ?? ??????';
  AddCheckBox:=T+CBox.Height+3;
  if Ex then CBox.Checked:=True
   else CBox.Checked:=False;
  except
   AddCheckBox:=T;
   ShowMessage('?????? ??? ???????? CheckBox-?');
  end;
end;

Function TSTDIClass.AddRzPanel(T,L,H,W:Integer;P:TWinControl;
 ti:Integer;A:TAlign;C:TColor;BI,BO:TBevelCut;BS:TBorderStyle;Text:String):TRzPanel;
var
 tmP1 : TRzPanel;
begin
try
   tmP1:=TRzPanel.Create(P);
   with tmP1 do
    begin
     Parent:=P;
     if W<>0 then Width:=W;
     if H<>0 then Height:=H else
       Height:=20*(((Length(Text)*8) div Width)+1);

     Top:=T;
     Left:=L;
      //     if W<>0 then Constraints.MinWidth:=W;
//     if H<>0 then Constraints.MinHeight:=H;
     Align:=A;
//     BevelInner:=BI;
//     BevelOuter:=BO;
     Color:=C;
//     BorderStyle:=BS;
     if BS=bsSingle then
      BorderOuter:=fsGroove
       else
        BorderOuter:=fsNone;
     Tag:=ti;
     Caption:=Text;
    end;
 Result:=tmP1;
except
 Result:=nil;
end;

end;

Function TSTDIClass.AddTable(NComp:TWinControl;T,L,W:Integer;nl,vl:TStringList):integer;
var
  C:TStringGrid;
  i : Integer;
//  tmTs : TStringList;
begin
  try
   C:=TStringGrid.Create(NComp);
   C.Parent:=NComp;
   C.Top:=T;
   C.Left:=L;
   C.RowCount:=2;
   C.RowHeights[0]:=20;
   C.RowHeights[1]:=20;

   C.EditorMode:=True;


//   tmTs:=TStringList.Create;
//   tmTs.Text:=s;
   C.ColCount:=nl.Count;
   for i := 0 to nl.Count-1 do
    begin
     C.ColWidths[i]:=20;
     C.Cells[i,0]:=nl.ValueFromIndex[i];
     C.Cells[i,1]:='1';
//     C.Cells[i,1]:=vl.Strings[i];
    end;
   C.Height:=40;
   C.Width:=nl.Count*20;
//   C.Width:=W;
   C.AlignWithMargins:=True;
      //   C.Hint:=Text;
//   C.Width:=NComp.Width-L-25;
   Result:=C.Top+C.Height;
  except
   Result:=T;
  end;
end;

Function TSTDIClass.AddLine(NComp:TWinControl;T,L,H,W:Integer):TRzLine;
var
 tmL : TRzLine;
begin
  try
   tmL:=TRzLine.Create(NComp);
   tmL.Parent:=NComp;

   tmL.Top:=T;
   tmL.Left:=L;
   tmL.Width:=W;
   tmL.Height:=H;
   Result:=tmL;
  except
   Result:=nil;
  end;
end;

Function TSTDIClass.AddChart(NComp:TWinControl;T,L,H,W:Integer;nl,vl:TStringList):integer;
var
 tC : TChart;
 Series1: TLineSeries;
 tmTs1 : TStringList;
 i : Integer;
 f1,f2 : Double;
begin
   tC:=TChart.Create(NComp);
   tC.Parent:=NComp;
   tC.Top:=T;
   tC.Left:=L;
   tC.Height:=H;
   tC.Width:=W;
   tC.Legend.Visible:=False;
  // tC.Title.Text.Strings[0]:='';
  tC.View3D:=False;
  Series1:=TLineSeries.Create(tC);
//  tC.SeriesList.Add(Series1);
  Series1.Marks.Arrow.Visible := True;
  Series1.Marks.Callout.Brush.Color := clBlack;
  Series1.Marks.Callout.Arrow.Visible := True;
  Series1.Marks.Visible := False;
  Series1.LinePen.Color:=clRed;
  Series1.LinePen.Width:=3;
  Series1.Pointer.InflateMargins := True;
//  Series1.Pointer.Style := psRectangle;
  Series1.Pointer.Visible := False;
  Series1.Stairs := True;
  Series1.XValues.Order := loNone;
  Series1.YValues.Order := loNone;
  Series1.ParentChart:=tC;

//  tmTs:=TStringList.Create;
//  tmTs.Delimiter:=';';
//  tmTs.DelimitedText:=vl;
  for i := 0 to nl.Count-1 do
   begin
    f1:=0;f2:=0;
    tmTs1:=TStringList.Create;
    tmTs1.Delimiter:='-';
    tmTs1.DelimitedText:=nl.ValueFromIndex[i];
    TryStrToFloat(Trim(tmTs1.Strings[0]),f1);
    TryStrToFloat(vl.Strings[i],f2);
    Series1.AddXY(f1,f2,'',clRed);
   end;
  TryStrToFloat(Trim(tmTs1.Strings[1]),f1);
  Series1.AddXY(f1,0,'',clRed);
end;
//------------------------------------------------------------------------------
Function TSTDIClass.AddChartV2(NComp:TWinControl;T,L,H,W,ti:Integer;fsc:TObject):integer;
var
 tC : TChart;
 Series1: TLineSeries;
 tmTs1, tmTs: TStringList;
 i : Integer;
 f1,f2,f3 : Double;

 fs : TFScale;
// fv_ : TFVar;
begin
   fs:=TFScale(fsc);
//   fv_:=TFVar(fv);
   tC:=TChart.Create(NComp);
   tC.Parent:=NComp;
   tC.Top:=T;
   tC.Left:=L;
   tC.Height:=H;
   tC.Width:=W;
   tC.Legend.Visible:=False;
     // tC.Title.Text.Strings[0]:='';
  tC.View3D:=False;
  Series1:=TLineSeries.Create(tC);
//  tC.SeriesList.Add(Series1);
  Series1.Marks.Arrow.Visible := True;
  Series1.Marks.Callout.Brush.Color := clBlack;
  Series1.Marks.Callout.Arrow.Visible := True;
  Series1.Marks.Visible := False;
  Series1.LinePen.Color:=clRed;
  Series1.LinePen.Width:=3;
  Series1.Pointer.InflateMargins := True;

//  Series1.Pointer.Style := psRectangle;
  Series1.Pointer.Visible := False;
  Series1.Stairs := False;
  Series1.XValues.Order := loNone;
  Series1.YValues.Order := loNone;
  Series1.ParentChart:=tC;

  tmTs:=TStringList.Create;
  tmTs.Delimiter:=':';
  tmTs.Text:=TFVar(fs.ListOfValues.Objects[ti]).ListOfValues.Text;

  for i := 0 to tmTs.Count-1 do
   begin
    f1:=0;f2:=0;
//    tmTs1:=TStringList.Create;
//    tmTs1.Delimiter:=':';
//    tmTs1.DelimitedText:=fs.ListOfNames.ValueFromIndex[i];
    TryStrToFloat(Trim(tmTs.Names[i]),f1);
    TryStrToFloat(tmTs.ValueFromIndex[i],f2);
    if (i=0)and(tmTs.Names[i]<>fs.Min) then   //add first point for min
     begin
      TryStrToFloat(Trim(fs.Min),f3);
      Series1.AddXY(f3,f2,'',clRed);
     end;
    Series1.AddXY(f1,f2,'',clRed);
    if (i=tmTs.Count-1)and(tmTs.Names[i]<>fs.Max) then   //add last point for max
     begin
      TryStrToFloat(Trim(fs.Max),f3);
      Series1.AddXY(f3,f2,'',clRed);
     end;
   end;
//  TryStrToFloat(Trim(tmTs1.Strings[1]),f1);
//  Series1.AddXY(f1,0,'',clRed);
end;
//------------------------------------------------------------------------------
Function TSTDIClass.AddSimpleGraphAsPanel(NComp:TWinControl;T,L,W:Integer;nl,vl:TStringList):integer;
var
  i,deltaX : Integer;
//  tmTs : TStringList;
  tmP : TRzPanel;
  tmL : TLabel;
  tmLn : TRzLine;
  deltaY,f1,f2,f3 : Double;
begin
  try
   vl.Clear;
   vl.Add('0=100');
   vl.Add('10=50');
   vl.Add('20=70');
   vl.Add('30=70');

   tmP:=AddRzPanel(T,L,100,300,NComp,1,alCustom,clCream,
    bvNone,bvNone,bsSingle,''); //main frame

   deltaY:=RoundTo((tmP.Height-4)/100,-2); //???? 1 ???????
   deltaX:=Round((tmP.Width-4)/(vl.Count-1)); //?????? 1 ????????
//   tmLn:=AddLine(tmP,10,10,30,110);
//   tmLn.LineSlope:=lsUp;
   //!!!!
;
   for i := 0 to vl.Count-2 do
    begin
     TryStrToFloat(vl.Names[i],f1);
     TryStrToFloat(vl.ValueFromIndex[i],f2);
     TryStrToFloat(vl.ValueFromIndex[i+1],f3);
//     f3:=f3-f2;
     tmLn:=AddLine(tmP,Round(f1*deltaY),i*deltaX,2,deltaX);
     AddLine(tmP,Round(f3*deltaY),i*deltaX,2,2);

    end;
  except
  end

end;

Function TSTDIClass.AddTableAsPanels(NComp:TWinControl;T,L,W,ti:Integer;nl,vl:TStringList):integer;
var
  i,j,c : Integer;
//  tmTs : TStringList;
  tmP,tmP1,tmP2 : TRzPanel;
  tmL : TLabel;
begin
  try
   tmP:=AddRzPanel(T,L,20,nl.Count*40,NComp,ti,alCustom,clCream,
    bvNone,bvNone,bsSingle,''); //main frame

  //left title
  tmP1:=AddRzPanel(1,1,20,50,tmP,1,alLeft,clCream,
   bvNone,bvNone,bsNone,''); //left frame
  tmP2:=AddRzPanel(1,1,20,40,tmP1,1,alTop,clCream,
   bvNone,bvNone,bsSingle,'Scale');
  i:=Length(tmP2.Caption)*7+5;
  tmP2:=AddRzPanel(2,2,20,40,tmP1,1,alTop,clCream,
   bvNone,bvNone,bsSingle,'Values');
  j:=Length(tmP2.Caption)*7+5;
  if i<j then i:=j;
  if i>tmP1.Width then tmP1.Width:=i;
  c:=tmP1.Width;

//  tmTs:=TStringList.Create;
//  tmTs.Delimiter:=';';
//  tmTs.DelimitedText:=vl;

   for i := 0 to nl.Count-1 do
    begin
    //scale-value
    tmP1:=AddRzPanel(1,C+i*40,20,40,tmP,1,alLeft,clCream,
     bvNone,bvNone,bsNone,''); //left frame

    tmP2:=AddRzPanel(1,1,20,20,tmP1,1,alTop,clCream,
      bvNone,bvNone,bsSingle,nl.ValueFromIndex[i]);
    j:=Length(tmP2.Caption)*7+5;
    AddEdit(tmP1,1,1,20,vl.Strings[i]
     );
    TEdit(tmP1.Components[tmP1.ComponentCount-1]).Text:=vl.Strings[i];
    TEdit(tmP1.Components[tmP1.ComponentCount-1]).Align:=alClient;
    TEdit(tmP1.Components[tmP1.ComponentCount-1]).AlignWithMargins:=True;
    TEdit(tmP1.Components[tmP1.ComponentCount-1]).Margins.Top:=1;
    TEdit(tmP1.Components[tmP1.ComponentCount-1]).Margins.Left:=1;
    TEdit(tmP1.Components[tmP1.ComponentCount-1]).Margins.Right:=1;
    TEdit(tmP1.Components[tmP1.ComponentCount-1]).Margins.Bottom:=1;
    TEdit(tmP1.Components[tmP1.ComponentCount-1]).Tag:=i;
    if j>tmP1.Width then tmP1.Width:=j;
    c:=c+tmP1.Width;
    end;

//   tmP.AutoSize:=True;
   tmP.Height:=45;
   tmP.Width:=c+5;
   Result:=tmP.Top+tmP.Height;
  except
   Result:=T;
  end;
end;
//-----------------------------------------------------------------------------
Function TSTDIClass.AddTableAsPanelsV2(NComp:TWinControl;T,L,W,ti:Integer;
 fsc:TObject):integer;
var
  i,j,c : Integer;
  tmTs : TStringList;
  tmP,tmP1,tmP2 : TRzPanel;
  tmL : TLabel;
  fs : TFScale;
  fv: TFVar;
  v1 : Double;
begin
  try
   fs:=TFScale(fsc);
   fv:=TFVar(fs.ListOfValues.Objects[ti]);
   tmTs:=TStringList.Create;

   v1:=StrToFloat(fs.Max)-StrToFloat(fs.Min);
   if fv.Len<2 then v1:=0 else v1:=RoundTo(v1/(fv.Len-1),-2);

   if (fv.ListOfValues.Count<>fv.Len)and(fv.Len<>0) then
    begin
     fv.ListOfValues.Clear;
     for i := 0 to fv.Len-2 do
      fv.ListOfValues.Add(FloatToStr(v1*i)+'=0');
     fv.ListOfValues.Add(fs.Max+'=0');
    end;


   tmP:=AddRzPanel(T,L,20,fv.ListOfValues.Count*40,NComp,ti,alCustom,clCream,
    bvNone,bvNone,bsSingle,''); //main frame

  //left title
  tmP1:=AddRzPanel(1,1,20,50,tmP,1,alLeft,clCream,
   bvNone,bvNone,bsNone,''); //left frame
  tmP2:=AddRzPanel(1,1,20,40,tmP1,1,alTop,clCream,
   bvNone,bvNone,bsSingle,'Val.');
  i:=Length(tmP2.Caption)*7+5;
  tmP2:=AddRzPanel(2,2,20,40,tmP1,1,alClient,clCream,
   bvNone,bvNone,bsSingle,'Prob.');
  j:=Length(tmP2.Caption)*7+5;
  if i<j then i:=j;
  if i>tmP1.Width then tmP1.Width:=i;
  c:=tmP1.Width;

//   tmTs.Delimiter:=':';
   tmTs.Text:=fv.ListOfValues.Text;

   for i := 0 to tmTs.Count-1 do
    begin
    //value-prob
    tmP1:=AddRzPanel(1,C+i*40,20,40,tmP,1,alLeft,clCream,
     bvNone,bvNone,bsNone,''); //left frame

//    tmP2:=AddRzPanel(1,1,20,20,tmP1,1,alTop,clCream,
//      bvNone,bvNone,bsSingle,tmTs.Names[i]);
//    j:=Length(tmP2.Caption)*7+5;

    AddEdit(tmP1,1,1,20,tmTs.Names[i]
     );
    TEdit(tmP1.Components[tmP1.ComponentCount-1]).Text:=tmTs.Names[i];
    TEdit(tmP1.Components[tmP1.ComponentCount-1]).Align:=alTop;
    TEdit(tmP1.Components[tmP1.ComponentCount-1]).Alignment:=taCenter;
    TEdit(tmP1.Components[tmP1.ComponentCount-1]).AlignWithMargins:=True;
    TEdit(tmP1.Components[tmP1.ComponentCount-1]).Margins.Top:=1;
    TEdit(tmP1.Components[tmP1.ComponentCount-1]).Margins.Left:=1;
    TEdit(tmP1.Components[tmP1.ComponentCount-1]).Margins.Right:=1;
    TEdit(tmP1.Components[tmP1.ComponentCount-1]).Margins.Bottom:=1;
    TEdit(tmP1.Components[tmP1.ComponentCount-1]).Tag:=i;


    AddEdit(tmP1,15,1,20,tmTs.ValueFromIndex[i]
     );
    TEdit(tmP1.Components[tmP1.ComponentCount-1]).Text:=tmTs.ValueFromIndex[i];
    TEdit(tmP1.Components[tmP1.ComponentCount-1]).Align:=alClient;
    TEdit(tmP1.Components[tmP1.ComponentCount-1]).Alignment:=taCenter;
    TEdit(tmP1.Components[tmP1.ComponentCount-1]).AlignWithMargins:=True;
    TEdit(tmP1.Components[tmP1.ComponentCount-1]).Margins.Top:=1;
    TEdit(tmP1.Components[tmP1.ComponentCount-1]).Margins.Left:=1;
    TEdit(tmP1.Components[tmP1.ComponentCount-1]).Margins.Right:=1;
    TEdit(tmP1.Components[tmP1.ComponentCount-1]).Margins.Bottom:=1;
    TEdit(tmP1.Components[tmP1.ComponentCount-1]).Tag:=i;
    if j>tmP1.Width then tmP1.Width:=j;
    c:=c+tmP1.Width;
    end;

//   tmP.AutoSize:=True;
   tmP.Height:=45;
   tmP.Width:=c+5;
   Result:=tmP.Top+tmP.Height;
  except
   Result:=T;
  end;
end;
//-----------------------------------------------------------------------------
Function TSTDIClass.AddEdit(NComp:TWinControl;T,L,W:integer;Text:string):integer;
var
  C:TEdit;
begin
  try
   C:=TEdit.Create(NComp);
   C.Parent:=NComp;
   C.Top:=T;
   C.Left:=L;
   C.Width:=W;
   C.Hint:=Text;
//   C.Width:=NComp.Width-L-25;
   Result:=C.Top+C.Height;
  except
   Result:=T;
  end;
end;
//-----------------------------------------------------------------------------
Function TSTDIClass.AddSpinEdit(NComp:TWinControl;T,L,W:integer;Text:string):integer;
var
  C:TRzSpinEdit;
begin
  try
   C:=TRzSpinEdit.Create(NComp);
   C.Parent:=NComp;
   C.Top:=T;
   C.Left:=L;
   C.Width:=W;
   C.Text:=Text;
//   C.Width:=NComp.Width-L-25;
   Result:=C.Top+C.Height;
  except
   Result:=T;
  end;
end;
//-----------------------------------------------------------------------------
Function TSTDIClass.AddMemo(NComp:TWinControl;T,L,W:integer;Text:string):integer;
var
  C:TMemo;
begin
  try
   C:=TMemo.Create(NComp);
   C.Parent:=NComp;
   C.Top:=T;
   C.Left:=L;
//   C.Width:=50;
   C.Hint:=Text;
   C.Width:=NComp.Width-L-25;
   Result:=C.Top+C.Height;
  except
   Result:=T;
  end;
end;

Function TSTDIClass.AddDateTimePicker(NComp:TWinControl;T,L,W:integer;Text:string):integer;
var
  C:TDateTimePicker;
begin
  try
   C:=TDateTimePicker.Create(NComp);
   C.Parent:=NComp;
   C.Top:=T;
   C.Left:=L;
   C.Width:=W;
   C.Hint:=Text;
   Result:=C.Top+C.Height;
  except
   Result:=T;
  end;
end;

Function TSTDIClass.AddCombo(NComp:TWinControl;T,L,W:integer;Text:string):integer;
var
  Combo1:TComboBox;
begin
  try
   Combo1:=TComboBox.Create(NComp);
   Combo1.Parent:=NComp;
   Combo1.Top:=T;
   Combo1.Left:=L;
   Combo1.Width:=W;
   Combo1.Hint:=Text;
   Result:=Combo1.Top+Combo1.Height;
  except
   On e:Exception do
    begin
//     ShowMessage(e.Message);
     Result:=T;
    end;
  end;
end;

Function TSTDIClass.AddImage(NComp:TWinControl;T,L,W,i:integer;IL:TImageList;A:TAlign):TImage;
var
  Im:TImage;
begin
  try
   Im:=TImage.Create(NComp);
   Im.Parent:=NComp;
   Im.Top:=T;
   Im.Left:=L;
   Im.Width:=W;
   Im.AutoSize:=True;
   Im.Align:=A;
   IL.GetBitmap(i,Im.Picture.Bitmap);
   Result:=Im;
  except
   On e:Exception do
    begin
//     ShowMessage(e.Message);
     Result:=nil;
    end;
  end;
end;

Function TSTDIClass.AddRzCombo(NComp:TWinControl;T,L,W:integer;Text:string):TRzComboBox;
var
  Combo1:TRzComboBox;
begin
  try
   Combo1:=TRzComboBox.Create(NComp);
   Combo1.Parent:=NComp;
   Combo1.Top:=T;
   Combo1.Left:=L;
   Combo1.Width:=W;
   Combo1.Hint:=Text;
   Result:=Combo1;
  except
   On e:Exception do
    begin
//     ShowMessage(e.Message);
     Result:=nil;
    end;
  end;
end;

Function TSTDIClass.MakeControlsDisable(WC:TWinControl;V:Boolean):Integer;
var
 i  :  Integer;
begin
 for i:=0 to WC.ControlCount-1 do
  begin
    WC.Controls[i].Enabled:=V;
    if (WC.Controls[i] is TGroupBox)or
      (WC.Controls[i] is TPanel) then
     MakeControlsDisable(TWinControl(WC.Controls[i]),V);
  end;
end;

//???????? ???????? ?? ????? ?? ?????
function TSTDIClass.LoadSingleString(CmName:String;FileName:String):String;
var
 tmps	:	TStringList;
begin
 try
  tmps:=TStringList.Create;
  SEClass.Load(tmps,FileName,Application.Title);
//  tmps.LoadFromFile(FileName);
  Result:=tmps.Values[CmName];
  if Result='' then Result:=CmName;
 except
  Result:='';
 end;
end;

//???????? ?????????????? ?????? (???????? ? ?????????) ??? ????????????? ?????????
function TSTDIClass.LoadSingleCapOrHint(Cm:TComponent;Source:TStrings):Integer;
begin
 try
  Result:=0;
  if Cm is TForm then
   if Source.Values[TForm(Cm).Name+'c']<>'' then
     TForm(Cm).Caption:=' '+Source.Values[TForm(Cm).Name+'c'];

  if Cm is TMemo then
   begin
    if Source.Values[TMemo(Cm).Name+'h']<>'' then
     TMemo(Cm).Hint:=Source.Values[TMemo(Cm).Name+'h'];
   end;

  if Cm is TLabel then    //??? ?????
   begin
    if Source.Values[TLabel(Cm).Name+'c']<>'' then
     TLabel(Cm).Caption:=Source.Values[TLabel(Cm).Name+'c'];
    if Source.Values[TLabel(Cm).Name+'h']<>'' then
     TLabel(Cm).Hint:=Source.Values[TLabel(Cm).Name+'h'];
    if Source.Values[TLabel(Cm).Name+'cr']<>'' then
     TLabel(Cm).Caption:=Source.Values[Source.Values[TLabel(Cm).Name+'cr']];
    end;

  if Cm is TRzLabel then    //??? ?????
   begin
    if Source.Values[TRzLabel(Cm).Name+'c']<>'' then
     TRzLabel(Cm).Caption:=Source.Values[TRzLabel(Cm).Name+'c'];
    if Source.Values[TRzLabel(Cm).Name+'h']<>'' then
     TRzLabel(Cm).Hint:=Source.Values[TRzLabel(Cm).Name+'h'];
    if Source.Values[TRzLabel(Cm).Name+'cr']<>'' then
     TRzLabel(Cm).Caption:=Source.Values[Source.Values[TRzLabel(Cm).Name+'cr']];
    end;

  if Cm is TListBox then  //??? ???????
   begin
    if Source.Values[TListBox(Cm).Name+'h']<>'' then
     TListBox(Cm).Hint:=Source.Values[TListBox(Cm).Name+'h'];
   end;
  if Cm is TRzRadioButton then  //??? ???????
   begin
    if Source.Values[TRzRadioButton(Cm).Name+'c']<>'' then
     TRzRadioButton(Cm).Caption:=Source.Values[TRzRadioButton(Cm).Name+'c'];
    if Source.Values[TRzRadioButton(Cm).Name+'h']<>'' then
     TRzRadioButton(Cm).Hint:=Source.Values[TRzRadioButton(Cm).Name+'h'];
   end;
  if Cm is TScrollBox then  //??? ???????
   begin
    if Source.Values[TScrollBox(Cm).Name+'h']<>'' then
     TScrollBox(Cm).Hint:=Source.Values[TScrollBox(Cm).Name+'h'];
   end;
  if Cm is TCheckBox then  //??? ???????
   begin
    if Source.Values[TCheckBox(Cm).Name+'c']<>'' then
     TCheckBox(Cm).Caption:=Source.Values[TCheckBox(Cm).Name+'c'];
    if Source.Values[TCheckBox(Cm).Name+'h']<>'' then
     TCheckBox(Cm).Hint:=Source.Values[TCheckBox(Cm).Name+'h'];
   end;
  if Cm is TRzCheckBox then  //??? rz ???????
   begin
    if Source.Values[TRzCheckBox(Cm).Name+'c']<>'' then
     TRzCheckBox(Cm).Caption:=Source.Values[TRzCheckBox(Cm).Name+'c'];
    if Source.Values[TRzCheckBox(Cm).Name+'h']<>'' then
     TRzCheckBox(Cm).Hint:=Source.Values[TRzCheckBox(Cm).Name+'h'];
   end;
  if Cm is TPanel then //??? TPanel
   begin
    if Source.Values[TPanel(Cm).Name+'c']<>'' then
     TPanel(Cm).Caption:=' '+Source.Values[TPanel(Cm).Name+'c']+' ';
    if Source.Values[TPanel(Cm).Name+'h']<>'' then
     TPanel(Cm).Hint:=Source.Values[TPanel(Cm).Name+'h'];
   end;
  if Cm is TRzPanel then //??? TPanel
   begin
    if Source.Values[TRzPanel(Cm).Name+'c']<>'' then
     TRzPanel(Cm).Caption:=' '+Source.Values[TRzPanel(Cm).Name+'c']+' ';
    if Source.Values[TRzPanel(Cm).Name+'h']<>'' then
     TRzPanel(Cm).Hint:=Source.Values[TRzPanel(Cm).Name+'h'];
   end;
  if Cm is TGroupBox then //??? ?????
   begin
    if Source.Values[TGroupBox(Cm).Name+'c']<>'' then
     TGroupBox(Cm).Caption:=' '+Source.Values[TGroupBox(Cm).Name+'c']+' ';
    if Source.Values[TGroupBox(Cm).Name+'h']<>'' then
     TGroupBox(Cm).Hint:=Source.Values[TGroupBox(Cm).Name+'h'];
   end;
  if Cm is TRzGroupBox then //??? rz ?????
   begin
    if Source.Values[TRzGroupBox(Cm).Name+'c']<>'' then
     TRzGroupBox(Cm).Caption:=' '+Source.Values[TRzGroupBox(Cm).Name+'c']+' ';
    if Source.Values[TRzGroupBox(Cm).Name+'h']<>'' then
     TRzGroupBox(Cm).Hint:=Source.Values[TRzGroupBox(Cm).Name+'h'];
   end;
  if Cm is TButton then //??? ??????
   begin
    if Source.Values[TButton(Cm).Name+'c']<>'' then
     TButton(Cm).Caption:=Source.Values[TButton(Cm).Name+'c'];
    if Source.Values[TButton(Cm).Name+'h']<>'' then
     TButton(Cm).Hint:=Source.Values[TButton(Cm).Name+'h'];
    if Source.Values[TButton(Cm).Name+'cr']<>'' then
     TButton(Cm).Caption:=Source.Values[Source.Values[TButton(Cm).Name+'cr']];
    if Source.Values[TButton(Cm).Name+'hr']<>'' then
     TButton(Cm).Hint:=Source.Values[Source.Values[TButton(Cm).Name+'hr']];
     end;
  if Cm is TRzButton then //??? ??????
   begin
    if Source.Values[TRzButton(Cm).Name+'c']<>'' then
     TRzButton(Cm).Caption:=Source.Values[TRzButton(Cm).Name+'c'];
    if Source.Values[TRzButton(Cm).Name+'h']<>'' then
     TRzButton(Cm).Hint:=Source.Values[TRzButton(Cm).Name+'h'];
    if Source.Values[TRzButton(Cm).Name+'cr']<>'' then
     TRzButton(Cm).Caption:=Source.Values[Source.Values[TRzButton(Cm).Name+'cr']];
    if Source.Values[TRzButton(Cm).Name+'hr']<>'' then
     TRzButton(Cm).Hint:=Source.Values[Source.Values[TRzButton(Cm).Name+'hr']];
     end;
  if Cm is TRzBitBtn then //??? ??????
   begin
    if Source.Values[TRzBitBtn(Cm).Name+'c']<>'' then
     TRzBitBtn(Cm).Caption:=Source.Values[TRzBitBtn(Cm).Name+'c'];
    if Source.Values[TRzBitBtn(Cm).Name+'h']<>'' then
     TRzBitBtn(Cm).Hint:=Source.Values[TRzBitBtn(Cm).Name+'h'];
    if Source.Values[TRzBitBtn(Cm).Name+'cr']<>'' then
     TRzBitBtn(Cm).Caption:=Source.Values[Source.Values[TRzBitBtn(Cm).Name+'cr']];
    if Source.Values[TRzBitBtn(Cm).Name+'hr']<>'' then
     TRzBitBtn(Cm).Hint:=Source.Values[Source.Values[TRzBitBtn(Cm).Name+'hr']];
     end;
  if Cm is TRzMenuButton then //??? ??????
   begin
    if Source.Values[TRzMenuButton(Cm).Name+'c']<>'' then
     TRzMenuButton(Cm).Caption:=Source.Values[TRzMenuButton(Cm).Name+'c'];
    if Source.Values[TRzMenuButton(Cm).Name+'h']<>'' then
     TRzMenuButton(Cm).Hint:=Source.Values[TRzMenuButton(Cm).Name+'h'];
   end;
  if Cm is TToolButton then //??? ??????
   begin
    if Source.Values[TToolButton(Cm).Name+'c']<>'' then
     TToolButton(Cm).Caption:=Source.Values[TToolButton(Cm).Name+'c'];
    if Source.Values[TToolButton(Cm).Name+'h']<>'' then
     TToolButton(Cm).Hint:=Source.Values[TToolButton(Cm).Name+'h'];
   end;
  if Cm is TMenuItem then
   begin
    if Source.Values[TMenuItem(Cm).Name+'c']<>'' then
     TMenuItem(Cm).Caption:=Source.Values[TMenuItem(Cm).Name+'c'];
    if Source.Values[TMenuItem(Cm).Name+'h']<>'' then
     TMenuItem(Cm).Hint:=Source.Values[TMenuItem(Cm).Name+'h'];
   end;
  if Cm is TTabSheet then
   begin
    if Source.Values[TTabSheet(Cm).Name+'c']<>'' then
     TTabSheet(Cm).Caption:=Source.Values[TTabSheet(Cm).Name+'c'];
    if Source.Values[TTabSheet(Cm).Name+'h']<>'' then
     TTabSheet(Cm).Hint:=Source.Values[TTabSheet(Cm).Name+'h'];
   end;
  if Cm is TSpeedButton then
   begin
    if Source.Values[TSpeedButton(Cm).Name+'c']<>'' then
     TSpeedButton(Cm).Caption:=Source.Values[TSpeedButton(Cm).Name+'c'];
    if Source.Values[TSpeedButton(Cm).Name+'h']<>'' then
     TSpeedButton(Cm).Hint:=Source.Values[TSpeedButton(Cm).Name+'h'];
    if Source.Values[TSpeedButton(Cm).Name+'cr']<>'' then
     TSpeedButton(Cm).Caption:=Source.Values[Source.Values[TSpeedButton(Cm).Name+'cr']];
    if Source.Values[TSpeedButton(Cm).Name+'hr']<>'' then
     TSpeedButton(Cm).Hint:=Source.Values[Source.Values[TSpeedButton(Cm).Name+'hr']];
   end;
  if Cm is TRadioButton then
   begin
    if Source.Values[TRadioButton(Cm).Name+'c']<>'' then
     TRadioButton(Cm).Caption:=Source.Values[TRadioButton(Cm).Name+'c'];
    if Source.Values[TRadioButton(Cm).Name+'h']<>'' then
     TRadioButton(Cm).Hint:=Source.Values[TRadioButton(Cm).Name+'h'];
    if Source.Values[TRadioButton(Cm).Name+'cr']<>'' then
     TRadioButton(Cm).Caption:=Source.Values[Source.Values[TRadioButton(Cm).Name+'cr']];
    if Source.Values[TRadioButton(Cm).Name+'hr']<>'' then
     TRadioButton(Cm).Hint:=Source.Values[Source.Values[TRadioButton(Cm).Name+'hr']];
   end;
 except
  Result:=-1;
 end;
end;

function TSTDIClass.LoadLocalLang(Cm:TComponent;FileName:String):Integer;
var
 i	:	Integer;
 tmps:	TStringList;
begin
 try
  tmps:=TStringList.Create;
  SEClass.Load(tmps,FileName,Application.Title);
//  tmps.LoadFromFile(FileName);
  Result:=0;
  LoadSingleCapOrHint(Cm,tmps);
  for i:=0 to Cm.ComponentCount-1 do
   LoadSingleCapOrHint(Cm.Components[i],tmps);
 except
  Result:=-1;
 end;
end;

//???????? ?????
Function TSTDIClass.AddLabel(NComp:TWinControl;
 Name:String;T,L,W:integer;C,BGC:TColor;B:TFontStyles):integer;
var
  Label1:TLabel;
begin
 try
  Label1:=TLabel.Create(NComp);
  Label1.Parent:=NComp;
  Label1.Top:=T;
  Label1.Left:=L;
  Label1.Font.Style:=B;
  Label1.WordWrap:=True;
  Label1.Width:=W;
  Label1.Caption:=Name;
//  Label1.AutoSize:=True;
  Label1.Tag:=-1;
  if BGC<>clNone then Label1.Color:=BGC;
  Label1.Font.Color:=C;
  Result:=T+Label1.Height+3;
 except
//   ShowMessage(SIClass.LoadSingleString('e_60','./Lang/msgs_01.lan')+Name);
   Result:=T;
 end;
end;

//???????? ?????
Function TSTDIClass.AddRzLabel(NComp:TWinControl;
 Name:String;T,L,W:integer;C,BGC:TColor;B:TFontStyles):integer;
var
  Label1:TRzLabel;
begin
 try
  Label1:=TRzLabel.Create(NComp);
  Label1.Blinking:=False;
  Label1.BlinkIntervalOn:=100;
  Label1.BlinkColor:=clRed;
  Label1.Parent:=NComp;
  Label1.Top:=T;
  Label1.Left:=L;
  Label1.Font.Style:=B;
  Label1.WordWrap:=True;
  Label1.Width:=W;
  Label1.Caption:=Name;
//   Label1.AutoSize:=True;
  Label1.Tag:=-1;
  Label1.Font.Color:=C;
  if BGC<>clNone then Label1.Color:=BGC;
  Result:=T+Label1.Height+3;
 except
//   ShowMessage(SIClass.LoadSingleString('e_60','./Lang/msgs_01.lan')+Name);
   Result:=T;
 end;
end;

procedure TSTDIClass.BreakStr(CName:TComboBox;s:string);
begin
  CName.Items.Clear;
  CName.Items.Add('');
  while pos(':',s)<>0 do
   begin
    CName.Items.Add(Copy(s,1,pos(':',s)-1));
    Delete(s,1,pos(':',s));
   end;
   CName.Items.Add(s);

   if CName.Items.Count<>0 then CName.ItemIndex:=1;
end;

//??????? ??????? ?? ???????????
procedure TSTDIClass.ReleaseObjects(NComp:TWinControl);
var
  i,j:Integer;
begin
 try
  i:=0;
  j:=NComp.ControlCount;
  while i<j do
   begin
    NComp.Controls[i].Free;
    dec(j);
   end;
 except
  ShowMessage('?????? ? ???????? ???????????? ?????? ??????? ????????? ?????');
 end;
end;

end.
