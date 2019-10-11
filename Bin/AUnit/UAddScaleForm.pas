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
  UPKBClass, Chart;

type
  TAddScaleForm = class(TForm)
    Image1: TImage;
    RzPageControl1: TRzPageControl;
    TabSheet1: TRzTabSheet;
    GroupBox3: TGroupBox;
    RzPanel4: TRzPanel;
    RzLabel7: TRzLabel;
    RzEdit2: TRzEdit;
    RzPanel9: TRzPanel;
    Memo1: TMemo;
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
    GroupBox1: TGroupBox;
    RzPanel8: TRzPanel;
    RzLabel17: TRzLabel;
    ComboBox1: TComboBox;
    ComboBox2: TComboBox;
    GroupBox6: TGroupBox;
    RzPanel10: TRzPanel;
    RzLabel4: TRzLabel;
    RzEdit1: TRzEdit;
    RzLabel18: TRzLabel;
    RzEdit3: TRzEdit;
    GroupBox5: TGroupBox;
    ScrollBox4: TScrollBox;
    procedure RzButton2Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure ComboBox2Change(Sender: TObject);
    procedure ComboBox1Change(Sender: TObject);
    procedure RzButton1Click(Sender: TObject);
    procedure TabSheet1Show(Sender: TObject);
    procedure TabSheet2Show(Sender: TObject);
    procedure RzButton3Click(Sender: TObject);
    procedure RzEdit3Change(Sender: TObject);
    procedure RzEdit1Change(Sender: TObject);
    procedure ScaleEditChange(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
   S1 : TFScale; //fuzzy scale
   KB2 : TKnowledgeBase;
  end;

var
  AddScaleForm: TAddScaleForm;

implementation

uses MAIN, USTDIClass;

{$R *.dfm}
procedure TAddScaleForm.ScaleEditChange(Sender: TObject);
Function RefreshChart(C:TChart;nl,vl:TStringList):Integer;
var
 i : Integer;
 tmTs1 : TStringList;
 f1,f2 : Double;
begin
  C.Series[0].Clear;
//  tmTs:=TStringList.Create;
//  tmTs.Delimiter:=';';
//  tmTs.DelimitedText:=s;
  for i := 0 to nl.Count-1 do
   begin
    f1:=0;f2:=0;
    tmTs1:=TStringList.Create;
    tmTs1.Delimiter:='-';
    tmTs1.DelimitedText:=nl.ValueFromIndex[i];
    TryStrToFloat(Trim(tmTs1.Strings[0]),f1);
    TryStrToFloat(vl.Strings[i],f2);
    C.Series[0].AddXY(f1,f2,'',clRed);
   end;
  TryStrToFloat(Trim(tmTs1.Strings[1]),f1);
  C.Series[0].AddXY(f1,0,'',clRed);
end;

var
 i1,i2 : Integer;
 f1 : Double;
 s : string;
begin
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

 TStringList(S1.ListOfValues.Objects[i1]).Strings[i2]:=
  Trim(TEdit(Sender).Text);

 //refresh the chart
 RefreshChart(
  TChart(
   TRzPanel(TEdit(Sender).Parent.Parent.Parent).Components[
   TEdit(Sender).Parent.Parent.ComponentIndex+1]
   ),
    S1.ListOfNames,TStringList(S1.ListOfValues.Objects[i1]));
end;

procedure TAddScaleForm.ComboBox1Change(Sender: TObject);
var
 i,n : Integer;
 tWC : TWinControl;
begin
 S1.ListOfNames.Clear;
 if ComboBox1.ItemIndex=-1 then
  begin //create empty scale
   n:=StrToInt(ComboBox2.Text);
   for i := 0 to n-1 do
    begin

     S1.ListOfNames.AddObject(
      'Value_'+IntToStr(i)+'='+S1.GetInterval(i,0),nil
      );
    end;
  end
 else //create scale by copy values of existing
  begin
   for i := 0 to TFScale(ComboBox1.Items.Objects[ComboBox1.ItemIndex]).ListOfNames.Count-1 do
    begin
     S1.ListOfNames.AddObject(
      TFScale(ComboBox1.Items.Objects[ComboBox1.ItemIndex]).ListOfNames.Strings[i]
       +'='+S1.GetInterval(i,0),nil
      );
    end;
  end;
 tWC:=ScrollBox4;
 S1.ShowEditPanelsForScale(tWC);

 //order functions
 for i := 0 to tWC.ComponentCount-1 do
  for n := 1 to tWC.Components[i].Components[1].ComponentCount-1 do
         //panels - tables - cells - edit
   TEdit(tWC.Components[i].Components[1].Components[n].Components[1]).OnChange:=
    ScaleEditChange;
end;

procedure TAddScaleForm.ComboBox2Change(Sender: TObject);
begin
 S1.Len:=StrToInt(ComboBox2.Text);
 KB2.LoadScalesToControl(ComboBox1,StrToInt(ComboBox2.Text));
 ComboBox1Change(ComboBox1);
end;

procedure TAddScaleForm.FormCreate(Sender: TObject);
begin
 STDIClass.LoadLocalLang(Self,LangLocaleDir+LangPrefix+'015.lan');
end;

procedure TAddScaleForm.FormShow(Sender: TObject);
begin
 RzEdit2.Text:=S1.Name;
 Memo1.Text:=S1.Description;
 //load exising scales
 KB2.LoadScalesToControl(ComboBox1,StrToInt(ComboBox2.Text))
end;

procedure TAddScaleForm.RzButton1Click(Sender: TObject);
begin
 Close;
end;

procedure TAddScaleForm.RzButton2Click(Sender: TObject);
begin
 case Tag of
  0:begin //edit scale
   if (RzPageControl1.ActivePageIndex=2) then
    begin
//     MainForm.MakeDump('Изменение шаблоа: '+S1.Name,10);
//     MainForm.LoadAList(MainForm.RzListView1);

//     MainForm.TreeView1Click(MainForm.TreeView1);
     Close;
    end
   else
    begin
     RzPageControl1.ActivePageIndex:=
      RzPageControl1.ActivePageIndex+1;
    end;
  end;
  1:begin //add temp
   if (RzPageControl1.ActivePageIndex=2) then
    begin
//     MainForm.MakeDump('Создание шкалы: '+S1.Name,6);
//     MainForm.LoadAList(MainForm.RzListView1);

//     TKnowledgeBase(ComboBox1.Items.Objects[ComboBox1.ItemIndex]).Templates.Add(T1);

//     MainForm.TreeView1.Selected:=
//      T1.AddToTreeView(MainForm.TreeView1,
//       MainForm.TreeView1.Items.Item[0].Item[ComboBox1.ItemIndex].Item[0]);

//     MainForm.TreeView1.Items.Item[0].Item[ComboBox1.ItemIndex].Item[0].Text:=
//      MainForm.PutChildCount(MainForm.TreeView1.Items.Item[0].Item[ComboBox1.ItemIndex].Item[0]);
//     MainForm.TreeView1Click(MainForm.TreeView1);
     Close;
    end
   else
    begin
     S1.Name:=RzEdit2.Text;
     S1.Description:=Memo1.Text;

     RzPageControl1.ActivePageIndex:=
      RzPageControl1.ActivePageIndex+1;
    end;
  end;
 end; //end case
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
begin
 TEdit(Sender).Text:=StringReplace(Trim(TEdit(Sender).Text),'.',',',[rfReplaceAll]);
 s:=TEdit(Sender).Text;
 f1:=0;
 TryStrToFloat(s,f1);
 if ((f1=0)and(s<>'0'))or(s<S1.Min) then
  begin
   TEdit(Sender).Text:='0';
   TEdit(Sender).Font.Color:=clRed;
  end
 else
  TEdit(Sender).Font.Color:=clNavy;

 S1.Max:=Trim(TRzEdit(Sender).Text);
end;

procedure TAddScaleForm.RzEdit3Change(Sender: TObject);
var
 s : string;
 f1 : Double;
begin
 TEdit(Sender).Text:=StringReplace(Trim(TEdit(Sender).Text),'.',',',[rfReplaceAll]);
 s:=TEdit(Sender).Text;
 f1:=0;
 TryStrToFloat(s,f1);
 if ((f1=0)and(s<>'0'))or(s>S1.Max) then
  begin
   TEdit(Sender).Text:='0';
   TEdit(Sender).Font.Color:=clRed;
  end
 else
  TEdit(Sender).Font.Color:=clNavy;

 S1.Min:=Trim(TRzEdit(Sender).Text);
end;

procedure TAddScaleForm.TabSheet1Show(Sender: TObject);
begin
 if Tag=1 then
  begin
   Caption:=' '+MainForm.LS('Create a new scale');
//   MainForm.ReloadHelpMessage(ScrollBox3,34)
  end
   else
    begin
     Caption:=' '+MainForm.LS('Edit the scale');
//     MainForm.ReloadHelpMessage(ScrollBox3,35);
    end;
// MainForm.ReloadHelpMessage(ScrollBox3,81);

 if S1=nil then
  begin
   S1:=TFScale.Create;
   S1.Init;
 //  T1.ID:=TKnowledgeBase(ComboBox1.Items.Objects[ComboBox1.ItemIndex]).NewID('T');
 //  T1.Name:='Шаблон-факта-'+T1.ID;
 //  T1.Description:='Описание шаблона факта '+T1.ID;
  end;

  RzButton2.Caption:=MainForm.LS('Next >>');
//    RzButton2.Hint:='Продложить процесс описания факта (прецедента)';
  RzButton3.Enabled:=False;
end;

procedure TAddScaleForm.TabSheet2Show(Sender: TObject);
begin
  RzButton3.Enabled:=True;
  RzButton2.Caption:=MainForm.LS('Ok');

  S1.Len:=StrToInt(ComboBox2.Text);
  S1.Min:=Trim(RzEdit3.Text);
  S1.Max:=Trim(RzEdit1.Text);
  ComboBox1Change(ComboBox1);
end;

end.
