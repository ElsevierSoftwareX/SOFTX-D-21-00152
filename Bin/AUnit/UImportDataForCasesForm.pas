unit UImportDataForCasesForm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Mask, RzEdit, RzLabel, RzTabs, RzButton, ExtCtrls, RzPanel,
  RzSpnEdt, Buttons, Grids, RzGrids, RzRadChk;

type
  TImportDataForCasesForm = class(TForm)
    Image1: TImage;
    RzPanel6: TRzPanel;
    ScrollBox3: TScrollBox;
    RzPanel1: TRzPanel;
    RzButton1: TRzButton;
    RzButton2: TRzButton;
    RzButton3: TRzButton;
    RzPageControl1: TRzPageControl;
    TabSheet1: TRzTabSheet;
    GroupBox1: TGroupBox;
    GroupBox3: TGroupBox;
    ListBox1: TListBox;
    TabSheet3: TRzTabSheet;
    GroupBox4: TGroupBox;
    RzEdit2: TRzEdit;
    GroupBox7: TGroupBox;
    ScrollBox2: TScrollBox;
    RzPanel2: TRzPanel;
    RzLabel3: TRzLabel;
    ComboBox2: TComboBox;
    RzPanel4: TRzPanel;
    RzLabel1: TRzLabel;
    ComboBox3: TComboBox;
    OpenDialog1: TOpenDialog;
    RzPanel5: TRzPanel;
    RzLabel2: TRzLabel;
    RzLabel5: TRzLabel;
    ComboBox4: TComboBox;
    RzSpinEdit2: TRzSpinEdit;
    ScrollBox4: TScrollBox;
    RzStringGrid2: TRzStringGrid;
    GroupBox5: TGroupBox;
    RzBitBtn1: TRzBitBtn;
    RzCheckBox1: TRzCheckBox;
    TabSheet2: TRzTabSheet;
    GroupBox2: TGroupBox;
    GroupBox6: TGroupBox;
    ScrollBox1: TScrollBox;
    RzPanel3: TRzPanel;
    RzLabel4: TRzLabel;
    ComboBox1: TComboBox;
    RzPanel7: TRzPanel;
    RzLabel6: TRzLabel;
    ComboBox5: TComboBox;
    procedure FormActivate(Sender: TObject);
    procedure RzButton1Click(Sender: TObject);
    procedure RzButton2Click(Sender: TObject);
    procedure RzButton3Click(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure TabSheet1Show(Sender: TObject);
    procedure ComboBox4Change(Sender: TObject);
    procedure ComboBox2Change(Sender: TObject);
    procedure ComboBox3Change(Sender: TObject);
    procedure TabSheet3Show(Sender: TObject);
    procedure RzCheckBox1Click(Sender: TObject);
    procedure ComboBox1Change(Sender: TObject);
    procedure ComboBox5Change(Sender: TObject);
    procedure TabSheet2Show(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    procedure MarkCurrentNavPanel(i:Integer);
    function  LoadDataFromTable(D:String;RowCount:integer):Integer;
  end;

var
  ImportDataForCasesForm: TImportDataForCasesForm;
  NavPanelsIndexList : TStringList;

implementation

uses MAIN, USTDIClass, UPKBClass, uTrans;

{$R *.dfm}
//----------------------------------------------------------------------
procedure TImportDataForCasesForm.MarkCurrentNavPanel(i:Integer);
var
 c : Integer;
begin
 for c := 0 to NavPanelsIndexList.Count-1 do
  begin
   TRzPanel(NavPanelsIndexList.Objects[c]).BorderWidth:=1;
   TRzPanel(NavPanelsIndexList.Objects[c]).BorderColor:=clWhite;
  end;
 c:=NavPanelsIndexList.IndexOf(IntToStr(i));
 if c>-1 then
  begin
   TRzPanel(NavPanelsIndexList.Objects[c]).BorderWidth:=3;
   TRzPanel(NavPanelsIndexList.Objects[c]).BorderColor:=clTeal;
  end;
end;
//----------------------------------------------------------------------
function  TImportDataForCasesForm.LoadDataFromTable(D:String;RowCount:integer):Integer;
var
 i,j : Integer;
 tmTs : TStringList;
 s : string;
begin
 tmTs:=TStringList.Create;
 for i := 0 to ListBox1.Count-1 do
  begin
   tmTs.Clear;
   s:=ListBox1.Items[i];
   if D<>' ' then s:=StringReplace(s,' ','_',[rfReplaceAll]);
   tmTs.Delimiter:=D[1];
   tmTs.DelimitedText:=s;
   if i=0 then
    begin
     RzStringGrid2.ColCount:=tmTs.Count;
     for j := 0 to tmTs.Count-1 do
      RzStringGrid2.Cells[j,0]:='Row'+IntToStr(j+1);
    end;

   for j := 0 to tmTs.Count-1 do
    begin
     RzStringGrid2.Cells[j,i+1]:=tmTs.Strings[j];
    end;
   if i=10 then Break;

  end;
 RzStringGrid2.Visible:=True;
end;
//----------------------------------------------------------------------
procedure TImportDataForCasesForm.ComboBox1Change(Sender: TObject);
var
 i  : Integer;
 tKB  : TKnowledgeBase;
 s : string;
begin
 if TComboBox(Sender).Items.Count<>0 then
  begin
   if TComboBox(Sender).Items.IndexOf(TComboBox(Sender).Text)=-1 then
    TComboBox(Sender).ItemIndex:=0;

   tKB:=TKnowledgeBase(
    TComboBox(Sender).Items.Objects[TComboBox(Sender).ItemIndex]
     );

   ComboBox5.Items.Clear;
   if tKB.Kind=0 then //rule base
    begin
      for i:=0 to tKB.GRules.Count-1 do
        begin
         s:=TGRule(tKB.GRules.Items[i]).Description;
         if s<>'' then s:=' ('+s+')';
         ComboBox5.Items.AddObject(
          '['+TGRule(tKB.GRules.Items[i]).ID+']: '+
          TGRule(tKB.GRules.Items[i]).Name+s,
           TGRule(tKB.GRules.Items[i])
           );
        end;

      ComboBox5.OnChange:=ComboBox5Change;
      if ComboBox5.Items.Count>0 then
       ComboBox5.ItemIndex:=0
        else
         ComboBox5.ItemIndex:=-1;
      ComboBox5Change(ComboBox5);
    end
   else
    begin
     //clear
     STDIClass.ReleaseObjects(ScrollBox1);
     //block
    end;
  end;
end;
//----------------------------------------------------------------------
procedure TImportDataForCasesForm.ComboBox2Change(Sender: TObject);
var
 i  : Integer;
 tKB  : TKnowledgeBase;
 s : string;
begin
 if TComboBox(Sender).Items.Count<>0 then
  begin
   if TComboBox(Sender).Items.IndexOf(TComboBox(Sender).Text)=-1 then
    TComboBox(Sender).ItemIndex:=0;

   tKB:=TKnowledgeBase(
    TComboBox(Sender).Items.Objects[TComboBox(Sender).ItemIndex]
     );

   ComboBox3.Items.Clear;
    for i:=0 to tKB.Templates.Count-1 do
      begin
       s:=TTemplate(tKB.Templates.Items[i]).Description;
       if s<>'' then s:=' ('+s+')';
       ComboBox3.Items.AddObject(
        '['+TTemplate(tKB.Templates.Items[i]).ID+']: '+
        TTemplate(tKB.Templates.Items[i]).Name+s,
         TTemplate(tKB.Templates.Items[i])
         );
      end;

    ComboBox3.OnChange:=ComboBox3Change;
    if ComboBox3.Items.Count>0 then
     ComboBox3.ItemIndex:=0
      else
       ComboBox3.ItemIndex:=-1;

  //  if ComboBox3.OnChange()=nil then

    ComboBox3Change(ComboBox3);
  end;
end;
//------------------------------------------------------------------------
procedure TImportDataForCasesForm.ComboBox3Change(Sender: TObject);
var
 i  : Integer;
 T  : Integer;
 T1 : TTemplate;
 tmTs,tmTs1 : TStringList;

// Tg  :  TRzGroupBox;
 W : Integer;

 j : Integer;
 tmWC1 : TWinControl;
 tmP,tmP1 : TRzPanel;
begin
T1:=nil;
tmWC1:=ScrollBox2;
tmWC1.Visible:=False;
tmTs:=TStringList.Create;
T:=15;

if TComboBox(Sender).ItemIndex>-1 then
 T1:=TTemplate(TComboBox(Sender).Items.Objects[TComboBox(Sender).ItemIndex]);
 if T1<>nil then
  try
    STDIClass.ReleaseObjects(tmWC1);
    for j := 0 to RzStringGrid2.ColCount-1 do
     tmTs.Add(RzStringGrid2.Cells[j,0]+' ('+RzStringGrid2.Cells[j,1]+'..)');

    //for name
    //blank panel (delimeter)
     tmP:=STDIClass.AddRzPanel(1,10,20,460,
      tmWC1,1000,alTop,clCream,bvNone,bvNone,bsNone,
       STDIClass.LoadSingleString('Name:',LangLocaleDir+LangPrefix+'012.lan'));
     tmP.Alignment:=taLeftJustify;

     tmP:=STDIClass.AddRzPanel(22,1,22,460,
      tmWC1,1000,alTop,clCream,bvNone,bvNone,bsNone,'');

     tmP1:=STDIClass.AddRzPanel(1,1,10,460-180,
      tmP,1000,alLeft,clMoneyGreen,bvNone,bvNone,bsSingle,
      'Name');
     tmP1.Height:=20*(((Length('Name')*7) div Round(tmP.Width/3))+1);
     if tmP.Height<tmP1.Height then tmP.Height:=tmP1.Height;

      STDIClass.AddCombo(tmP,0,280,
       150,'');
      TComboBox(tmP.Components[tmP.ComponentCount-1]).Items.Text:=
        tmTs.Text;
      TComboBox(tmP.Components[tmP.ComponentCount-1]).Items.Insert(
       0,'auto');
      TComboBox(tmP.Components[tmP.ComponentCount-1]).Tag:=
        1000;

      T:=T+5;
    //blank panel (delimeter)
//     tmP:=STDIClass.AddRzPanel(1,10,5,460,
//      tmWC1,1000,alTop,clCream,bvNone,bvNone,bsNone,'');
    //blank panel (delimeter)
     tmP:=STDIClass.AddRzPanel(42,10,20,460,
      tmWC1,1000,alTop,clCream,bvNone,bvNone,bsNone,
       STDIClass.LoadSingleString('Properties/slots:',LangLocaleDir+LangPrefix+'012.lan'));
     tmP.Alignment:=taLeftJustify;

    //for template slots
    for i:=0 to T1.Slots.Count-1 do
     begin
       tmP:=STDIClass.AddRzPanel((i+2)*10+62,1,22,460,
        tmWC1,i,alTop,clCream,bvNone,bvNone,bsNone,'');

       tmP1:=STDIClass.AddRzPanel(1,1,10,460-180,
        tmP,i,alLeft,clCream,bvNone,bvNone,bsSingle,
         TSlot(T1.Slots.Items[i]).Name);
       tmP1.Height:=20*(((Length(TSlot(T1.Slots.Items[i]).Name)*7) div Round(tmP.Width/3))+1);
       if tmP.Height<tmP1.Height then tmP.Height:=tmP1.Height;

        STDIClass.AddCombo(tmP,0,280,
         150,'');
        TComboBox(tmP.Components[tmP.ComponentCount-1]).Items.Text:=
          tmTs.Text;
        TComboBox(tmP.Components[tmP.ComponentCount-1]).Tag:=i;
      T:=T+5;

    end;
//  tmTs2.Free;
  if ComboBox3.ItemIndex=-1 then RzButton2.Enabled:=False
      else RzButton2.Enabled:=True;
 except
//  ScrollBox2.Visible:=True;
 end;
 tmWC1.Visible:=True;
end;

procedure TImportDataForCasesForm.ComboBox4Change(Sender: TObject);
var
 Delimeter : string;
begin
 //
 Delimeter:=Trim(ComboBox4.Text);
 if (Delimeter='spacing')or(Delimeter='??????') then Delimeter:=#32;
 if (Delimeter='tabstop')or(Delimeter='?????????') then Delimeter:=#9;

 LoadDataFromTable(Delimeter,10);
 ComboBox3Change(ComboBox3);
end;

//----------------------------------------------------------------------
procedure TImportDataForCasesForm.ComboBox5Change(Sender: TObject);
function ShowSlots(T1:TTemplate;tmWC1:TWinControl;s:string;T,delta:Integer):Integer;
var
 i : Integer;
 tmP,tmP1 : TRzPanel;
begin
    //to procedure
    //for template slots
    for i:=0 to T1.Slots.Count-1 do
     begin
       tmP:=STDIClass.AddRzPanel(T,1,22,460,
        tmWC1,i,alTop,clCream,bvNone,bvNone,bsNone,'');

       tmP1:=STDIClass.AddRzPanel(1,1,10,460-180,
        tmP,i+delta,alLeft,clCream,bvNone,bvNone,bsSingle,
         TSlot(T1.Slots.Items[i]).Name);
       tmP1.Height:=20*(((Length(TSlot(T1.Slots.Items[i]).Name)*7) div Round(tmP.Width/3))+1);
       if tmP.Height<tmP1.Height then tmP.Height:=tmP1.Height;

        STDIClass.AddCombo(tmP,0,280,
         150,'');
        TComboBox(tmP.Components[tmP.ComponentCount-1]).Items.Text:=
          s;
        TComboBox(tmP.Components[tmP.ComponentCount-1]).Tag:=i+delta;
       T:=T+tmP1.Height+5;
     end;
 Result:=T;
end;

var
 i  : Integer;
 T  : Integer;
 T1 : TTemplate;
 G1 : TGRule;
 tmTs,tmTs1 : TStringList;

// Tg  :  TRzGroupBox;
 W : Integer;

 j : Integer;
 tmWC1 : TWinControl;
 tmP,tmP1 : TRzPanel;
begin
T1:=nil;
G1:=nil;
tmWC1:=ScrollBox1;
tmWC1.Visible:=False;
tmTs:=TStringList.Create;
T:=15;

if TComboBox(Sender).ItemIndex>-1 then
 G1:=TGRule(TComboBox(Sender).Items.Objects[TComboBox(Sender).ItemIndex]);
 if G1<>nil then
  try
    STDIClass.ReleaseObjects(tmWC1);
    for j := 0 to RzStringGrid2.ColCount-1 do
     tmTs.Add(RzStringGrid2.Cells[j,0]+' ('+RzStringGrid2.Cells[j,1]+'..)');

    //for name
    //blank panel (delimeter)
     tmP:=STDIClass.AddRzPanel(1,10,20,460,
      tmWC1,1000,alTop,clCream,bvNone,bvNone,bsNone,
       STDIClass.LoadSingleString('Name:',LangLocaleDir+LangPrefix+'012.lan'));
     tmP.Alignment:=taLeftJustify;

     tmP:=STDIClass.AddRzPanel(22,1,22,460,
      tmWC1,1000,alTop,clCream,bvNone,bvNone,bsNone,'');

     tmP1:=STDIClass.AddRzPanel(1,1,10,460-180,
      tmP,1000,alLeft,clMoneyGreen,bvNone,bvNone,bsSingle,
      'Name');
     tmP1.Height:=20*(((Length('Name')*7) div Round(tmP.Width/3))+1);
     if tmP.Height<tmP1.Height then tmP.Height:=tmP1.Height;

      STDIClass.AddCombo(tmP,0,280,
       150,'');
      TComboBox(tmP.Components[tmP.ComponentCount-1]).Items.Text:=
        tmTs.Text;
      TComboBox(tmP.Components[tmP.ComponentCount-1]).Items.Insert(
       0,'auto');
      TComboBox(tmP.Components[tmP.ComponentCount-1]).Tag:=
        1000;

      T:=45;
    //blank panel (delimeter)
//     tmP:=STDIClass.AddRzPanel(1,10,5,460,
//      tmWC1,1000,alTop,clCream,bvNone,bvNone,bsNone,'');
    //blank panel (delimeter)
     tmP:=STDIClass.AddRzPanel(T,10,20,460,
      tmWC1,1000,alTop,clCream,bvNone,bvNone,bsNone,
       STDIClass.LoadSingleString('Conditions1',LangLocaleDir+LangPrefix+'012.lan')+':');
     tmP.Alignment:=taLeftJustify;

   T:=65;
   for i := 0 to G1.Conditions.Count-1 do
    begin
     tmP:=STDIClass.AddRzPanel(T,10,20,460,
      tmWC1,10000+i*100,alTop,clSkyBlue,bvNone,bvNone,bsNone,
       '  [C'+IntToStr(i+1)+']: '+TTemplate(G1.Conditions.Items[i]).Name);
     tmP.Alignment:=taLeftJustify;
     T:=ShowSlots(TTemplate(G1.Conditions.Items[i]),tmWC1,tmTs.Text,T+20,10000+i*100);
    end;

     tmP:=STDIClass.AddRzPanel(T+5,10,20,460,
      tmWC1,1000,alTop,clCream,bvNone,bvNone,bsNone,
       STDIClass.LoadSingleString('Actions1',LangLocaleDir+LangPrefix+'012.lan')+':');
     tmP.Alignment:=taLeftJustify;

   T:=T+25;
   for i := 0 to G1.Actions.Count-1 do
    begin
     tmP:=STDIClass.AddRzPanel(T+2,10,20,460,
      tmWC1,20000+i*100,alTop,$00B3B3FF,bvNone,bvNone,bsNone,
       '  [A'+IntToStr(i+1)+']: '+TTemplate(G1.Actions.Items[i]).Name);
     tmP.Alignment:=taLeftJustify;

     T:=ShowSlots(TTemplate(G1.Actions.Items[i]),tmWC1,tmTs.Text,T+20,20000+i*100);
    end;

  if ComboBox5.ItemIndex=-1 then RzButton2.Enabled:=False
      else RzButton2.Enabled:=True;
 except
//  ScrollBox2.Visible:=True;
 end;
 tmWC1.Visible:=True;
end;

//----------------------------------------------------------------------
procedure TImportDataForCasesForm.FormActivate(Sender: TObject);
var
 T,i  : Integer;
 tmP : TRzPanel;
 tmTs : TStringList;

 tKB  : TKnowledgeBase;
begin
  T:=80;
  tmTs:=TStringList.Create;
   tmTs.Add('0='+MainForm.LS('STEP 1:')+' '+
    MainForm.LS('Select a file for import'));
   tmTs.Add('1='+MainForm.LS('STEP 2:')+' '+
    MainForm.LS('Define relationships for template slots and table columns'));

   for i := 0 to tmTs.Count-1 do
   begin
    tmP:=STDIClass.AddRzPanel(T,8,0,110,
     Self,0,alCustom,clCream,bvNone,bvNone,bsNone,
      tmTs.ValueFromIndex[i]);
    tmP.Font.Style:=[fsBold];
//    tmP.Font.Color:=clNavy;
    tmP.Transparent:=True;
    T:=tmP.Top+tmP.Height+3;
    NavPanelsIndexList.AddObject(tmTs.Names[i],tmP);
   end;
 TabSheet1Show(TabSheet1);

  tKB:=TKnowledgeBase.Create;
  tKB.Init;

 if Tag=1 then   //for cases
  begin
  ComboBox2.Items.Clear;
   for i:=0 to KBList.Count-1 do
//    if ((TKnowledgeBase(KBList.Items[i]).Kind=1)and(Tag=3))or(Tag<>3) then
//    if (TKnowledgeBase(KBList.Items[i]).Kind=1) then
     ComboBox2.Items.AddObject(
      TKnowledgeBase(KBList.Items[i]).Name,
       TKnowledgeBase(KBList.Items[i])
       );

    ComboBox2.Enabled:=True;
    if (ComboBox2.Items.Count>0) then
     begin
       ComboBox2.ItemIndex:=0;
       MainForm.ImageList1.GetIcon(20,Self.Icon);

      if ComboBox2.ItemIndex>KBList.Count-1 then
       begin
        tKB.Name:=MainForm.LS('New knowledge base');
        tKB.Kind:=0;
        KBList.Add(tKB);
       end;
      ComboBox2Change(ComboBox2);
     end
   end; //end cases

 if Tag=2 then   //for rules
  begin
  ComboBox1.Items.Clear;
   for i:=0 to KBList.Count-1 do
//    if ((TKnowledgeBase(KBList.Items[i]).Kind=1)and(Tag=3))or(Tag<>3) then
//    if (TKnowledgeBase(KBList.Items[i]).Kind=0) then
     ComboBox1.Items.AddObject(
      TKnowledgeBase(KBList.Items[i]).Name,
       TKnowledgeBase(KBList.Items[i])
       );

    ComboBox1.Enabled:=True;
    if (ComboBox1.Items.Count>0) then
     begin
       ComboBox1.ItemIndex:=0;
       MainForm.ImageList1.GetIcon(20,Self.Icon);

      if ComboBox1.ItemIndex>KBList.Count-1 then
       begin
        tKB.Name:=MainForm.LS('New knowledge base');
        tKB.Kind:=0;
        KBList.Add(tKB);
       end;
      ComboBox1Change(ComboBox1);
     end
   end; //end rules

 OnActivate:=nil;
end;

procedure TImportDataForCasesForm.FormCreate(Sender: TObject);
var
 i : Integer;
begin
 for i := 0 to RzPageControl1.PageCount-1 do
  RzPageControl1.Pages[i].TabVisible:=False;

  STDIClass.LoadLocalLang(Self,LangLocaleDir+LangPrefix+'020.lan');

  NavPanelsIndexList:=TStringList.Create;
end;

procedure TImportDataForCasesForm.RzButton1Click(Sender: TObject);
begin
 MainForm.LoadTree(KBList,MainForm.TreeView1);
 Close;
end;

procedure TImportDataForCasesForm.RzButton2Click(Sender: TObject);
//-----------------------------------------------------------------------------
function CreateFacts(rel:TStringList):Integer;
var
 i,j,cnt : Integer;
 F : TFact;
 tmSlot : TSlot;
 tmFact : TFact;
 T1 : TTemplate;
 tmTs : TStringList;
 s,D : string;
begin
if ComboBox3.ItemIndex<>-1 then
 try
 cnt:=0;
  T1:=TTemplate(ComboBox3.Items.Objects[ComboBox3.ItemIndex]);
  tmTs:=TStringList.Create;
  i:=StrToInt(RzSpinEdit2.Text)-1;

  D:=Trim(ComboBox4.Text);
  if (D='spacing')or(D='??????') then D:=#32;
  if (D='tabstop')or(D='?????????') then D:=#9;

  for i := i to ListBox1.Items.Count-1 do
   begin

     //-----------------------------
     prP.Caption:='Processing'+' ('+
      IntToStr(Round(100*i/ListBox1.Count))
       +'%)';
     Application.ProcessMessages;
     //-----------------------------

    tmFact:=TFact.Create;
    tmFact.Init;
    tmFact.GetSlotsFrom(T1);
    tmFact.ID:=TKnowledgeBase(ComboBox2.Items.Objects[ComboBox2.ItemIndex]).NewID('F');

    //get delimetered line form file
     tmTs.Clear;
     s:=ListBox1.Items[i];

     if D<>' ' then s:=StringReplace(s,' ','_',[rfReplaceAll]);
     tmTs.Delimiter:=D[1];
     tmTs.DelimitedText:=s;

      //put values from delimetered file with accordance of relationships
      for j := 0 to rel.Count-1 do
       begin
        if rel.Names[j]='1000' then
         begin
          if rel.ValueFromIndex[j]='0' then  //autoincrement
           tmFact.Name:=
            TKnowledgeBase(ComboBox2.Items.Objects[ComboBox2.ItemIndex]).
              GetUniqueName(T1.Name,'F',tmFact.ShortName)
          else
           tmFact.Name:=
            tmTs.Strings[StrToInt(rel.ValueFromIndex[j])-1];
         end
        else
         begin
          TSlot(tmFact.Slots.Items[StrToInt(rel.Names[j])]).Value:=
           tmTs.Strings[StrToInt(rel.ValueFromIndex[j])]
         end;
       end;

    tmFact.GetHash;
    if TKnowledgeBase(ComboBox2.Items.Objects[ComboBox2.ItemIndex]).
     IndexOfFactByHash(tmFact.Hash)=-1 then
      begin
        TKnowledgeBase(ComboBox2.Items.Objects[ComboBox2.ItemIndex]).Facts.Add(tmFact);
        Inc(cnt);

        //update data in the main form explorer
         MainForm.TreeView1.Selected:=
          tmFact.AddToTreeView(MainForm.TreeView1,
           MainForm.TreeView1.Items.Item[0].Item[ComboBox2.ItemIndex].Item[1]);

         MainForm.TreeView1.Items.Item[0].Item[ComboBox2.ItemIndex].Item[1].Text:=
          MainForm.PutChildCount(MainForm.TreeView1.Items.Item[0].Item[ComboBox2.ItemIndex].Item[1]);
         MainForm.TreeView1Click(MainForm.TreeView1);
      end;
   end;
  MainForm.LoadTree(KBList,MainForm.TreeView1);
  Result:=cnt; //ok
 except
  Result:=-1; //fail
 end;
end;
//-----------------------------------------------------------------------------
function CreateRules(rel:TStringList):Integer;
var
 i,j,cnt : Integer;
 F : TFact;
 tmSlot : TSlot;
 tmFact : TFact;
 tmRule : TRule;
 G1 : TGRule;
 T1 : TTemplate;
 tmTs : TStringList;
 s,D : string;
begin
if ComboBox5.ItemIndex<>-1 then
 try
 cnt:=0;
  G1:=TGRule(ComboBox5.Items.Objects[ComboBox5.ItemIndex]);
  tmTs:=TStringList.Create;
  i:=StrToInt(RzSpinEdit2.Text)-1;

  D:=Trim(ComboBox4.Text);
  if (D='spacing')or(D='??????') then D:=#32;
  if (D='tabstop')or(D='?????????') then D:=#9;

  for i := i to ListBox1.Items.Count-1 do
   begin
    tmRule:=TRule.Create;
    tmRule.Init;
    tmRule.GetStructureFrom(G1);
    tmRule.ID:=TKnowledgeBase(ComboBox1.Items.Objects[ComboBox1.ItemIndex]).NewID('R');

    //get delimetered line form file
     tmTs.Clear;
     s:=ListBox1.Items[i];
     //-----------------------------
     prP.Caption:='Processing'+' ('+
      IntToStr(Round(100*i/ListBox1.Count))
       +'%)';
     Application.ProcessMessages;
     //-----------------------------
     if D<>' ' then s:=StringReplace(s,' ','_',[rfReplaceAll]);
     tmTs.Delimiter:=D[1];
     tmTs.DelimitedText:=s;

      //put values from delimetered file with accordance of relationships
      for j := 0 to rel.Count-1 do
       begin
        //rule name ----------------------------------------------
        if rel.Names[j]='1000' then
         begin
          if rel.ValueFromIndex[j]='0' then  //autoincrement
           tmRule.Name:=
            TKnowledgeBase(ComboBox1.Items.Objects[ComboBox1.ItemIndex]).
              GetUniqueName(G1.Name,'R',tmRule.ShortName)
          else
           tmRule.Name:=
            tmTs.Strings[StrToInt(rel.ValueFromIndex[j])-1];
          tmRule.ShortName:=Translit.Trans(tmRule.Name, Translit.FL);
         end
        //---------------------------------------------------------
        else
         //process canditions and actions
         begin
          s:=rel.Names[j];
          if s[1]='1' then //condition
           begin
           //!!! limitation for 9 conditions
            TSlot(
             TCondition(tmRule.Conditions.Items[StrToInt(s[3])]).Fact.
              Slots.Items[StrToInt(s[5])]
               ).Value:=
                tmTs.Strings[StrToInt(rel.ValueFromIndex[j])];
           end;
          if s[1]='2' then //action
           begin
           //!!! limitation for 9 actions
            TSlot(
             TRAction(tmRule.Actions.Items[StrToInt(s[3])]).Fact.
              Slots.Items[StrToInt(s[5])]
               ).Value:=
                tmTs.Strings[StrToInt(rel.ValueFromIndex[j])];
           end;
         end;
       end;

    if tmRule.ClearStructure>-1 then
     begin
      tmRule.GetHash(1);
      if TKnowledgeBase(ComboBox1.Items.Objects[ComboBox1.ItemIndex]).
       IndexOfRuleByHash(tmRule.Hash)=-1 then
        begin
          TKnowledgeBase(ComboBox1.Items.Objects[ComboBox1.ItemIndex]).Rules.Add(tmRule);
          Inc(cnt);

          //update data in the main form explorer
           MainForm.TreeView1.Selected:=
            tmRule.AddToTreeView(MainForm.TreeView1,
             MainForm.TreeView1.Items.Item[0].Item[ComboBox1.ItemIndex].Item[3]);
           MainForm.TreeView1.Selected.ImageIndex:=3;
        end;
      end;
//     MainForm.TreeView1.Items.Item[0].Item[ComboBox1.ItemIndex].Item[3].Text:=
//      MainForm.PutChildCount(MainForm.TreeView1.Items.Item[0].Item[ComboBox1.ItemIndex].Item[3]);
//     MainForm.TreeView1Click(MainForm.TreeView1);
   end;
//  MainForm.TreeView1.Items.Item[0].Item[ComboBox1.ItemIndex].Item[3].Text:=
 //  MainForm.PutChildCount(MainForm.TreeView1.Items.Item[0].Item[ComboBox1.ItemIndex].Item[3]);
//  MainForm.RebulidImagesOnTree(MainForm.TreeView1);
  MainForm.LoadTree(KBList,MainForm.TreeView1);
  Result:=cnt; //ok
 except
  Result:=-1; //fail
 end;
end;
//-----------------------------------------------------------------------------
Function IndexOfGRulebyStructure(G:TGRule;KB2:TKnowledgeBase):Integer;
var
 i : Integer;
begin
 Result:=-1;
 for i := 0 to KB2.GRules.Count-1 do
  begin
   if G.isEqual(KB2.GRules.Items[i]) then
    begin
     Result:=i;
     Break;
    end;
  end;
end;
//-----------------------------------------------------------------------------
Function IndexOfTemplatebyStructure(T:TTemplate;KB2:TKnowledgeBase):Integer;
var
 i : Integer;
begin
 Result:=-1;
 for i := 0 to KB2.Templates.Count-1 do
  begin
   if T.isEqual(KB2.Templates.Items[i]) then
    begin
     Result:=i;
     Break;
    end;
  end;
end;
//-----------------------------------------------------------------------------
Function GetParts(s:string;var s1,s2:string):Integer;
var
 i : Integer;
begin
 i:=pos('::',s);
 if i=0 then
  begin
   s1:='';
   s2:=s;
  end
 else
  begin
   s1:=Copy(s,1,i-1);
   s2:=Copy(s,i+2,Length(s)-i-1);
  end;
end;
//-----------------------------------------------------------------------------
var
 i,j,c : Integer;
 WC : TWinControl;
 tmP : TRzPanel;

 tmTs : TStringList;
 tmT : TTemplate;
 tmSlot : TSlot;
 tmKB1 : TKnowledgeBase;
 tmGR : TGRule;
 s1,s2,s3 : string;
begin
   tmTs := TStringList.Create;
  //----------------------------------------------------------------------------
  if (RzPageControl1.ActivePageIndex=0) then
    begin
     //add template to kb
     if (Tag=1)and(ComboBox2.Items.Count=0) then
      begin //for cases (facts)
       //create new kb
       tmKB1:=TKnowledgeBase.Create;
       tmKB1.Init;
       tmKB1.Kind:=1;
       tmKB1.Name:='New KB';
       ComboBox2.AddItem(tmKB1.Name,tmKB1);
       ComboBox2.ItemIndex:=0;
       MainForm.TreeView1.Selected:=
        tmKB1.AddToTreeView(MainForm.TreeView1,
         MainForm.TreeView1.Items.Item[0]);
       MainForm.TreeView1.Selected.ImageIndex:=1;
       MainForm.RebulidImagesOnTree(MainForm.TreeView1);
       KBList.Add(tmKB1);
      end;

     if (Tag=2)and(ComboBox1.Items.Count=0) then
      begin //for cases (facts)
       //create new kb
       tmKB1:=TKnowledgeBase.Create;
       tmKB1.Init;
       tmKB1.Kind:=0;
       tmKB1.Name:='New KB';
       ComboBox1.AddItem(tmKB1.Name,tmKB1);
       ComboBox1.ItemIndex:=0;
       MainForm.TreeView1.Selected:=
        tmKB1.AddToTreeView(MainForm.TreeView1,
         MainForm.TreeView1.Items.Item[0]);
       MainForm.TreeView1.Selected.ImageIndex:=1;
       MainForm.RebulidImagesOnTree(MainForm.TreeView1);
       KBList.Add(tmKB1);
      end;

    if Tag=1 then
     begin  //for cases (facts)
       //create a new template
       if RzCheckBox1.Checked then
        begin
         for j := 0 to RzStringGrid2.ColCount-1 do
          begin
           GetParts(RzStringGrid2.Cells[j,1],s1,s2);
           if j=0 then   //create a template
            begin
             tmT:=TTemplate.Create;
             tmT.Init;
             //!!
             tmT.ID:='';
             tmT.Name:=s1;
             if Trim(tmT.Name)='' then tmT.Name:='New template';

             tmT.ShortName:=Translit.Trans(tmT.Name, Translit.FL);
            end;
           if ((pos('Name',s2)=0)and(pos('Naimenovanie',s2)=0)and
            (pos('Nazvanie',s2)=0)and(pos('???',s2)=0)and
             (pos('????????????',s2)=0)) then
               begin
                 tmSlot:=TSlot.Create;
                 tmSlot.Name:=s2;
                 tmSlot.ShortName:=Translit.Trans(tmSlot.Name, Translit.FL);
                 tmSlot.DataType:='String';
                 if tmT.IndexOf(tmSlot.ShortName,-1)=-1 then
                  tmT.Slots.Add(tmSlot);
               end;
          end;

         if ComboBox2.ItemIndex<>-1 then
          begin
           c:=IndexOfTemplatebyStructure(tmT,
            TKnowledgeBase(ComboBox2.Items.Objects[ComboBox2.ItemIndex])
             );
           if c=-1 then  //add new template
            begin
             tmT.ID:=
              TKnowledgeBase(ComboBox2.Items.Objects[ComboBox2.ItemIndex]).NewID('T');
             tmT.Name:=TKnowledgeBase(ComboBox2.Items.Objects[ComboBox2.ItemIndex]).
              GetUniqueName(tmT.Name,'T',tmT.ShortName);
             TKnowledgeBase(ComboBox2.Items.Objects[ComboBox2.ItemIndex]).Templates.Add(tmT);

             ComboBox2Change(ComboBox2);
             MainForm.TreeView1.Selected:=
              tmT.AddToTreeView(MainForm.TreeView1,
               MainForm.TreeView1.Items.Item[0].Item[ComboBox1.ItemIndex].Item[0]);
             MainForm.TreeView1.Selected.ImageIndex:=12;
             MainForm.RebulidImagesOnTree(MainForm.TreeView1);
           end;
          end;
        end;
     end //end facts
    else //for rules
     begin
        //---------------
        //get templates from tables
       if RzCheckBox1.Checked then
        begin
         tmTs.Clear;
         for j := 0 to RzStringGrid2.ColCount-1 do
          begin
           GetParts(RzStringGrid2.Cells[j,1],s1,s2);
           if (s2<>'RuleName') then
            begin
             if (length(s2)>0)and(s2[1]='#') then s3:=' A' else s3:=' C';
             if s1='' then s1:='New template'+s3;

             c:=tmTs.IndexOf(s1);
             if c=-1 then   //create a template
              begin
               tmT:=TTemplate.Create;
               tmT.Init;
               //!!
               tmT.ID:='';
               tmT.Name:=s1;
               tmTs.AddObject(tmT.Name,tmT);
               c:=tmTs.IndexOf(tmT.Name);
  //             if Trim(tmT.Name)='' then tmT.Name:='New template';
  //             tmT.ShortName:=Translit.Trans(tmT.Name, Translit.FL);
              end;

  //           if ((pos('Name',s2)=0)and(pos('Naimenovanie',s2)=0)and
  //            (pos('Nazvanie',s2)=0)and(pos('???',s2)=0)and
  //             (pos('????????????',s2)=0)) then
  //           begin
               tmSlot:=TSlot.Create;
               tmSlot.Name:=StringReplace(s2,'#','',[rfReplaceAll]);
               tmSlot.ShortName:=Translit.Trans(tmSlot.Name, Translit.FL);
               tmSlot.DataType:='String';

               if tmT.IndexOf(tmSlot.ShortName,-1)=-1 then
                tmT.Slots.Add(tmSlot)
                 else
                  //property exists, so it is repetiotion of the template
                  //and we add another ?opy of the template
                  tmTs.AddObject(tmT.Name,tmT);
  //           end;
            end;
          end;

         if ComboBox1.ItemIndex<>-1 then
          begin
           tmKB1:=TKnowledgeBase(ComboBox1.Items.Objects[ComboBox1.ItemIndex]);
           //create a grule
           tmGR:=TGRule.Create;
           tmGR.Init;
           for i := 0 to tmTs.Count-1 do
            begin
             tmT:=TTemplate(tmTs.Objects[i]);
             s1:=tmT.Name;
             j:=0;
             if ((Length(s1)>0)and(s1[1]='#'))then
              begin
               Delete(s1,1,1);
               j:=1;
              end;
             if ((Length(s1)>0)and(pos('New template A',s1)=1)) then
              begin
               j:=1;
              end;
//             c:=tmKB1.IndexOfTemplateByName(s1,'');
             c:=IndexOfTemplatebyStructure(tmT,tmKB1);

             if c=-1 then
              begin  //create new template in kb
               tmT.ID:=
                tmKB1.NewID('T');
               tmT.Name:=tmKB1.GetUniqueName(s1,'T',tmT.ShortName);
               tmKB1.Templates.Add(tmT);

               MainForm.TreeView1.Selected:=
                tmT.AddToTreeView(MainForm.TreeView1,
                 MainForm.TreeView1.Items.Item[0].Item[ComboBox1.ItemIndex].Item[0]);
               MainForm.TreeView1.Selected.ImageIndex:=12;

//               c:=tmKB1.IndexOfTemplateByName(tmT.Name,'');
               c:=IndexOfTemplatebyStructure(tmT,tmKB1);
              end;

             case j of
              0: tmGR.Conditions.Add(tmKB1.Templates.Items[c]);
              1: tmGR.Actions.Add(tmKB1.Templates.Items[c]);
             end; //end case
            end;  //end create grule

           c:=IndexOfGRulebyStructure(tmGR,tmKB1);
           if (c=-1)and(tmKB1.Kind=0) then //it is a rule base
            begin  //create new grule in kb
             tmGR.ID:=tmKB1.NewID('G');
             s3:='GRule for '+ TTemplate(tmGR.Conditions.Items[0]).Name;
             tmGR.Name:=tmKB1.GetUniqueName(s3,'G',tmGR.ShortName);
             tmKB1.GRules.Add(tmGR);
             ComboBox1Change(ComboBox2);
             MainForm.TreeView1.Selected:=
              tmGR.AddToTreeView(MainForm.TreeView1,
               MainForm.TreeView1.Items.Item[0].Item[ComboBox1.ItemIndex].Item[2]);
             MainForm.TreeView1.Selected.ImageIndex:=16;
            end;
          end;
        end;
     //---------------
     end;  //end rules
    end;
  //------------------------------------------------------------------------------
   if ((RzPageControl1.ActivePageIndex=1)or(RzPageControl1.ActivePageIndex=2)) then
    begin

    //     MainForm.MakeDump(MainForm.LS('Edit the fact (or the case)')+': '+F1.Name,10);
//     MainForm.LoadAList(MainForm.RzListView1);

   //load relationships
    if Tag=1 then WC:=ScrollBox2;
    if Tag=2 then WC:=ScrollBox1;

    for i := 0 to WC.ComponentCount-1 do
     begin
     if WC.Components[i] is TRzPanel then
      begin
       tmP:=TRzPanel(WC.Components[i]);
       if tmP.ComponentCount>0 then
       for j := 0 to tmP.ComponentCount-1 do
        begin
          if tmP.Components[j] is TComboBox then
           begin
            if Trim(TComboBox(tmP.Components[j]).Text)<>'' then
             begin
              c:=TComboBox(tmP.Components[j]).Items.IndexOf(
               Trim(TComboBox(tmP.Components[j]).Text)
                );
              if c>-1 then
               begin
                tmTs.Add(IntToStr(tmP.Components[j].Tag)+'='+
                 IntToStr(c))
               end;
             end;
           end
        end;
      end;
     end;

    //check a fact name relation
    if (tmTs.Count>1)and(tmTs.IndexOfName('1000')<>-1) then
     begin
      //-----------------------------
      prP:=STDIClass.CreateProgressIndicator(Self,
       IntToStr(tmTs.Count)
        );
//        prP.Caption:=LS('Please,wait')+' ('+
//        prP.Caption:='Transforming'+' ('+
//         IntToStr(Round(100*i/OpenDialog1.Files.Count))
//         +'%)';
//        Application.ProcessMessages;
      //-----------------------------
      //create facts
      if Tag=1 then c:=CreateFacts(tmTs);
      //create rules
      if Tag=2 then c:=CreateRules(tmTs);

      prP.Free;

      if c>-1 then
       MainForm.MMessageBox(0,0,'0='+
        MainForm.LS('Data loaded successful')+' ('+IntToStr(c)+')')
       else
        MainForm.MMessageBox(1,0,
         '0='+MainForm.LS('Data loading error'));
       //reload tree
  //    MainForm.TreeView1Click(MainForm.TreeView1);
       Close;
     end
    else
     begin
       //error message
       MainForm.MMessageBox(1,0,'0='+
        MainForm.LS('Fact name must not be empty'))
     end;
    end
   else
    begin
     if Tag=1 then //for cases
      RzPageControl1.ActivePageIndex:=RzPageControl1.ActivePageIndex+1
       else //for rules
        RzPageControl1.ActivePageIndex:=RzPageControl1.ActivePageIndex+2;
    end;
end;

procedure TImportDataForCasesForm.RzButton3Click(Sender: TObject);
begin
 if Tag=1 then //for cases
  RzPageControl1.ActivePageIndex:=RzPageControl1.ActivePageIndex-1
   else //for rules
    RzPageControl1.ActivePageIndex:=RzPageControl1.ActivePageIndex-2;
end;

procedure TImportDataForCasesForm.RzCheckBox1Click(Sender: TObject);
begin
 if TRzCheckBox(Sender).Checked then
  begin
   RzSpinEdit2.Enabled:=False;
   RzSpinEdit2.Text:='2';
  end
 else
  begin
   RzSpinEdit2.Enabled:=True;
  end;
end;

procedure TImportDataForCasesForm.SpeedButton1Click(Sender: TObject);
var
  ext : String;
begin
 OpenDialog1.Title:=Application.Title+': '+
//  STDIClass.LoadSingleString('Import data for cases from txt',LangLocaleDir+LangPrefix+'012.lan')
  'Import data for cases from txt'
  ;

 ext:='.txt';
 OpenDialog1.FileName:='';
 OpenDialog1.Filter:='TXT files |'
   +'*'+ext+'|'+'CSV files|*.csv|'
   +STDIClass.LoadSingleString('All',LangLocaleDir+LangPrefix+'012.lan')
   +'|*.*';
 OpenDialog1.InitialDir:=ExtractFileDir(Application.ExeName)+'\Data';
 if OpenDialog1.Execute then
  if Trim(OpenDialog1.FileName)<>'' then
   begin
    //
    RzEdit2.Text:=OpenDialog1.FileName;
    RzEdit2.Hint:=RzEdit2.Text;
    ListBox1.Items.LoadFromFile(OpenDialog1.FileName);
    ComboBox4Change(ComboBox4);
   if RzEdit2.Text='' then RzButton2.Enabled:=False
    else RzButton2.Enabled:=True;
   end
end;

procedure TImportDataForCasesForm.TabSheet1Show(Sender: TObject);
begin
 MainForm.ReloadHelpMessage(ScrollBox3,205);
// RzButton2.Enabled:=True;
    RzButton2.Caption:=
     STDIClass.LoadSingleString('RzButton21c',LangLocaleDir+LangPrefix+'003.lan');
//    '????? >>';
    RzButton2.Hint:=//'?????????? ??????? ???????? ????? (??????????)';
     STDIClass.LoadSingleString('RzButton21h',LangLocaleDir+LangPrefix+'003.lan');

 RzButton3.Enabled:=False;
 MarkCurrentNavPanel(0);

// if RzEdit2.Text='' then RzButton2.Enabled:=False
//  else RzButton2.Enabled:=True;
end;

procedure TImportDataForCasesForm.TabSheet2Show(Sender: TObject);
begin
 MainForm.ReloadHelpMessage(ScrollBox3,207);
 RzButton2.Enabled:=True;
 RzButton3.Enabled:=True;
 MarkCurrentNavPanel(1);
if ComboBox5.ItemIndex=-1 then RzButton2.Enabled:=False
    else RzButton2.Enabled:=True;

 ComboBox1Change(ComboBox1);
end;

procedure TImportDataForCasesForm.TabSheet3Show(Sender: TObject);
begin
 MainForm.ReloadHelpMessage(ScrollBox3,206);
 RzButton2.Enabled:=True;
 RzButton3.Enabled:=True;
 MarkCurrentNavPanel(1);
if ComboBox3.ItemIndex=-1 then RzButton2.Enabled:=False
    else RzButton2.Enabled:=True;
end;

end.
