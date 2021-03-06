{------------------------------------------------------------------------------}
{                                                                              }
{  Personal Knowledge Base Designer                                            }
{  by A.Yu. Yurin, N.O. Dorodnykh                                              }
{                                                                              }
{  iskander@icc.ru                                                             }
{  http://knowledge-core.ru/                                                   }
{                                                                              }
{------------------------------------------------------------------------------}

unit RBRFormUnit;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Mask, RzEdit, RzLabel, ExtCtrls, RzPanel, RzButton, RzTabs,
  RzListVw, ComCtrls, ImgList, UPKBClass;

type
  TRBRForm = class(TForm)
    Image1: TImage;
    RzPageControl1: TRzPageControl;
    TabSheet1: TRzTabSheet;
    GroupBox1: TGroupBox;
    ComboBox1: TComboBox;
    GroupBox3: TGroupBox;
    TabSheet2: TRzTabSheet;
    GroupBox2: TGroupBox;
    ScrollBox1: TScrollBox;
    TabSheet3: TRzTabSheet;
    GroupBox4: TGroupBox;
    RzPanel1: TRzPanel;
    RzButton1: TRzButton;
    RzButton2: TRzButton;
    RzButton3: TRzButton;
    RzPanel6: TRzPanel;
    ScrollBox3: TScrollBox;
    ScrollBox5: TScrollBox;
    RzListView24: TRzListView;
    TabSheet4: TRzTabSheet;
    GroupBox5: TGroupBox;
    ScrollBox2: TScrollBox;
    ImageList2: TImageList;
    procedure RzButton1Click(Sender: TObject);
    procedure RzButton2Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure TabSheet1Show(Sender: TObject);
    procedure ComboBox1Change(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure TabSheet2Show(Sender: TObject);
    procedure RzButton3Click(Sender: TObject);
    procedure TabSheet3Show(Sender: TObject);
    procedure TabSheet4Show(Sender: TObject);
    procedure FormShow(Sender: TObject);

    procedure MarkCurrentNavPanel(i:Integer);
    procedure ShowRuleComponentImageClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
   T3 : TTask;
  end;

var
  RBRForm: TRBRForm;
  NavPanelsIndexList : TStringList;

implementation

uses USTDIClass, RRPManagerUnit, MAIN;

{$R *.dfm}
//-----------------------------------------------------------------------------
procedure TRBRForm.ShowRuleComponentImageClick(Sender: TObject);
begin
 if TImage(Sender).Tag=1 then
 //need to expand
  begin
   ImageList2.GetBitmap(0,TImage(Sender).Picture.Bitmap);
   TImage(Sender).Tag:=0;
   TImage(Sender).Parent.Parent.Height:=TImage(Sender).Parent.Tag;
  end
 else
  begin
   ImageList2.GetBitmap(1,TImage(Sender).Picture.Bitmap);
   TImage(Sender).Tag:=1;
   TImage(Sender).Parent.Parent.Height:=TImage(Sender).Parent.Parent.Tag;
  end;
end;
//----------------------------------------------------------------------
procedure TRBRForm.MarkCurrentNavPanel(i:Integer);
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
procedure TRBRForm.ComboBox1Change(Sender: TObject);
var
 i  : Integer;
 tKB  : TKnowledgeBase;
 j,T,T12 : Integer;
 WC : TWinControl;
// tmCB : TCheckBox;
// tmLabel  :TRzLabel;
 tmP,tmP1 : TRzPanel;
 tmTs : TStringList;
begin
 RzButton2.Enabled:=True;
 if TComboBox(Sender).Items.IndexOf(TComboBox(Sender).Text)=-1 then
  TComboBox(Sender).ItemIndex:=0;

 tKB:=TKnowledgeBase(
  ComboBox1.Items.Objects[ComboBox1.ItemIndex]
   );

 WC:=ScrollBox5;
 STDIClass.ReleaseObjects(WC);
 T:=0;
 WC.Visible:=False;
 //show facts
 tmP:=STDIClass.AddRzPanel(T,1,20,500,
  WC,i,alTop,clCream,bvNone,bvNone,bsNone,MainForm.LS('Initial facts')+':');
 T:=T+tmP.Height+1;
 tmP.Font.Style:=[fsBold];

 if tKB.Facts.Count>0 then
   for i := 0 to tKB.Facts.Count-1 do
    begin
     T:=TFact(tKB.Facts.Items[i]).ShowAsTable(WC,T+5,1);
//     T:=T+20;
    end
  else
   begin
    tmP:=STDIClass.AddRzPanel(T,1,20,500,
     WC,i,alTop,clCream,bvNone,bvNone,bsNone,MainForm.LS('no data'));
    tmP.Font.Color:=clRed;
    tmP.Font.Style:=[fsBold];

    RzButton2.Enabled:=False;
   end;
  WC.Visible:=True;

 if tKB.CheckForCErrors>0 then
  begin
   tmTs:=TStringList.Create;
   for i := 0 to tKB.CErrors.Count-1 do
    tmTs.Add('255='+tKB.CErrors.Strings[i]);
   MainForm.MMessageBox(1,0,'0='+
    MainForm.LS('The following violations of the knowledge base consistency are detected=')+': '+
    #10+tmTs.Text+
    #10+'0='+MainForm.LS('It is impossible to continue testing'));
   RzButton2.Enabled:=False;
  end;
end;

procedure TRBRForm.FormActivate(Sender: TObject);
begin
//  ComboBox1Change(ComboBox1);
     MainForm.MMessageBox(0,0,'0=??? ???????????? ???? ?????? ?????????? ??????? '+
      '????????? ???????, ????? ????????? ?????? ??????. ?????? ??????, ????????? '+
       '????????? ?????? ? ??????, ????????? ? ???? ??????, ?????????? ?????????? ?????. '+
        '????? ???????? ?????????? ?????????? ?????? ?????? ??????, ?? ??????? ??????? '+
         '????? ??????? ???????????? ????????? ???? ??????.');
 MarkCurrentNavPanel(0);
 OnActivate:=nil;
end;

procedure TRBRForm.FormCreate(Sender: TObject);
var
 i  : Integer;
 tKB  : TKnowledgeBase;
begin
  NavPanelsIndexList:=TStringList.Create;
// AddFactForm2.RzButton1.Visible:=True;
 STDIClass.LoadLocalLang(Self,LangLocaleDir+LangPrefix+'008.lan');

 Caption:=MainForm.LS('Testing the rule-base');

 MainForm.ReloadHelpMessage(ScrollBox3,61);

 for i := 0 to RzPageControl1.PageCount-1 do
  RzPageControl1.Pages[i].TabVisible:=False;

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
     begin  //rule-bases exist
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

      RRPManager:=TRRPManager.Create;
      RRPManager.Init;
      T3:=TTask.Create;
      T3.Init;
      T3.ID:=TKnowledgeBase(ComboBox1.Items.Objects[ComboBox1.ItemIndex]).NewID('P');
      T3.Name:=T3.ID;
      T3.Authors:='Researcher';
      T3.Creation_date:=DateTimeToStr(Now);
      T3.Modification_date:=DateTimeToStr(Now);
      T3.task_Ver:='1';
      T3.Description:=tKB.Description;
     end
    else //no rule bases
     begin
      MainForm.MMessageBox(1,0,
       '0='+MainForm.LS('There are no rule-bases so testing is unavaliable'));
      Close;
     end;
//  RRPManager.KB.LoadFacts(ExtractFileDir(Application.ExeName)+'\Config\')
end;

procedure TRBRForm.FormShow(Sender: TObject);
var
 T,i  : Integer;
 tmP : TRzPanel;
 tmTs : TStringList;
begin
  T:=80;
  tmTs:=TStringList.Create;
   tmTs.Add('0='+MainForm.LS('STEP 1 and 2:')+
    ' '+MainForm.LS('Selection the knowledge base and initial data preview'));
   tmTs.Add('1='+MainForm.LS('STEP 3:')+
    ' '+MainForm.LS('Testing results preview'));
//   tmTs.Add('2=??? 4: ?????????? ???????????? (??????) ? ???? ???????');
//   tmTs.Add('3=??? 5: ????????? ??????????? (?????????????? ???????)');

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

procedure TRBRForm.RzButton1Click(Sender: TObject);
begin
 Close;
end;

procedure TRBRForm.RzButton2Click(Sender: TObject);
begin
 if RzPageControl1.ActivePageIndex=1 then
  begin
   MainForm.MakeDump(MainForm.LS('Create a task')+': '+T3.ID,6);
   MainForm.LoadAList(MainForm.RzListView1);

   T3.K2:=RRPManager.KB;

   TKnowledgeBase(ComboBox1.Items.Objects[ComboBox1.ItemIndex]).Tasks.Add(T3);

   MainForm.TreeView1.Selected:=
    T3.AddToTreeView(MainForm.TreeView1,
     MainForm.TreeView1.Items.Item[0].Item[ComboBox1.ItemIndex].Item[4]);

   MainForm.TreeView1.Items.Item[0].Item[ComboBox1.ItemIndex].Item[4].Text:=
    MainForm.PutChildCount(MainForm.TreeView1.Items.Item[0].Item[ComboBox1.ItemIndex].Item[4]);
   MainForm.TreeView1Click(MainForm.TreeView1);
   Close;
  end
// if RzPageControl1.ActivePageIndex=3 then Close
  else
   RzPageControl1.ActivePageIndex:=
    RzPageControl1.ActivePageIndex+1;
end;


procedure TRBRForm.RzButton3Click(Sender: TObject);
begin
   RzPageControl1.ActivePageIndex:=
    RzPageControl1.ActivePageIndex-1;
end;

procedure TRBRForm.TabSheet1Show(Sender: TObject);
begin
 MainForm.ReloadHelpMessage(ScrollBox3,61);

    RzButton2.Caption:=MainForm.LS('Next >>');
//    RzButton3.Enabled:=False;
    RzButton3.Enabled:=False;
 ComboBox1Change(ComboBox1);
 MarkCurrentNavPanel(0);
end;

procedure TRBRForm.TabSheet2Show(Sender: TObject);
//----------------------------------------------------------------
function ShowResults(LV:TRzListView;c:Integer):Integer;
var
 i : Integer;
 tmState : TRMState;
 tmEvent : TREvent;
begin
 LV.Items.Clear;
 STDIClass.ClearCaptions('*',LV);
 tmState:=TRMState(RRPManager.States.Items[c]);
 for i := 0 to tmState.REvents.Count-1 do
  begin
   tmEvent:=TREvent(tmState.REvents.Items[i]);
   LV.AddItem(tmEvent.REProperties.Values['caption-meh'],tmEvent);
   LV.Items[LV.Items.Count-1].SubItems.Add(
      tmEvent.REProperties.Values['caption-def']);
   LV.Items[LV.Items.Count-1].SubItems.Add(
      tmEvent.REProperties.Values['caption-dam']);
   LV.Items[LV.Items.Count-1].SubItems.Add(
      tmEvent.REProperties.Values['caption-des']);
  end;
  MarkCurrentNavPanel(1);
end;
//----------------------------------------------------------------
function LoadFactToWM(f:string):Integer;
type
  TMethod = function (s:WideString):Integer; stdcall;
var
 pp :  PAnsiChar;
 PNFact  :   Pointer;
 ModuleID   : Cardinal;
 EntryPoint : Pointer;
 LMethod:TMethod;
 i : Integer;
begin

 //load to the work memory
if Trim(f)<>'' then
 try
      //-------------------------------------------------------------------------
      ModuleID:=Windows.LoadLibrary(PChar(
       ExtractFileDir(Application.ExeName)+'\Dll\004.dll'
      ));

      STDIClass.InternalGetMethodEntryPoint(ModuleID,'LoadFactToWM',EntryPoint);
       if System.Assigned(EntryPoint) then
        try
          LMethod:=Windows.GetProcAddress(ModuleID,
           PChar('LoadFactToWM'));
          if Assigned(LMethod)then
           begin
            i:=LMethod(f);
            if i=-1 then
             Application.MessageBox(PChar('Error loading: '+f),
              PChar(Application.Title),MB_OK);
           end;
        except
        end;
      //-------------------------------------------------------------------------
 except
//   on E: Exception do
//     Self.RaiseException('LoadFactToWM',
//      E.ClassType,
//        E.Message);
 end;
end;
//----------------------------------------------------------------
{Function ShowFactAsPanel(F:TFact;Op:string;WC:TWinControl;T:Integer):Integer;
var
 tmP,tmP1,tmP2 : TRzPanel;
 i : Integer;
 tmIm : TImage;
begin
 tmP:=STDIClass.AddRzPanel(T,1,20,WC.Width,
  WC,0,alTop,clCream,bvNone,bvNone,bsNone,'');

 tmP1:=STDIClass.AddRzPanel(T,1,20,20,
  tmP,0,alLeft,clCream,bvNone,bvNone,bsSingle,IntToStr(WC.ControlCount));
 tmP1.Font.Style:=[fsBold];
 if Op='add' then
  tmP1.Color:=clMoneyGreen;
 if Op='rem' then
  tmP1.Color:=13160432;
 if Op='mdf' then
  tmP1.Color:=clSkyBlue;
 if Op='halt' then
  tmP1.Color:=clYellow;


 tmP2:=STDIClass.AddRzPanel(T,1,20,tmP.Width,
  tmP,0,alClient,clCream,bvNone,bvNone,bsSingle,'');
 i:=F.ShowAsTable(tmP2,1,1);

// i:=tmP2.Tag+1;
 tmP.Height:=i+3;
 Result:=tmP.Top+tmP.Height;
end;   }
//----------------------------------------------------------------
Function ShowRuleAsPanel(R:TRule;K:TKnowledgeBase;WC:TWinControl;T,j:Integer):Integer;
var
 tmP,tmP1,tmP2 : TRzPanel;
 i : Integer;
 tmIm : TImage;
begin
 tmP:=STDIClass.AddRzPanel(T,1,20,WC.Width,
  WC,0,alTop,clCream,bvNone,bvNone,bsNone,'');

 tmP1:=STDIClass.AddRzPanel(T,1,20,20,
  tmP,0,alLeft,clCream,bvNone,bvNone,bsSingle,IntToStr(j));
 tmP1.Font.Style:=[fsBold];

 tmP2:=STDIClass.AddRzPanel(T,1,20,tmP.Width,
  tmP,0,alClient,clCream,bvNone,bvNone,bsSingle,'');

 i:=R.ShowAsList(1,1,5,5,tmP2,K);
 tmP2.Height:=20*i+10;
// tmP2.Tag:=i;

 tmIm:=STDIClass.AddImage(tmP2,tmP2.Height-16,1,13,1,
  ImageList2,alCustom);
 tmIm.Anchors:=[akLeft,akBottom];
 tmIm.AutoSize:=False;
 tmIm.Width:=13;
 tmIm.Tag:=1;
 tmIm.Cursor:=crHandPoint;
 tmIm.OnClick:=ShowRuleComponentImageClick;
// ShowRuleComponentImageClick(tmIm);

// if tmP2.Height>tmP.Height then tmP.Height:=tmP2.Height;
 tmP.Height:=4*20-10;
 tmP.Tag:=tmP.Height;
 Result:=tmP.Top+tmP.Height;
end;
//----------------------------------------------------------------
type
  TMethod = function (s:WideString;i:Integer):Integer; stdcall;

var
  i,T,j,x : Integer;
  tmTs : TStringList;
  PNFact  :   Pointer;
  ModuleID   : Cardinal;
  EntryPoint : Pointer;
  LMethod:TMethod;
  tmState : TRMState;

  WC : TWinControl;
  tmP,tmP1 : TRzPanel;
  tKB : TKnowledgeBase;
  s : string;
  tmRule : TRule;
begin
 MainForm.ReloadHelpMessage(ScrollBox3,62);
//  RzButton2.Caption:='????? >>';
  RzButton2.Caption:=MainForm.LS('Ok');
  RzButton2.Enabled:=False;
  RzButton3.Enabled:=True;

 //----------------------------------------------------------
   try
    tmTs:=TStringList.Create;

    tmState:=TRMState.Create;
    tmState.Init;

    if RRPManager.States.Count=0 then
     RRPManager.States.Add(tmState);

   //*******************************************************************
    //******************** ???? ?????? ? ?????? ? ??????? ?????? ********
    //*******************************************************************
    if (DllIndex<>-1)and(DllList.Count>0) then
     tmTs.Text:=TKnowledgeBase(ComboBox1.Items.Objects[ComboBox1.ItemIndex]).
      GetDescriptionOnKBLanguage(DllList.Names[DllIndex]);
    tmTs.SaveToFile(ExtractFileDir(Application.ExeName)+'\Data\rrp.tmp');

  //  SetCurrentDir(ExtractFileDir(Application.ExeName));

    tmTs.Clear;
    tmTs.Add(ExtractFileDir(Application.ExeName)+'\Data\rrp.tmp');

    //  tmTs.Add(ExtractFileDir(Application.ExeName)+'\Clips\02-r-revision.clp');
  //  tmTs.Add(ExtractFileDir(Application.ExeName)+'\Clips\03-r-revision.clp');
    RRPManager.KB:=TRRPKnowledgeBase.Create;
    RRPManager.KB.Init;
    i:=RRPManager.KB.LoadKnowledgeBaseViaDll(tmTs,3);  //load knowledge bases to clips
   if i<>-1 then
    begin
  {  //***************** ???????? ?????? ******************
    for i := 0 to TKnowledgeBase(KBList[ComboBox1.ItemIndex]).Facts.Count-1 do
      LoadFactToWM(
       TFact(TKnowledgeBase(KBList[ComboBox1.ItemIndex]).Facts.Items[i]).
        GetDescriptionOnKBLanguage(DllList.Names[DllIndex])
        );

  {  for i := 0 to RRPManager.KB.Facts.Count-1 do
     begin
      LoadFactToWM(
       TRRPFact(RRPManager.KB.Facts.Items[i]).GetAsCLIPS
        );
     end;

  {   for i := 0 to RzListView23.Items.Count-1 do
     LoadFactToWM(RzComboBox28.ItemIndex,RzListView23.Items[i].Caption,
      RzListView23.Items[i].SubItems[0]);
  }
  //  RRPManager.KB.DFileName:=PWideChar(ExtractFileDir(Application.ExeName)+
  //   '\TestInfo\clipsdll_oudata.txt');
    i:=RRPManager.KB.RunCLIPSViaDll(ExtractFileDir(Application.ExeName)+
     '\Data\rrp_oudata'); //run clips
    end;
   except
   end;

 //----------------------------------------------------------

 WC:=ScrollBox1;
 STDIClass.ReleaseObjects(WC);
 T:=0;
 WC.Visible:=False;

  tKB:=TKnowledgeBase(
  ComboBox1.Items.Objects[ComboBox1.ItemIndex]
   );

 if RRPManager.KB.FiredRules.Count>0 then
  begin
   x:=0;
   RzButton2.Enabled:=True;
   for i := 0 to RRPManager.KB.FiredRules.Count-1 do
    begin
     s:=Trim(RRPManager.KB.FiredRules.Strings[i]);
     j:=tKB.IndexOfRuleByName(s);
     if j>-1 then
      begin
       Inc(x);
       tmRule:=TRule(tKB.Rules.Items[j]);
       T:=ShowRuleAsPanel(TRule(tKB.Rules.Items[j]),
        tKB,WC,T,x);
       for j := 0 to tmRule.Actions.Count-1 do
        begin
         Inc(x);
         T:=TRAction(tmRule.Actions.Items[j]).Fact.ShowAsPanel(
          TRAction(tmRule.Actions.Items[j]).Operator,
           WC,T,x);
        end;
      end;
    end;
    //********************** ?????????? ?????????? ***********
//    ShowResults(RzListView24,RRPManager.States.Count-1);
  end
 else
  begin
   tmP:=STDIClass.AddRzPanel(T,1,20,500,
    WC,i,alTop,clCream,bvNone,bvNone,bsNone,MainForm.LS('No new facts'));
   tmP.Font.Style:=[fsBold];
   tmP.Font.Color:=clRed;
  end;
 WC.Visible:=True;
 MarkCurrentNavPanel(1);
end;

procedure TRBRForm.TabSheet3Show(Sender: TObject);
begin
 RzButton2.Caption:=MainForm.LS('Next >>');
 MainForm.ReloadHelpMessage(ScrollBox3,63);
 MarkCurrentNavPanel(2);
end;

procedure TRBRForm.TabSheet4Show(Sender: TObject);
var
 i,T,j,c : Integer;
 s,s1 : string;
 tmEvent : TREvent;
 tmRule : TRRPRule;
 tmWC : TWinControl;
begin
 RzButton2.Caption:=MainForm.LS('Ok');
 MainForm.ReloadHelpMessage(ScrollBox3,64);
 tmWC:=ScrollBox2;
 tmWC.Visible:=False;
 STDIClass.ReleaseObjects(tmWC);

   for i := 0 to RRPManager.KB.Rules.Count-1 do
    begin
     tmRule:=TRRPRule(RRPManager.KB.Rules.Items[i]);
     c:=RRPManager.KB.FiredRules.IndexOf(tmRule.Name);
//     if c>-1 then
//      if Trim(tmRule.Description.Text)<>'' then
       begin
         T:=STDIClass.AddLabel(tmWC,
          '['+tmRule.Name+']'
           ,T,12,ScrollBox1.Width-15,
            clNavy,clNone,[fsBold]);
         TLabel(tmWC.Components[tmWC.ComponentCount-1]).Align:=
          alTop;
         TLabel(tmWC.Components[tmWC.ComponentCount-1]).Margins.Top:=0;
         TLabel(tmWC.Components[tmWC.ComponentCount-1]).Margins.Left:=5;
         TLabel(tmWC.Components[tmWC.ComponentCount-1]).Margins.Bottom:=0;
         TLabel(tmWC.Components[tmWC.ComponentCount-1]).AlignWithMargins:=
          True;

         s:=Trim(tmRule.Description.Text);
         if s='' then s:=MainForm.LS('No description');

         T:=STDIClass.AddLabel(tmWC,
          s
           ,T,12,ScrollBox1.Width-15,
            clNavy,clNone,[]);
         TLabel(tmWC.Components[tmWC.ComponentCount-1]).Align:=
          alTop;
         TLabel(tmWC.Components[tmWC.ComponentCount-1]).Margins.Top:=0;
         TLabel(tmWC.Components[tmWC.ComponentCount-1]).Margins.Left:=5;
         TLabel(tmWC.Components[tmWC.ComponentCount-1]).Margins.Bottom:=5;
         TLabel(tmWC.Components[tmWC.ComponentCount-1]).AlignWithMargins:=
          True;
       end;
    end;
 tmWC.Visible:=True;
 MarkCurrentNavPanel(3);
end;

end.
