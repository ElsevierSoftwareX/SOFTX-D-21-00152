unit UImportDataForCasesForm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Mask, RzEdit, RzLabel, RzTabs, RzButton, ExtCtrls, RzPanel,
  RzSpnEdt, Buttons, Grids, RzGrids;

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
procedure TImportDataForCasesForm.ComboBox2Change(Sender: TObject);
var
 i  : Integer;
 tKB  : TKnowledgeBase;
 s : string;
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
     tmP:=STDIClass.AddRzPanel(1,1,20,460,
      tmWC1,1000,alTop,clCream,bvNone,bvNone,bsNone,'');

     tmP1:=STDIClass.AddRzPanel(1,1,10,460-180,
      tmP,1000,alLeft,clCream,bvNone,bvNone,bsSingle,
      'Name');
     tmP1.Height:=20*(((Length('Name')*7) div Round(tmP.Width/3))+1);
     if tmP.Height<tmP1.Height then tmP.Height:=tmP1.Height;

      STDIClass.AddCombo(tmP,0,280,
       150,'');
      TComboBox(tmP.Components[tmP.ComponentCount-1]).Items.Text:=
        tmTs.Text;
      TComboBox(tmP.Components[tmP.ComponentCount-1]).Tag:=
        1000;

      T:=T+5;
    //blank panel (delimeter)
     tmP:=STDIClass.AddRzPanel(1,10,5,460,
      tmWC1,1000,alTop,clCream,bvNone,bvNone,bsNone,'');

    //for template slots
    for i:=0 to T1.Slots.Count-1 do
     begin
       tmP:=STDIClass.AddRzPanel((i+2)*10+1,1,20,460,
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
 if (Delimeter='spacing')or(Delimeter='������') then Delimeter:=#32;
 if (Delimeter='tabstop')or(Delimeter='���������') then Delimeter:=#9;

 LoadDataFromTable(Delimeter,10);
 ComboBox3Change(ComboBox3);
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

//  ComboBox1.Enabled:=True;
  ComboBox2.Items.Clear;
   for i:=0 to KBList.Count-1 do
    if ((TKnowledgeBase(KBList.Items[i]).Kind=1)and(Tag=3))or(Tag<>3) then
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
    else
     begin
//      if Tag=3 then
//       MainForm.MMessageBox(1,0,
//        '0='+MainForm.LS('There are no case-bases so testing is unavaliable'));
//      Close;
     end;

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
 Close;
end;

procedure TImportDataForCasesForm.RzButton2Click(Sender: TObject);
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
  i:=StrToInt(RzSpinEdit2.Text);

  D:=Trim(ComboBox4.Text);
  if (D='spacing')or(D='������') then D:=#32;
  if (D='tabstop')or(D='���������') then D:=#9;

  for i := i to ListBox1.Items.Count-1 do
   begin
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
          tmFact.Name:=
           tmTs.Strings[StrToInt(rel.ValueFromIndex[j])];
          tmFact.ShortName:=Translit.Trans(tmFact.Name,Translit.FL);
         end
        else
         begin
          TSlot(tmFact.Slots.Items[StrToInt(rel.Names[j])]).Value:=
           tmTs.Strings[StrToInt(rel.ValueFromIndex[j])]
         end;
       end;
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

  Result:=cnt; //ok
 except
  Result:=-1; //fail
 end;
end;

var
 i,j,c : Integer;
 WC : TWinControl;
 tmP : TRzPanel;

 tmTs : TStringList;
begin
   if (RzPageControl1.ActivePageIndex=1) then
    begin
//     MainForm.MakeDump(MainForm.LS('Edit the fact (or the case)')+': '+F1.Name,10);
//     MainForm.LoadAList(MainForm.RzListView1);

   //load relationships
    tmTs := TStringList.Create;
    WC:=ScrollBox2;
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
     //create facts
    c:=CreateFacts(tmTs);
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
     RzPageControl1.ActivePageIndex:=
      RzPageControl1.ActivePageIndex+1;
    end;
end;

procedure TImportDataForCasesForm.RzButton3Click(Sender: TObject);
begin
 RzPageControl1.ActivePageIndex:=
  RzPageControl1.ActivePageIndex-1;
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
 Caption:=' '+ MainForm.LS('Import Data For Cases');

 MainForm.ReloadHelpMessage(ScrollBox3,205);
 RzButton2.Enabled:=True;
    RzButton2.Caption:=
     STDIClass.LoadSingleString('RzButton21c',LangLocaleDir+LangPrefix+'003.lan');
//    '����� >>';
    RzButton2.Hint:=//'���������� ������� �������� ����� (����������)';
     STDIClass.LoadSingleString('RzButton21h',LangLocaleDir+LangPrefix+'003.lan');

 RzButton3.Enabled:=False;
 MarkCurrentNavPanel(0);

 if RzEdit2.Text='' then RzButton2.Enabled:=False
  else RzButton2.Enabled:=True;
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