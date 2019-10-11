unit USTDIClass;

interface

uses SysUtils, Classes, Dialogs, StdCtrls, Variants,
     Forms, Windows, ExtCtrls, Buttons, Controls, Graphics,
     ComCtrls, RzTreeVw, RzLabel, RzPanel, RzButton;

type

 TSTDIClass = class (TObject)
 private
//  LHandle  : HMODULE;
 public
//  procedure AfterConstruction;  override;
//  destructor Destroy; override;
 published
  Procedure ReleaseObjects(NComp:TWinControl);

  Function AddLabel(NComp:TWinControl;
   Name:String;T,L,W:integer;C,BGC:TColor;B:TFontStyles):integer;
  Function AddRzLabel(NComp:TWinControl;
   Name:String;T,L,W:integer;C,BGC:TColor;B:TFontStyles):integer;
  Function AddCombo(NComp:TWinControl;T,L,W:integer;Text:string):integer;
  Function AddDateTimePicker(NComp:TWinControl;T,L,W:integer;Text:string):integer;
  Function AddMemo(NComp:TWinControl;T,L,W:integer;Text:string):integer;
  Function AddEdit(NComp:TWinControl;T,L,W:integer;Text:string):integer;

  Procedure BreakStr(CName:TComboBox;s:string);

  function LoadLocalLang(Cm:TComponent;FileName:String):Integer;
  function LoadSingleCapOrHint(Cm:TComponent;Source:TStrings):Integer;
  function LoadSingleString(CmName:String;FileName:String):String;

  Function MakeControlsDisable(WC:TWinControl;V:Boolean):Integer;
 end;

 var
 STDIClass	:	TSTDIClass;

implementation

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

//загрузка значения из файла по имени
function TSTDIClass.LoadSingleString(CmName:String;FileName:String):String;
var
 tmps	:	TStrings;
begin
 try
  tmps:=TStringList.Create;
  tmps.LoadFromFile(FileName);
  Result:=tmps.Values[CmName];
 except
  Result:='';
 end;
end;

//загрузка локализованных данных (названия и подсказки) для определенного компонета
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

  if Cm is TLabel then    //для меток
   begin
    if Source.Values[TLabel(Cm).Name+'c']<>'' then
     TLabel(Cm).Caption:=Source.Values[TLabel(Cm).Name+'c'];
    if Source.Values[TLabel(Cm).Name+'h']<>'' then
     TLabel(Cm).Hint:=Source.Values[TLabel(Cm).Name+'h'];
    if Source.Values[TLabel(Cm).Name+'cr']<>'' then
     TLabel(Cm).Caption:=Source.Values[Source.Values[TLabel(Cm).Name+'cr']];
    end;

  if Cm is TRzLabel then    //для меток
   begin
    if Source.Values[TRzLabel(Cm).Name+'c']<>'' then
     TRzLabel(Cm).Caption:=Source.Values[TRzLabel(Cm).Name+'c'];
    if Source.Values[TRzLabel(Cm).Name+'h']<>'' then
     TRzLabel(Cm).Hint:=Source.Values[TRzLabel(Cm).Name+'h'];
    if Source.Values[TRzLabel(Cm).Name+'cr']<>'' then
     TRzLabel(Cm).Caption:=Source.Values[Source.Values[TRzLabel(Cm).Name+'cr']];
    end;

  if Cm is TListBox then  //для списков
   begin
    if Source.Values[TListBox(Cm).Name+'h']<>'' then
     TListBox(Cm).Hint:=Source.Values[TListBox(Cm).Name+'h'];
   end;
  if Cm is TScrollBox then  //для списков
   begin
    if Source.Values[TScrollBox(Cm).Name+'h']<>'' then
     TScrollBox(Cm).Hint:=Source.Values[TScrollBox(Cm).Name+'h'];
   end;
  if Cm is TCheckBox then  //для списков
   begin
    if Source.Values[TCheckBox(Cm).Name+'c']<>'' then
     TCheckBox(Cm).Caption:=Source.Values[TCheckBox(Cm).Name+'c'];
    if Source.Values[TCheckBox(Cm).Name+'h']<>'' then
     TCheckBox(Cm).Hint:=Source.Values[TCheckBox(Cm).Name+'h'];
   end;
  if Cm is TPanel then //для TPanel
   begin
    if Source.Values[TPanel(Cm).Name+'c']<>'' then
     TPanel(Cm).Caption:=' '+Source.Values[TPanel(Cm).Name+'c']+' ';
    if Source.Values[TPanel(Cm).Name+'h']<>'' then
     TPanel(Cm).Hint:=Source.Values[TPanel(Cm).Name+'h'];
   end;
  if Cm is TRzPanel then //для TPanel
   begin
    if Source.Values[TRzPanel(Cm).Name+'c']<>'' then
     TRzPanel(Cm).Caption:=' '+Source.Values[TRzPanel(Cm).Name+'c']+' ';
    if Source.Values[TRzPanel(Cm).Name+'h']<>'' then
     TRzPanel(Cm).Hint:=Source.Values[TRzPanel(Cm).Name+'h'];
   end;
  if Cm is TGroupBox then //для групп
   begin
    if Source.Values[TGroupBox(Cm).Name+'c']<>'' then
     TGroupBox(Cm).Caption:=' '+Source.Values[TGroupBox(Cm).Name+'c']+' ';
    if Source.Values[TGroupBox(Cm).Name+'h']<>'' then
     TGroupBox(Cm).Hint:=Source.Values[TGroupBox(Cm).Name+'h'];
   end;
  if Cm is TButton then //для кнопок
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
  if Cm is TRzButton then //для кнопок
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
  if Cm is TRzBitBtn then //для кнопок
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
 tmps:	TStrings;
begin
 try
  tmps:=TStringList.Create;
  tmps.LoadFromFile(FileName);
  Result:=0;
  LoadSingleCapOrHint(Cm,tmps);
  for i:=0 to Cm.ComponentCount-1 do
   LoadSingleCapOrHint(Cm.Components[i],tmps);
 except
  Result:=-1;
 end;
end;

//создание метки
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

//создание метки
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

//очистка области от компонентов
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
  ShowMessage('Ошибка в процессе освобождения памяти занятой объектами схемы');
 end;
end;

end.

