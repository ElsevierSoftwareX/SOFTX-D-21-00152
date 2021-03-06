{------------------------------------------------------------------------------}
{                                                                              }
{  Personal Knowledge Base Designer                                            }
{  by A.Yu. Yurin, N.O. Dorodnykh                                              }
{                                                                              }
{  iskander@icc.ru                                                             }
{  http://knowledge-core.ru/                                                   }
{                                                                              }
{------------------------------------------------------------------------------}

unit UAddScaleForm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, RzButton, StdCtrls, Mask, RzEdit, RzLabel, ExtCtrls, RzPanel, RzTabs,
  UPKBClass, Chart, RzRadChk, RzSpnEdt, Math;

type
  TAddScaleForm = class(TForm)
    RzPageControl1: TRzPageControl;
    TabSheet1: TRzTabSheet;
    TabSheet2: TRzTabSheet;
    TabSheet3: TRzTabSheet;
    GroupBox4: TGroupBox;
    ScrollBox2: TScrollBox;
    RzPanel2: TRzPanel;
    RzLabel1: TRzLabel;
    RzLabel2: TRzLabel;
    RzLabel3: TRzLabel;
    RzPanel7: TRzPanel;
    RzLabel13: TRzLabel;
    RzLabel14: TRzLabel;
    RzLabel15: TRzLabel;
    RzLabel16: TRzLabel;
    RzPanel1: TRzPanel;
    RzButton1: TRzButton;
    RzButton2: TRzButton;
    RzButton3: TRzButton;
    RzPanel6: TRzPanel;
    ScrollBox3: TScrollBox;
    GroupBox5: TGroupBox;
    ScrollBox4: TScrollBox;
    RzPanel12: TRzPanel;
    GroupBox3: TGroupBox;
    RzPanel13: TRzPanel;
    RzRadioButton1: TRzRadioButton;
    RzPanel15: TRzPanel;
    RzPanel14: TRzPanel;
    GroupBox8: TGroupBox;
    Memo1: TMemo;
    ComboBox1: TComboBox;
    GroupBox1: TGroupBox;
    RzPanel8: TRzPanel;
    ScrollBox1: TScrollBox;
    RzSpinEdit1: TRzSpinEdit;
    RzLabel7: TRzLabel;
    RzPanel3: TRzPanel;
    RzLabel5: TRzLabel;
    RzEdit4: TRzEdit;
    RzRadioButton2: TRzRadioButton;
    ComboBox4: TComboBox;
    RzLabel6: TRzLabel;
    RzEdit5: TRzEdit;
    RzLabel4: TRzLabel;
    RzPanel4: TRzPanel;
    RzEdit2: TRzEdit;
    RzLabel10: TRzLabel;
    RzEdit1: TRzEdit;
    RzLabel8: TRzLabel;
    procedure RzButton2Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure ComboBox2Change(Sender: TObject);
    procedure ComboBox1Change(Sender: TObject);
    procedure RzButton1Click(Sender: TObject);
    procedure TabSheet1Show(Sender: TObject);
    procedure RzButton3Click(Sender: TObject);
    procedure RzEdit2Change(Sender: TObject);
    procedure RzEdit1Change(Sender: TObject);
    procedure ScaleEditChange(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure RzRadioButton1Click(Sender: TObject);
    procedure RzRadioButton2Click(Sender: TObject);
    procedure RzSpinEdit1Change(Sender: TObject);
    procedure Memo1Change(Sender: TObject);
    procedure RzEdit5Change(Sender: TObject);
    procedure ComboBox4Change(Sender: TObject);
    procedure RzEdit4Change(Sender: TObject);

    procedure SpinEditChange(Sender: TObject);
    procedure ValEditChange(Sender: TObject);
    procedure EditChange(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
   S1 : TFScale; //fuzzy scale
   KB2 : TKnowledgeBase;
   ScN : ShortString;
  end;

var
  AddScaleForm: TAddScaleForm;

implementation

uses MAIN, USTDIClass, AddTempFormUnit;

{$R *.dfm}
procedure TAddScaleForm.SpinEditChange(Sender: TObject);
var
 tWC : TWinControl;
 i,n : Integer;
begin
 if Trim(TRzSpinEdit(Sender).Text)<>'' then
  begin
   TFVar(S1.ListOfValues.Objects[TRzSpinEdit(Sender).Tag]).Len:=
    StrToInt(TRzSpinEdit(Sender).Text);

   S1.ShowEditPanelsForScale(ScrollBox1,1);
   //order functions
   tWC:=ScrollBox1;
   for i := 0 to tWC.ComponentCount-1 do
    begin
     TRzSpinEdit(tWC.Components[i].Components[3]).OnChange:=
      SpinEditChange;
     TEdit(tWC.Components[i].Components[0]).OnChange:=
      EditChange;

      for n := 1 to tWC.Components[i].Components[1].ComponentCount-1 do
       begin
         //panels - tables - cells - edit
         //val
         TEdit(tWC.Components[i].Components[1].Components[n].Components[0]).OnChange:=
          ValEditChange;
         //prob
         TEdit(tWC.Components[i].Components[1].Components[n].Components[1]).OnChange:=
          ScaleEditChange;
       end;
    end;
  end;
end;

procedure TAddScaleForm.EditChange(Sender: TObject);
var
 s : string;
begin
 if Trim(TEdit(Sender).Text)<>'' then
  begin
   s:=//TRzPanel(TEdit(Sender).Parent.Components[TComponent(Sender).
    //ComponentIndex+4]).Caption+
     Trim(TEdit(Sender).Text);
   TFVar(S1.ListOfValues.Objects[TEdit(Sender).Tag]).Name:=s;
   S1.ListOfValues.Strings[TEdit(Sender).Tag]:=s;
  end;
end;
//----------------------------------------------------------------------------
procedure TAddScaleForm.ValEditChange(Sender: TObject);
Function RefreshChartV2(C:TChart; i1:Integer):Integer;
var
 i : Integer;
 tmTs1,tmTs : TStringList;
 f1,f2,f3 : Double;
begin
  C.Series[0].Clear;
  tmTs:=TStringList.Create;
  tmTs.Text:=TFVar(S1.ListOfValues.Objects[i1]).ListOfValues.Text;

  for i := 0 to tmTs.Count-1 do
   begin
    f1:=0;f2:=0;
    tmTs1:=TStringList.Create;
    TryStrToFloat(Trim(tmTs.Names[i]),f1);
    TryStrToFloat(tmTs.ValueFromIndex[i],f2);
    if (i=0)and(tmTs.Names[i]<>S1.Min) then   //add first point for min
     begin
      TryStrToFloat(Trim(S1.Min),f3);
      C.Series[0].AddXY(f3,f2,'',clRed);
     end;
    C.Series[0].AddXY(f1,f2,'',clRed);
    if (i=tmTs.Count-1)and(tmTs.Names[i]<>S1.Max) then   //add last point for max
     begin
      TryStrToFloat(Trim(S1.Max),f3);
      C.Series[0].AddXY(f3,f2,'',clRed);
     end;
   end;
end;
//----------------------------------------------------------------------------
var
 i1,i2 : Integer;
 f1 : Double;
 s : string;
 tmTs : TStringList;
begin

 tmTs:=TStringList.Create;
 TEdit(Sender).Text:=StringReplace(Trim(TEdit(Sender).Text),'.',',',[rfReplaceAll]);
 s:=TEdit(Sender).Text;
 f1:=0;
 TryStrToFloat(s,f1);
 if ((f1>StrToInt(S1.Max))or(f1<StrToInt(S1.Min)))//or((f1=0)and(s<>'0'))
   then
  begin
   f1:=0;
   TEdit(Sender).Text:=S1.Min;
   TEdit(Sender).Font.Color:=clRed;
  end
 else
  TEdit(Sender).Font.Color:=clNavy;

 //get mark name index
 i1:=TEdit(Sender).Parent.Parent.Tag;
 //get value index
 i2:=TEdit(Sender).Tag;

 TFVar(S1.ListOfValues.Objects[i1]).ListOfValues.Strings[i2]:=
  Trim(TEdit(Sender).Text)+'='+
   TFVar(S1.ListOfValues.Objects[i1]).ListOfValues.ValueFromIndex[i2];

 //refresh the chart
 RefreshChartV2(
  TChart(
   TRzPanel(TEdit(Sender).Parent.Parent.Parent).Components[
   TEdit(Sender).Parent.Parent.ComponentIndex+1]
   ),i1);
end;
//----------------------------------------------------------------------------
procedure TAddScaleForm.ScaleEditChange(Sender: TObject);
Function RefreshChartV2(C:TChart; i1:Integer):Integer;
var
 i : Integer;
 tmTs1,tmTs : TStringList;
 f1,f2,f3 : Double;
begin
  C.Series[0].Clear;
  tmTs:=TStringList.Create;
  tmTs.Text:=TFVar(S1.ListOfValues.Objects[i1]).ListOfValues.Text;

  for i := 0 to tmTs.Count-1 do
   begin
    f1:=0;f2:=0;
    tmTs1:=TStringList.Create;
    TryStrToFloat(Trim(tmTs.Names[i]),f1);
    TryStrToFloat(tmTs.ValueFromIndex[i],f2);
    if (i=0)and(tmTs.Names[i]<>S1.Min) then   //add first point for min
     begin
      TryStrToFloat(Trim(S1.Min),f3);
      C.Series[0].AddXY(f3,f2,'',clRed);
     end;
    C.Series[0].AddXY(f1,f2,'',clRed);
    if (i=tmTs.Count-1)and(tmTs.Names[i]<>S1.Max) then   //add last point for max
     begin
      TryStrToFloat(Trim(S1.Max),f3);
      C.Series[0].AddXY(f3,f2,'',clRed);
     end;
   end;
end;
//----------------------------------------------------------------------------
var
 i1,i2 : Integer;
 f1 : Double;
 s : string;
 tmTs : TStringList;
begin

 tmTs:=TStringList.Create;
 TEdit(Sender).Text:=StringReplace(Trim(TEdit(Sender).Text),'.',',',[rfReplaceAll]);
 s:=TEdit(Sender).Text;
 f1:=0;
 TryStrToFloat(s,f1);
 if ((f1>1)or(f1<0))//or((f1=0)and(s<>'0'))
   then
  begin
   f1:=0;
   TEdit(Sender).Text:='0';
   TEdit(Sender).Font.Color:=clRed;
  end
 else
  TEdit(Sender).Font.Color:=clNavy;

 if (f1=0)and(s<>'0') then TEdit(Sender).Font.Color:=clRed
  else TEdit(Sender).Font.Color:=clNavy;

 //get mark name index
 i1:=TEdit(Sender).Parent.Parent.Tag;
 //get value index
 i2:=TEdit(Sender).Tag;

 TFVar(S1.ListOfValues.Objects[i1]).ListOfValues.ValueFromIndex[i2]:=
  Trim(TEdit(Sender).Text);

 //refresh the chart
 RefreshChartV2(
  TChart(
   TRzPanel(TEdit(Sender).Parent.Parent.Parent).Components[
   TEdit(Sender).Parent.Parent.ComponentIndex+1]
   ),i1);
end;
//----------------------------------------------------------------------------
procedure TAddScaleForm.ComboBox1Change(Sender: TObject);
var
 i,n : Integer;
 tWC : TWinControl;
begin
 if ComboBox1.ItemIndex<>-1 then
  begin
   S1:=TFScale(ComboBox1.Items.Objects[ComboBox1.ItemIndex]);
   S1.Len:=S1.ListOfValues.Count;
   RzSpinEdit1.Text:=IntToStr(S1.Len);
   if S1.Min='' then S1.Min:='0';
   if S1.Max='' then S1.Max:='0';
   RzEdit1.Text:=S1.Min;
   RzEdit2.Text:=S1.Max;
   Memo1.Text:=S1.Description;
   RzEdit5.Text:=S1.Name;
   RzEdit4.Text:=S1.UnitsName;

   ComboBox4.ItemIndex:=0;  //!!tabular

   tWC:=ScrollBox1;
   if RzRadioButton2.Checked then i:=1 else i:=0; //edit the scale values

   S1.ShowEditPanelsForScale(tWC,i);

   //order functions
   for i := 0 to tWC.ComponentCount-1 do
    begin
     TEdit(tWC.Components[i].Components[0]).OnChange:=
      EditChange;
     TRzSpinEdit(tWC.Components[i].Components[3]).OnChange:=
      SpinEditChange;

      for n := 1 to tWC.Components[i].Components[1].ComponentCount-1 do
       begin
         //panels - tables - cells - edit
         //val
         TEdit(tWC.Components[i].Components[1].Components[n].Components[0]).OnChange:=
          ValEditChange;
         //prob
         TEdit(tWC.Components[i].Components[1].Components[n].Components[1]).OnChange:=
          ScaleEditChange;
       end;
    end;
  end;
end;

procedure TAddScaleForm.ComboBox2Change(Sender: TObject);
begin
 ComboBox1Change(ComboBox1);
end;

procedure TAddScaleForm.ComboBox4Change(Sender: TObject);
begin
 if TComboBox(Sender).Items.IndexOf(TComboBox(Sender).Text)=-1 then
  TComboBox(Sender).ItemIndex:=0;

 S1.FType:=TComboBox(Sender).Text;
end;

procedure TAddScaleForm.FormCreate(Sender: TObject);
var
 i : Integer;
begin
 STDIClass.LoadLocalLang(Self,LangLocaleDir+LangPrefix+'015.lan');
end;

procedure TAddScaleForm.FormShow(Sender: TObject);
var
 i : Integer;
begin
 ComboBox4.Items.Clear;
 ComboBox4.Items.Add('Tabular');
 ComboBox4.Items.Add('Analytical linear S-shaped');
 ComboBox4.Items.Add('Analytical linear Z-shaped');
 ComboBox4.Items.Add('Analytical trapezoid');
 ComboBox4.Items.Add('Analytical triangle');
 ComboBox4.Items.Add('Analytical P-shaped');
 ComboBox4.Items.Add('Analytical S-shaped');
 ComboBox4.Items.Add('Analytical Z-shaped');

  for i := 0 to RzPageControl1.PageCount-1 do
  RzPageControl1.Pages[i].TabVisible:=False;

 //load exising scales
 KB2.LoadScalesToControl(ComboBox1,ScN);

 i:=KB2.IndexOfFScale(ScN);
 if i=-1 then //new scale
  begin
   RzRadioButton1.Checked:=False;
   RzRadioButton2.Checked:=True;
   RzRadioButton2Click(RzRadioButton2);
  end
 else
  begin
   if ComboBox1.Items.Count>0 then
    begin
     ComboBox1.ItemIndex:=i;
     RzRadioButton1.Checked:=True;
     RzRadioButton2.Checked:=False;
     RzRadioButton1Click(RzRadioButton1);
    end
  end;
 OnShow:=nil;
end;

procedure TAddScaleForm.RzButton1Click(Sender: TObject);
begin
 Close;
end;

procedure TAddScaleForm.RzButton2Click(Sender: TObject);
var
 i : Integer;
 s : string;
begin
 if (Trim(RzEdit5.Text)<>'') then
  begin
   if RzRadioButton2.Checked then
     begin
      MainForm.MakeDump(MainForm.LS('Create a new scale')+': '+S1.Name,6);
      MainForm.LoadAList(MainForm.RzListView1);

      //add prefix to fvar names
      for i := 0 to S1.ListOfValues.Count-1 do
       begin
         s:=STDIClass.GetPrefix(S1.Name)+'-'+
           TFVar(S1.ListOfValues.Objects[i]).Name;
         TFVar(S1.ListOfValues.Objects[i]).Name:=s;
         S1.ListOfValues.Strings[i]:=s;
       end;

     try
      S1.ID:=KB2.NewID('S');
      KB2.FScales.Add(S1);
      S1.AddToTreeView(MainForm.TreeView1,
       MainForm.TreeView1.Items.Item[0].Item[AddTempForm.ComboBox1.ItemIndex].Item[5]);
      MainForm.TreeView1.Items.Item[0].Item[AddTempForm.ComboBox1.ItemIndex].Item[5].Text:=
       MainForm.PutChildCount(MainForm.TreeView1.Items.Item[0].
        Item[AddTempForm.ComboBox1.ItemIndex].Item[5]);
     except end;
     end;
   AddTempForm.ScN:=S1.Name;
   Close;
  end
 else
  MainForm.MMessageBox(1,0,'0='+MainForm.LS('Please, check the variable name'));
end;

procedure TAddScaleForm.RzButton3Click(Sender: TObject);
begin
 RzPageControl1.ActivePageIndex:=
  RzPageControl1.ActivePageIndex-1;
end;

procedure TAddScaleForm.RzEdit1Change(Sender: TObject);
var
 s : string;
 f1 : Double;
 i : Integer;
 n : Integer;
 tWC : TScrollBox;
begin
 TRzEdit(Sender).Text:=StringReplace(Trim(TRzEdit(Sender).Text),'.',',',[rfReplaceAll]);
 s:=TRzEdit(Sender).Text;
 f1:=0;
 TryStrToFloat(s,f1);
 if ((f1=0))or(s>S1.Max) then
  begin
   TRzEdit(Sender).Text:='0';
   TRzEdit(Sender).Font.Color:=clRed;
  end
 else
  TRzEdit(Sender).Font.Color:=clNavy;

 S1.Min:=Trim(TRzEdit(Sender).Text);
 RzSpinEdit1Change(RzSpinEdit1);
end;

procedure TAddScaleForm.RzEdit2Change(Sender: TObject);
var
 s : string;
 f1 : Double;
 i : Integer;
 n : Integer;
 tWC : TScrollBox;
begin
 TRzEdit(Sender).Text:=StringReplace(Trim(TRzEdit(Sender).Text),'.',',',[rfReplaceAll]);
 s:=TRzEdit(Sender).Text;
 f1:=0;
 TryStrToFloat(s,f1);
 if ((f1=0)and(s<>'0'))or(s<S1.Min) then
  begin
   TRzEdit(Sender).Text:='0';
   TRzEdit(Sender).Font.Color:=clRed;
  end
 else
  TRzEdit(Sender).Font.Color:=clNavy;

 S1.Max:=Trim(TRzEdit(Sender).Text);
 RzSpinEdit1Change(RzSpinEdit1);
end;

procedure TAddScaleForm.RzEdit4Change(Sender: TObject);
begin
 S1.UnitsName:=TRzEdit(Sender).Text;
end;

procedure TAddScaleForm.RzEdit5Change(Sender: TObject);
begin
 S1.Name:=TRzEdit(Sender).Text;
 RzSpinEdit1Change(RzSpinEdit1);
end;

procedure TAddScaleForm.RzRadioButton1Click(Sender: TObject);
begin
 //existed scale
 if TRzRadioButton(Sender).Checked then
  begin
   ComboBox1.Enabled:=True;
   ComboBox4.Enabled:=False;   //new scale kind
   RzEdit5.Enabled:=False;     //new scale name
   RzSpinEdit1.Enabled:=False;  //cnt
   RzEdit1.Enabled:=False;    //min
   RzEdit2.Enabled:=False;    //max
   RzRadioButton2.Checked:=False;
   if ComboBox1.Items.Count>0 then ComboBox1.ItemIndex:=0;

   ComboBox1Change(ComboBox1);
  end;

end;

procedure TAddScaleForm.RzRadioButton2Click(Sender: TObject);
label l1;
var
 i : Integer;
begin
 //new scale
 if TRzRadioButton(Sender).Checked then
  begin
   ComboBox4.Enabled:=True;   //new scale kind
   RzEdit5.Enabled:=True;     //new scale name
   RzSpinEdit1.Enabled:=True; //cnt
   RzEdit1.Enabled:=True;    //min
   RzEdit2.Enabled:=True;    //max
   ComboBox1.Enabled:=False;

     S1:=TFScale.Create;
     S1.Init;
     i:=0;
l1:  S1.Name:='F'+IntToStr(i)+'-'+ScN;
     if KB2.IndexOfFScale(S1.Name)<>-1 then
      begin
       inc(i);
       goto l1;
      end;

   RzEdit5.Text:=S1.Name;
   S1.Min:='0'; RzEdit1.Text:=S1.Min;
   S1.Max:='1'; RzEdit2.Text:=S1.Max;
   S1.Len:=2; RzSpinEdit1.Text:=IntToStr(S1.Len);
   ComboBox4.ItemIndex:=0; ComboBox4Change(ComboBox4);
   RzRadioButton1.Checked:=False;
  end;
end;

procedure TAddScaleForm.RzSpinEdit1Change(Sender: TObject);
var
 i,n : Integer;
 tWC : TScrollBox;
begin
 S1.Len:=StrToInt(RzSpinEdit1.Text);
 if (S1.Len<>0)and(S1.Max<>'0')and(ComboBox4.ItemIndex=0) then
  begin
   if RzRadioButton2.Checked then i:=1 else i:=0; //edit the scale values
   S1.ShowEditPanelsForScale(ScrollBox1,i);
   //order functions
   tWC:=ScrollBox1;
   for i := 0 to tWC.ComponentCount-1 do
    begin
     TRzSpinEdit(tWC.Components[i].Components[3]).OnChange:=
      SpinEditChange;
     TEdit(tWC.Components[i].Components[0]).OnChange:=
      EditChange;

      for n := 1 to tWC.Components[i].Components[1].ComponentCount-1 do
       begin
         //panels - tables - cells - edit
         //val
         TEdit(tWC.Components[i].Components[1].Components[n].Components[0]).OnChange:=
          ValEditChange;
         //prob
         TEdit(tWC.Components[i].Components[1].Components[n].Components[1]).OnChange:=
          ScaleEditChange;
       end;
    end;
  end;
end;

procedure TAddScaleForm.TabSheet1Show(Sender: TObject);
begin
  Caption:=' '+MainForm.LS('Describing a fuzzy variable');
  MainForm.ReloadHelpMessage(ScrollBox3,401);

  RzButton2.Caption:=MainForm.LS('Ok');
  RzButton3.Enabled:=False;
end;

procedure TAddScaleForm.Memo1Change(Sender: TObject);
begin
 S1.Description:=TMemo(Sender).Text;
end;

end.
