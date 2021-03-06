{------------------------------------------------------------------------------}
{                                                                              }
{  Personal Knowledge Base Designer                                            }
{  by A.Yu. Yurin, N.O. Dorodnykh                                              }
{                                                                              }
{  iskander@icc.ru                                                             }
{  http://knowledge-core.ru/                                                   }
{                                                                              }
{------------------------------------------------------------------------------}

unit uExp;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, RzButton, RzPanel, ExtCtrls, RzRadGrp, RzTabs, UPKBClass, MAIN,
  StdCtrls, RzLstBox, RzChkLst, ComCtrls, RzListVw, RzTreeVw, RzRadChk;

type
  TExp = class(TForm)
    RzPanel1: TRzPanel;
    RzButton1: TRzButton;
    RzButton2: TRzButton;
    RzPanel2: TRzPanel;
    RzPanel6: TRzPanel;
    GroupBox1: TGroupBox;
    GroupBox2: TGroupBox;
    SaveDialog1: TSaveDialog;
    ComboBox1: TComboBox;
    Label1: TLabel;
    RzCheckTree1: TRzCheckTree;
    ScrollBox3: TScrollBox;
    RzCheckBox1: TRzCheckBox;
    procedure RzButton1Click(Sender: TObject);
    procedure RzButton2Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure ComboBox1Change(Sender: TObject);
    procedure RzCheckList1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure RzCheckTree1Click(Sender: TObject);
    procedure RzCheckTree1Change(Sender: TObject; Node: TTreeNode);
    procedure RzCheckTree1StateChange(Sender: TObject; Node: TTreeNode;
      NewState: TRzCheckState);
  private
    { Private declarations }
  public
    { Public declarations }
   KB  : TKnowledgeBase;
  end;

var
  Exp: TExp;
//  Met: integer;

implementation

uses SDXML, USTDIClass;

{$R *.dfm}

procedure TExp.FormShow(Sender: TObject);
//var
//  i: integer;
begin
 RzCheckBox1.Visible:=False;
// if KB<>nil then
// begin
  RzCheckTree1.Items.Clear;
  KB.AddToRzCheckTree(RzCheckTree1,nil);
// end;
  if (ComboBox1.ItemIndex=-1)and(ComboBox1.Items.Count>0) then
   begin
    ComboBox1.ItemIndex:=0;
    ComboBox1Change(ComboBox1);
   end;
 if RzCheckTree1.Items.Count>0 then
  RzCheckTree1.Items.Item[0].Selected:=True;

 MainForm.ReloadHelpMessage(ScrollBox3,200+Tag);
 case Tag of
  1:begin //load
    MainForm.ImageList1.GetIcon(7,Exp.Icon);
    Exp.Caption:=' '+ MainForm.LS('Open');
    Exp.GroupBox1.Caption:=
     STDIClass.LoadSingleString('GroupBox1c',LangLocaleDir+LangPrefix+'002.lan');
    Exp.RzPanel2.Caption:=
     MainForm.LS('You need to select the objects for open=');
//     '?????????? ??????? ???????? ??? ????????';
//    ComboBox1.Items.Clear;
//    for i:=0 to KBList.Count-1 do
//     ComboBox1.Items.Add(TKnowledgeBase(KBList.Items[i]).Name);
    ComboBox1.Items.Add(MainForm.LS('New knowledge base'));
    ComboBox1.ItemIndex:=0;
  end;
  2:begin //save
    MainForm.ImageList1.GetIcon(45,Exp.Icon);
    MainForm.ReloadHelpMessage(ScrollBox3,22);
    Exp.Caption:=' '+MainForm.LS('Save');
    Exp.GroupBox1.Caption:=' '+MainForm.LS('Saving objects')+': ';
    Exp.RzPanel2.Caption:=MainForm.LS('You need to select the objects for save');
//    ComboBox1.Items.Clear;
//    for i:=0 to KBList.Count-1 do
//     ComboBox1.Items.Add(TKnowledgeBase(KBList.Items[i]).Name);
    if KBList.Count>0 then ComboBox1.ItemIndex:=0;
  end;
  3:begin //import
    MainForm.ImageList1.GetIcon(73,Exp.Icon);
    Exp.Caption:=' '+MainForm.LS('Import');
    Exp.GroupBox1.Caption:=' '+MainForm.LS('Importing objects')+': ';
    Exp.RzPanel2.Caption:=MainForm.LS('You need to select the objects for import');
//    ComboBox1.Items.Clear;
//    for i:=0 to KBList.Count-1 do
//     ComboBox1.Items.Add(TKnowledgeBase(KBList.Items[i]).Name);
    ComboBox1.Items.Add(MainForm.LS('New knowledge base'));
    ComboBox1.ItemIndex:=0;
  end;
  4,5,6,7,8,9,44,10,11:begin //export
    MainForm.ImageList1.GetIcon(74,Exp.Icon);
    MainForm.ReloadHelpMessage(ScrollBox3,23);
    Exp.Caption:=' '+MainForm.LS('Export');
    Exp.GroupBox1.Caption:=' '+MainForm.LS('Exporting objects')+': ';
    Exp.RzPanel2.Caption:=MainForm.LS('You need to select the objects for export');
//    ComboBox1.Items.Clear;
//    for i:=0 to KBList.Count-1 do
//     ComboBox1.Items.Add(TKnowledgeBase(KBList.Items[i]).Name);
    if KBList.Count>0 then ComboBox1.ItemIndex:=0;
    if Tag=11 then RzCheckBox1.Visible:=True;
  end;
  12:begin //processing (rule templates reversing)
    MainForm.ImageList1.GetIcon(80,Exp.Icon);
    Exp.Caption:=' '+MainForm.LS('Reversing');
    Exp.GroupBox1.Caption:=' '+MainForm.LS('Processing elements')+': ';
    Exp.RzPanel2.Caption:=MainForm.LS('You need to select the objects for processing');
    if KBList.Count>0 then ComboBox1.ItemIndex:=0;
 //!change RzCheckBox1 name
//    RzCheckBox1.Visible:=True;
  end;
 end; //end case

end;

procedure TExp.RzButton2Click(Sender: TObject);
var
  c : Integer;
  tmKB  : TKnowledgeBase;
//  L1,L2,L3,L4,L5  : String;
  ext : String;
  eF  : Integer;
begin
try
 eF:=-3;
 case tag of
 1,3:begin   //load, import
  c:=ComboBox1.Items.IndexOf(ComboBox1.Text);
  if c>KBList.Count-1 then
   begin
    if tag=1 then MainForm.MakeDump(MainForm.LS('Open'),7);
    if tag=3 then MainForm.MakeDump(MainForm.LS('Import'),7);
     MainForm.LoadAList(MainForm.RzListView1);

    tmKB:=TKnowledgeBase.Create;
    tmKB.Init;
    tmKB.Name:=MainForm.LS('Knowledge base')+' '+tmKB.ID;
//    tmKB.ID:=MainForm.GetKBID(KBList);
    tmKB.Kind:=0;
    KBList.Add(tmKB);
   end;
  //loading selected items to selected KB
  if TKnowledgeBase(KBList.Items[c]).Name=MainForm.LS('Knowledge base') then
   begin
    TKnowledgeBase(KBList.Items[c]).Kind:=KB.Kind;
    TKnowledgeBase(KBList.Items[c]).Name:=KB.Name+' '+tmKB.ID;
    TKnowledgeBase(KBList.Items[c]).Description:=//'[????????]: '+
     MainForm.OpenDialog1.FileName;
//    KB.Description;
   end;
  if Tag=1 then
   TKnowledgeBase(KBList.Items[c]).FileName:=
    MainForm.OpenDialog1.FileName;

  eF:=TKnowledgeBase(KBList.Items[c]).CopyRFT_V2(RzCheckTree1);

 end; //end load
 2:begin  //save

    MainForm.MakeDump(MainForm.LS('Save'),8);
    MainForm.LoadAList(MainForm.RzListView1);

    tmKB:=TKnowledgeBase.Create;
    tmKB.Init;

    c:=ComboBox1.Items.IndexOf(ComboBox1.Text);
    if c>-1 then  KB:=TKnowledgeBase(KBList.Items[c]);

    tmKB.ID:=KB.ID;
    tmKB.Name:=KB.Name;
    tmKB.Kind:=KB.Kind;
    tmKB.Description:=KB.Description;

    eF:=tmKB.CopyRFT_V2(RzCheckTree1);

   SaveDialog1.Title:=Application.Title+': '+MainForm.LS('Save');
   SaveDialog1.Filter:='EKB files |*.ekb|'+MainForm.LS('All')+'|*.*';
   SaveDialog1.InitialDir:=ExtractFileDir(Application.ExeName)+'.\Data';
   SaveDialog1.FileName:=KB.FileName;

  if SaveDialog1.Execute() then
   if (SaveDialog1.FileName<>'') then
   begin
    if pos('.ekb',SaveDialog1.FileName)=0 then
     SaveDialog1.FileName:=SaveDialog1.FileName+'.ekb';
    XmlSave.GXMLStrSF(SaveDialog1.FileName,tmKB);
//    MainForm.MMessageBox(0,0,'0='+MainForm.LS('The knowledge base is saved'));
   end;
 end; //end save
 //--------------------------------------------------------
 4:begin  //clips export
  SaveDialog1.Title:=Application.Title+': '+MainForm.LS('Export');

  if (DllIndex<>-1)and(DllList.Count>0) then
   begin
    if pos('CLIPS',DllList.ValueFromIndex[DllIndex])<>0 then
     ext:='.clp' else ext:='.*';


  SaveDialog1.Filter:=DllList.ValueFromIndex[DllIndex]+' files |'
   +'*'+ext+'|'+MainForm.LS('All')+'|*.*';
  SaveDialog1.InitialDir:=ExtractFileDir(Application.ExeName)+'\Data';

  if SaveDialog1.Execute() then
   if (SaveDialog1.FileName<>'') then
   begin
    tmKB:=TKnowledgeBase.Create;
    tmKB.Init;

    c:=ComboBox1.Items.IndexOf(ComboBox1.Text);
    if c>-1 then  KB:=TKnowledgeBase(KBList.Items[c]);

//    tmKB.ID:=MainForm.GetKBID(KBList);
    tmKB.Name:=KB.Name;
    tmKB.Kind:=KB.Kind;
    tmKB.Description:=KB.Description;

    eF:=tmKB.CopyRFT_V2(RzCheckTree1);

    if pos(ext,SaveDialog1.FileName)=0 then
     SaveDialog1.FileName:=SaveDialog1.FileName+ext;
    tmKB.SaveAs(DllList.Names[DllIndex],SaveDialog1.FileName);
    MainForm.MMessageBox(0,0,'0='+MainForm.LS('The knowledge base is exported'));
   end;
  end
   else
    begin
     MainForm.MMessageBox(1,0,'0=? ????????? ????????? ?????? ???????? ?????????? ????? ???????? ??????? ????????? ?????? ????????????? ??????')
    end;
 end; //end clips export
 //--------------------------------------------------------
 44:begin  //drl export
  SaveDialog1.Title:=Application.Title+': '+MainForm.LS('Export');

  if (DllIndex<>-1)and(DllList.Count>0) then
   begin
    if pos('DROOLS',DllList.ValueFromIndex[DllIndex])<>0 then
     ext:='.drl' else ext:='.*';


  SaveDialog1.Filter:=DllList.ValueFromIndex[DllIndex]+' files |'
   +'*'+ext+'|'+MainForm.LS('All')+'|*.*';
  SaveDialog1.InitialDir:=ExtractFileDir(Application.ExeName)+'\Data';

  if SaveDialog1.Execute() then
   if (SaveDialog1.FileName<>'') then
   begin
    tmKB:=TKnowledgeBase.Create;
    tmKB.Init;

    c:=ComboBox1.Items.IndexOf(ComboBox1.Text);
    if c>-1 then  KB:=TKnowledgeBase(KBList.Items[c]);

//    tmKB.ID:=MainForm.GetKBID(KBList);
    tmKB.Name:=KB.Name;
    tmKB.Kind:=KB.Kind;
    tmKB.Description:=KB.Description;

   //save selected items to selected KB
//    eF:=tmKB.CopyRFT(KB,
//     L1,L2,L3,L4,L5);
    eF:=tmKB.CopyRFT_V2(RzCheckTree1);

    if pos(ext,SaveDialog1.FileName)=0 then
     SaveDialog1.FileName:=SaveDialog1.FileName+ext;
    tmKB.SaveAs(DllList.Names[DllIndex],SaveDialog1.FileName);
    MainForm.MMessageBox(0,0,'0='+MainForm.LS('The knowledge base is exported'));
   end;
  end
   else
    begin
     MainForm.MMessageBox(1,0,'0=? ????????? ????????? ?????? ???????? ?????????? ????? ???????? ??????? ????????? ?????? ????????????? ??????')
    end;
 end; //end drl export
 //--------------------------------------------------------
 5:begin  //rrose export
  try
  SaveDialog1.Title:=Application.Title+': '+MainForm.LS('Export');
  ext:='.mdl';

  SaveDialog1.Filter:='Rational Rose files |'
   +'*'+ext+'|'+MainForm.LS('All')+'|*.*';
  SaveDialog1.InitialDir:=ExtractFileDir(Application.ExeName)+'\Models';

  if SaveDialog1.Execute() then
   if (SaveDialog1.FileName<>'') then
   begin
    tmKB:=TKnowledgeBase.Create;
    tmKB.Init;

    c:=ComboBox1.Items.IndexOf(ComboBox1.Text);
    if c>-1 then  KB:=TKnowledgeBase(KBList.Items[c]);

    tmKB.Name:=KB.Name;
    tmKB.Kind:=KB.Kind;
    tmKB.Description:=KB.Description;

    eF:=tmKB.CopyRFT_V2(RzCheckTree1);

    if pos(ext,SaveDialog1.FileName)=0 then
     SaveDialog1.FileName:=SaveDialog1.FileName+ext;
    tmKB.SaveToMDLFile(SaveDialog1.FileName);
    MainForm.MMessageBox(0,0,'0='+MainForm.LS('The knowledge base is exported'));
   end;
    except
     MainForm.MMessageBox(1,0,'0='+MainForm.LS('Sorry, an error occurred'))
    end;
 end; //end rrose export
 //----------------------------------------------------------
 6:begin  //cmaptools export
  try
  SaveDialog1.Title:=Application.Title+': '+MainForm.LS('Export');
  ext:='.xml';

  SaveDialog1.Filter:='CmapTools files |'
   +'*'+ext+'|'+MainForm.LS('All')+'|*.*';
  SaveDialog1.InitialDir:=ExtractFileDir(Application.ExeName)+'\Models';

  if SaveDialog1.Execute() then
   if (SaveDialog1.FileName<>'') then
   begin
    tmKB:=TKnowledgeBase.Create;
    tmKB.Init;

    c:=ComboBox1.Items.IndexOf(ComboBox1.Text);
    if c>-1 then  KB:=TKnowledgeBase(KBList.Items[c]);

    tmKB.Name:=KB.Name;
    tmKB.Kind:=KB.Kind;
    tmKB.Description:=KB.Description;

    eF:=tmKB.CopyRFT_V2(RzCheckTree1);

    if pos(ext,SaveDialog1.FileName)=0 then
     SaveDialog1.FileName:=SaveDialog1.FileName+ext;

    tmKB.SaveToCmapTools(
     ExtractFileDir(Application.ExeName)+'\Dll\xtm.s.dll'
     ,SaveDialog1.FileName);

    MainForm.MMessageBox(0,0,'0='+MainForm.LS('The knowledge base is exported'));
   end;
    except
     MainForm.MMessageBox(1,0,'0='+MainForm.LS('Sorry, an error occurred'))
    end;
 end; //end cmaptools export
 //----------------------------------------------------------
 7:begin  //staruml export
  try
  SaveDialog1.Title:=Application.Title+': '+MainForm.LS('Export');
  ext:='.xml';

  SaveDialog1.Filter:='StarUml files |'
   +'*'+ext+'|'+MainForm.LS('All')+'|*.*';
  SaveDialog1.InitialDir:=ExtractFileDir(Application.ExeName)+'\Models';

  if SaveDialog1.Execute() then
   if (SaveDialog1.FileName<>'') then
   begin
    tmKB:=TKnowledgeBase.Create;
    tmKB.Init;

    c:=ComboBox1.Items.IndexOf(ComboBox1.Text);
    if c>-1 then  KB:=TKnowledgeBase(KBList.Items[c]);

    tmKB.Name:=KB.Name;
    tmKB.Kind:=KB.Kind;
    tmKB.Description:=KB.Description;

    eF:=tmKB.CopyRFT_V2(RzCheckTree1);

    if pos(ext,SaveDialog1.FileName)=0 then
     SaveDialog1.FileName:=SaveDialog1.FileName+ext;

    tmKB.SaveToStarUml(SaveDialog1.FileName);

    MainForm.MMessageBox(0,0,'0='+MainForm.LS('The knowledge base is exported'));
   end;
    except
     MainForm.MMessageBox(1,0,'0='+MainForm.LS('Sorry, an error occurred'))
    end;
 end; //end staruml export
 //----------------------------------------------------------
 8:begin  //owl export
  try
  SaveDialog1.Title:=Application.Title+': '+MainForm.LS('Export');
  ext:='.owl';

  SaveDialog1.Filter:='Protege files |'
   +'*'+ext+'|'+MainForm.LS('All')+'|*.*';
  SaveDialog1.InitialDir:=ExtractFileDir(Application.ExeName)+'\Models';

  if SaveDialog1.Execute() then
   if (SaveDialog1.FileName<>'') then
   begin
    tmKB:=TKnowledgeBase.Create;
    tmKB.Init;

    c:=ComboBox1.Items.IndexOf(ComboBox1.Text);
    if c>-1 then  KB:=TKnowledgeBase(KBList.Items[c]);

    tmKB.Name:=KB.Name;
    tmKB.Kind:=KB.Kind;
    tmKB.Description:=KB.Description;

    eF:=tmKB.CopyRFT_V2(RzCheckTree1);

    if pos(ext,SaveDialog1.FileName)=0 then
     SaveDialog1.FileName:=SaveDialog1.FileName+ext;

    tmKB.SaveToOwl(SaveDialog1.FileName);

    MainForm.MMessageBox(0,0,'0='+MainForm.LS('The knowledge base is exported'));
   end;
    except
     MainForm.MMessageBox(1,0,'0='+MainForm.LS('Sorry, an error occurred'))
    end;
 end; //end owl export
 //----------------------------------------------------------
  9:begin  //rdf export
  try
  SaveDialog1.Title:=Application.Title+': '+MainForm.LS('Export');
  ext:='.rdf';

  SaveDialog1.Filter:='RDF files |'
   +'*'+ext+'|'+MainForm.LS('All')+'|*.*';
  SaveDialog1.InitialDir:=ExtractFileDir(Application.ExeName)+'\Models';

  if SaveDialog1.Execute() then
   if (SaveDialog1.FileName<>'') then
   begin
    tmKB:=TKnowledgeBase.Create;
    tmKB.Init;

    c:=ComboBox1.Items.IndexOf(ComboBox1.Text);
    if c>-1 then  KB:=TKnowledgeBase(KBList.Items[c]);

    tmKB.Name:=KB.Name;
    tmKB.Kind:=KB.Kind;
    tmKB.Description:=KB.Description;

    eF:=tmKB.CopyRFT_V2(RzCheckTree1);

    if pos(ext,SaveDialog1.FileName)=0 then
     SaveDialog1.FileName:=SaveDialog1.FileName+ext;

    tmKB.SaveToRDF(SaveDialog1.FileName);

    MainForm.MMessageBox(0,0,'0='+MainForm.LS('The knowledge base is exported'));
   end;
    except
     MainForm.MMessageBox(1,0,'0='+MainForm.LS('Sorry, an error occurred'))
    end;
 end; //end rdf export
 //----------------------------------------------------------
  10:begin  //php export
  try
  SaveDialog1.Title:=Application.Title+': '+MainForm.LS('Export');
  ext:='.php';

  SaveDialog1.Filter:='PHP files |'
   +'*'+ext+'|'+MainForm.LS('All')+'|*.*';
  SaveDialog1.InitialDir:=ExtractFileDir(Application.ExeName)+'\Data';

  if SaveDialog1.Execute() then
   if (SaveDialog1.FileName<>'') then
   begin
    tmKB:=TKnowledgeBase.Create;
    tmKB.Init;

    c:=ComboBox1.Items.IndexOf(ComboBox1.Text);
    if c>-1 then  KB:=TKnowledgeBase(KBList.Items[c]);

    tmKB.Name:=KB.Name;
    tmKB.Kind:=KB.Kind;
    tmKB.Description:=KB.Description;

    eF:=tmKB.CopyRFT_V2(RzCheckTree1);

    if pos(ext,SaveDialog1.FileName)=0 then
     SaveDialog1.FileName:=SaveDialog1.FileName+ext;

    tmKB.SaveToPHP(SaveDialog1.FileName);
    tmKB.SaveToPHP_V2(StringReplace(SaveDialog1.FileName,
     '.php','_V2.php',[rfReplaceAll])
      );
//   tmKB.SaveToJSON(StringReplace(SaveDialog1.FileName,
//     '.php','',[rfReplaceAll])
//      );
    MainForm.MMessageBox(0,0,'0='+MainForm.LS('The knowledge base is exported'));
   end;
    except
     MainForm.MMessageBox(1,0,'0='+MainForm.LS('Sorry, an error occurred'))
    end;
 end; //end php export
 //----------------------------------------------------------
  11:begin  //csv dec tables export
  try
  SaveDialog1.Title:=Application.Title+': '+MainForm.LS('Export');
  ext:='.csv';

  SaveDialog1.Filter:='CSV files |'
   +'*'+ext+'|'+MainForm.LS('All')+'|*.*';
  SaveDialog1.InitialDir:=ExtractFileDir(Application.ExeName)+'\Data';

  if SaveDialog1.Execute() then
   if (SaveDialog1.FileName<>'') then
   begin
    tmKB:=TKnowledgeBase.Create;
    tmKB.Init;

    c:=ComboBox1.Items.IndexOf(ComboBox1.Text);
    if c>-1 then  KB:=TKnowledgeBase(KBList.Items[c]);

    tmKB.Name:=KB.Name;
    tmKB.Kind:=KB.Kind;
    tmKB.Description:=KB.Description;

    eF:=tmKB.CopyRFT_V2(RzCheckTree1);

    if pos(ext,SaveDialog1.FileName)=0 then
     SaveDialog1.FileName:=SaveDialog1.FileName+ext;

    tmKB.SaveToCSV(SaveDialog1.FileName,RzCheckBox1.Checked);

    MainForm.MMessageBox(0,0,'0='+MainForm.LS('The knowledge base is exported'));
   end;
    except
     MainForm.MMessageBox(1,0,'0='+MainForm.LS('Sorry, an error occurred'))
    end;
 end; //end csv dec tables export
 //----------------------------------------------------------
 12:begin  //processing (rule templates reverse)
  try
    c:=ComboBox1.Items.IndexOf(ComboBox1.Text);
    if c>-1 then
     begin
      KB:=TKnowledgeBase(KBList.Items[c]);

      KB.ReversingRules(RzCheckTree1);
     end;
    MainForm.MMessageBox(0,0,'0='+MainForm.LS('The rules are processed'));
    MainForm.MakeDump(MainForm.LS('Reversing'),80);
    MainForm.LoadAList(MainForm.RzListView1);
  except
   MainForm.MMessageBox(1,0,'0='+MainForm.LS('Sorry, an error occurred'))
  end;
 end; //end rule templates reverse
 //----------------------------------------------------------
 end; //end case

 if eF=0 then MainForm.LoadTree(KBList,MainForm.TreeView1);
except
end;
 Close;
end;

//??????
procedure TExp.RzButton1Click(Sender: TObject);
begin
 Exp.Close;
end;

procedure TExp.FormClose(Sender: TObject; var Action: TCloseAction);
begin
 try
  Action:=caFree;
 except
 end;
 MainForm.LoadTree(KBList,MainForm.TreeView1);
end;

procedure TExp.ComboBox1Change(Sender: TObject);
var
 i  : Integer;
begin
 if TComboBox(Sender).Items.IndexOf(TComboBox(Sender).Text)=-1 then
  TComboBox(Sender).ItemIndex:=0;
 case Tag of
 2,4,5,6,7,8,9,44,10,11:begin  //save
  i:=TComboBox(Sender).Items.IndexOf(TComboBox(Sender).Text);
   if i>-1 then  KB:=TKnowledgeBase(KBList.Items[i]);
  RzCheckTree1.Items.Clear;
  KB.AddToRzCheckTree(RzCheckTree1,nil);
 end; //end save
 12:begin  //processing
  i:=TComboBox(Sender).Items.IndexOf(TComboBox(Sender).Text);
   if i>-1 then  KB:=TKnowledgeBase(KBList.Items[i]);
  RzCheckTree1.Items.Clear;
  KB.AddToRzCheckTreeForRules(RzCheckTree1,nil);
 end; //processing
 end; //end case
end;

procedure TExp.RzCheckList1Click(Sender: TObject);
begin
 Hint:=TRzCheckList(Sender).SelectedItem;
end;

procedure TExp.FormCreate(Sender: TObject);
var
 i  : Integer;
begin
 STDIClass.LoadLocalLang(Self,LangLocaleDir+LangPrefix+'002.lan');

 ComboBox1.Items.Clear;
 for i:=0 to KBList.Count-1 do
  ComboBox1.Items.Add(
   TKnowledgeBase(KBList.Items[i]).Name
    );
end;

procedure TExp.RzCheckTree1Click(Sender: TObject);
begin
 Hint:=TRzCheckTree(Sender).Selected.Text;
end;

procedure TExp.RzCheckTree1Change(Sender: TObject; Node: TTreeNode);
var
 i,j  : Integer;
 tmR  : TRule;
begin
 ShowMessage(IntToStr(RzCheckTree1.Selected.StateIndex));
if TRzCheckTree(Sender).Selected.Data<>nil then
if TObject(TRzCheckTree(Sender).Selected.Data) is TRule then
 if TRzCheckTree(Sender).Selected.StateIndex=2 then
// if TRzCheckTree(Sender).ItemState[
//  TRzCheckTree(Sender).ItemIndex]=True then
   begin
    tmR:=TRule(TRzCheckTree(Sender).Selected.Data);

    for i:=0 to tmR.Conditions.Count-1 do
     begin
      j:=KB.IndexOfTemplate(TCondition(tmR.Conditions.Items[i]).Fact);
      if j>-1 then
       TRzCheckTree(Sender).ChangeNodeCheckState(TRzCheckTree(Sender).Items.Item[0].Item[0].Item[j],csChecked);
//       TRzCheckTree(Sender).Items.Item[0].Item[0].Item[j].StateIndex:=1;
//       RzCheckList3.ItemChecked[j]:=True;
     end;
    for i:=0 to tmR.Actions.Count-1 do
     begin
      j:=KB.IndexOfTemplate(TRAction(tmR.Actions.Items[i]).Fact);
      if j>-1 then
       TRzCheckTree(Sender).ChangeNodeCheckState(TRzCheckTree(Sender).Items.Item[0].Item[0].Item[j],csChecked);
//       .chStateIndex:=1;
//       RzCheckList3.ItemChecked[j]:=True;
     end;
 end;
end;

procedure TExp.RzCheckTree1StateChange(Sender: TObject; Node: TTreeNode;
  NewState: TRzCheckState);
Function GetTNode(L:TRzCheckTree):Integer;
var
 i  : Integer;
begin
 Result:=-1;
 for i:=0 to L.Items.Item[0].Count-1 do
  if L.Items.Item[0].Item[i].Count>0 then
   if TObject(L.Items.Item[0].Item[i].Item[0].Data) is TTemplate then
    begin
     Result:=i;
     Break;
    end;
end;

var
 i,j  : Integer;
 tmR  : TRule;
 tmF  : TFact;
 c  : Integer;
begin
// ShowMessage(IntToStr(RzCheckTree1.Selected.StateIndex));
// RzCheckTree1Change(RzCheckTree1,RzCheckTree1.Selected);
if Node.Data<>nil then
begin
if TObject(Node.Data) is TFact then
 if NewState=csChecked	then
  begin
   tmF:=TFact(Node.Data);
      j:=KB.IndexOfTemplate(tmF);
      if j>-1 then
       begin
        c:=GetTNode(TRzCheckTree(Sender));
        if c>-1 then
         TRzCheckTree(Sender).ChangeNodeCheckState(TRzCheckTree(Sender).Items.Item[0].Item[c].Item[j],csChecked);
//       TRzCheckTree(Sender).Items.Item[0].Item[0].Item[j].StateIndex:=1;
//       RzCheckList3.ItemChecked[j]:=True;
       end;
  end;
if TObject(Node.Data) is TRule then
 if NewState=csChecked	then
// if TRzCheckTree(Sender).ItemState[
//  TRzCheckTree(Sender).ItemIndex]=True then
   begin
    tmR:=TRule(Node.Data);

    for i:=0 to tmR.Conditions.Count-1 do
     begin
      j:=KB.IndexOfTemplate(TCondition(tmR.Conditions.Items[i]).Fact);
      if j>-1 then
       begin
        c:=GetTNode(TRzCheckTree(Sender));
        if c>-1 then
         TRzCheckTree(Sender).ChangeNodeCheckState(TRzCheckTree(Sender).Items.Item[0].Item[c].Item[j],csChecked);
//       TRzCheckTree(Sender).Items.Item[0].Item[0].Item[j].StateIndex:=1;
//       RzCheckList3.ItemChecked[j]:=True;
       end;
     end;
    for i:=0 to tmR.Actions.Count-1 do
     begin
      j:=KB.IndexOfTemplate(TRAction(tmR.Actions.Items[i]).Fact);
      if j>-1 then
       begin
        c:=GetTNode(TRzCheckTree(Sender));
        if c>-1 then
         TRzCheckTree(Sender).ChangeNodeCheckState(TRzCheckTree(Sender).Items.Item[0].Item[c].Item[j],csChecked);
       end;
//       .chStateIndex:=1;
//       RzCheckList3.ItemChecked[j]:=True;
     end;
 end;
end;
end;

end.
