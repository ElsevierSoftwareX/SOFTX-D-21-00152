{------------------------------------------------------------------------------}
{                                                                              }
{  Personal Knowledge Base Designer                                            }
{  by A.Yu. Yurin, N.O. Dorodnykh                                              }
{                                                                              }
{  iskander@icc.ru                                                             }
{  http://knowledge-core.ru/                                                   }
{                                                                              }
{------------------------------------------------------------------------------}

unit AddRuleForm3Unit;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Mask, RzEdit, RzLabel, RzPanel, RzButton, ExtCtrls, RzTabs,
  UPKBClass, DateUtils;

type
  TAddRuleForm3Unit = class(TForm)
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
    TabSheet2: TRzTabSheet;
    GroupBox2: TGroupBox;
    ScrollBox1: TScrollBox;
    RzPanel3: TRzPanel;
    RzLabel5: TRzLabel;
    RzLabel6: TRzLabel;
    RzEdit1: TRzEdit;
    RzPanel4: TRzPanel;
    TabSheet3: TRzTabSheet;
    GroupBox4: TGroupBox;
    ScrollBox2: TScrollBox;
    RzPanel2: TRzPanel;
    RzLabel1: TRzLabel;
    RzLabel2: TRzLabel;
    RzLabel3: TRzLabel;
    TabSheet5: TRzTabSheet;
    GroupBox6: TGroupBox;
    ScrollBox5: TScrollBox;
    RzPanel5: TRzPanel;
    RzLabel4: TRzLabel;
    RzLabel7: TRzLabel;
    RzLabel8: TRzLabel;
    RzPanel7: TRzPanel;
    TabSheet6: TRzTabSheet;
    GroupBox7: TGroupBox;
    ScrollBox6: TScrollBox;
    RzPanel8: TRzPanel;
    RzLabel9: TRzLabel;
    RzLabel10: TRzLabel;
    RzLabel11: TRzLabel;
    TabSheet4: TRzTabSheet;
    GroupBox5: TGroupBox;
    ScrollBox4: TScrollBox;
    RzPanel1: TRzPanel;
    RzButton1: TRzButton;
    RzButton2: TRzButton;
    RzButton3: TRzButton;
    RzPanel6: TRzPanel;
    ScrollBox3: TScrollBox;
    GroupBox8: TGroupBox;
    ScrollBox7: TScrollBox;
    ComboBox3: TComboBox;
    Image5: TImage;
    procedure RzButton1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure ComboBox1Change(Sender: TObject);
    procedure ComboBox2Change(Sender: TObject);
    procedure RzButton2Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure TabSheet1Show(Sender: TObject);
    procedure ComboBox3Change(Sender: TObject);
    procedure Image4Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
//   G1 : TGRule;
   KB1 : TKnowledgeBase;
   procedure GRuleLabelClick(Sender: TObject);
   procedure GRuleAddImageClick(Sender: TObject);
   procedure RuleDelImageClick(Sender: TObject);
   procedure RuleEditClick(Sender: TObject);
   function ShowRules(tKB:TKnowledgeBase;GRPkg,RPkg:string;tmWC:TWinControl):Integer;
  end;

var
  AddRuleForm3: TAddRuleForm3Unit;

implementation

uses MAIN, USTDIClass, AddRuleForm2Unit, uTrans;

{$R *.dfm}

procedure TAddRuleForm3Unit.RuleEditClick(Sender: TObject);
var
 i,j : Integer;
begin
 try
 Application.CreateForm(TAddRuleForm2, AddRuleForm2);
 if TRzPanel(Sender).Tag<>-1 then
  begin
   j:=TRzPanel(TRzPanel(Sender).Parent).Tag;  //grule index

   //edit rule
   AddRuleForm2.G1:=TGRule(KB1.GRules.Items[j]);

   AddRuleForm2.R1:=TRule(KB1.Rules.Items[TRzPanel(Sender).Tag]);
   AddRuleForm2.Tag:=0; //edit mode

   for i := 0 to AddRuleForm2.ComboBox1.Items.Count-1 do
    if AddRuleForm2.ComboBox1.Items[i]=
     KB1.Name then
      begin
       AddRuleForm2.ComboBox1.ItemIndex:=i;
       Break;
      end;
   AddRuleForm2.RzPageControl1.ActivePageIndex:=1;
   AddRuleForm2.ShowModal;
   ComboBox2Change(ComboBox2);
  end
 except
  on e:Exception do
   ShowMessage(e.Message);
 end;
end;

procedure TAddRuleForm3Unit.RuleDelImageClick(Sender: TObject);
begin
  if MainForm.MMessageBox(1,1,'0='+
   MainForm.LS('Delete the rule')+'?')=0
   then
    begin
     MainForm.MakeDump(MainForm.LS('Deletion of the rule')+': ['+
      TRule(KB1.Rules.Items[TImage(Sender).Tag]).ID+']',5);
     MainForm.LoadAList(MainForm.RzListView1);

     KB1.Delete('R',TImage(Sender).Tag);
     ComboBox2Change(ComboBox2);
    end;
end;

procedure TAddRuleForm3Unit.ComboBox1Change(Sender: TObject);
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
 ComboBox2Change(ComboBox2);
end;

procedure TAddRuleForm3Unit.GRuleAddImageClick(Sender: TObject);
begin
 TRzPanel(TImage(Sender).Parent).OnClick(
  TRzPanel(TImage(Sender).Parent)
  );
end;

procedure TAddRuleForm3Unit.GRuleLabelClick(Sender: TObject);
function getRulePackageName(K:TKnowledgeBase;N:string):string;
var
 i : Integer;
begin
 Result:='';
 for i := 0 to K.RulePackageList.Count do
  if K.RulePackageList.ValueFromIndex[i]=N then
   begin
    Result:=K.RulePackageList.Names[i];
    Break;
   end;
end;
Function GetIndex(tmKB:TKnowledgeBase;nm:string):string;
label l1;
var
 i : Integer;
 s : string;
begin
 i:=1;
 s:=Translit.Trans(nm+'_', Translit.FL);
l1: if tmKB.IndexOfRuleByName(s+IntToStr(i))>-1 then
  begin
   Inc(i);
   goto l1;
  end;
 Result:=IntToStr(i);
end;

var
 tG : TGRule;
 i : Integer;
 s : string;
begin
 try
 Application.CreateForm(TAddRuleForm2, AddRuleForm2);
 if TRzPanel(Sender).Tag<>-1 then
  begin
   //create new rule
   tG:=TGRule(KB1.GRules.Items[TRzPanel(Sender).Tag]);
   AddRuleForm2.G1:=tG;
//   AddRuleForm2.R1:=TRule.Create;
//   AddRuleForm2.R1.Init;


   AddRuleForm2.R1.Name:=tG.Name+'_'+GetIndex(KB1,tG.Name);
   AddRuleForm2.R1.ShortName:=
    Translit.Trans(AddRuleForm2.R1.Name, Translit.FL);
 //   tG.ShortName+'_'+GetIndex(KB1,tG.Name);
   AddRuleForm2.R1.GetStructureFrom(tG);
   if ComboBox3.Items.Count=0 then
    begin
     if tG.PackageName='' then AddRuleForm2.R1.PackageName:=''
      else
       AddRuleForm2.R1.PackageName:=
        getRulePackageName(KB1,KB1.GRulePackageList.Values[tG.PackageName])
    end
    else
     begin
      AddRuleForm2.R1.PackageName:=
       TTmObj(ComboBox3.Items.Objects[ComboBox3.ItemIndex]).ID;
     end;
   AddRuleForm2.Tag:=1;
//   AddRuleForm2.OnActivate:=nil;

   for i := 0 to AddRuleForm2.ComboBox1.Items.Count-1 do
    if AddRuleForm2.ComboBox1.Items[i]=
     KB1.Name then
      begin
       AddRuleForm2.ComboBox1.ItemIndex:=i;
       Break;
      end;
   AddRuleForm2.RzPageControl1.ActivePageIndex:=1;
   AddRuleForm2.ShowModal;
   ComboBox2Change(ComboBox2);
  end
 except
  on e:Exception do
   ShowMessage(e.Message);
 end;
end;

procedure TAddRuleForm3Unit.Image4Click(Sender: TObject);
function GetPkgAcr(s:string):string;
var
 i : Integer;
 tmTs : TStringList;
begin
 tmTs:=TStringList.Create;
 tmTs.DelimitedText:=s;
 Result:='';
 for i := 0 to tmTs.Count-1 do
  if Trim(tmTs.Strings[i])<>'' then
   Result:=Result+AnsiUpperCase(Trim(tmTs.Strings[i])[1]);
end;

label
 l1;
var
 tmPkg : TTmObj;
 s1,s : string;
 tKB : TKnowledgeBase;
 i : Integer;
begin
  if MainForm.MMessageBox(1,1,'0=Добавить (создать) новую модификацию деградационного процесса?')=0
   then
    begin
     tKB:=TKnowledgeBase(
      ComboBox1.Items.Objects[ComboBox1.ItemIndex]
       );
      s1:=IntToStr(SecondOfTheYear(Now));
      tmPkg:=TTmObj.Create;
      tmPkg.ID:=s1;
      tmPkg.ID_Root:=TTmObj(ComboBox2.Items.Objects[ComboBox2.ItemIndex]).ID;

      i:=0;
l1:   Inc(i);
      s:=IntToStr(tKB.RulePackageList.Count+i);

      if tKB.GetPkgIDByName(tKB.RulePackageList,s)<>'' then goto l1;
      tmPkg.Name:=GetPkgAcr(ComboBox2.Text)+' '+s;
      tmPkg.ID2:=3;

      tKB.RulePackageList.AddObject(tmPkg.ID+'='+tmPkg.Name,tmPkg);
      ComboBox2Change(ComboBox2);
      ComboBox3.ItemIndex:=ComboBox3.Items.IndexOf(tmPkg.Name);
      ComboBox3Change(ComboBox3);
    end;
end;

function TAddRuleForm3Unit.ShowRules(tKB:TKnowledgeBase;GRPkg,RPkg:string;tmWC:TWinControl):Integer;
var
 i,T,T1,j : Integer;
 s,s1 : string;
 tmP, tmP1 : TRzPanel;
 c : TColor;
 tmIm,tmIm2 : TImage;
 tmTs : TStringList;
 tmBtn : TRzBitBtn;
begin
 try
  KB1:=tKB;
  s:=GRPkg;
  //KB1.GetPkgIDByName(KB1.GRulePackageList,GRPkg);
  if RPkg<>'' then
   s1:=KB1.GetPkgIDByName(KB1.GRulePackageList,KB1.RulePackageList.Values[RPkg]);
  if s1='' then s1:=s;

// if s<>'' then
  begin

   T:=1;
   tmWC:=ScrollBox7;
   tmWC.Visible:=False;

   STDIClass.ReleaseObjects(tmWC);
   //show rules
   for i := 0 to tKB.GRules.Count-1 do
    if  TGRule(tKB.GRules.Items[i]).PackageName=s then
    begin
 {    //add the arrow -----------------------------------
     if i<>0 then
      begin
       //arrow picture
       tmIm:=STDIClass.AddImage(tmWC,T,1,10,42,MainForm.ImageList1,alTop);
       tmIm.Margins.Left:=(tmWC.Width div 2)-8;
       tmIm.Margins.Top:=0;
       tmIm.Margins.Bottom:=0;

       tmIm.AlignWithMargins:=True;
       T:=tmIm.Top+tmIm.Height;
      end;  }
     //--------------------------------------------------
     //add grule panel
     tmP:=STDIClass.AddRzPanel(T,1,20,500,
      tmWC,i,alTop,clCream,bvNone,bvNone,bsSingle,
       '');

     tmP1:=STDIClass.AddRzPanel(T,1,20,500,
      tmP,i,alTop,clCream,bvNone,bvNone,bsSingle,
       TGRule(tKB.GRules.Items[i]).Name);
     tmP1.Height:=tmP1.Height+7;

     //add icon
     tmIm:=STDIClass.AddImage(tmP1,T,1,10,19,MainForm.ImageList1,alRight);
     tmIm.AlignWithMargins:=True;
     tmIm.Hint:=MainForm.LS('Add a new rule');
     tmIm.OnClick:=GRuleAddImageClick;

     tmP1.Cursor:=crHandPoint;
     tmP1.OnClick:=GRuleLabelClick;
     tmP.AutoSize:=True;

     //indicate rule
     tmTs:=TStringList.Create;
     tmTs.Text:=tKB.GetRulesByGRule(TGRule(tKB.GRules.Items[i]),RPkg);
     tmP.Tag:=i;
     tmP1.Tag:=i;
     if tmTs.Count=0 then c:=clRed
      else c:=clGreen;
     tmP.Font.Color:=c;

     T1:=tmP1.Top+tmP1.Height;
     //show rules for grule
     for j := 0 to tmTs.Count-1 do
      begin
       tmP1:=STDIClass.AddRzPanel(T1,1,20,500,
        tmP,StrToInt(tmTs.ValueFromIndex[j]),alTop,clCream,bvNone,bvNone,bsSingle,
          tmTs.Names[j]+' '+TRule(tKB.Rules[StrToInt(tmTs.ValueFromIndex[j])]).Name
           );
       tmP1.Height:=tmP1.Height+7;
       T1:=tmP1.Top+tmP1.Height;
       tmP1.Font.Style:=[];
       tmP1.Alignment:=taLeftJustify;
       tmP1.Cursor:=crHandPoint;
       tmP1.OnClick:=RuleEditClick;

       //del icon
       tmIm:=STDIClass.AddImage(tmP1,T,1,10,5,MainForm.ImageList1,alRight);
       tmIm.AlignWithMargins:=True;
       tmIm.Hint:=MainForm.LS('Delete the rule');
       tmIm.OnClick:=RuleDelImageClick;

      end;
     T:=tmP.Top+tmP.Height;
    end;
   tmWC.Visible:=True;
  end;
 finally

 end;
end;

procedure TAddRuleForm3Unit.ComboBox2Change(Sender: TObject);
var
 i,T,T1,j : Integer;
 s : string;
 tKB  : TKnowledgeBase;
 tmP, tmP1 : TRzPanel;
 tmWC : TWinControl;
 c : TColor;
 tmIm,tmIm2 : TImage;
 tmTs : TStringList;
 tmBtn : TRzBitBtn;
begin
 tKB:=TKnowledgeBase(
  ComboBox1.Items.Objects[ComboBox1.ItemIndex]
   );
 if TComboBox(Sender).ItemIndex>-1 then
  begin
   ComboBox3.Items.Clear;
   ComboBox3.Text:='';

   if TComboBox(Sender).Text<>'' then
    s:=TTmObj(TComboBox(Sender).Items.Objects[TComboBox(Sender).ItemIndex]).ID
     else s:='';

   for i := 0 to tKB.RulePackageList.Count-1 do
    if TTmObj(tKB.RulePackageList.Objects[i]).ID_Root=s then
      ComboBox3.Items.AddObject(tKB.RulePackageList.ValueFromIndex[i],
       TTmObj(tKB.RulePackageList.Objects[i]));
  end;
 if ComboBox3.Items.Count=0 then ComboBox3.Enabled:=False
  else ComboBox3.Enabled:=True;

 if ComboBox3.Items.Count=0 then
  begin
   ShowRules(tKB,s,'',ScrollBox7);
  end
 else
  begin
   ComboBox3.ItemIndex:=0;
   ComboBox3Change(ComboBox3);
  end;
end;

procedure TAddRuleForm3Unit.ComboBox3Change(Sender: TObject);
var
 i,T,T1,j : Integer;
 s : string;
 tKB  : TKnowledgeBase;
 tmP, tmP1 : TRzPanel;
 tmWC : TWinControl;
 c : TColor;
 tmIm,tmIm2 : TImage;
 tmTs : TStringList;
 tmBtn : TRzBitBtn;
begin
  tKB:=TKnowledgeBase(
   ComboBox1.Items.Objects[ComboBox1.ItemIndex]
    );

  ShowRules(tKB,ComboBox2.Text,
   TTmObj(ComboBox3.Items.Objects[ComboBox3.ItemIndex]).ID,
    ScrollBox7);
end;

procedure TAddRuleForm3Unit.FormActivate(Sender: TObject);
begin
 ComboBox1Change(ComboBox1);
end;

procedure TAddRuleForm3Unit.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
 MainForm.LoadTree(KBList,MainForm.TreeView1);
end;

procedure TAddRuleForm3Unit.FormCreate(Sender: TObject);
var
 i  : Integer;
 tKB  : TKnowledgeBase;
 s : string;
begin
 for i := 0 to RzPageControl1.PageCount-1 do
  RzPageControl1.Pages[i].TabVisible:=False;

  STDIClass.LoadLocalLang(Self,LangLocaleDir+LangPrefix+'017.lan');

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
    ComboBox1.ItemIndex:=0;
     MainForm.ImageList1.GetIcon(20,Self.Icon);

    if ComboBox1.ItemIndex>KBList.Count-1 then
     begin
      tKB:=TKnowledgeBase.Create;
      tKB.Init;
      tKB.Name:=MainForm.LS('New knowledge base');
      tKB.Kind:=0;
      KBList.Add(tKB);
     end;

    tKB:=TKnowledgeBase(
     ComboBox1.Items.Objects[ComboBox1.ItemIndex]
      );

   tKB.SyncPackages;
   end
    else
     begin
      MainForm.MMessageBox(1,0,
       '0='+MainForm.LS('It is unable to add the rule because of absence the rule-based knowledge bases'));
      Close;
     end;
end;

procedure TAddRuleForm3Unit.FormShow(Sender: TObject);
begin
 case tag of
  0:begin  //new
   Caption:=' '+MainForm.LS('Edit the rules');
  end;
  1:begin  //add
   Caption:=' '+MainForm.LS('Entering the rules');
  end;
 end;
end;

procedure TAddRuleForm3Unit.RzButton1Click(Sender: TObject);
begin
 Close;
end;

procedure TAddRuleForm3Unit.RzButton2Click(Sender: TObject);
begin
 Close;
end;

procedure TAddRuleForm3Unit.TabSheet1Show(Sender: TObject);
begin
  MainForm.ReloadHelpMessage(ScrollBox3,51)
end;

end.
