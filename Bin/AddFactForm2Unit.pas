{------------------------------------------------------------------------------}
{                                                                              }
{  Personal Knowledge Base Designer                                            }
{  by A.Yu. Yurin, N.O. Dorodnykh                                              }
{                                                                              }
{  iskander@icc.ru                                                             }
{  http://knowledge-core.ru/                                                   }
{                                                                              }
{------------------------------------------------------------------------------}

unit AddFactForm2Unit;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, RzPanel, RzRadGrp, RzButton, ExtCtrls, StdCtrls, RzLstBox,
  RzTabs, Mask, RzEdit, RzChkLst, UPKBClass, RzCmboBx, RzLabel, RzCommon;

type
  TAddFactForm2 = class(TForm)
    RzPanel6: TRzPanel;
    ScrollBox3: TScrollBox;
    RzPanel1: TRzPanel;
    RzButton1: TRzButton;
    RzButton2: TRzButton;
    Image1: TImage;
    RzPageControl1: TRzPageControl;
    TabSheet1: TRzTabSheet;
    TabSheet2: TRzTabSheet;
    TabSheet3: TRzTabSheet;
    GroupBox1: TGroupBox;
    ComboBox1: TComboBox;
    GroupBox3: TGroupBox;
    btn1: TRzButton;
    ListBox1: TListBox;
    RzButton3: TRzButton;
    GroupBox2: TGroupBox;
    GroupBox4: TGroupBox;
    ScrollBox2: TScrollBox;
    RzPanel2: TRzPanel;
    RzLabel1: TRzLabel;
    RzLabel2: TRzLabel;
    RzLabel3: TRzLabel;
    RzPanel3: TRzPanel;
    RzLabel5: TRzLabel;
    RzLabel6: TRzLabel;
    RzEdit1: TRzEdit;
    TabSheet4: TRzTabSheet;
    GroupBox5: TGroupBox;
    ScrollBox4: TScrollBox;
    TabSheet5: TRzTabSheet;
    GroupBox6: TGroupBox;
    ScrollBox5: TScrollBox;
    ScrollBox1: TScrollBox;
    procedure FormCreate(Sender: TObject);
    procedure RzButton1Click(Sender: TObject);
    procedure RzPageControl1Change(Sender: TObject);
    procedure RzButton3Click(Sender: TObject);
    procedure RzButton2Click(Sender: TObject);
    procedure TabSheet2Show(Sender: TObject);
    procedure TabSheet1Show(Sender: TObject);
    procedure ListBox1Click(Sender: TObject);
    procedure TabSheet3Show(Sender: TObject);
    procedure TabSheet4Show(Sender: TObject);

    procedure ResultPanelClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure ComboBox1Change(Sender: TObject);
    procedure TabSheet5Show(Sender: TObject);
    procedure FormActivate(Sender: TObject);

    procedure MarkCurrentNavPanel(i:Integer);
    procedure RzEdit1Change(Sender: TObject);
    procedure ListBox1DblClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
   F1  : TFact;
   T1 : TTemplate;
   T3 : TTask;
  end;

var
  AddFactForm2: TAddFactForm2;
  NavPanelsIndexList : TStringList;

implementation

uses MAIN, USTDIClass, CRPManagerUnit, UViewReportForm, UDDSClass, uTrans;

{$R *.dfm}
//----------------------------------------------------------------------
procedure TAddFactForm2.MarkCurrentNavPanel(i:Integer);
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
procedure TAddFactForm2.ComboBox1Change(Sender: TObject);
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

   ListBox1.Items.Clear;
   for i:=0 to tKB.Templates.Count-1 do
    begin
     s:=TTemplate(tKB.Templates.Items[i]).Description;
     if s<>'' then s:=' ('+s+')';

     ListBox1.AddItem(
      TTemplate(tKB.Templates.Items[i]).Name+s,
        tKB.Templates.Items[i]
      );
    end;
  if ListBox1.Items.Count>0 then
   ListBox1.ItemIndex:=0
    else
     ListBox1.ItemIndex:=-1;
  ListBox1Click(ListBox1);
end;

procedure TAddFactForm2.FormActivate(Sender: TObject);
var
 T,i  : Integer;
 tmP : TRzPanel;
 tmTs : TStringList;
begin
  T:=80;
  tmTs:=TStringList.Create;
 case Self.Tag of
  1:begin //add
   tmTs.Add('0='+MainForm.LS('STEP 1 and 2:')+' '+
    MainForm.LS('Knowledge base and template selection'));
   tmTs.Add('1='+MainForm.LS('STEP 3:')+' '+MainForm.LS('Properties description'));
   tmTs.Add('2='+MainForm.LS('STEP 4:')+' '+MainForm.LS('Entered data preview'));
  end;
  0:begin  //edit
   tmTs.Add('1='+MainForm.LS('STEP 1:')+' '+MainForm.LS('Properties description'));
   tmTs.Add('2='+MainForm.LS('STEP 2:')+MainForm.LS('Entered data preview'));
  end;
  3: begin //crp
   tmTs.Add('0='+MainForm.LS('STEP 1 and 2:')+' '+
    MainForm.LS('Knowledge base and template selection'));
   tmTs.Add('1='+MainForm.LS('STEP 3:')+' '+MainForm.LS('Properties description'));
   tmTs.Add('2='+MainForm.LS('STEP 4:')+' '+MainForm.LS('Entered data preview'));
   tmTs.Add('3='+MainForm.LS('STEP 5:')+' '+MainForm.LS('Retrieval results'));
   tmTs.Add('4='+MainForm.LS('STEP 6:')+' '+MainForm.LS('Results of multi-criterial decision-making methods'));
  end;
 end; //end case

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
 if Tag=0 then TabSheet2Show(TabSheet2)
  else TabSheet1Show(TabSheet1);
 OnActivate:=nil;
end;

procedure TAddFactForm2.FormCreate(Sender: TObject);
var
 i  : Integer;
 tKB  : TKnowledgeBase;
// s : string;

// T  : Integer;
// tmP : TRzPanel;
// tmTs : TStringList;
begin
  NavPanelsIndexList:=TStringList.Create;
// AddFactForm2.RzButton1.Visible:=True;

 for i := 0 to RzPageControl1.PageCount-1 do
  RzPageControl1.Pages[i].TabVisible:=False;

 STDIClass.LoadLocalLang(Self,LangLocaleDir+LangPrefix+'003.lan');

 F1:=TFact.Create;
 F1.Init;
 T3:=TTask.Create;
 T3.Init;

  tKB:=TKnowledgeBase.Create;
  tKB.Init;

//  ComboBox1.Enabled:=True;
  ComboBox1.Items.Clear;
   for i:=0 to KBList.Count-1 do
    if ((TKnowledgeBase(KBList.Items[i]).Kind=1)and(Tag=3))or(Tag<>3) then
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
{      tKB:=TKnowledgeBase(
       ComboBox1.Items.Objects[ComboBox1.ItemIndex]
        );

      //template list
       ListBox1.Items.Clear;
       for i:=0 to tKB.Templates.Count-1 do
        ListBox1.AddItem(
         TTemplate(tKB.Templates.Items[i]).Name+' ('+
          TTemplate(tKB.Templates.Items[i]).Description+');',
           tKB.Templates.Items[i]
         ); }
     end
    else
     begin
      if Tag=3 then
       MainForm.MMessageBox(1,0,
        '0='+MainForm.LS('There are no case-bases so testing is unavaliable'));
      Close;
     end;
end;

procedure TAddFactForm2.ResultPanelClick(Sender: TObject);
var
 nF : TVRItemForm;
 c : Integer;
begin
 Application.CreateForm(TVRItemForm, nF);

 c:=T3.K1.IndexOfFactByID(AddFactForm2.T3.CBRPResults.Names[
  TComponent(Sender).Tag
  ]);
 nF.ai:=TComponent(Sender).Tag;
 nF.T3:=T3;
 if c=-1 then nF.FA:=nil
  else
   begin
    nF.FA:=TFact(T3.K1.Facts.Items[c]);
   end;
 TRzPanel(TRzPanel(Sender).Parent).BorderOuter:=fsGroove;
// TRzPanel(TRzPanel(Sender).Parent).BorderColor:=clRed;
 nF.ShowModal;
end;

procedure TAddFactForm2.FormShow(Sender: TObject);
begin
 case tag of
  0:begin  //new
   Caption:=' '+MainForm.LS('Edit the fact (or the case)');
  end;
  1:begin  //add
   Caption:=' '+MainForm.LS('Create a new fact (or a case)');
  end;
  3:begin //crp
   Caption:=' '+MainForm.LS('Case retrieval');
  end;
 end;
end;

procedure TAddFactForm2.ListBox1Click(Sender: TObject);
begin
 if ListBox1.ItemIndex<>-1 then
  begin
   T1:=TTemplate(ListBox1.Items.Objects[ListBox1.ItemIndex]);
   F1.Name:=T1.Name;
   F1.ShortName:=T1.ShortName;
   F1.GetSlotsFrom(T1);
  // T3.Template:=T1;
   T3.F1:=F1;
  RzButton2.Enabled:=True;
  end;
end;

procedure TAddFactForm2.ListBox1DblClick(Sender: TObject);
begin
 RzButton2Click(RzButton2);
end;

procedure TAddFactForm2.RzButton1Click(Sender: TObject);
begin
 Close;
end;

procedure TAddFactForm2.RzButton2Click(Sender: TObject);
begin
 case Tag of
  0:begin //edit case
   if (RzPageControl1.ActivePageIndex=2) then
    begin
     MainForm.MakeDump(MainForm.LS('Edit the fact (or the case)')+': '+F1.Name,10);
     MainForm.LoadAList(MainForm.RzListView1);

     TFact(MainForm.TreeView1.Selected.Data).MakeACloneFrom(F1);

     //reload name
//     if F1.Description<>'' then s:=' ('+T1.Description+')';
     MainForm.TreeView1.Selected.Text:=
      '['+F1.ID+'] '+F1.Name;

     //     TKnowledgeBase(KBList.Items[ComboBox1.ItemIndex]).Facts.Add(F1);

{     MainForm.TreeView1.Selected:=
      F1.AddToTreeView(MainForm.TreeView1,
       MainForm.TreeView1.Items.Item[0].Item[ComboBox1.ItemIndex].Item[1]);

     MainForm.TreeView1.Items.Item[0].Item[ComboBox1.ItemIndex].Item[1].Text:=
      MainForm.PutChildCount(MainForm.TreeView1.Items.Item[0].Item[ComboBox1.ItemIndex].Item[1]);
}
     MainForm.TreeView1Click(MainForm.TreeView1);
     Close;
    end
   else
    begin
     RzPageControl1.ActivePageIndex:=
      RzPageControl1.ActivePageIndex+1;
    end;
  end;
  1:begin //add fact
   if (RzPageControl1.ActivePageIndex=2) then
    begin
     TKnowledgeBase(ComboBox1.Items.Objects[ComboBox1.ItemIndex]).
      GetHashForFacts;
     F1.GetHash;
     if TKnowledgeBase(ComboBox1.Items.Objects[ComboBox1.ItemIndex]).
      IndexOfFactByHash(F1.Hash)=-1  then
       begin
         MainForm.MakeDump(MainForm.LS('Create a new fact (or a case)')+': '+F1.Name,6);
         MainForm.LoadAList(MainForm.RzListView1);

         TKnowledgeBase(ComboBox1.Items.Objects[ComboBox1.ItemIndex]).Facts.Add(F1);

         MainForm.TreeView1.Selected:=
          F1.AddToTreeView(MainForm.TreeView1,
           MainForm.TreeView1.Items.Item[0].Item[ComboBox1.ItemIndex].Item[1]);

         MainForm.TreeView1.Items.Item[0].Item[ComboBox1.ItemIndex].Item[1].Text:=
          MainForm.PutChildCount(MainForm.TreeView1.Items.Item[0].Item[ComboBox1.ItemIndex].Item[1]);
         MainForm.TreeView1Click(MainForm.TreeView1);
         Close;
       end
      else //this fact exists
       begin
        MainForm.MMessageBox(1,0,'0='+
         MainForm.LS('Such fact already exists'))
       end;
    end
   else
    begin
     RzPageControl1.ActivePageIndex:=
      RzPageControl1.ActivePageIndex+1;
    end;
  end;
  3:begin //crp
   if (RzPageControl1.ActivePageIndex=2) then
    begin
     CRPManager:=TCRPManager.Create;
     CRPResults:=TCRPResults.Create;
//     T3.CBRPResults.Clear;
     T3.K1:=TKnowledgeBase(ComboBox1.Items.Objects[ComboBox1.ItemIndex]);

     CRPManager.CaseRetrieveProcedure(T3,
      TKnowledgeBase(ComboBox1.Items.Objects[ComboBox1.ItemIndex])
        );
    end;
{   if (RzPageControl1.ActivePageIndex=3) then
    begin
     MainForm.MakeDump('???????? ??????: '+T3.ID,6);
     MainForm.LoadAList(MainForm.RzListView1);

     TKnowledgeBase(KBList.Items[ComboBox1.ItemIndex]).Tasks.Add(T3);

     MainForm.TreeView1.Selected:=
      T3.AddToTreeView(MainForm.TreeView1,
       MainForm.TreeView1.Items.Item[0].Item[ComboBox1.ItemIndex].Item[2]);

     MainForm.TreeView1.Items.Item[0].Item[ComboBox1.ItemIndex].Item[2].Text:=
      MainForm.PutChildCount(MainForm.TreeView1.Items.Item[0].Item[ComboBox1.ItemIndex].Item[2]);
     MainForm.TreeView1Click(MainForm.TreeView1);
//     Close;
    end;  }
   if (RzPageControl1.ActivePageIndex=4) then
    begin
     MainForm.MakeDump(MainForm.LS('Create a task')+': '+T3.ID,6);
     MainForm.LoadAList(MainForm.RzListView1);

     TKnowledgeBase(ComboBox1.Items.Objects[ComboBox1.ItemIndex]).Tasks.Add(T3);

     MainForm.TreeView1.Selected:=
      T3.AddToTreeView(MainForm.TreeView1,
       MainForm.TreeView1.Items.Item[0].Item[ComboBox1.ItemIndex].Item[2]);

     MainForm.TreeView1.Items.Item[0].Item[ComboBox1.ItemIndex].Item[2].Text:=
      MainForm.PutChildCount(MainForm.TreeView1.Items.Item[0].Item[ComboBox1.ItemIndex].Item[2]);
     MainForm.TreeView1Click(MainForm.TreeView1);
//     T3.DataPreporationForDSP;
//     T3.DSST.MakeADecision(1);
//     ShowMessage(T3.DSST.Results.Text);
     Close;
    end
   else
    begin
     RzPageControl1.ActivePageIndex:=
      RzPageControl1.ActivePageIndex+1;
    end;
  end;

 end; //end case
end;

procedure TAddFactForm2.RzButton3Click(Sender: TObject);
begin
 RzPageControl1.ActivePageIndex:=
  RzPageControl1.ActivePageIndex-1;
end;

procedure TAddFactForm2.RzEdit1Change(Sender: TObject);
var
 i,j :Integer;
begin
  TRzEdit(Sender).Text:=StringReplace(TRzEdit(Sender).Text,'(','_',[rfReplaceAll]);
  TRzEdit(Sender).Text:=StringReplace(TRzEdit(Sender).Text,')','_',[rfReplaceAll]);
 if Trim(TRzEdit(Sender).Text)='' then RzButton2.Enabled:=False
  else RzButton2.Enabled:=True;

 i:=TKnowledgeBase(ComboBox1.Items.Objects[ComboBox1.ItemIndex]).
   IndexOfFactByShortName(Translit.Trans(TRzEdit(Sender).Text,Translit.FL));
 j:=TKnowledgeBase(ComboBox1.Items.Objects[ComboBox1.ItemIndex]).
   IndexOfFactByID(F1.ID);
 if (i>-1)and(i<>j)and(j<>-1) then
  begin
   MainForm.MMessageBox(1,0,
    '0='+MainForm.LS('This fact name already exists'));
   RzButton2.Enabled:=False;
  end
 else
  begin
   RzButton2.Enabled:=True;
   //for cases
   if TKnowledgeBase(ComboBox1.Items.Objects[ComboBox1.ItemIndex]).Kind=1 then
    F1.ShortName:=Translit.Trans(F1.Name,Translit.FL);
  end;
end;

procedure TAddFactForm2.RzPageControl1Change(Sender: TObject);
begin
 if RzPageControl1.ActivePageIndex<>
  RzPageControl1.PageCount-1 then
   begin
    RzButton2.Caption:=
     STDIClass.LoadSingleString('RzButton21c',LangLocaleDir+LangPrefix+'003.lan');
//    '????? >>';
    RzButton2.Hint:=
     STDIClass.LoadSingleString('RzButton21h',LangLocaleDir+LangPrefix+'003.lan');
//    '?????????? ??????? ???????? ????? (??????????)';
   end
 else
   begin
    RzButton2.Caption:=
     STDIClass.LoadSingleString('RzButton2c',LangLocaleDir+LangPrefix+'003.lan');
//     '??????';
    RzButton2.Hint:=
     STDIClass.LoadSingleString('RzButton2c',LangLocaleDir+LangPrefix+'003.lan');
//    '????????? ??????? ???????? ????? (??????????)';
   end;

 if RzPageControl1.ActivePageIndex=0 then
   begin
    RzButton3.Enabled:=False;
   end
    else
     RzButton3.Enabled:=True;
end;

procedure TAddFactForm2.TabSheet1Show(Sender: TObject);
begin
 if Tag=1 then
  MainForm.ReloadHelpMessage(ScrollBox3,34)
   else
    MainForm.ReloadHelpMessage(ScrollBox3,35);

 if ListBox1.ItemIndex=-1 then  RzButton2.Enabled:=False
  else  RzButton2.Enabled:=True;
    RzButton2.Caption:=
     STDIClass.LoadSingleString('RzButton21c',LangLocaleDir+LangPrefix+'003.lan');
//    '????? >>';
    RzButton2.Hint:=//'?????????? ??????? ???????? ????? (??????????)';
     STDIClass.LoadSingleString('RzButton21h',LangLocaleDir+LangPrefix+'003.lan');

    RzButton3.Enabled:=False;

  MarkCurrentNavPanel(0);
end;

procedure TAddFactForm2.TabSheet2Show(Sender: TObject);
var
 i  : Integer;
 T  : Integer;
 tmTs,tmTs1 : TStringList;

// Tg  :  TRzGroupBox;
 W : Integer;

 j : Integer;
 tmWC1 : TWinControl;
 tmP,tmP1 : TRzPanel;
 s : string;
begin
    RzButton2.Caption:=
     STDIClass.LoadSingleString('RzButton21c',LangLocaleDir+LangPrefix+'003.lan');
//    '????? >>';
    RzButton2.Hint:=//'?????????? ??????? ???????? ????? (??????????)';
     STDIClass.LoadSingleString('RzButton21h',LangLocaleDir+LangPrefix+'003.lan');

  if Tag=0 then
   begin
    RzButton3.Enabled:=False;
    GroupBox2.Caption:=
     ' '+MainForm.LS('STEP 1:')+' '+MainForm.LS('Properties description')+': ';
    MainForm.ReloadHelpMessage(ScrollBox3,36)
   end
   else
    begin
     RzButton3.Enabled:=True;
     if Tag=1 then
      MainForm.ReloadHelpMessage(ScrollBox3,37)
       else
        begin
         MainForm.ReloadHelpMessage(ScrollBox3,38);
         RzPanel3.Visible:=False;
        end;
    end;

 if (T1<>nil) then
 try

  tmTs:=TStringList.Create;
  tmTs1:=TStringList.Create;
//  tmTs2:=TStringList.Create;

  if Tag<>0 then
   begin
    if TKnowledgeBase(ComboBox1.Items.Objects[ComboBox1.ItemIndex]).Kind=0 then
     //for rules
     F1.Name:=T1.Name
    else //for cases
     F1.Name:=T1.Name+'_'+IntToStr(
      TKnowledgeBase(ComboBox1.Items.Objects[ComboBox1.ItemIndex]).Facts.Count);

    F1.ShortName:=Translit.Trans(F1.Name,Translit.FL);
   end;

   if F1.ID='' then
    begin
     F1.ID:=TKnowledgeBase(ComboBox1.Items.Objects[ComboBox1.ItemIndex]).NewID('F');
    end;
//     F1.Name:='??? ?????';
    RzLabel5.Caption:='['+F1.ID+']';
    RzEdit1.Text:=F1.Name;

     T:=15;
//     L:=5;
      for j := 1 to 5 do
       tmTs1.Add(IntToStr(j));

   tmWC1:=ScrollBox1;
   tmWC1.Visible:=False;
   case Tag of
    0,1,3 : W:=Round(tmWC1.Width/2)-20;
  //  3: W:=Round(tmWC.Width/5*2)-20;
   end;
//    tmWC.Visible:=False;
    STDIClass.ReleaseObjects(tmWC1);

    for i:=0 to T1.Slots.Count-1 do
     begin
       tmP:=STDIClass.AddRzPanel(i*20+1,1,20,500,
        tmWC1,i,alTop,clCream,bvNone,bvNone,bsNone,'');

       tmP1:=STDIClass.AddRzPanel(1,1,10,W-5,
        tmP,i,alLeft,clCream,bvNone,bvNone,bsSingle,
         TSlot(F1.Slots.Items[i]).Name);
       tmP1.Height:=20*(((Length(TSlot(F1.Slots.Items[i]).Name)*7) div Round(tmP.Width/3))+1);
       if tmP.Height<tmP1.Height then tmP.Height:=tmP1.Height;

     //values from template
      if TSlot(F1.Slots.Items[i]).DataType='String'  then
       begin //combo for string - use dictionaries
     //   T:=
        STDIClass.AddCombo(tmP,T-3,W+2,
         W-5,tmTs.DelimitedText); //text from template
        TComboBox(tmP.Components[tmP.ComponentCount-1]).Items.Delimiter:=';';

        TComboBox(tmP.Components[tmP.ComponentCount-1]).Items.DelimitedText:=
//        StringReplace(TSlot(T1.Slots.Items[i]).Value,' ','#',[rfReplaceAll]);

        TKnowledgeBase(ComboBox1.Items.Objects[ComboBox1.ItemIndex]).
         GetFactValuesForSlotName(
          TSlot(T1.Slots.Items[i]).Name,
          // StringReplace(
            TSlot(T1.Slots.Items[i]).Value//,' ','#',[rfReplaceAll])
            )
           ;
        TComboBox(tmP.Components[tmP.ComponentCount-1]).Items.Text:=
         Trim(StringReplace(
          TComboBox(tmP.Components[tmP.ComponentCount-1]).Items.Text
           ,'_',' ',[rfReplaceAll]));

        TComboBox(tmP.Components[tmP.ComponentCount-1]).Align:=alClient;
        TComboBox(tmP.Components[tmP.ComponentCount-1]).Items.Text:=
         Trim(StringReplace(TComboBox(tmP.Components[tmP.ComponentCount-1]).Items.Text,
          '#',' ',[rfReplaceAll]));

        if TSlot(F1.Slots.Items[i]).Value<>'' then
         begin
          TComboBox(tmP.Components[tmP.ComponentCount-1]).ItemIndex:=
           TComboBox(tmP.Components[tmP.ComponentCount-1]).Items.IndexOf(
            TSlot(F1.Slots.Items[i]).Value
             );

         end;
       if TComboBox(tmP.Components[tmP.ComponentCount-1]).ItemIndex=-1 then
        TComboBox(tmP.Components[tmP.ComponentCount-1]).Text:=
         TSlot(F1.Slots.Items[i]).Value;
//        L:=120;
       end;

      if  TSlot(T1.Slots.Items[i]).DataType='Integer'  then //edit for integer
       begin
     //   T:=
        STDIClass.AddEdit(tmP,T-3,W+2,
         W-5,'');
        TEdit(tmP.Components[tmP.ComponentCount-1]).Align:=alClient;
        if TSlot(F1.Slots.Items[i]).Value<>'' then
         TEdit(tmP.Components[tmP.ComponentCount-1]).Text:=
          TSlot(F1.Slots.Items[i]).Value;

//        L:=30;
       end;

      if TSlot(T1.Slots.Items[i]).DataType='Fuzzy'  then
       begin //combo for string - use dictionaries
       //data from scale
     //   T:=
        STDIClass.AddCombo(tmP,T-3,W+2,
         W-5,tmTs.DelimitedText); //text from scale
        TComboBox(tmP.Components[tmP.ComponentCount-1]).Items.Delimiter:=';';

        j:=TKnowledgeBase(ComboBox1.Items.Objects[ComboBox1.ItemIndex]).
         IndexOfFScale(TSlot(T1.Slots.Items[i]).Value);
        s:='';
        if j>-1 then
         s:=TFScale(TKnowledgeBase(ComboBox1.Items.Objects[ComboBox1.ItemIndex]).
          FScales.Items[j]).ShowScaleAsString;

        TComboBox(tmP.Components[tmP.ComponentCount-1]).Items.DelimitedText:=
         s;
        TComboBox(tmP.Components[tmP.ComponentCount-1]).Items.Text:=
         Trim(StringReplace(
          TComboBox(tmP.Components[tmP.ComponentCount-1]).Items.Text
           ,'_',' ',[rfReplaceAll]));

        TComboBox(tmP.Components[tmP.ComponentCount-1]).Align:=alClient;
        TComboBox(tmP.Components[tmP.ComponentCount-1]).Items.Text:=
         Trim(StringReplace(TComboBox(tmP.Components[tmP.ComponentCount-1]).Items.Text,
          '#',' ',[rfReplaceAll]));

        if TSlot(F1.Slots.Items[i]).Value<>'' then
         begin
          TComboBox(tmP.Components[tmP.ComponentCount-1]).ItemIndex:=
           TComboBox(tmP.Components[tmP.ComponentCount-1]).Items.IndexOf(
            TSlot(F1.Slots.Items[i]).Value
             );

         end;
       if TComboBox(tmP.Components[tmP.ComponentCount-1]).ItemIndex=-1 then
        if TComboBox(tmP.Components[tmP.ComponentCount-1]).Items.Count>0 then
         TComboBox(tmP.Components[tmP.ComponentCount-1]).ItemIndex:=0;
//        L:=120;
       end;

       tmP.Components[tmP.ComponentCount-1].Tag:=i;

       if Tag=3 then
        begin
 //        T:=
         STDIClass.AddCombo(tmP,T-3,10,
          40,tmTs1.Text); //weigth
         TComboBox(tmP.Components[tmP.ComponentCount-1]).Items.Text:=
          tmTs1.Text;

         if Trim(TSlot(F1.Slots.Items[i]).Constraint)='' then
          TComboBox(tmP.Components[tmP.ComponentCount-1]).ItemIndex:=0
           else
            TComboBox(tmP.Components[tmP.ComponentCount-1]).ItemIndex:=
             TComboBox(tmP.Components[tmP.ComponentCount-1]).Items.IndexOf(
              Trim(TSlot(F1.Slots.Items[i]).Constraint)
               );

         tmP.Components[tmP.ComponentCount-1].Tag:=1000+i;
         TComboBox(tmP.Components[tmP.ComponentCount-1]).Align:=alRight;
        end;

      T:=T+5;

    end;
  tmWC1.Visible:=True;
//  tmTs2.Free;
 except
  ScrollBox1.Visible:=True;
 end;

 RzEdit1Change(RzEdit1);
 MarkCurrentNavPanel(1);
 //  TScrollBox(tmWC).OnClick(Self);
end;

procedure TAddFactForm2.TabSheet3Show(Sender: TObject);
var
 i,j,T,T12 : Integer;
 WC : TWinControl;
// tmCB : TCheckBox;
// tmLabel  :TRzLabel;
 tmP,tmP1,tmP2 : TRzPanel;

 F : TFact;
 tmSlot : TSlot;
 tmColor,tmColor1 : TColor;

begin
 MainForm.ReloadHelpMessage(ScrollBox3,39);

 if Tag<>3 then
  begin
    RzButton2.Caption:=
     STDIClass.LoadSingleString('RzButton2c',LangLocaleDir+LangPrefix+'003.lan');
//     '??????';
    RzButton2.Hint:=
     STDIClass.LoadSingleString('RzButton2c',LangLocaleDir+LangPrefix+'003.lan');
//    '????????? ??????? ???????? ????? (??????????)';
  end;

 RzButton3.Enabled:=True;

 WC:=ScrollBox1;
 case Tag of
  0 : begin
//   W:=Round(WC.Width/2)-20;
   F:=F1;
   GroupBox4.Caption:=' '+MainForm.LS('STEP 2:')+' '+
    MainForm.LS('Entered data preview')+': ';
  end;
  1 : begin
//   W:=Round(WC.Width/2)-20;
   F:=F1;
  end;
  3: begin
//   W:=Round(WC.Width/5*2)-20;
   F:=T3.F1;
   T3.CBRPResults.Clear;
   RzPanel2.Visible:=False;
  end;
 end;

  F.Name:=RzEdit1.Text;
 //reload data
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
          if tmP.Components[j].Tag<1000 then
           begin
//            tmSlot:=TSlot(F.Slots[tmP.Components[j].Tag]);
//            tmSlot.Value:=
            TSlot(F.Slots[i]).Value:=
             Trim(TComboBox(tmP.Components[j]).Text)
           end
             else  //use the constaraint field for store information about weigth
              begin
//               tmSlot:=TSlot(F.Slots[tmP.Components[j].Tag-1000]);
//               tmSlot.Constraint:=
               TSlot(F.Slots[i]).Constraint:=
                Trim(TComboBox(tmP.Components[j]).Text);
              end;
         end
       else   //for edit
        if tmP.Components[j] is TEdit then
          begin
            if tmP.Components[j].Tag<1000 then
             begin
  //            tmSlot:=TSlot(F.Slots[tmP.Components[j].Tag]);
  //            tmSlot.Value:=
              TSlot(F.Slots[i]).Value:=
               Trim(TEdit(tmP.Components[j]).Text)
             end
               else  //use the constaraint field for store information about weigth
                begin
  //               tmSlot:=TSlot(F.Slots[tmP.Components[j].Tag-1000]);
  //               tmSlot.Constraint:=
                TSlot(F.Slots[i]).Constraint:=
                  Trim(TEdit(tmP.Components[j]).Text);
                end;
          end;
      end;
    end;
   end;

 //show data
{ case Tag of
  0,1 : begin
   F:=F1;
  end;
  3: begin
   F:=T3.F1;
  end;
 end;  }

 RzLabel2.Caption:='['+F.ID+']';
 RzLabel1.Caption:=F.Name;

 WC:=ScrollBox2;
 STDIClass.ReleaseObjects(WC);
 T:=0;
// L:=5;
 WC.Visible:=False;
for i := 0 to F.Slots.Count-1 do
 if Trim(TSlot(F.Slots.Items[i]).Value)<>'' then
  begin
   tmP:=STDIClass.AddRzPanel(T,1,20,500,
    WC,i,alTop,clCream,bvNone,bvNone,bsNone,'');
//   tmP.AutoSize:=True;

   tmP1:=STDIClass.AddRzPanel(1,1,10,Round(tmP.Width/2),
    tmP,i,alLeft,clCream,bvNone,bvNone,bsSingle,
     TSlot(F.Slots.Items[i]).Name);

   tmP1.Height:=20*(((Length(TSlot(F.Slots.Items[i]).Name)*8) div Round(tmP.Width/2))+1);
   if tmP.Height<tmP1.Height then tmP.Height:=tmP1.Height;

   tmP2:=STDIClass.AddRzPanel(1,100,10,Round(tmP.Width/2),
    tmP,i,alClient,clCream,bvNone,bvNone,bsSingle,
     TSlot(F.Slots.Items[i]).Value);
   tmP2.Font.Style:=[fsBold];
   tmP2.Font.Color:=clGreen;
//   if 20*(((Length(TSlot(F.Slots.Items[i]).Value)*7) div tmP.Width)+1)>tmP.Height then
    tmP2.Height:=20*(((Length(TSlot(F.Slots.Items[i]).Value)*14) div Round(tmP.Width/2))+1);
   if tmP1.Height>tmP2.Height then tmP.Height:=tmP1.Height
    else tmP.Height:=tmP2.Height;

   if Tag=3 then
    begin //weigth
     //use the constraint field for store weight

     tmP1:=STDIClass.AddRzPanel(1,1,10,20,
      tmP,i,alRight,clCream,bvNone,bvNone,bsSingle,
       TSlot(F.Slots.Items[i]).Constraint);

     tmP1.Font.Style:=[fsBold];

     tmColor:=clSkyBlue;
     tmColor1:=clBlack;
     case TSlot(F.Slots.Items[i]).Constraint[1] of
     '2': tmColor:=clMoneyGreen;
     '3': tmColor:=clYellow;
     '4': tmColor:=$000080FF;
     '5': begin
        tmColor:=clRed;
        tmColor1:=clWhite;
      end;
     end;


     tmP1.Color:=tmColor;
     tmP1.Font.Color:=tmColor1;
    end;

//   if T12>T then T:=T12;
   T:=T+tmP.Height;
  end;
 WC.Visible:=True;
  MarkCurrentNavPanel(2);
end;

procedure TAddFactForm2.TabSheet4Show(Sender: TObject);
var
 i,c,T : Integer;
 WC : TWinControl;
 tmP,tmP1 : TRzPanel;
 tmS : string;
begin
 MainForm.ReloadHelpMessage(ScrollBox3,33);

 T3.ID:=TKnowledgeBase(ComboBox1.Items.Objects[ComboBox1.ItemIndex]).NewID('P');

 WC:=ScrollBox4;
 STDIClass.ReleaseObjects(WC);
 T:=1;
 for i := 0 to T3.CBRPResults.Count-1 do
  begin
   tmP:=STDIClass.AddRzPanel(T,1,20,500,
    WC,i,alTop,clCream,bvNone,bvNone,bsNone,'');
   T:=tmP.Top+tmP.Height;

   STDIClass.AddRzPanel(1,1,10,30,
    tmP,i,alLeft,clCream,bvNone,bvNone,bsSingle,
     IntToStr(i+1));

   tmP1:=STDIClass.AddRzPanel(1,100,10,45,
    tmP,i,alLeft,clCream,bvNone,bvNone,bsSingle,
     '['+T3.CBRPResults.Names[i]+']');
   tmP1.Font.Style:=[fsBold];
   tmP1.Font.Color:=cl3DDkShadow;
   tmP1.Tag:=i;
   tmP1.OnClick:=ResultPanelClick;
   tmP1.Cursor:=crHandPoint;

   c:=T3.K1.IndexOfFactByID(T3.CBRPResults.Names[i]);
   if c=-1 then tmS:=MainForm.LS('no data')
    else
     begin
      tmS:=TFact(T3.K1.Facts.Items[c]).Name;
     end;

   tmP1:=STDIClass.AddRzPanel(1,100,10,45,
    tmP,i,alClient,clCream,bvNone,bvNone,bsSingle,
     tmS);
   tmP1.Font.Style:=[fsBold];
   tmP1.Tag:=i;
   tmP1.OnClick:=ResultPanelClick;
   tmP1.Cursor:=crHandPoint;

   tmP1.Height:=20*(((Length(tmS)*8) div 80)+1);
   if tmP.Height<tmP1.Height then tmP.Height:=tmP1.Height;

   //on click

   tmP1:=STDIClass.AddRzPanel(1,500,10,45,
    tmP,i,alRight,clCream,bvNone,bvNone,bsSingle,
     T3.CBRPResults.ValueFromIndex[i]);
   tmP1.Font.Style:=[fsBold];
//   tmP1.Font.Color:=clWhite;
   tmP1.Color:=CRPManager.GetColorForOutputResultsPublication(
    T3.CBRPResults.ValueFromIndex[i],1);
   tmP1.Tag:=i;
   tmP1.OnClick:=ResultPanelClick;
   tmP1.Cursor:=crHandPoint;
  end;
  MarkCurrentNavPanel(3)
end;

procedure TAddFactForm2.TabSheet5Show(Sender: TObject);
begin
 MainForm.ReloadHelpMessage(ScrollBox3,46);
 T3.DataPreporationForDSP;
 T3.DSST.MakeADecision(1);
 T3.ShowDSPResults(ScrollBox5,1);
 MarkCurrentNavPanel(4)
end;

end.
