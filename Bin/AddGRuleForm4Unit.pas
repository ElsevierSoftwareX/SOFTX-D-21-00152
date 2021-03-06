{------------------------------------------------------------------------------}
{                                                                              }
{  Personal Knowledge Base Designer                                            }
{  by A.Yu. Yurin, N.O. Dorodnykh                                              }
{                                                                              }
{  iskander@icc.ru                                                             }
{  http://knowledge-core.ru/                                                   }
{                                                                              }
{------------------------------------------------------------------------------}

unit AddGRuleForm4Unit;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Menus, StdCtrls, Mask, RzEdit, RzLabel, RzPanel, RzButton, ExtCtrls,
  RzTabs, UPKBClass, RzCmboBx, ComCtrls;

type
  TAddGRuleForm = class(TForm)
    Image1: TImage;
    RzPageControl1: TRzPageControl;
    TabSheet1: TRzTabSheet;
    GroupBox1: TGroupBox;
    Panel1: TPanel;
    Image2: TImage;
    ComboBox2: TComboBox;
    Panel2: TPanel;
    Image3: TImage;
    ComboBox1: TComboBox;
    TabSheet4: TRzTabSheet;
    GroupBox5: TGroupBox;
    ScrollBox4: TScrollBox;
    RzPanel1: TRzPanel;
    RzButton1: TRzButton;
    RzButton2: TRzButton;
    RzButton3: TRzButton;
    RzPanel6: TRzPanel;
    ScrollBox3: TScrollBox;
    PopupMenu2: TPopupMenu;
    RUENG1: TMenuItem;
    ENGRU1: TMenuItem;
    GroupBox2: TGroupBox;
    RzPanel4: TRzPanel;
    RzLabel1: TRzLabel;
    RzLabel2: TRzLabel;
    RzEdit2: TRzEdit;
    RzPanel9: TRzPanel;
    Memo1: TMemo;
    TabSheet2: TRzTabSheet;
    GroupBox4: TGroupBox;
    ScrollBox1: TScrollBox;
    RzPanel2: TRzPanel;
    RzLabel3: TRzLabel;
    RzLabel5: TRzLabel;
    RzLabel6: TRzLabel;
    RzPanel3: TRzPanel;
    Image4: TImage;
    procedure RzButton1Click(Sender: TObject);
    procedure RzButton3Click(Sender: TObject);
    procedure RzButton2Click(Sender: TObject);
    procedure MarkCurrentNavPanel(i:Integer);
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure TabSheet1Show(Sender: TObject);
    procedure TabSheet4Show(Sender: TObject);
    procedure ComboBox1Change(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure TabSheet2Show(Sender: TObject);
    procedure Image5Click(Sender: TObject);

    Function ShowEditPanel(tmWC:TWinControl;T1:TTemplate;delBtnF:Boolean; T,L:Integer):TRzPanel;
    procedure AddGRuleComponentImageClick(Sender: TObject);
    procedure DelGRuleComponentImageClick(Sender: TObject);
    procedure TabSheet2Exit(Sender: TObject);
    procedure Image4Click(Sender: TObject);

    procedure AssignProcedures;
    procedure ComboBox2Change(Sender: TObject);
    procedure TabSheet1Exit(Sender: TObject);
    procedure RzEdit2Change(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    G1 : TGRule;
  end;

var
  AddGRuleForm: TAddGRuleForm;
  NavPanelsIndexList : TStringList;

implementation

uses USTDIClass, MAIN, uTrans;

{$R *.dfm}
//-----------------------------------------------------------------------------
procedure TAddGRuleForm.DelGRuleComponentImageClick(Sender: TObject);
begin
 if MainForm.MMessageBox(1,1,'0='+
  MainForm.LS('Really remove the component of the generalized rule?'))=0
   then
    begin
     TRzPanel(TImage(Sender).Parent).Free;
     TabSheet2Exit(TabSheet2);
    end;
end;
//-----------------------------------------------------------------------------
procedure TAddGRuleForm.AddGRuleComponentImageClick(Sender: TObject);
var
 i : Integer;
 tKB : TKnowledgeBase;
 tmP : TRzPanel;
 s : string;
begin
//  SetFocusedControl(GroupBox3);
  i:=TImage(Sender).Tag;
  if i=10 then s:=MainForm.LS('Condition') else s:=MainForm.LS('Action');

  if MainForm.MMessageBox(1,1,'0='+MainForm.LS('Do add the component')+' ('+s+') ?')=0
   then
    begin
      tKB:=TKnowledgeBase(
       ComboBox1.Items.Objects[ComboBox1.ItemIndex]
        );
     if i=10 then  //condition
      begin
       tmP:=tKb.ShowEditTempPanelForGrule(TRzPanel(ScrollBox1.Components[0]),
        nil,True,
         (TRzPanel(ScrollBox1.Components[0]).Top+TRzPanel(ScrollBox1.Components[0]).Height)
          ,20);
      end
     else
      begin
       tmP:=tKb.ShowEditTempPanelForGrule(TRzPanel(ScrollBox1.Components[1]),
        nil,True,
         (TRzPanel(ScrollBox1.Components[0]).Top+TRzPanel(ScrollBox1.Components[0]).Height)
          ,20);
      end;
     if tmP<>nil then
      TImage(tmP.Components[1]).OnClick:=DelGRuleComponentImageClick;
     TabSheet2Exit(TabSheet2);
    end;

end;
//--------------------------------------------------------------
Function TAddGRuleForm.ShowEditPanel(tmWC:TWinControl;T1:TTemplate;delBtnF:Boolean;T,L:Integer):TRzPanel;
var
  tmP : TRzPanel;
  s : string;
  tmIm : TImage;
  tmCB : TComboBox;

  i : Integer;
begin
 try
  tmP:=STDIClass.AddRzPanel(T,L,20,500,
   tmWC,0,alTop,clCream,bvNone,bvNone,bsNone,'');
   tmP.BorderWidth:=2;
  tmP.BorderWidth:=2;
  tmP.Margins.Top:=0;
  tmP.Margins.Bottom:=1;
  tmP.AlignWithMargins:=True;

  //combo for temp name
  STDIClass.AddCombo(tmP,1,20,230,''); //text from template
  tmCB:=
   TComboBox(tmP.Components[tmP.ComponentCount-1]);

  for i := 0 to tmKb.Templates.Count-1 do
   begin
    s:=TTemplate(tmKb.Templates.Items[i]).Description;
    if s<>'' then s:=' ('+s+')';

   tmCB.Items.AddObject(
    TTemplate(tmKb.Templates.Items[i]).Name+s,
     TTemplate(tmKb.Templates.Items[i])
   );
   end;

  tmCB.Align:=alClient;
  tmCB.AlignWithMargins:=True;

  if T1<>nil then
   begin
    s:=T1.Description;
    if s<>'' then s:=' ('+s+')';

    tmCB.ItemIndex:=tmCB.Items.IndexOf(T1.Name+s);
   end;

  if delBtnF then
   begin
     //del icon
     tmIm:=STDIClass.AddImage(tmP,T,Round(tmWC.Width/2)+150,10,5,
      MainForm.ImageList1,alRight);
     tmIm.AlignWithMargins:=True;
     tmIm.Margins.Top:=6;
     tmIm.Hint:=MainForm.LS('Remove the component of the generalized rule');
     tmIm.Cursor:=crHandPoint;
     tmIm.OnClick:=DelGRuleComponentImageClick;
    end;
//   tmP1.Cursor:=crHandPoint;
//   tmP1.OnClick:=GRuleLabelClick;
   tmP.AutoSize:=True;
  Result:=tmP;
 except
  Result:=nil;
 end;
end;
//----------------------------------------------------------------------
procedure TAddGRuleForm.MarkCurrentNavPanel(i:Integer);
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

procedure TAddGRuleForm.ComboBox1Change(Sender: TObject);
var
 tKB  : TKnowledgeBase;
 i : Integer;
begin
 if TComboBox(Sender).Items.IndexOf(TComboBox(Sender).Text)=-1 then
  TComboBox(Sender).ItemIndex:=0;

 tKB:=TKnowledgeBase(
  TComboBox(Sender).Items.Objects[TComboBox(Sender).ItemIndex]
   );

  //packages -----------------------------------------------------------
  ComboBox2.Items.Clear;
  if tKB.GRulePackageList.Count>0 then
   begin
    Panel1.Visible:=True;
    GroupBox1.Height:=65;
    //65
    ComboBox2.Items.AddObject('',nil);

    for i := 0 to tKB.GRulePackageList.Count-1 do
     ComboBox2.Items.AddObject(
      TTmObj(tKB.GRulePackageList.Objects[i]).GetLongName(
       'G','',tKB,tKB.GRulePackageList.Objects[i]
       ),
        tKB.GRulePackageList.Objects[i]
       );
    if ComboBox2.Items.Count>0 then
     ComboBox2.ItemIndex:=0;
   end
    else
     begin
      Panel1.Visible:=False;
      GroupBox1.Height:=45
     end;
 //----------------------------------------------------------------------
end;

procedure TAddGRuleForm.ComboBox2Change(Sender: TObject);
begin
 if ComboBox2.Text<>'' then
  G1.PackageName:=
   TTmObj(ComboBox2.Items.Objects[ComboBox2.ItemIndex]).ID
  else
    G1.PackageName:='';
end;

procedure TAddGRuleForm.FormActivate(Sender: TObject);
begin
 MarkCurrentNavPanel(0);
 OnActivate:=nil;
end;

procedure TAddGRuleForm.FormCreate(Sender: TObject);
var
 i  : Integer;
// tKB  : TKnowledgeBase;
// s : string;
begin
  NavPanelsIndexList:=TStringList.Create;
 for i := 0 to RzPageControl1.PageCount-1 do
  RzPageControl1.Pages[i].TabVisible:=False;

 STDIClass.LoadLocalLang(Self,LangLocaleDir+LangPrefix+'001.lan');

//  tKB:=TKnowledgeBase.Create;
//  tKB.Init;

  ComboBox1.Enabled:=True;
  ComboBox1.Items.Clear;
   for i:=0 to KBList.Count-1 do
    if TKnowledgeBase(KBList.Items[i]).Kind=0 then
     ComboBox1.Items.AddObject(
       TKnowledgeBase(KBList.Items[i]).Name,
        TKnowledgeBase(KBList.Items[i])
        );

    ComboBox1.Enabled:=True;

    if (ComboBox1.Items.Count>0) then
     begin
//      ComboBox1.ItemIndex:=0;
//       MainForm.ImageList1.GetIcon(20,Self.Icon);
{
      if ComboBox1.ItemIndex>KBList.Count-1 then
       begin
        tKB.Name:='????? ???? ??????';
        tKB.Kind:=0;
        KBList.Add(tKB);
       end;
}
      ComboBox1Change(ComboBox1);

      //add panels for navigation
//      CreateNavPanels;

     end
    else
     begin
      if Tag=3 then
//       MainForm.MMessageBox(1,0,
//       '0=???????????? ?????????? ??????????, ?.?. ??? ???????????? ??? ??????');
      Close;
     end;
end;

procedure TAddGRuleForm.FormShow(Sender: TObject);
var
 T,i  : Integer;
 tmP : TRzPanel;
 tmTs : TStringList;
begin
  T:=80;
  tmTs:=TStringList.Create;
  case Tag of
   0,1:begin
     tmTs.Add('0='+MainForm.LS('STEP 1 and 2:')+' '+
      MainForm.LS('Knowledge base selection and enter a name and description of the generalized rule'));
     tmTs.Add('1='+MainForm.LS('STEP 3:')+' '+
      MainForm.LS('Conditions and actions selection'));
     tmTs.Add('2='+MainForm.LS('STEP 4:')+' '+MainForm.LS('RVML - Scheme'));
   end;
{   1:begin
     tmTs.Add('0=???? 1 ? 2: ????? ???? ?????? ? ??????? ???????)');
     tmTs.Add('1=??? 3: ???????? ???????');
     tmTs.Add('2=??? 4: ???????? (????????) ????????? ??????');
     tmTs.Add('3=??? 5: ???????? ????????');
     tmTs.Add('4=??? 6: ???????? (????????) ????????? ??????');
     tmTs.Add('5=??? 6: RVML-?????');
   end; }
  end;  //end case

   for i := 0 to tmTs.Count-1 do
   begin
    tmP:=STDIClass.AddRzPanel(T,8,0,110,
     Self,0,alCustom,clCream,bvNone,bvNone,bsNone,
      tmTs.ValueFromIndex[i]);
    tmP.Font.Style:=[fsBold];
    tmP.Transparent:=True;
    T:=tmP.Top+tmP.Height+3;
    NavPanelsIndexList.AddObject(tmTs.Names[i],tmP);
   end;
end;

procedure TAddGRuleForm.Image4Click(Sender: TObject);
begin
 //
 ShowMessage('Under Construction');
end;

procedure TAddGRuleForm.Image5Click(Sender: TObject);
var
 newT : Integer;
 tmP : TRzPanel;
begin
 newT:=1;
 if ScrollBox1.ComponentCount>0 then
  if ScrollBox1.Components[ScrollBox1.ComponentCount-1] is TRzPanel then
   newT:=TRzPanel(ScrollBox1.Components[ScrollBox1.ComponentCount-1]).Top+20;

 tmP:=ShowEditPanel(ScrollBox1,nil,True,newT,1);

 if tmP.ComponentCount=5 then
  if tmP.Components[4] is TImage then
//   TImage(tmP.Components[4]).OnClick:=DelTempImageClick;
end;

procedure TAddGRuleForm.RzButton1Click(Sender: TObject);
begin
 Close;
end;

procedure TAddGRuleForm.RzButton2Click(Sender: TObject);
function GetTN(TV:TTreeView;c:Integer;s:string):TTreeNode;
var
 i,j : Integer;
 tmTs : TStringList;
 tmNode : TTreeNode;
begin
 tmTs:=TStringList.Create;
 tmTs.Delimiter:='/';
 tmTs.DelimitedText:=StringReplace(s,' ','+',[rfReplaceAll]);
 tmTs.Text:=StringReplace(tmTs.Text,'+',' ',[rfReplaceAll]);

 tmNode:=TV.Items.Item[0].Item[c].Item[2];
 for i := 0 to tmTs.Count-1 do
  begin
   for j := 0 to tmNode.Count-1  do
    if tmNode.Item[j].Text=tmTs.Strings[i] then
     begin
      tmNode:=tmNode.Item[j];
      Break;
     end;
  end;
 Result:=tmNode;
end;

var
 tmNode : TTreeNode;
 s : string;
begin

   if (RzPageControl1.ActivePageIndex=2) then
    begin  //start last page
     //----------------- add ------------------
     if Tag=1 then
      begin
        MainForm.MakeDump(MainForm.LS('Create a new generalized rule')+': '+G1.Name,6);
        MainForm.LoadAList(MainForm.RzListView1);

        TKnowledgeBase(
         ComboBox1.Items.Objects[ComboBox1.ItemIndex]
          ).GRules.Add(G1);
       //???????? ?????? ? ??????
        if (ComboBox2.Enabled=False)or(ComboBox2.Text='') then
         begin
           MainForm.TreeView1.Selected:=
            G1.AddToTreeView(MainForm.TreeView1,
             MainForm.TreeView1.Items.Item[0].Item[ComboBox1.ItemIndex].Item[2]);
         end
        else
         begin
         //!!!!
         //????????? ????????? ????????
         tmNode:=GetTN(MainForm.TreeView1,ComboBox1.ItemIndex,ComboBox2.Text);
         if tmNode<>nil then
           MainForm.TreeView1.Selected:=
            G1.AddToTreeView(MainForm.TreeView1,tmNode);
         end;
       MainForm.TreeView1.Items.Item[0].Item[ComboBox1.ItemIndex].Item[2].Text:=
        MainForm.PutChildCount(MainForm.TreeView1.Items.Item[0].Item[ComboBox1.ItemIndex].Item[2]);
       MainForm.TreeView1Click(MainForm.TreeView1);
    end
     else
      //------------ edit -------------
      begin
       G1.Description:=Trim(Memo1.Text);

      MainForm.MakeDump(MainForm.LS('Edit the generalized rule')+': '+
       TGRule(MainForm.TreeView1.Selected.Data).Name,10);
      MainForm.LoadAList(MainForm.RzListView1);

      TGRule(MainForm.TreeView1.Selected.Data).MakeACloneFrom(
       TKnowledgeBase(
        ComboBox1.Items.Objects[ComboBox1.ItemIndex]
         ), G1);

      //reload name
      if G1.Description<>'' then s:=' ('+G1.Description+')';
      MainForm.TreeView1.Selected.Text:=
       '['+G1.ID+'] '+G1.Name+s;
      end;
     //-----------------------------------------------
    Close;
    end //end last page
   else
    begin //start not last page
     //check grule name
     G1.Name:=Trim(RzEdit2.Text);
     G1.ShortName:=Translit.Trans(G1.Name, Translit.FL);
     if TKnowledgeBase(
       ComboBox1.Items.Objects[ComboBox1.ItemIndex]
        ).IndexOfGRuleByShortName(G1)=-1 then
      begin
       RzPageControl1.ActivePageIndex:=
        RzPageControl1.ActivePageIndex+1;
      end
     else
      begin
       MainForm.MMessageBox(1,0,'0='+MainForm.LS('The template with such name already exists'))
      end;
    end; //end not last page
end;

procedure TAddGRuleForm.RzButton3Click(Sender: TObject);
begin
 RzPageControl1.ActivePageIndex:=
  RzPageControl1.ActivePageIndex-1;
end;

procedure TAddGRuleForm.RzEdit2Change(Sender: TObject);
var
 i,j :Integer;
begin
  TRzEdit(Sender).Text:=StringReplace(TRzEdit(Sender).Text,'(','_',[rfReplaceAll]);
  TRzEdit(Sender).Text:=StringReplace(TRzEdit(Sender).Text,')','_',[rfReplaceAll]);
 if Trim(TRzEdit(Sender).Text)='' then RzButton2.Enabled:=False
  else RzButton2.Enabled:=True;

 i:=TKnowledgeBase(ComboBox1.Items.Objects[ComboBox1.ItemIndex]).
   IndexOfGRuleByName(Translit.Trans(TRzEdit(Sender).Text,Translit.FL));
 j:=TKnowledgeBase(ComboBox1.Items.Objects[ComboBox1.ItemIndex]).
   IndexOfGRuleByID(G1.ID);
 if (i>-1)and(i<>j) then
  begin
   MainForm.MMessageBox(1,0,
    '0='+MainForm.LS('This rule name already exists'));
   RzButton2.Enabled:=False;
  end
 else
  begin
   RzButton2.Enabled:=True;
  end;
end;

procedure TAddGRuleForm.TabSheet1Exit(Sender: TObject);
begin
 G1.Name:=Trim(RzEdit2.Text);
 G1.ShortName:=Translit.Trans(G1.Name, Translit.FL);
 G1.Description:=Trim(Memo1.Text);
end;

procedure TAddGRuleForm.TabSheet1Show(Sender: TObject);
begin
 if Tag=1 then
  begin
   Caption:=' '+MainForm.LS('Create a new generalized rule');
   MainForm.ReloadHelpMessage(ScrollBox3,71)
  end
   else
    begin
     Caption:=' '+MainForm.LS('Edit the generalized rule');
     MainForm.ReloadHelpMessage(ScrollBox3,72);
    end;

 if G1=nil then
  begin
   G1:=TGRule.Create;
   G1.Init;
   G1.ID:=TKnowledgeBase(ComboBox1.Items.Objects[ComboBox1.ItemIndex]).NewID('G');
   G1.Name:=MainForm.LS('Generalized-rule')+'-'+G1.ID;
   G1.Description:=MainForm.LS('Description of generalized rule')+' '+G1.ID;
  end;

  RzLabel1.Caption:= '['+G1.ID+']';
  RzEdit2.Text:=G1.Name;
  RzEdit2Change(RzEdit2);
  Memo1.Text:=G1.Description;

  RzButton2.Caption:=
   STDIClass.LoadSingleString('RzButton21c',LangLocaleDir+LangPrefix+'001.lan');
//    '????? >>';
  RzButton2.Hint:=
   STDIClass.LoadSingleString('RzButton21h',LangLocaleDir+LangPrefix+'001.lan');
  RzButton3.Enabled:=False;
 MarkCurrentNavPanel(0);
end;

procedure TAddGRuleForm.TabSheet2Exit(Sender: TObject);
var
 i,c : Integer;
 tmP : TRzPanel;
 tmC : TRzComboBox;
 tmT : TTemplate;
begin
 //add conditions
 G1.Conditions.Clear;
 tmP:=TRzPanel(ScrollBox1.Components[0]);
 for i := 1 to tmP.ComponentCount-1 do
  if TRzPanel(tmP.Components[i]).Components[0] is TRzComboBox then
   begin
    tmC:=TRzComboBox(TRzPanel(tmP.Components[i]).Components[0]);
    c:=tmC.ItemIndex;
    if c>-1 then
     begin
      tmT:=TTemplate.Create;
      tmT.Init;
      tmT.MakeACloneFrom(1,tmC.Items.Objects[tmC.ItemIndex]);
      tmT.ID:=TTemplate(tmC.Items.Objects[tmC.ItemIndex]).ID;
      G1.Conditions.Add(tmT);
     end;
   end;
 //add actions
 G1.Actions.Clear;
 tmP:=TRzPanel(ScrollBox1.Components[1]);
 for i := 1 to tmP.ComponentCount-1 do
  if TRzPanel(tmP.Components[i]).Components[0] is TRzComboBox then
   begin
    tmC:=TRzComboBox(TRzPanel(tmP.Components[i]).Components[0]);
    c:=tmC.ItemIndex;
    if c>-1 then
     begin
      tmT:=TTemplate.Create;
      tmT.Init;
      tmT.MakeACloneFrom(1,tmC.Items.Objects[tmC.ItemIndex]);
      tmT.ID:=TTemplate(tmC.Items.Objects[tmC.ItemIndex]).ID;
      G1.Actions.Add(tmT);
     end;
   end;

   if (G1.Actions.Count<>0)and(G1.Conditions.Count<>0) then
    RzButton2.Enabled:=True
     else
      RzButton2.Enabled:=False;
end;

procedure TAddGRuleForm.AssignProcedures;
var
 i,j : Integer;
 tmP : TRzPanel;
begin
 for i := 0 to ScrollBox1.ComponentCount-1 do
  if ScrollBox1.Components[i] is TRzPanel then
   if TRzPanel(ScrollBox1.Components[i]).Components[0] is TRzPanel then
    begin
     //add image
     tmP:=TRzPanel(TRzPanel(ScrollBox1.Components[i]).Components[0]);
     if  tmP.Components[0] is TImage then
      TImage(tmP.Components[0]).OnClick:=
        AddGRuleComponentImageClick;

      //del image
     for j := 1 to tmP.Parent.ComponentCount-1 do
      if TRzPanel(tmP.Parent.Components[j]).Components[1] is TImage then
      TImage(TRzPanel(tmP.Parent.Components[j]).Components[1]).OnClick:=
        DelGRuleComponentImageClick;
    end;
end;

procedure TAddGRuleForm.TabSheet2Show(Sender: TObject);
begin
 RzLabel3.Caption:= '['+G1.ID+']';
 RzLabel6.Caption:=G1.Name;

 STDIClass.ReleaseObjects(ScrollBox1);
 TKnowledgeBase(
    ComboBox1.Items.Objects[ComboBox1.ItemIndex]
     ).ShowEditGRulePanel(ScrollBox1,G1,True,1,20);
 RzButton3.Enabled:=True;
 AssignProcedures;
 MarkCurrentNavPanel(1);
 RzButton2.Caption:=
   STDIClass.LoadSingleString('RzButton21c',LangLocaleDir+LangPrefix+'001.lan');
//    '????? >>';
  RzButton2.Hint:=
   STDIClass.LoadSingleString('RzButton21h',LangLocaleDir+LangPrefix+'001.lan');

 RzPanel3.Caption:=MainForm.LS('You need to select the templates for the conditions (IF) and actions (THEN)');
 TabSheet2Exit(TabSheet2);

 MainForm.ReloadHelpMessage(ScrollBox3,73);
end;

procedure TAddGRuleForm.TabSheet4Show(Sender: TObject);
begin
 RzButton2.Caption:=
   STDIClass.LoadSingleString('RzButton2c',LangLocaleDir+LangPrefix+'001.lan');
//    '????? >>';
  RzButton2.Hint:=
   STDIClass.LoadSingleString('RzButton2h',LangLocaleDir+LangPrefix+'001.lan');
 MainForm.ReloadHelpMessage(ScrollBox3,74);
// G1.Draw(ScrollBox4);
 G1.DrawV2(ScrollBox4,0,G1.ID);
 MarkCurrentNavPanel(2);
end;

end.
