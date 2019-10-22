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
  StdCtrls, RzLstBox, RzChkLst, ComCtrls, RzListVw, RzTreeVw;

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
//     'Необходимо выбрать элементы для загрузки';
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
  4,5,6,7,8,9:begin //export
    MainForm.ImageList1.GetIcon(74,Exp.Icon);
    MainForm.ReloadHelpMessage(ScrollBox3,23);
    Exp.Caption:=' '+MainForm.LS('Export');
    Exp.GroupBox1.Caption:=' '+MainForm.LS('Exporting objects')+': ';
    Exp.RzPanel2.Caption:=MainForm.LS('You need to select the objects for export');
//    ComboBox1.Items.Clear;
//    for i:=0 to KBList.Count-1 do
//     ComboBox1.Items.Add(TKnowledgeBase(KBList.Items[i]).Name);
    if KBList.Count>0 then ComboBox1.ItemIndex:=0;
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
{
 L1:='';L2:='';L3:='';L4:='';L5:='';

 for j:=0 to RzCheckTree1.Items.Item[0].Count-1 do
  for c:=0 to RzCheckTree1.Items.Item[0].Item[j].Count-1 do
//   if RzCheckTree1.Items.Item[0].Item[j].Item[c].StateIndex=2 then
    begin
//     if (TObject(RzCheckTree1.Items.Item[0].Item[j].Item[c].Data) is TGlobalVar)then
//      if (RzCheckTree1.Items.Item[0].Item[j].Item[c].StateIndex=2) then L4:=L4+'1' else L4:=L4+'0';
     if (TObject(RzCheckTree1.Items.Item[0].Item[j].Item[c].Data) is TGRule)then
      if (RzCheckTree1.Items.Item[0].Item[j].Item[c].StateIndex=2) then L4:=L4+'1' else L4:=L4+'0';
     if (TObject(RzCheckTree1.Items.Item[0].Item[j].Item[c].Data) is TRule)then
      if(RzCheckTree1.Items.Item[0].Item[j].Item[c].StateIndex=2) then L1:=L1+'1' else L1:=L1+'0';
     if (TObject(RzCheckTree1.Items.Item[0].Item[j].Item[c].Data) is TFact)then
      if(RzCheckTree1.Items.Item[0].Item[j].Item[c].StateIndex=2) then L2:=L2+'1' else L2:=L2+'0';
     if (TObject(RzCheckTree1.Items.Item[0].Item[j].Item[c].Data) is TTemplate)then
      if(RzCheckTree1.Items.Item[0].Item[j].Item[c].StateIndex=2) then L3:=L3+'1' else L3:=L3+'0';
//     if (TObject(RzCheckTree1.Items.Item[0].Item[j].Item[c].Data) is TFunct)then
//      if(RzCheckTree1.Items.Item[0].Item[j].Item[c].StateIndex=2) then L5:=L5+'1' else L5:=L5+'0';
     if (TObject(RzCheckTree1.Items.Item[0].Item[j].Item[c].Data) is TTask)then
      if(RzCheckTree1.Items.Item[0].Item[j].Item[c].StateIndex=2) then L5:=L5+'1' else L5:=L5+'0';
    end;
}
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
    TKnowledgeBase(KBList.Items[c]).Description:=//'[Источник]: '+
     MainForm.OpenDialog1.FileName;
//    KB.Description;
   end;
  if Tag=1 then
   TKnowledgeBase(KBList.Items[c]).FileName:=
    MainForm.OpenDialog1.FileName;

    //  eF:=TKnowledgeBase(KBList.Items[c]).CopyRFT(KB,
//   L1,L2,L3,L4,L5);
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

   //save selected items to selected KB
//    eF:=tmKB.CopyRFT(KB,
//     L1,L2,L3,L4,L5);
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
     MainForm.MMessageBox(1,0,'0=К сожалению выполнить данное действие невозможно ввиду отсутвия модулей поддержки языков представления знаний')
    end;
 end; //end clips export
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
     MainForm.MMessageBox(1,0,'0=Извините, при экспорте произошла ошибка')
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


//    tmKB.SaveToMDLFile(SaveDialog1.FileName);
    tmKB.SaveToCmapTools(
     ExtractFileDir(Application.ExeName)+'\Dll\xtm.s.dll'
     ,SaveDialog1.FileName);

    MainForm.MMessageBox(0,0,'0='+MainForm.LS('The knowledge base is exported'));
   end;
    except
     MainForm.MMessageBox(1,0,'0=Извините, при экспорте произошла ошибка')
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
     MainForm.MMessageBox(1,0,'0=Извините, при экспорте произошла ошибка')
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
     MainForm.MMessageBox(1,0,'0=Извините, при экспорте произошла ошибка')
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
     MainForm.MMessageBox(1,0,'0=Извините, при экспорте произошла ошибка')
    end;
 end; //end rdf export
 //----------------------------------------------------------
 end; //end case

 if eF=0 then MainForm.LoadTree(KBList,MainForm.TreeView1);
except
end;
 Close;
end;

//Отмена
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
 2,4,5,6,7,8,9:begin  //save
  i:=TComboBox(Sender).Items.IndexOf(TComboBox(Sender).Text);
   if i>-1 then  KB:=TKnowledgeBase(KBList.Items[i]);
//  RzCheckList1.Clear;
//  RzCheckList2.Clear;
//  RzCheckList3.Clear;

  RzCheckTree1.Items.Clear;
  KB.AddToRzCheckTree(RzCheckTree1,nil);
{
  for i:=0 to KB.Templates.Count-1 do
    begin
      Exp.RzCheckList3.Items.AddObject(TTemplate(KB.Templates.Items[i]).Name
       +' '+TTemplate(KB.Templates.Items[i]).Description,
        TTemplate(KB.Templates.Items[i])
      );
    end;
  for i:=0 to KB.Rules.Count-1 do
    begin
      Exp.RzCheckList1.Items.AddObject(TRule(KB.Rules.Items[i]).Name
       +' '+TRule(KB.Rules.Items[i]).Description,
        TRule(KB.Rules.Items[i])
      );
    end;
  for i:=0 to KB.Facts.Count-1 do
    begin
      Exp.RzCheckList2.Items.AddObject(TFact(KB.Facts.Items[i]).Name,
        TFact(KB.Facts.Items[i])
      );
    end;
}
 end; //end save
 end; //end case

{  Exp.RzPageControl1.Pages[0].Caption:='Правила ('+
   IntToStr(KB.Rules.Count)+')';
  Exp.RzPageControl1.Pages[1].Caption:='Факты ('+
   IntToStr(KB.Facts.Count)+')';
  Exp.RzPageControl1.Pages[2].Caption:='Шаблоны для фактов ('+
   IntToStr(KB.Templates.Count)+')';
}   
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
