{------------------------------------------------------------------------------}
{                                                                              }
{  Personal Knowledge Base Designer                                            }
{  by A.Yu. Yurin, N.O. Dorodnykh                                              }
{                                                                              }
{  iskander@icc.ru                                                             }
{  http://knowledge-core.ru/                                                   }
{                                                                              }
{------------------------------------------------------------------------------}

unit AddRuleForm2Unit;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Mask, RzEdit, RzLabel, ExtCtrls, RzPanel, RzButton, RzTabs, UPKBClass,
  RzCmboBx, Menus;

type
  TAddRuleForm2 = class(TForm)
    Image1: TImage;
    RzPageControl1: TRzPageControl;
    TabSheet1: TRzTabSheet;
    GroupBox1: TGroupBox;
    ComboBox1: TComboBox;
    GroupBox3: TGroupBox;
    btn1: TRzButton;
    ListBox1: TListBox;
    TabSheet2: TRzTabSheet;
    GroupBox2: TGroupBox;
    ScrollBox1: TScrollBox;
    RzPanel3: TRzPanel;
    RzLabel5: TRzLabel;
    RzLabel6: TRzLabel;
    RzEdit1: TRzEdit;
    TabSheet3: TRzTabSheet;
    GroupBox4: TGroupBox;
    ScrollBox2: TScrollBox;
    RzPanel2: TRzPanel;
    RzLabel1: TRzLabel;
    RzLabel2: TRzLabel;
    RzLabel3: TRzLabel;
    TabSheet4: TRzTabSheet;
    GroupBox5: TGroupBox;
    ScrollBox4: TScrollBox;
    RzPanel1: TRzPanel;
    RzButton1: TRzButton;
    RzButton2: TRzButton;
    RzButton3: TRzButton;
    RzPanel6: TRzPanel;
    ScrollBox3: TScrollBox;
    RzPanel4: TRzPanel;
    TabSheet5: TRzTabSheet;
    TabSheet6: TRzTabSheet;
    GroupBox6: TGroupBox;
    ScrollBox5: TScrollBox;
    RzPanel5: TRzPanel;
    RzLabel4: TRzLabel;
    RzLabel7: TRzLabel;
    RzPanel7: TRzPanel;
    RzLabel8: TRzLabel;
    GroupBox7: TGroupBox;
    ScrollBox6: TScrollBox;
    RzPanel8: TRzPanel;
    RzLabel9: TRzLabel;
    RzLabel10: TRzLabel;
    RzLabel11: TRzLabel;
    Panel1: TPanel;
    Image2: TImage;
    ComboBox2: TComboBox;
    Panel2: TPanel;
    Image3: TImage;
    PopupMenu2: TPopupMenu;
    RUENG1: TMenuItem;
    ENGRU1: TMenuItem;
    RzPanel9: TRzPanel;
    Memo1: TMemo;
    RzPanel10: TRzPanel;
    RzLabel13: TRzLabel;
    RzLabel12: TRzLabel;
    RzEdit3: TRzEdit;
    ComboBox3: TComboBox;
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure ComboBox1Change(Sender: TObject);
    procedure ListBox1Click(Sender: TObject);
    procedure TabSheet1Show(Sender: TObject);
    procedure TabSheet2Show(Sender: TObject);
    procedure RzButton1Click(Sender: TObject);
    procedure RzButton2Click(Sender: TObject);
    procedure RzButton3Click(Sender: TObject);
    procedure TabSheet3Show(Sender: TObject);
    procedure TabSheet5Show(Sender: TObject);
    procedure TabSheet6Show(Sender: TObject);
    procedure TabSheet4Show(Sender: TObject);
    procedure ListBox1DblClick(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure OnExitCombo(Sender: TObject);
    procedure OnExitCombo2(Sender: TObject);
    procedure OnExitEdit(Sender: TObject);
    procedure OnExitEdit2(Sender: TObject);
    procedure PopupMenu2Popup(Sender: TObject);
    procedure Image1ContextPopup(Sender: TObject; MousePos: TPoint;
      var Handled: Boolean);
    procedure RzEdit1Change(Sender: TObject);
    procedure TabSheet2Exit(Sender: TObject);
    procedure RzEdit3Change(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
   G1  : TGRule;
   R1 : TRule;
   OLst : TStringList;

   procedure AddRuleComponentImageClick(Sender: TObject);
   procedure DelRuleComponentImageClick(Sender: TObject);
   procedure AutoFillRuleComponentImageClick(Sender: TObject);
   procedure ComponentMouseMove(Sender: TObject; Shift: TShiftState; X,
    Y: Integer);
   function GetStrForReplacement(FN,SN,PN:string;K14:TKnowledgeBase):string;
//   function GetObjForReplacement(FN:string;ObjLst:TStringList;K14:TKnowledgeBase):Integer;
   procedure MenuItemClick(Sender: TObject);
   function ReloadDataLHS(WC1:TWinControl):Integer;
   function ReloadDataRHS(WC1:TWinControl):Integer;

   procedure MarkCurrentNavPanel(i:Integer);
  end;

var
  AddRuleForm2: TAddRuleForm2;
  NavPanelsIndexList : TStringList;

implementation

uses USTDIClass, MAIN, AddRuleForm3Unit, uTrans;

{$R *.dfm}
//----------------------------------------------------------------------
procedure TAddRuleForm2.MarkCurrentNavPanel(i:Integer);
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
//----------------------------------------------------
procedure TAddRuleForm2.MenuItemClick(Sender: TObject);
var
 i,j  : Integer;
 WC : TWinControl;
 tmF : TFact;
 tmC : TRzComboBox;
begin
 //get source object
 i:=TMenuItem(Sender).Tag; //object pos
 j:=TPopupMenu(TMenuItem(Sender).Owner).Tag; //sequence pos
 tmF:=TFact(TStringList(OLst.Objects[j]).Objects[i]);

 //get targert
 WC:=TRzPanel(
  TRzPanel(TImage(PopupMenu2.PopupComponent).Parent).Parent
   );
 for i := 1 to WC.ComponentCount-1 do
  begin
   if WC.Components[i] is TRzPanel then
    try
     tmC:=TRzComboBox(TRzPanel(WC.Components[i]).Components[1]);
     if (Trim(TSlot(tmF.Slots.Items[tmC.Tag]).Value)<>'')
      and(Trim(TmC.Text)='') then
      TmC.Text:=
       TSlot(tmF.Slots.Items[tmC.Tag]).Value;
    except
    end;
  end;

end;
//----------------------------------------------------------------
function TAddRuleForm2.GetStrForReplacement(FN,SN,PN:string;K14:TKnowledgeBase):string;
var
 i,j,k : Integer;
 tmTs : TStringList;
 tmF : TFact;
begin
 Result:='';
 i:=Replacements.IndexOfName(FN+':'+SN);
 if i<>-1 then //value for replacement
  begin
   tmTs:=TStringList.Create;
   tmTs.Delimiter:=':';
   tmTs.DelimitedText:=Replacements.ValueFromIndex[i];
   if tmTs.Count=1 then Result:=AnsiUpperCase(PN)
    else //get data from kb
     begin
      //search in actions of entered rules
      for i :=K14.Rules.Count-1  downto 0 do
       for j := 0 to TRule(K14.Rules.Items[i]).Actions.Count-1 do
        if TRAction(TRule(K14.Rules.Items[i]).Actions.Items[j]).Fact.ShortName=
         FN then
          begin
           tmF:=TRAction(TRule(K14.Rules.Items[i]).Actions.Items[j]).Fact;
           for k := 0 to tmF.Slots.Count-1 do
            if TSlot(tmF.Slots.Items[k]).ShortName=SN then
             begin
              Result:=TSlot(tmF.Slots.Items[k]).Value;
              Break;
             end;
          end;
     end;
  end;
end;

procedure TAddRuleForm2.Image1ContextPopup(Sender: TObject; MousePos: TPoint;
  var Handled: Boolean);
begin

end;

//----------------------------------------------------------------
procedure TAddRuleForm2.ComponentMouseMove(Sender: TObject; Shift: TShiftState; X,
  Y: Integer);
begin
 if TObject(Sender) is TRzComboBox then
  TRzPanel(TRzComboBox(Sender).Parent).OnMouseMove(TRzPanel(TRzComboBox(Sender).Parent),
   Shift,X,Y);
 if TObject(Sender) is TRzPanel then
  if TObject(TRzComboBox(Sender).Parent) is TRzPanel then
   TRzPanel(TRzComboBox(Sender).Parent).OnMouseMove(TRzPanel(TRzComboBox(Sender).Parent),
   Shift,X,Y)
    else
     TScrollBox(TRzComboBox(Sender).Parent).SetFocus;
end;
//----------------------------------------------------------------
procedure TAddRuleForm2.OnExitCombo2(Sender: TObject);
var
 i : Integer;
 s : string;
 tKB : TKnowledgeBase;
begin
 s:=Trim(TRzComboBox(Sender).Text);
 if s<>'' then
  begin
   i:=TRzComboBox(Sender).IndexOf(s);
   if i=-1 then
    begin
     TRzComboBox(Sender).Add(s);
     tKB:=TKnowledgeBase(
      ComboBox1.Items.Objects[ComboBox1.ItemIndex]
       );
     i:=tKB.IndexOfTemplate(
      TRAction(R1.Actions.Items[TRzPanel(TRzComboBox(Sender).Parent).Tag]).Fact
       );
     if i>-1 then
       if TSlot(
           TTemplate(tKB.Templates.Items[i]).Slots.Items[TRzComboBox(Sender).Tag]
            ).DataType<>'Fuzzy' then
        begin
         if Trim(TSlot(
           TTemplate(tKB.Templates.Items[i]).Slots.Items[TRzComboBox(Sender).Tag]
            ).Value)<>'' then s:=';'+s;

          TSlot(
           TTemplate(tKB.Templates.Items[i]).Slots.Items[TRzComboBox(Sender).Tag]
            ).Value:=
            TSlot(
             TTemplate(tKB.Templates.Items[i]).Slots.Items[TRzComboBox(Sender).Tag]
              ).Value+s;
        end;
    end;
  end;
end;
//----------------------------------------------------------------
procedure TAddRuleForm2.OnExitCombo(Sender: TObject);
var
 i : Integer;
 s : string;
 tKB : TKnowledgeBase;
begin
 s:=Trim(TRzComboBox(Sender).Text);
 if s<>'' then
  begin
   i:=TRzComboBox(Sender).IndexOf(s);
   if i=-1 then
    begin
     TRzComboBox(Sender).Add(s);
     tKB:=TKnowledgeBase(
      ComboBox1.Items.Objects[ComboBox1.ItemIndex]
       );
     i:=tKB.IndexOfTemplate(
      TCondition(R1.Conditions.Items[TRzPanel(TRzComboBox(Sender).Parent).Tag]).Fact
       );
     if i>-1 then
       if TSlot(
           TTemplate(tKB.Templates.Items[i]).Slots.Items[TRzComboBox(Sender).Tag]
            ).DataType<>'Fuzzy' then
        begin
         if Trim(TSlot(
           TTemplate(tKB.Templates.Items[i]).Slots.Items[TRzComboBox(Sender).Tag]
            ).Value)<>'' then s:=';'+s;

          TSlot(
           TTemplate(tKB.Templates.Items[i]).Slots.Items[TRzComboBox(Sender).Tag]
            ).Value:=
            TSlot(
             TTemplate(tKB.Templates.Items[i]).Slots.Items[TRzComboBox(Sender).Tag]
              ).Value+s;
        end;
    end;
  end;
end;
//----------------------------------------------------------------
procedure TAddRuleForm2.OnExitEdit(Sender: TObject);
var
 s : string;
begin
 s:=Trim(TRzEdit(Sender).Text);
 TSlot(
  TCondition(R1.Conditions.Items[TRzPanel(TRzComboBox(Sender).Parent).Tag]).Fact.
   Slots.Items[TRzComboBox(Sender).Tag]
   ).Value:=s;
end;
//----------------------------------------------------------------
procedure TAddRuleForm2.OnExitEdit2(Sender: TObject);
var
 s : string;
begin
 s:=Trim(TRzEdit(Sender).Text);
 TSlot(
  TCondition(R1.Actions.Items[TRzPanel(TRzComboBox(Sender).Parent).Tag]).Fact.
   Slots.Items[TRzComboBox(Sender).Tag]
   ).Value:=s;
end;
//----------------------------------------------------------------
procedure TAddRuleForm2.PopupMenu2Popup(Sender: TObject);
var
 i,j : Integer;
 tmTs : TStringList;
 tMI : TMenuItem;
 tmF : TFact;
begin
 TPopupMenu(Sender).Items.Clear;

 j:=TComponent(TPopupMenu(Sender).PopupComponent).Tag-3000;
 TPopupMenu(Sender).Tag:=j;
 if j>-1 then
  begin
   tmTs:=TStringList(OLst.Objects[j]);
   for i :=0 to tmTs.Count-1 do
    begin
      tmF:=TFact(tmTs.Objects[i]);
      tMI:=TMenuItem.Create(TPopupMenu(Sender));
      tMI.Caption:=tmTs.Strings[i];
      tMI.Tag:=i;
      tMI.OnClick:=MenuItemClick;
      TPopupMenu(Sender).Items.Add(tMI);
    end;
  end;
end;
//----------------------------------------------------------------
procedure TAddRuleForm2.ComboBox1Change(Sender: TObject);
var
 i  : Integer;
 tKB  : TKnowledgeBase;
 s : string;
begin
 if TComboBox(Sender).Items.IndexOf(TComboBox(Sender).Text)=-1 then
  TComboBox(Sender).ItemIndex:=0;

 tKB:=TKnowledgeBase(
  ComboBox1.Items.Objects[ComboBox1.ItemIndex]
   );

   ListBox1.Items.Clear;
   for i:=0 to tKB.GRules.Count-1 do
   begin
     s:=TGRule(tKB.GRules.Items[i]).Description;
     if s<>'' then s:=' ('+s+')';
     ListBox1.AddItem(
      TGRule(tKB.GRules.Items[i]).Name+s,
        tKB.GRules.Items[i]
      );
   end;

  //packages -----------------------------------------------------------
  ComboBox2.Items.Clear;
  if tKB.RulePackageList.Count>0 then
   begin
    Panel1.Visible:=True;
    GroupBox1.Height:=65;
    //65
    ComboBox2.Items.AddObject('',nil);
    for i := 0 to tKB.RulePackageList.Count-1 do
     ComboBox2.Items.AddObject(tKB.RulePackageList.ValueFromIndex[i],
      tKB.RulePackageList.Objects[i]);
    if ComboBox2.Items.Count>0 then
     ComboBox2.ItemIndex:=0;
   end
    else
     begin
      Panel1.Visible:=False;
      GroupBox1.Height:=45
     end;
 //----------------------------------------------------------------------
  if ListBox1.Items.Count>0 then
   ListBox1.ItemIndex:=0
    else
     ListBox1.ItemIndex:=-1;
  ListBox1Click(ListBox1);
end;

procedure TAddRuleForm2.FormActivate(Sender: TObject);
begin
 if RzPageControl1.ActivePageIndex=1 then
  begin
   RzButton2Click(Self);
   RzButton3Click(Self);
  end
 else
  ComboBox1Change(ComboBox1);
end;

procedure TAddRuleForm2.FormCreate(Sender: TObject);
var
 i  : Integer;
 tKB  : TKnowledgeBase;
 s : string;
begin
  NavPanelsIndexList:=TStringList.Create;
// AddFactForm2.RzButton1.Visible:=True;

 for i := 0 to RzPageControl1.PageCount-1 do
  RzPageControl1.Pages[i].TabVisible:=False;

 ComboBox3.Items.Clear;
 for i := 0 to 100 do
  ComboBox3.Items.Add(IntToStr(i));

 STDIClass.LoadLocalLang(Self,LangLocaleDir+LangPrefix+'007.lan');

 G1:=TGRule.Create;
 G1.Init;

 R1:=TRule.Create;
 R1.Init;

 OLst:=TStringList.Create;

  tKB:=TKnowledgeBase.Create;
  tKB.Init;

  ComboBox1.Enabled:=True;
  ComboBox1.Items.Clear;
   for i:=0 to KBList.Count-1 do
    if TKnowledgeBase(KBList.Items[i]).Kind=0 then
     ComboBox1.Items.AddObject(
       TKnowledgeBase(KBList.Items[i]).Name,
        TKnowledgeBase(KBList.Items[i])
        );

    ComboBox1.Enabled:=True;

    if (ComboBox1.Items.Count>0) then ComboBox1.ItemIndex:=0;
   MainForm.ImageList1.GetIcon(20,Self.Icon);

  if ComboBox1.ItemIndex>KBList.Count-1 then
   begin
    tKB.Name:=MainForm.LS('New knowledge base');
    tKB.Kind:=0;
    KBList.Add(tKB);
   end;

  tKB:=TKnowledgeBase(
   ComboBox1.Items.Objects[ComboBox1.ItemIndex]
    );

  //template list
   ListBox1.Items.Clear;
   for i:=0 to tKB.GRules.Count-1 do
    begin
     s:=TGRule(tKB.GRules.Items[i]).Name;
     if Trim(TGRule(tKB.GRules.Items[i]).Description)<>'' then
      s:=s+' ('+
       TGRule(tKB.GRules.Items[i]).Description+')';

     ListBox1.AddItem(s,
        tKB.GRules.Items[i]
      );
    end;

 ScrollBox1.OnMouseWheelDown:=MainForm.ScrollBoxMouseWheelDown;
 ScrollBox1.OnMouseWheelUp:=MainForm.ScrollBoxMouseWheelUp;
 ScrollBox2.OnMouseWheelDown:=MainForm.ScrollBoxMouseWheelDown;
 ScrollBox2.OnMouseWheelUp:=MainForm.ScrollBoxMouseWheelUp;
 ScrollBox4.OnMouseWheelDown:=MainForm.ScrollBoxMouseWheelDown;
 ScrollBox4.OnMouseWheelUp:=MainForm.ScrollBoxMouseWheelUp;
 ScrollBox5.OnMouseWheelDown:=MainForm.ScrollBoxMouseWheelDown;
 ScrollBox5.OnMouseWheelUp:=MainForm.ScrollBoxMouseWheelUp;
 ScrollBox6.OnMouseWheelDown:=MainForm.ScrollBoxMouseWheelDown;
 ScrollBox6.OnMouseWheelUp:=MainForm.ScrollBoxMouseWheelUp;
end;

procedure TAddRuleForm2.FormShow(Sender: TObject);
var
 T,i  : Integer;
 tmP : TRzPanel;
 tmTs : TStringList;
begin
 case tag of
  0,2:begin  //edit
   Caption:=' '+MainForm.LS('Edit the rule');
  end;
  1:begin  //add
   Caption:=' '+MainForm.LS('Create a new rule');
  end;
  3:begin //rbp
   Caption:=' '+MainForm.LS('Decision-making');
  end;
 end;

  T:=80;
  tmTs:=TStringList.Create;
  case Tag of
   0,1,2:begin
     tmTs.Add('1='+MainForm.LS('STEP 1:')+' '+MainForm.LS('Entering the condition'));
     tmTs.Add('2='+MainForm.LS('STEP 2:')+' '+MainForm.LS('Entered data preview'));
     tmTs.Add('3='+MainForm.LS('STEP 3:')+' '+MainForm.LS('Entering the action'));
     tmTs.Add('4='+MainForm.LS('STEP 4:')+' '+MainForm.LS('Entered data preview'));
     tmTs.Add('5='+MainForm.LS('STEP 5:')+' '+MainForm.LS('RVML - Scheme'));
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

procedure TAddRuleForm2.ListBox1Click(Sender: TObject);
var
 s : string;
begin
 G1:=TGRule(ListBox1.Items.Objects[ListBox1.ItemIndex]);
 R1.Name:=G1.Name+'_'+
  IntToStr(
   TKnowledgeBase(
    ComboBox1.Items.Objects[ComboBox1.ItemIndex]
     ).Rules.Count
   );
 R1.ShortName:=Translit.Trans(R1.Name, Translit.FL);
 R1.GetStructureFrom(G1);

 s:='';
 if Trim(ComboBox2.text)<>'' then
 try
  s:=TKnowledgeBase(
   ComboBox1.Items.Objects[ComboBox1.ItemIndex]
    ).RulePackageList.Names[ComboBox2.ItemIndex];
 except
 end;
 R1.PackageName:=s;

 RzButton2.Enabled:=True;
end;

procedure TAddRuleForm2.ListBox1DblClick(Sender: TObject);
begin
 RzButton2Click(Self);
end;

procedure TAddRuleForm2.RzButton1Click(Sender: TObject);
begin
 Close;
end;

procedure TAddRuleForm2.RzButton2Click(Sender: TObject);
var
 s : string;
 i : Integer;
begin
 case Tag of
  0,2:begin //edit case
   if (RzPageControl1.ActivePageIndex=5) then
    begin
     MainForm.MakeDump(MainForm.LS('Edit the rule')+ ': '+R1.Name,10);
     MainForm.LoadAList(MainForm.RzListView1);
     if (Tag=0) then  //edit from the main form
      begin
        TRule(MainForm.TreeView1.Selected.Data).MakeACloneFrom(
         TKnowledgeBase(
          ComboBox1.Items.Objects[ComboBox1.ItemIndex]
           ), R1);

        //reload name
        if R1.Description<>'' then s:=' ('+R1.Description+')';
        MainForm.TreeView1.Selected.Text:=
         '['+R1.ID+'] '+R1.Name+s;
      end;

     if (Tag=2) then  //edit from AddRuleForm3
      begin
      end;

     MainForm.TreeView1Click(MainForm.TreeView1);
     Close;
    end
   else
    begin
     //check rule name
     R1.Name:=Trim(RzEdit1.Text);
     R1.ShortName:=Translit.Trans(R1.Name, Translit.FL);
     if TKnowledgeBase(
       ComboBox1.Items.Objects[ComboBox1.ItemIndex]
        ).IndexOfRuleByShortName(R1)=-1 then
      begin
       R1.Description:=Trim(Memo1.Text);
       RzPageControl1.ActivePageIndex:=
        RzPageControl1.ActivePageIndex+1;
      end
     else
      begin
       MainForm.MMessageBox(1,0,'0='+MainForm.LS('The rule with such name already exists'))
      end;
     end;
  end; //end edit rule
  1:begin //add rule
   if (RzPageControl1.ActivePageIndex=5) then
    begin
     TKnowledgeBase(ComboBox1.Items.Objects[ComboBox1.ItemIndex]).
      GetHashForRules;
     R1.GetHash(1);
     if TKnowledgeBase(ComboBox1.Items.Objects[ComboBox1.ItemIndex]).
      IndexOfRuleByHash(R1.Hash)=-1  then
       begin
         MainForm.MakeDump(MainForm.LS('Create a new rule')+': '+R1.Name,6);
         MainForm.LoadAList(MainForm.RzListView1);

         TKnowledgeBase(ComboBox1.Items.Objects[ComboBox1.ItemIndex]).Rules.Add(R1);
         MainForm.LoadTree(KBList,MainForm.TreeView1);
         Close;
       end
      else //this rule exists
       begin
        MainForm.MMessageBox(1,0,'0='+
         MainForm.LS('Such rule already exists'))
       end;
    end
   else
    begin
     //check rule name
     R1.Name:=Trim(RzEdit1.Text);
     R1.ShortName:=Translit.Trans(R1.Name, Translit.FL);
     if TKnowledgeBase(
       ComboBox1.Items.Objects[ComboBox1.ItemIndex]
        ).IndexOfRuleByShortName(R1)=-1 then
      begin
       R1.Description:=Trim(Memo1.Text);

       RzPageControl1.ActivePageIndex:=
        RzPageControl1.ActivePageIndex+1;
      end
     else
      begin
       MainForm.MMessageBox(1,0,'0='+MainForm.LS('The rule with such name already exists'))
      end;
    end;
  end;
 end; //end case
end;

procedure TAddRuleForm2.RzButton3Click(Sender: TObject);
begin
 RzPageControl1.ActivePageIndex:=
  RzPageControl1.ActivePageIndex-1;
end;

procedure TAddRuleForm2.RzEdit1Change(Sender: TObject);
var
 i,j :Integer;
begin
  TRzEdit(Sender).Text:=StringReplace(TRzEdit(Sender).Text,'(','_',[rfReplaceAll]);
  TRzEdit(Sender).Text:=StringReplace(TRzEdit(Sender).Text,')','_',[rfReplaceAll]);
  R1.ShortName:=Translit.Trans(
    trim(TRzEdit(Sender).Text)
     , Translit.FL);
 if Trim(TRzEdit(Sender).Text)='' then RzButton2.Enabled:=False
  else RzButton2.Enabled:=True;

 i:=TKnowledgeBase(ComboBox1.Items.Objects[ComboBox1.ItemIndex]).
   IndexOfRuleByName(Translit.Trans(TRzEdit(Sender).Text,Translit.FL));
 j:=TKnowledgeBase(ComboBox1.Items.Objects[ComboBox1.ItemIndex]).
   IndexOfRuleByID(R1.ID);
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

procedure TAddRuleForm2.RzEdit3Change(Sender: TObject);
var
 s : string;
 f1 : Double;
begin
 TEdit(Sender).Text:=StringReplace(Trim(TEdit(Sender).Text),'.',',',[rfReplaceAll]);
 s:=TEdit(Sender).Text;
 f1:=0;
 TryStrToFloat(s,f1);
 if ((f1=0)and(s<>'0')) then
  begin
   TEdit(Sender).Text:='1';
  end
end;

procedure TAddRuleForm2.TabSheet1Show(Sender: TObject);
begin
MainForm.ReloadHelpMessage(ScrollBox3,40);

 if ListBox1.ItemIndex=-1 then  RzButton2.Enabled:=False
  else  RzButton2.Enabled:=True;
    RzButton2.Caption:=
     STDIClass.LoadSingleString('RzButton21c',LangLocaleDir+LangPrefix+'007.lan');
    RzButton2.Hint:=
     STDIClass.LoadSingleString('RzButton21h',LangLocaleDir+LangPrefix+'007.lan');
  RzButton3.Enabled:=False;
  MarkCurrentNavPanel(0);
end;
//-----------------------------------------------------------------------------
procedure TAddRuleForm2.AutoFillRuleComponentImageClick(Sender: TObject);
var
 p : TPoint;
begin
 p:=Mouse.CursorPos;
 PopupMenu2.PopupComponent:=TComponent(Sender);
 PopupMenu2.PopUp(p.X,p.Y);
end;
//-----------------------------------------------------------------------------
procedure TAddRuleForm2.DelRuleComponentImageClick(Sender: TObject);
var
 i : Integer;
 tKB : TKnowledgeBase;
begin
  if MainForm.MMessageBox(1,1,'0='+
   MainForm.LS('Really remove the component of the rule?'))=0
   then
    begin
      tKB:=TKnowledgeBase(
       ComboBox1.Items.Objects[ComboBox1.ItemIndex]
        );
     i:=TImage(Sender).Tag;
     if i<2000 then  //condition
      begin
       R1.Conditions.Delete(i-1000);
      end
     else
      begin
       R1.Actions.Delete(i-2000);
      end;
     TabSheet2Show(TabSheet2);
    end;
end;
//-----------------------------------------------------------------------------
procedure TAddRuleForm2.AddRuleComponentImageClick(Sender: TObject);
var
 i,j : Integer;
 tKB : TKnowledgeBase;
begin
  SetFocusedControl(GroupBox3);
  if MainForm.MMessageBox(1,1,'0='+
   MainForm.LS('Add a new component?'))=0
   then
    begin
      tKB:=TKnowledgeBase(
       ComboBox1.Items.Objects[ComboBox1.ItemIndex]
        );
     i:=TImage(Sender).Tag;
     if i<2000 then  //condition
      begin
       ReloadDataLHS(ScrollBox1);
       j:=tKB.IndexOfTemplate(TCondition(R1.Conditions.Items[i-1000]).Fact);
       if j>-1 then
        begin
         R1.InserRuleComponent(0,i-1000,'and',TTemplate(tKB.Templates[j]));
         TabSheet2Show(TabSheet2);
        end;
      end
     else
      begin
       ReloadDataRHS(ScrollBox5);
       j:=tKB.IndexOfTemplate(TRAction(R1.Actions.Items[i-2000]).Fact);
       if j>-1 then
        begin
         R1.InserRuleComponent(1,i-2000,'add',TTemplate(tKB.Templates[j]));
         TabSheet5Show(TabSheet5);
        end;
      end;
//     TabSheet2Show(TabSheet2);
    end;
end;
//-----------------------------------------------------------------------------
procedure TAddRuleForm2.TabSheet2Exit(Sender: TObject);
begin
 R1.Name:=Trim(RzEdit1.Text);
 R1.ShortName:=Translit.Trans(R1.Name, Translit.FL);
 R1.Description:=Trim(Memo1.Text);
 R1.Salience:=Trim(ComboBox3.Text);
 R1.CF:=Trim(RzEdit3.Text);
end;

procedure TAddRuleForm2.TabSheet2Show(Sender: TObject);
var
 i,j,c,c1,j1  : Integer;
 T  : Integer;
 tmTs,tmTs1,tmTs2 : TStringList;
 W : Integer;

 tmWC : TWinControl;

 tmP,tmP1,tmP2 : TRzPanel;
 tmLHS : TCondition;
 tmIm,tmIm1 : TImage;
 tKB : TKnowledgeBase;
 s : string;
 tmT : TTemplate;

begin
	 MainForm.ReloadHelpMessage(ScrollBox3,41);
 //!!!!
 RzButton3.Enabled:=False;

  RzButton2.Caption:=
     STDIClass.LoadSingleString('RzButton21c',LangLocaleDir+LangPrefix+'007.lan');

  if (Tag=0)or((Tag=2)) then
   begin
    RzButton3.Enabled:=False;
    GroupBox2.Caption:=' '+MainForm.LS('STEP 1:')+
     ' '+MainForm.LS('Entering the condition')+': ';
   end
   else
    begin
    end;

 if (R1<>nil) then
 try
  tmTs:=TStringList.Create;
  tmTs1:=TStringList.Create;

   tKB:=TKnowledgeBase(
    ComboBox1.Items.Objects[ComboBox1.ItemIndex]
     );

   if Trim(R1.Description)='' then
    R1.Description:=MainForm.LS('Description of the rule')+': '+R1.Name;

  if R1.ShortName='' then
   R1.ShortName:=Translit.Trans(
    TRzEdit(Sender).Text
     ,Translit.FL);

   if R1.ID='' then
    begin
     R1.ID:=TKnowledgeBase(ComboBox1.Items.Objects[ComboBox1.ItemIndex]).NewID('R');
    end;
    RzLabel5.Caption:='['+R1.ID+']';
    RzEdit1.Text:=R1.Name;
    Memo1.Text:=R1.Description;

   if R1.Salience='' then R1.Salience:='1';
    ComboBox3.ItemIndex:=ComboBox3.Items.IndexOf(R1.Salience);

   if R1.CF='' then R1.CF:='1';
    RzEdit3.Text:=R1.CF;

     T:=1;
      for j := 1 to 5 do
       tmTs1.Add(IntToStr(j));

   tmWC:=ScrollBox1;
   case Tag of
    0,1,2,3 : W:=Round(tmWC.Width/2)-20;
   end;
    tmWC.Visible:=False;
    STDIClass.ReleaseObjects(tmWC);

    //show all templates and slots from LHS
    RzPanel4.Caption:=MainForm.LS('Condition of the rule consists on')+' '+
     IntToStr(R1.Conditions.Count)+' '+MainForm.LS('elements that you need to describe')+':';

    for i:=0 to R1.Conditions.Count-1 do
     begin
       tmP2:=STDIClass.AddRzPanel(T,1,30,500,
        tmWC,i,alTop,clCream,bvNone,bvNone,bsSingle,'');
       tmP2.AutoSize:=True;
       tmP2.AlignWithMargins:=True;
       tmP2.BorderColor:=clRed;

       tmLHS:=TCondition(R1.Conditions.Items[i]);

       tmP:=STDIClass.AddRzPanel(1,1,30,500,
        tmP2,i,alTop,clCream,bvNone,bvNone,bsNone,
         tmLHS.Fact.Name+':');
       tmP.Tag:=-1;

       //-------------------------------------------------------------------
       //auto fill - get objects
       tmTs2:=TStringList.Create;
       if tKB.GetObjForReplacement(tmLHS.Fact.ShortName,tmTs2)>0 then
        begin
         //auto icon
         tmIm1:=STDIClass.AddImage(tmP,1,1,10,47,MainForm.ImageList1,alRight);
         tmIm1.AlignWithMargins:=True;
         tmIm1.Hint:=MainForm.LS('Auto-fill');
         tmIm1.Tag:=3000+OLst.Count;
         OLst.AddObject(IntToStr(tmIm1.Tag),tmTs2);
         tmIm1.PopupMenu:=PopupMenu2;
         tmIm1.PopupMenu.OnPopup:=PopupMenu2Popup;
         tmIm1.OnClick:=AutoFillRuleComponentImageClick;
         tmIm1.Cursor:=crHandPoint;
        end;
       //-------------------------------------------------------------------

       //del icon
       tmIm1:=STDIClass.AddImage(tmP,1,1,10,5,MainForm.ImageList1,alRight);
       tmIm1.AlignWithMargins:=True;
       tmIm1.Hint:=MainForm.LS('Remove');
       tmIm1.Tag:=1000+i;
       tmIm1.OnClick:=DelRuleComponentImageClick;
       tmIm1.Cursor:=crHandPoint;

       //add icon
       tmIm:=STDIClass.AddImage(tmP,1,1,10,20,MainForm.ImageList1,alRight);
       tmIm.AlignWithMargins:=True;
       tmIm.Hint:=MainForm.LS('Add');
       tmIm.Tag:=1000+i;
       tmIm.OnClick:=AddRuleComponentImageClick;
       tmIm.Cursor:=crHandPoint;

       T:=tmP.Top+tmP.Height;
      for j := 0 to tmLHS.Fact.Slots.Count-1 do
      begin

       tmP:=STDIClass.AddRzPanel(T,1,20,500,
        tmP2,j,alTop,clCream,bvNone,bvNone,bsNone,'');
       tmP.Tag:=i;

       tmP1:=STDIClass.AddRzPanel(1,1,10,W+100,
        tmP,j,alLeft,clCream,bvNone,bvNone,bsSingle,
         TSlot(tmLHS.Fact.Slots.Items[j]).Name);
       tmP.Height:=20*(((Length(TSlot(tmLHS.Fact.Slots.Items[j]).Name)*7) div tmP1.Width)+1);
       tmP1.Font.Style:=[];
//       tmP1.OnMouseMove:=ComponentMouseMove;
     //values from template
     c1:=tKB.IndexOfTemplate(tmLHS.Fact);
     if c1>-1 then tmT:=TTemplate(tKB.Templates.Items[c1]) else tmT:=nil;

      if ((TSlot(tmLHS.Fact.Slots.Items[j]).DataType='String')and(tmT=nil))or
       ((TSlot(tmT.Slots.Items[j]).DataType='String'))  then
       begin //combo for string - use dictionaries
        STDIClass.AddRzCombo(tmP,T-3,W+2,
         W-5,tmTs.DelimitedText); //text from template
        //!!!!

         c1:=tKB.IndexOfTemplate(tmLHS.Fact);
         if c1>-1 then
          TRzComboBox(tmP.Components[tmP.ComponentCount-1]).Items.Text:=
           TSlot(TTemplate(tKB.Templates.Items[c1]).Slots.Items[j]).TempValue;
         //!!!!
        TRzComboBox(tmP.Components[tmP.ComponentCount-1]).Align:=alClient;

        if TSlot(tmLHS.Fact.Slots.Items[j]).Value<>'' then
         begin
          c:=TRzComboBox(tmP.Components[tmP.ComponentCount-1]).Items.IndexOf(
            TSlot(tmLHS.Fact.Slots.Items[j]).Value);
          if c=-1 then
           TRzComboBox(tmP.Components[tmP.ComponentCount-1]).Text:=
            TSlot(tmLHS.Fact.Slots.Items[j]).Value
           else
            TRzComboBox(tmP.Components[tmP.ComponentCount-1]).ItemIndex:=c;
         end;

         //----------------------------------------------------------------
         //auto fill value
         if TRzComboBox(tmP.Components[tmP.ComponentCount-1]).Text='' then
          begin
            try
             s:=GetStrForReplacement(
              tmLHS.Fact.ShortName,
               TSlot(tmLHS.Fact.Slots.Items[j]).ShortName,
                AddRuleForm2.ComboBox2.Text,
                 tKB
              );
            except
             s:='';
            end;
             c:=TRzComboBox(tmP.Components[tmP.ComponentCount-1]).Items.IndexOf(
              s);
             if c<>-1 then  TRzComboBox(tmP.Components[tmP.ComponentCount-1]).ItemIndex:=c
              else
                TRzComboBox(tmP.Components[tmP.ComponentCount-1]).Text:=s;
          end;
         //----------------------------------------------------------------

         TRzComboBox(tmP.Components[tmP.ComponentCount-1]).OnExit:=
          OnExitCombo;
//        L:=120;
//        TRzComboBox(tmP.Components[tmP.ComponentCount-1]).OnMouseWheel:=
       end;

      if ((TSlot(tmLHS.Fact.Slots.Items[j]).DataType='Integer')and(tmT=nil))or
       ((TSlot(tmT.Slots.Items[j]).DataType='Integer')) then
       begin   //edit for integer
        STDIClass.AddEdit(tmP,T-3,W+2,
         W-5,'');
        TEdit(tmP.Components[tmP.ComponentCount-1]).Align:=alClient;

        if TSlot(tmLHS.Fact.Slots.Items[j]).Value<>'' then
         TEdit(tmP.Components[tmP.ComponentCount-1]).Text:=
          TSlot(tmLHS.Fact.Slots.Items[j]).Value;
        TEdit(tmP.Components[tmP.ComponentCount-1]).OnExit:=
          OnExitEdit;
       end;

      if ((TSlot(tmLHS.Fact.Slots.Items[j]).DataType='Fuzzy')and(tmT=nil))or
        (TSlot(tmT.Slots.Items[j]).DataType='Fuzzy') then
       begin //combo for string - use scales
        s:='';
        if tmT<>nil then
         begin
          j1:=tKB.IndexOfFScale(TSlot(tmT.Slots.Items[j]).Value);
            if j1>-1 then s:=TFScale(tKB.FScales.Items[j1]).ShowScaleAsString;
         end;

        STDIClass.AddRzCombo(tmP,T-3,W+2,
         W-5,''); //text from template
        TRzComboBox(tmP.Components[tmP.ComponentCount-1]).Items.Delimiter:=';';
        TRzComboBox(tmP.Components[tmP.ComponentCount-1]).Items.DelimitedText:=
           s;
        TRzComboBox(tmP.Components[tmP.ComponentCount-1]).Items.Text:=
           Trim(StringReplace(
            TRzComboBox(tmP.Components[tmP.ComponentCount-1]).Items.Text
             ,'_',' ',[rfReplaceAll]));
         //!!!!
        TRzComboBox(tmP.Components[tmP.ComponentCount-1]).Align:=alClient;

        if TSlot(tmLHS.Fact.Slots.Items[j]).Value<>'' then
         begin
          c:=TRzComboBox(tmP.Components[tmP.ComponentCount-1]).Items.IndexOf(
            TSlot(tmLHS.Fact.Slots.Items[j]).Value);
          if c<>-1 then
            TRzComboBox(tmP.Components[tmP.ComponentCount-1]).ItemIndex:=c;
         end;

         //----------------------------------------------------------------
         //auto fill value
         if TRzComboBox(tmP.Components[tmP.ComponentCount-1]).Text='' then
          begin
            try
             s:=GetStrForReplacement(
              tmLHS.Fact.ShortName,
               TSlot(tmLHS.Fact.Slots.Items[j]).ShortName,
                AddRuleForm2.ComboBox2.Text,
                 tKB
              );
            except
             s:='';
            end;
             c:=TRzComboBox(tmP.Components[tmP.ComponentCount-1]).Items.IndexOf(
              s);
             if c<>-1 then  TRzComboBox(tmP.Components[tmP.ComponentCount-1]).ItemIndex:=c
              else
                TRzComboBox(tmP.Components[tmP.ComponentCount-1]).Text:=s;
          end;
         //----------------------------------------------------------------
         TRzComboBox(tmP.Components[tmP.ComponentCount-1]).OnExit:=
          OnExitCombo;
       end;

       tmP.Components[tmP.ComponentCount-1].Tag:=j;

       if Tag=3 then
        begin
         STDIClass.AddRzCombo(tmP,T-3,10,
          40,tmTs1.Text); //weigth
         TRzComboBox(tmP.Components[tmP.ComponentCount-1]).Items.Text:=
          tmTs1.Text;

         if Trim(TSlot(tmLHS.Fact.Slots.Items[i]).Constraint)='' then
          TRzComboBox(tmP.Components[tmP.ComponentCount-1]).ItemIndex:=0
           else
            TRzComboBox(tmP.Components[tmP.ComponentCount-1]).ItemIndex:=
             TRzComboBox(tmP.Components[tmP.ComponentCount-1]).Items.IndexOf(
              Trim(TSlot(tmLHS.Fact.Slots.Items[j]).Constraint)
               );

         tmP.Components[tmP.ComponentCount-1].Tag:=1000+j;
         TRzComboBox(tmP.Components[tmP.ComponentCount-1]).Align:=alRight;
        end;

      T:=tmP.Top+tmP.Height;
     end;
     tmP2.AutoSize:=True;
     tmP2.Constraints.MinHeight:=T;
      T:=tmP2.Top+T;
   end;
 except
 end;
  tmWC.Visible:=True;

  RzEdit1Change(RzEdit1);
  MarkCurrentNavPanel(1);
end;

function TAddRuleForm2.ReloadDataLHS(WC1:TWinControl):Integer;
var
 i,j,c : Integer;
 WC : TWinControl;
 tmP : TRzPanel;
 tmSlot : TSlot;
begin
 //reload data
 for c := 0 to WC1.ComponentCount-1 do
  begin
   WC:=TRzPanel(WC1.Components[c]);
    for i := 0 to WC.ComponentCount-1 do
     begin
     if WC.Components[i] is TRzPanel then
     if TRzPanel(WC.Components[i]).Tag<>-1 then //not a caption
      begin
       tmP:=TRzPanel(WC.Components[i]);
       if tmP.ComponentCount>0 then
       for j := 0 to tmP.ComponentCount-1 do
        begin
          if tmP.Components[j] is TRzComboBox then
           if tmP.Components[j].Tag<1000 then
            begin
             tmSlot:=TSlot(TCondition(R1.Conditions.Items[tmP.Tag]).Fact.
              Slots[tmP.Components[j].Tag]);
             tmSlot.Value:=
              Trim(TRzComboBox(tmP.Components[j]).Text)
            end
               else  //use the constaraint field for store information about weigth
                begin
                 tmSlot:=TSlot(TCondition(R1.Conditions.Items[tmP.Tag]).Fact.
                  Slots[tmP.Components[j].Tag-1000]);
                 tmSlot.Constraint:=
                  Trim(TRzComboBox(tmP.Components[j]).Text);
                end;
        end;
      end;
     end;
  end;
end;

procedure TAddRuleForm2.TabSheet3Show(Sender: TObject);
var
 i,j,c1,T : Integer;
 WC,WC1 : TWinControl;
 tmP,tmP1 : TRzPanel;

 R : TRule;
 tmLHS : TCondition;

begin
 MainForm.ReloadHelpMessage(ScrollBox3,42);
 RzButton3.Enabled:=True;

 WC1:=ScrollBox1;
 case Tag of
  0,2 : begin
   R:=R1;
   GroupBox4.Caption:=' '+MainForm.LS('STEP 2:')+' '+
    MainForm.LS('Entered data preview')+': ';
  end;
  1 : begin
   R:=R1;
  end;
  3: begin
   RzPanel2.Visible:=False;
  end;
 end;

  R.Name:=RzEdit1.Text;
  R.Description:=Memo1.Text;

 //reload data
 ReloadDataLHS(WC1);

 //show data
 case Tag of
  0,1,2 : begin
   R:=R1;
  end;
  3: begin
//   F:=T3.F1;
  end;
 end;

 RzLabel2.Caption:='['+R.ID+']';
 RzLabel1.Caption:=R.Name;

 WC:=ScrollBox2;
 STDIClass.ReleaseObjects(WC);
 T:=1;
 WC.Visible:=False;
 c1:=0;
    for j:=0 to R1.Conditions.Count-1 do
     begin
      tmLHS:=TCondition(R1.Conditions.Items[j]);
      tmP:=STDIClass.AddRzPanel(T+1,1,30,500,
       WC,i,alTop,clCream,bvNone,bvNone,bsNone,'');
      tmP1:=STDIClass.AddRzPanel(1,1,20,500,
       tmP,i,alTop,clCream,bvNone,bvNone,bsNone,tmLHS.Fact.Name+':');
      tmP1.Font.Color:=clBlack;

      tmP.AutoSize:=True;
      tmP.AlignWithMargins:=True;
      T:=tmP1.Top+tmP1.Height;
      tmLHS.Fact.ShowAsTable(tmP,T,0);

      if (tmP.Tag=0)or(tmP.Tag=2) then
       begin
         tmP1:=STDIClass.AddRzPanel(T,1,20,500,
          tmP,i,alTop,clCream,bvNone,bvNone,bsSingle,MainForm.LS('no data'));
         tmP1.Font.Color:=clRed;
         tmP1.Font.Style:=[fsBold];
         Inc(c1);
       end;
      T:=tmP.Top+tmP.Height;
     end;

 RzButton2.Enabled:=True;
 WC.Visible:=True;
 MarkCurrentNavPanel(2);
end;


procedure TAddRuleForm2.TabSheet4Show(Sender: TObject);
begin
 RzButton2.Caption:=MainForm.LS('Ok');
 MainForm.ReloadHelpMessage(ScrollBox3,45);
 R1.DrawV2(ScrollBox4,0,R1.ID);
 MarkCurrentNavPanel(5);
end;

procedure TAddRuleForm2.TabSheet5Show(Sender: TObject);
var
 i,j,c,c1,j1  : Integer;
 T  : Integer;
 tmTs,tmTs1 : TStringList;
 tmTs2 : TStringList;
 W : Integer;

 tmWC : TWinControl;

 tmP,tmP1,tmP2 : TRzPanel;
 tmRHS : TRAction;
 tmIm,tmIm1 : TImage;
 tKB : TKnowledgeBase;
 s : string;
 tmT : TTemplate;

begin
  MainForm.ReloadHelpMessage(ScrollBox3,43);
  RzButton2.Caption:=MainForm.LS('Next >>');
//  RzButton2.Hint:='?????????? ??????? ???????? ????? (??????????)';
  if (Tag=0)or(Tag=2) then
   begin
   end
   else
    begin
     RzButton3.Enabled:=True;
   end;

 if (R1<>nil) then
 try
  tmTs:=TStringList.Create;
  tmTs1:=TStringList.Create;

   tKB:=TKnowledgeBase(
    ComboBox1.Items.Objects[ComboBox1.ItemIndex]
     );

   if R1.ID='' then
    begin
     R1.ID:=TKnowledgeBase(ComboBox1.Items.Objects[ComboBox1.ItemIndex]).NewID('R');
    end;
    RzLabel4.Caption:='['+R1.ID+']';
    RzLabel8.Caption:=R1.Name;

     T:=1;
      for j := 1 to 5 do
       tmTs1.Add(IntToStr(j));

   tmWC:=ScrollBox5;
   case Tag of
    0,1,2,3 : W:=Round(tmWC.Width/2)-20;
  //  3: W:=Round(tmWC.Width/5*2)-20;
   end;
    tmWC.Visible:=False;
    STDIClass.ReleaseObjects(tmWC);

    //show all templates and slots from RHS
    RzPanel7.Caption:=MainForm.LS('Action of the rule consists on')+' '+
     IntToStr(R1.Actions.Count)+' '+MainForm.LS('elements that you need to describe')+':';

    for i:=0 to R1.Actions.Count-1 do
     begin
       tmP2:=STDIClass.AddRzPanel(T,1,30,500,
        tmWC,i,alTop,clCream,bvNone,bvNone,bsSingle,'');
       tmP2.AutoSize:=True;
       tmP2.AlignWithMargins:=True;
       tmP2.BorderColor:=clNavy;

       tmRHS:=TRAction(R1.Actions.Items[i]);

       tmP:=STDIClass.AddRzPanel(1,1,30,500,
        tmP2,i,alTop,clCream,bvNone,bvNone,bsNone,
         tmRHS.Fact.Name+':');
       tmP.Tag:=-1;

       //-------------------------------------------------------------------
       //auto fill get objects
       tmTs2:=TStringList.Create;
       if tKB.GetObjForReplacement(tmRHS.Fact.ShortName,tmTs2)>0 then
        begin
         //auto icon
         tmIm1:=STDIClass.AddImage(tmP,1,1,10,47,MainForm.ImageList1,alRight);
         tmIm1.AlignWithMargins:=True;
         tmIm1.Hint:=MainForm.LS('Auto-fill');
         OLst.AddObject(IntToStr(tmIm1.Tag),tmTs2);
         tmIm1.PopupMenu:=PopupMenu2;
         tmIm1.PopupMenu.OnPopup:=PopupMenu2Popup;
         tmIm1.OnClick:=AutoFillRuleComponentImageClick;
         tmIm1.Cursor:=crHandPoint;
       end;
       //-------------------------------------------------------------------
       //del icon
       tmIm1:=STDIClass.AddImage(tmP,1,1,10,5,MainForm.ImageList1,alRight);
       tmIm1.AlignWithMargins:=True;
       tmIm1.Hint:=MainForm.LS('Remove');
       tmIm1.Tag:=2000+i;
       tmIm1.OnClick:=DelRuleComponentImageClick;
       tmIm1.Cursor:=crHandPoint;
       //add icon
       tmIm:=STDIClass.AddImage(tmP,1,1,10,20,MainForm.ImageList1,alRight);
       tmIm.AlignWithMargins:=True;
       tmIm.Hint:=MainForm.LS('Add');
       tmIm.Tag:=2000+i;
       tmIm.OnClick:=AddRuleComponentImageClick;
       tmIm.Cursor:=crHandPoint;

       T:=tmP.Top+tmP.Height;
      for j := 0 to tmRHS.Fact.Slots.Count-1 do
      begin
       tmP:=STDIClass.AddRzPanel(T,1,20,500,
        tmP2,j,alTop,clCream,bvNone,bvNone,bsNone,'');
       tmP.Tag:=i;

       tmP1:=STDIClass.AddRzPanel(1,1,10,W+100,
        tmP,j,alLeft,clCream,bvNone,bvNone,bsSingle,
         TSlot(tmRHS.Fact.Slots.Items[j]).Name);
       tmP.Height:=20*(((Length(TSlot(tmRHS.Fact.Slots.Items[j]).Name)*7) div tmP1.Width)+1);
       tmP1.Font.Style:=[];

     c1:=tKB.IndexOfTemplate(tmRHS.Fact);
     if c1>-1 then tmT:=TTemplate(tKB.Templates.Items[c1]) else tmT:=nil;

     //values from template
      if ((TSlot(tmRHS.Fact.Slots.Items[j]).DataType='String')and(tmT=nil))or
       ((TSlot(tmT.Slots.Items[j]).DataType='String'))  then
       begin //combo for string - use dictionaries
     //   T:=
        STDIClass.AddRzCombo(tmP,T-3,W+2,
         W-5,tmTs.DelimitedText); //text from template
//        TComboBox(tmP.Components[tmP.ComponentCount-1]).Items.Delimiter:=';';
        //!!!!
         c1:=tKB.IndexOfTemplate(tmRHS.Fact);
         if c1>-1 then
          TRzComboBox(tmP.Components[tmP.ComponentCount-1]).Items.Text:=
           TSlot(TTemplate(tKB.Templates.Items[c1]).Slots.Items[j]).TempValue;
        //!!!!
        TRzComboBox(tmP.Components[tmP.ComponentCount-1]).Align:=alClient;

        if TSlot(tmRHS.Fact.Slots.Items[j]).Value<>'' then
         begin
          c:=TRzComboBox(tmP.Components[tmP.ComponentCount-1]).Items.IndexOf(
            TSlot(tmRHS.Fact.Slots.Items[j]).Value);
          if c=-1 then
           TRzComboBox(tmP.Components[tmP.ComponentCount-1]).Text:=
            TSlot(tmRHS.Fact.Slots.Items[j]).Value
           else
            TRzComboBox(tmP.Components[tmP.ComponentCount-1]).ItemIndex:=c;
         end;

         //----------------------------------------------------------------
         //auto fill value
         if TRzComboBox(tmP.Components[tmP.ComponentCount-1]).Text='' then
          begin
           try
             s:=GetStrForReplacement(
              tmRHS.Fact.ShortName,
               TSlot(tmRHS.Fact.Slots.Items[j]).ShortName,
                AddRuleForm2.ComboBox2.Text,
                 tKB
              );
            except
             s:='';
            end;
             c:=TRzComboBox(tmP.Components[tmP.ComponentCount-1]).Items.IndexOf(
              s);
             if c<>-1 then  TRzComboBox(tmP.Components[tmP.ComponentCount-1]).ItemIndex:=c
              else
                TRzComboBox(tmP.Components[tmP.ComponentCount-1]).Text:=s;
          end;
         //----------------------------------------------------------------

         TRzComboBox(tmP.Components[tmP.ComponentCount-1]).OnExit:=
          OnExitCombo2;
       end;

      if ((TSlot(tmRHS.Fact.Slots.Items[j]).DataType='Integer')and(tmT=nil))or
       ((TSlot(tmT.Slots.Items[j]).DataType='Integer')) then
       begin
     //   T:=
        STDIClass.AddEdit(tmP,T-3,W+2,
         W-5,'');
        TEdit(tmP.Components[tmP.ComponentCount-1]).Align:=alClient;

        if TSlot(tmRHS.Fact.Slots.Items[j]).Value<>'' then
         TEdit(tmP.Components[tmP.ComponentCount-1]).Text:=
          TSlot(tmRHS.Fact.Slots.Items[j]).Value;

        TEdit(tmP.Components[tmP.ComponentCount-1]).OnExit:=
          OnExitEdit2;
       end;

      if ((TSlot(tmRHS.Fact.Slots.Items[j]).DataType='Fuzzy')and(tmT=nil))or
        (TSlot(tmT.Slots.Items[j]).DataType='Fuzzy') then
       begin //combo for string - use scales
        s:='';
        if tmT<>nil then
         begin
          j1:=tKB.IndexOfFScale(TSlot(tmT.Slots.Items[j]).Value);
            if j1>-1 then s:=TFScale(tKB.FScales.Items[j1]).ShowScaleAsString;
         end;

        STDIClass.AddRzCombo(tmP,T-3,W+2,
         W-5,''); //text from template
        TRzComboBox(tmP.Components[tmP.ComponentCount-1]).Items.Delimiter:=';';
        TRzComboBox(tmP.Components[tmP.ComponentCount-1]).Items.DelimitedText:=
           s;
        TRzComboBox(tmP.Components[tmP.ComponentCount-1]).Items.Text:=
           Trim(StringReplace(
            TRzComboBox(tmP.Components[tmP.ComponentCount-1]).Items.Text
             ,'_',' ',[rfReplaceAll]));

//         TRzComboBox(tmP.Components[tmP.ComponentCount-1]).Items.Text:=
//           TSlot(TTemplate(tKB.Templates.Items[c1]).Slots.Items[j]).TempValue;
         //!!!!
        TRzComboBox(tmP.Components[tmP.ComponentCount-1]).Align:=alClient;

        if TSlot(tmRHS.Fact.Slots.Items[j]).Value<>'' then
         begin
          c:=TRzComboBox(tmP.Components[tmP.ComponentCount-1]).Items.IndexOf(
            TSlot(tmRHS.Fact.Slots.Items[j]).Value);
          if c<>-1 then
//           TRzComboBox(tmP.Components[tmP.ComponentCount-1]).Text:=
//            TSlot(tmLHS.Fact.Slots.Items[j]).Value
//           else
            TRzComboBox(tmP.Components[tmP.ComponentCount-1]).ItemIndex:=c;
         end;

         //----------------------------------------------------------------
         //auto fill value
         if TRzComboBox(tmP.Components[tmP.ComponentCount-1]).Text='' then
          begin
            try
             s:=GetStrForReplacement(
              tmRHS.Fact.ShortName,
               TSlot(tmRHS.Fact.Slots.Items[j]).ShortName,
                AddRuleForm2.ComboBox2.Text,
                 tKB
              );
            except
             s:='';
            end;
             c:=TRzComboBox(tmP.Components[tmP.ComponentCount-1]).Items.IndexOf(
              s);
             if c<>-1 then  TRzComboBox(tmP.Components[tmP.ComponentCount-1]).ItemIndex:=c
              else
                TRzComboBox(tmP.Components[tmP.ComponentCount-1]).Text:=s;
          end;
         //----------------------------------------------------------------

         TRzComboBox(tmP.Components[tmP.ComponentCount-1]).OnExit:=
          OnExitCombo2;
       end;

       tmP.Components[tmP.ComponentCount-1].Tag:=j;

       if Tag=3 then
        begin
 //        T:=
         STDIClass.AddRzCombo(tmP,T-3,10,
          40,tmTs1.Text); //weigth
         TRzComboBox(tmP.Components[tmP.ComponentCount-1]).Items.Text:=
          tmTs1.Text;

         if Trim(TSlot(tmRHS.Fact.Slots.Items[i]).Constraint)='' then
          TRzComboBox(tmP.Components[tmP.ComponentCount-1]).ItemIndex:=0
           else
            TRzComboBox(tmP.Components[tmP.ComponentCount-1]).ItemIndex:=
             TRzComboBox(tmP.Components[tmP.ComponentCount-1]).Items.IndexOf(
              Trim(TSlot(tmRHS.Fact.Slots.Items[j]).Constraint)
               );

         tmP.Components[tmP.ComponentCount-1].Tag:=2000+j; //!!!! 1000
         TRzComboBox(tmP.Components[tmP.ComponentCount-1]).Align:=alRight;
        end;

      T:=tmP.Top+tmP.Height;
     end;
     tmP2.AutoSize:=True;
     tmP2.Constraints.MinHeight:=T;
      T:=tmP2.Top+T;
   end;
 except
 end;
  tmWC.Visible:=True;
  RzButton2.Enabled:=True;
  MarkCurrentNavPanel(3);
end;

//---------------------------------------------------------------------------
function TAddRuleForm2.ReloadDataRHS(WC1:TWinControl):Integer;
var
 i,j,c : Integer;
 WC : TWinControl;
 tmP : TRzPanel;
 tmSlot : TSlot;
begin
 //reload data
 for c := 0 to WC1.ComponentCount-1 do
  begin
   WC:=TRzPanel(WC1.Components[c]);
    for i := 0 to WC.ComponentCount-1 do
     begin
     if WC.Components[i] is TRzPanel then
     if TRzPanel(WC.Components[i]).Tag<>-1 then //not a caption
      begin
       tmP:=TRzPanel(WC.Components[i]);
       if tmP.ComponentCount>0 then
       for j := 0 to tmP.ComponentCount-1 do
        begin
          if tmP.Components[j] is TRzComboBox then
           if tmP.Components[j].Tag<1000 then
            begin
             tmSlot:=TSlot(TRAction(R1.Actions.Items[tmP.Tag]).Fact.
              Slots[tmP.Components[j].Tag]);
             tmSlot.Value:=
              Trim(TRzComboBox(tmP.Components[j]).Text)
            end
               else  //use the constaraint field for store information about weigth
                begin
                 tmSlot:=TSlot(TRAction(R1.Actions.Items[tmP.Tag]).Fact.
                  Slots[tmP.Components[j].Tag-1000]);
                 tmSlot.Constraint:=
                  Trim(TRzComboBox(tmP.Components[j]).Text);
                end;
        end;
      end;
     end;
  end;
end;
//---------------------------------------------------------------------------
procedure TAddRuleForm2.TabSheet6Show(Sender: TObject);
var
 i,j,c1,T : Integer;
 WC,WC1 : TWinControl;
 tmP,tmP1 : TRzPanel;
 R : TRule;
 tmRHS : TRAction;
begin
 MainForm.ReloadHelpMessage(ScrollBox3,44);
 RzButton2.Caption:=MainForm.LS('Next >>');
 RzButton3.Enabled:=True;

 WC1:=ScrollBox5;
 case Tag of
  0,2 : begin
   R:=R1;
  end;
  1 : begin
   R:=R1;
  end;
  3: begin
   RzPanel2.Visible:=False;
  end;
 end;
  R.Name:=RzEdit1.Text;

 //reload data
 ReloadDataRHS(WC1);

 //show data
 case Tag of
  0,1,2 : begin
   R:=R1;
  end;
  3: begin
//   F:=T3.F1;
  end;
 end;

 RzLabel10.Caption:='['+R.ID+']';
 RzLabel9.Caption:=R.Name;

 WC:=ScrollBox6;
 STDIClass.ReleaseObjects(WC);
 T:=1;
// L:=5;
 WC.Visible:=False;
 c1:=0;
    for j:=0 to R1.Actions.Count-1 do
     begin
      tmRHS:=TRAction(R1.Actions.Items[j]);
      tmP:=STDIClass.AddRzPanel(T+1,1,30,500,
       WC,i,alTop,clCream,bvNone,bvNone,bsNone,'');
      tmP1:=STDIClass.AddRzPanel(1,1,20,500,
       tmP,i,alTop,clCream,bvNone,bvNone,bsNone,tmRHS.Fact.Name+':');
      tmP1.Font.Color:=clBlack;

      tmP.AutoSize:=True;
      tmP.AlignWithMargins:=True;
      T:=tmP1.Top+tmP1.Height;
      tmRHS.Fact.ShowAsTable(tmP,T,0);

      if (tmP.Tag=0)or(tmP.Tag=2) then
       begin
         tmP1:=STDIClass.AddRzPanel(T,1,20,500,
          tmP,i,alTop,clCream,bvNone,bvNone,bsSingle,MainForm.LS('no data'));
         tmP1.Font.Color:=clRed;
         tmP1.Font.Style:=[fsBold];
         Inc(c1);
       end;
      T:=tmP.Top+tmP.Height;
     end;
 RzButton2.Enabled:=True;
 WC.Visible:=True;
 MarkCurrentNavPanel(4);
end;


end.
