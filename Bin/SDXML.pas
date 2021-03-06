{------------------------------------------------------------------------------}
{                                                                              }
{  Personal Knowledge Base Designer                                            }
{  by A.Yu. Yurin, N.O. Dorodnykh                                              }
{                                                                              }
{  iskander@icc.ru                                                             }
{  http://knowledge-core.ru/                                                   }
{                                                                              }
{------------------------------------------------------------------------------}

unit SDXML;

interface

uses
  UPKBClass,SysUtils, MSXML_TLB,Forms, Windows, XMLIntf,Classes, XMLDoc,
  Dialogs, DateUtils ;

type
  TXmlSave = Class
  public
    procedure GXMLStrSF(SF: string; KB:TKnowledgeBase);
  end;

  TXmlDow = Class
  public
    Function parXML(FN: string; KB:TKnowledgeBase):Integer;
  end;

var
  XmlSave: TXmlSave;
  XmlDow: TXmlDow;
implementation

uses uaddKB, MAIN, UDDSClass, USTDIClass;

//--------------????????? ? ?????????? XML
procedure TXmlSave.GXMLStrSF(SF: string; KB:TKnowledgeBase);
function AddNode(D:DomDocument;RN:IXMLDOMElement;N,V:String):IXMLDOMElement;
var
 tNode  : IXMLDOMElement;
begin
  tNode:=D.createElement(N);
  tNode.appendChild(D.createTextNode(V));
  RN.appendChild(tNode);
  Result:=tNode;
end;

function AddSNode(D:DomDocument;RN:IXMLDOMElement;O:TSlot):IXMLDOMElement;
var
 SNode: IXMLDOMElement;
 i  : Extended;
begin
 SNode:=D.createElement('Slot');
 AddNode(D,SNode,'Name',O.Name);
 AddNode(D,SNode,'ShortName',O.ShortName);
 AddNode(D,SNode,'Description',O.Description);
 AddNode(D,SNode,'Value',O.Value);

 if O.DataType='' then
  if TryStrToFloat(O.Value,i) then O.DataType:='Number'
   else O.DataType:='String';

 AddNode(D,SNode,'DataType',O.DataType);
 AddNode(D,SNode,'Constraint',O.Constraint);
 RN.appendChild(SNode);
 Result:=SNode;
end;

function AddUANode(D:DomDocument;RN:IXMLDOMElement;O:TArgument):IXMLDOMElement;
var
 SNode: IXMLDOMElement;
// j  : Integer;
begin
 SNode:=D.createElement('Argument');
 AddNode(D,SNode,'Name',O.Name);
 AddNode(D,SNode,'ShortName',O.ShortName);
 AddNode(D,SNode,'Description',O.Description);
 AddNode(D,SNode,'Value',O.Value);
 AddNode(D,SNode,'DataType',O.DataType);
 AddNode(D,SNode,'Constraint',O.Constraint);
 RN.appendChild(SNode);
 Result:=SNode;
end;

function AddGVNode(D:DomDocument;RN:IXMLDOMElement;O:TGlobalVar):IXMLDOMElement;
var
 SNode: IXMLDOMElement;
// j  : Integer;
begin
 SNode:=D.createElement('GlobalVar');
 AddNode(D,SNode,'Name',O.Name);
 AddNode(D,SNode,'ShortName',O.ShortName);
 AddNode(D,SNode,'Description',O.Description);
 AddNode(D,SNode,'Value',O.Value);
 AddNode(D,SNode,'DataType',O.DataType);
// AddNode(D,SNode,'Constraint',O.Constraint);
 RN.appendChild(SNode);
 Result:=SNode;
end;

function AddTNode(D:DomDocument;RN:IXMLDOMElement;O:TTemplate):IXMLDOMElement;
var
 SNode,SNode1: IXMLDOMElement;
 j  : Integer;
begin
 SNode:=D.createElement('Template');
 AddNode(D,SNode,'ID',O.ID);
 AddNode(D,SNode,'Name',O.Name);
 AddNode(D,SNode,'ShortName',O.ShortName);
 AddNode(D,SNode,'Description',O.Description);
 AddNode(D,SNode,'PackageName',O.PackageName);
 AddNode(D,SNode,'RootPackageName',O.RootPackageName);
 AddNode(D,SNode,'DrawParams',O.DrawParams.Text);

 SNode1:=D.createElement('Slots');
 for j:=0 to O.Slots.Count-1 do
  AddSNode(D,SNode1,TSlot(O.Slots.Items[j]));
 SNode.appendChild(SNode1);

 RN.appendChild(SNode);
 Result:=SNode;
end;

function AddUNode(D:DomDocument;RN:IXMLDOMElement;O:TFunct):IXMLDOMElement;
var
 SNode,SNode1: IXMLDOMElement;
 j  : Integer;
begin
 SNode:=D.createElement('Function');
 AddNode(D,SNode,'ID',O.ID);
 AddNode(D,SNode,'Name',O.Name);
 AddNode(D,SNode,'ShortName',O.ShortName);
 AddNode(D,SNode,'Description',O.Description);
 AddNode(D,SNode,'DataType',O.DataType);
 AddNode(D,SNode,'Body',O.Body);

 SNode1:=D.createElement('Arguments');
 for j:=0 to O.Args.Count-1 do
  AddUANode(D,SNode1,TArgument(O.Args.Items[j]));
 SNode.appendChild(SNode1);

 RN.appendChild(SNode);
 Result:=SNode;
end;

//facts
function AddFNode(D:DomDocument;RN:IXMLDOMElement;O:TFact):IXMLDOMElement;
var
 SNode,SNode1: IXMLDOMElement;
 j  : Integer;
begin
 SNode:=D.createElement('Fact');
 AddNode(D,SNode,'ID',O.ID);
 AddNode(D,SNode,'Name',O.Name);
 AddNode(D,SNode,'ShortName',O.ShortName);
 AddNode(D,SNode,'Mode',O.Mode);
 AddNode(D,SNode,'Description',O.Description);
 AddNode(D,SNode,'PackageName',O.PackageName);
 AddNode(D,SNode,'RootPackageName',O.RootPackageName);
 AddNode(D,SNode,'DrawParams',O.DrawParams.Text);

 SNode1:=D.createElement('Slots');
 for j:=0 to O.Slots.Count-1 do
  AddSNode(D,SNode1,TSlot(O.Slots.Items[j]));
 SNode.appendChild(SNode1);

 RN.appendChild(SNode);
 Result:=SNode;
end;
//---------------------------------
//fvars
function AddFVarNode(D:DomDocument;RN:IXMLDOMElement;O:TFVar):IXMLDOMElement;
var
 SNode,SNode1: IXMLDOMElement;
 j  : Integer;
begin
 SNode:=D.createElement('FVar');
 AddNode(D,SNode,'ID',O.ID);
 AddNode(D,SNode,'Name',O.Name);
 AddNode(D,SNode,'Description',O.Description);
 AddNode(D,SNode,'ListOfValues',O.ListOfValues.Text);
 AddNode(D,SNode,'FScaleName',O.FScaleName);
 AddNode(D,SNode,'UnitsName',O.UnitsName);
 AddNode(D,SNode,'FType',O.FType);
 AddNode(D,SNode,'DrawParams',O.DrawParams.Text);
 AddNode(D,SNode,'Len',IntToStr(O.Len));
 RN.appendChild(SNode);
 Result:=SNode;
end;
//---------------------------------
//fsacles
function AddFScNode(D:DomDocument;RN:IXMLDOMElement;O:TFScale):IXMLDOMElement;
var
 SNode,SNode1: IXMLDOMElement;
 j  : Integer;
begin
 SNode:=D.createElement('FScale');
 AddNode(D,SNode,'ID',O.ID);
 AddNode(D,SNode,'Name',O.Name);
 AddNode(D,SNode,'Description',O.Description);
// AddNode(D,SNode,'ListOfValues',O.ListOfValues.Text);
// AddNode(D,SNode,'ListOfNames',O.ListOfNames.Text);
 AddNode(D,SNode,'Min',O.Min);
 AddNode(D,SNode,'Max',O.Max);
 AddNode(D,SNode,'Len',IntToStr(O.Len));
 AddNode(D,SNode,'FType',O.FType);
 AddNode(D,SNode,'UnitsName',O.UnitsName);
 AddNode(D,SNode,'DrawParams',O.DrawParams.Text);

 SNode1:=D.createElement('Terms');
 for j:=0 to O.ListOfValues.Count-1 do
  AddFVarNode(D,SNode1,TFVar(O.ListOfValues.Objects[j]));
 SNode.appendChild(SNode1);

 RN.appendChild(SNode);
 Result:=SNode;
end;
//--------------------------------------------------------------------------
function AddDSPNode(D:DomDocument;RN:IXMLDOMElement;O:TMCTask):IXMLDOMElement;

function AddScaleNode(D:DomDocument;RN:IXMLDOMElement;
 O:TStringList;NM:string):IXMLDOMElement;
var
 SNode: IXMLDOMElement;
begin
 SNode:=D.createElement('Node');
 AddNode(D,SNode,'Name',NM);
 AddNode(D,SNode,'Content',O.Text);
 RN.appendChild(SNode);
 Result:=SNode;
end;

var
 SNode,SNode1: IXMLDOMElement;
 j  : Integer;
begin
 SNode:=D.createElement('DSP');
 AddNode(D,SNode,'A',O.A.Text);
 AddNode(D,SNode,'C',O.C.Text);
 AddNode(D,SNode,'E',O.E.Text);

 //scales
 SNode1:=D.createElement('Scales');
 for j:=0 to O.S.Count-1 do
  AddScaleNode(D,SNode1,TStringList(O.S.Objects[j]),O.S.Strings[j]);
 SNode.appendChild(SNode1);

 //marks
 SNode1:=D.createElement('Marks');
 for j:=0 to O.Marks.Count-1 do
  AddScaleNode(D,SNode1,TStringList(O.Marks.Objects[j]),O.Marks.Strings[j]);
 SNode.appendChild(SNode1);

 //results
 SNode1:=D.createElement('Results');
 for j:=0 to O.Results.Count-1 do
  AddScaleNode(D,SNode1,TStringList(O.Results.Objects[j]),O.Results.Strings[j]);
 SNode.appendChild(SNode1);

 RN.appendChild(SNode);
 Result:=SNode;
end;
//--------------------------------------------------------------------------
function AddPNode(D:DomDocument;RN:IXMLDOMElement;O:TTask):IXMLDOMElement;
var
 SNode: IXMLDOMElement;
// j  : Integer;
begin
 SNode:=D.createElement('Task');
 AddNode(D,SNode,'ID',O.ID);
 AddNode(D,SNode,'Name',O.Name);
 AddNode(D,SNode,'Description',O.Description);
 AddNode(D,SNode,'PackageName',O.PackageName);
 AddNode(D,SNode,'RootPackageName',O.RootPackageName);

 AddNode(D,SNode,'Authors',O.Authors);
 AddNode(D,SNode,'Creation_date',O.Creation_date);
 AddNode(D,SNode,'Modification_date',O.Modification_date);
 AddNode(D,SNode,'Logo_file',O.Logo_file);
 AddNode(D,SNode,'task_Ver',O.task_Ver);
 AddNode(D,SNode,'Platfotm',O.Platfotm);

 //!!!!check for nil
 if O.F1<>nil then AddFNode(D,SNode,O.F1);
 if O.K1<>nil then AddNode(D,SNode,'K1',O.K1.ID);
 if O.K2<>nil then AddNode(D,SNode,'K2','dump');
 //!!!
// AddNode(D,SNode,'K2!',O.K2.Name);

 AddNode(D,SNode,'CBRPResults',O.CBRPResults.Text);
 if O.DSST<>nil then AddDSPNode(D,SNode,O.DSST);

 RN.appendChild(SNode);
 Result:=SNode;
end;

function AddPkgNode(D:DomDocument;RN:IXMLDOMElement;O:TTmObj):IXMLDOMElement;
var
 SNode: IXMLDOMElement;
// j  : Integer;
begin
 SNode:=D.createElement('Package');
 AddNode(D,SNode,'ID',O.ID);
 AddNode(D,SNode,'Name',O.Name);
 AddNode(D,SNode,'ID_Root',O.ID_Root);
 AddNode(D,SNode,'ID2',IntToStr(O.ID2));

 RN.appendChild(SNode);
 Result:=SNode;
end;

function AddCNode(D:DomDocument;RN:IXMLDOMElement;O:TCondition):IXMLDOMElement;
var
 SNode: IXMLDOMElement;
// j  : Integer;
begin
 SNode:=D.createElement('Condition');
 AddNode(D,SNode,'Name',O.Fact.Name);
 AddNode(D,SNode,'Operator',O.Operator);

 AddFNode(D,SNode,O.Fact);

 RN.appendChild(SNode);
 Result:=SNode;
end;

function AddANode(D:DomDocument;RN:IXMLDOMElement;O:TRAction):IXMLDOMElement;
var
 SNode: IXMLDOMElement;
// j  : Integer;
begin
 SNode:=D.createElement('Action');
 AddNode(D,SNode,'Name',O.Fact.Name);
 AddNode(D,SNode,'Operator',O.Operator);

 AddFNode(D,SNode,O.Fact);

 RN.appendChild(SNode);
 Result:=SNode;
end;

function AddRNode(D:DomDocument;RN:IXMLDOMElement;O:TRule):IXMLDOMElement;
var
 SNode,SNode1: IXMLDOMElement;
 j  : Integer;
begin
 SNode:=D.createElement('Rule');
 AddNode(D,SNode,'ID',O.ID);
 AddNode(D,SNode,'Name',O.Name);
 AddNode(D,SNode,'ShortName',O.ShortName);
 AddNode(D,SNode,'Description',O.Description);
 AddNode(D,SNode,'Salience',O.Salience);
 AddNode(D,SNode,'CF',O.CF);
 AddNode(D,SNode,'PackageName',O.PackageName);
 AddNode(D,SNode,'RootPackageName',O.RootPackageName);
 AddNode(D,SNode,'DrawParams',O.DrawParams.Text);

 SNode1:=D.createElement('Conditions');
 for j:=0 to O.Conditions.Count-1 do
  AddCNode(D,SNode1,TCondition(O.Conditions.Items[j]));
 SNode.appendChild(SNode1);

 SNode1:=D.createElement('Actions');
 for j:=0 to O.Actions.Count-1 do
  AddANode(D,SNode1,TRAction(O.Actions.Items[j]));
 SNode.appendChild(SNode1);

 RN.appendChild(SNode);
 Result:=SNode;
end;

function AddGRNode(D:DomDocument;RN:IXMLDOMElement;O:TGRule):IXMLDOMElement;
var
 SNode,SNode1: IXMLDOMElement;
 j  : Integer;
begin
 SNode:=D.createElement('GRule');
 AddNode(D,SNode,'ID',O.ID);
 AddNode(D,SNode,'Name',O.Name);
 AddNode(D,SNode,'ShortName',O.ShortName);
 AddNode(D,SNode,'Description',O.Description);
 AddNode(D,SNode,'PackageName',O.PackageName);
 AddNode(D,SNode,'RootPackageName',O.RootPackageName);
 AddNode(D,SNode,'DrawParams',O.DrawParams.Text);

 SNode1:=D.createElement('Conditions');
 for j:=0 to O.Conditions.Count-1 do
   AddNode(D,SNode1,'C'+IntToStr(j),TTemplate(O.Conditions.Items[j]).ShortName);
 SNode.appendChild(SNode1);

 SNode1:=D.createElement('Actions');
 for j:=0 to O.Actions.Count-1 do
   AddNode(D,SNode1,'A'+IntToStr(j),TTemplate(O.Actions.Items[j]).ShortName);
 SNode.appendChild(SNode1);

 RN.appendChild(SNode);
 Result:=SNode;
end;

var
  // ?????????? ????????, ????????? ??? ????????
//  coDoc: CoDomDocument ;
  // ??????? XMLDomDocument
  Doc: DomDocument ;
    // ?????????? ???????? DOMElement
  r: IXMLDOMElement;
  Node: IXMLDOMElement;
//  Skol: IXMLDOMElement;
  SNode: IXMLDOMElement;
//  Sskol: IXMLDOMElement;
  // DOMText
//  txt: IXMLDOMText;
  // DOMAttribute
//  attr: IXMLDOMAttribute;

  i: integer;
//  Tn: string;
begin
 try
  // ???????? ????????? DOM
  Doc:=CoDomDocument.Create;
  // ????????? ??????????? ?????? ?????????
  Doc.Set_async(false);
  // ????????? ????????? DOM ?????????
  Doc.LoadXML('<Structure/>');
  // ????????? ?????? ????????? ????????
  r:=Doc.Get_documentElement;

  //----------------------???? ??????----------------
  // ???????? DOMElement (??? <???? ??????>)
  Node:=Doc.createElement('KnowledgeBase');
  AddNode(Doc,Node,'ID',KB.ID);
  AddNode(Doc,Node,'Name',KB.Name);
  AddNode(Doc,Node,'ShortName',KB.ShortName);
  AddNode(Doc,Node,'Kind',IntToStr(KB.Kind));
  AddNode(Doc,Node,'Description',KB.Description);
//  AddNode(Doc,Node,'TempPackageList',KB.TempPackageList.Text);
//  AddNode(Doc,Node,'FactPackageList',KB.FactPackageList.Text);
//  AddNode(Doc,Node,'GRulePackageList',KB.GRulePackageList.Text);
//  AddNode(Doc,Node,'RulePackageList',KB.RulePackageList.Text);

  r.appendChild(Node);

  //---------------------------vars--------------------
  SNode:=Doc.createElement('Vars');
  for i:=0 to KB.Vars.Count-1 do
    begin
     AddGVNode(Doc,SNode,TGlobalVar(KB.Vars.Items[i]));
    end;
  Node.appendChild(SNode);

  //---------------------------???????--------------------
  SNode:=Doc.createElement('Templates');
  for i:=0 to KB.Templates.Count-1 do
    begin
     AddTNode(Doc,SNode,TTemplate(KB.Templates.Items[i]));
    end;
  Node.appendChild(SNode);

  //---------------------------?????--------------------
  SNode:=Doc.createElement('Facts');
  for i:=0 to KB.Facts.Count-1 do
    begin
     AddFNode(Doc,SNode,TFact(KB.Facts.Items[i]));
    end;
  Node.appendChild(SNode);

// if KB.Kind=0 then
// begin
  //--------------------General ???????------------------
  SNode:=Doc.createElement('GRules');
  for i:=0 to KB.GRules.Count-1 do
    begin
     AddGRNode(Doc,SNode,TGRule(KB.GRules.Items[i]));
    end;
  Node.appendChild(SNode);
  //--------------------???????------------------
  SNode:=Doc.createElement('Rules');
  for i:=0 to KB.Rules.Count-1 do
    begin
     AddRNode(Doc,SNode,TRule(KB.Rules.Items[i]));
    end;
  Node.appendChild(SNode);
// end;

  //---------------------------Functions--------------------
  SNode:=Doc.createElement('Functions');
  for i:=0 to KB.Functions.Count-1 do
    begin
     AddUNode(Doc,SNode,TFunct(KB.Functions.Items[i]));
    end;
  Node.appendChild(SNode);

  //--------------------------- Tasks --------------------
  SNode:=Doc.createElement('Tasks');
  for i:=0 to KB.Tasks.Count-1 do
    begin
     AddPNode(Doc,SNode,TTask(KB.Tasks.Items[i]));
    end;
  Node.appendChild(SNode);

  //--------------------------- FScales --------------------
  SNode:=Doc.createElement('FScales');
  for i:=0 to KB.FScales.Count-1 do
    begin
    if TFScale(KB.FScales.Items[i]).ID='' then
     TFScale(KB.FScales.Items[i]).ID:=KB.NewID('S');
     AddFScNode(Doc,SNode,TFScale(KB.FScales.Items[i]));
    end;
  Node.appendChild(SNode);

  //--------------------------- FVars --------------------
{ SNode:=Doc.createElement('FVars');
  for i:=0 to KB.FVars.Count-1 do
    begin
    if TFVar(KB.FVars.Items[i]).ID='' then
     TFVar(KB.FVars.Items[i]).ID:=KB.NewID('V');
     AddFVarNode(Doc,SNode,TFVar(KB.FVars.Items[i]));
    end;
  Node.appendChild(SNode);
  }
  //--------------------------- Packages --------------------
  SNode:=Doc.createElement('TempPackageList');
  for i:=0 to KB.TempPackageList.Count-1 do
    begin
     TTmObj(KB.TempPackageList.Objects[i]).Name:=
      KB.TempPackageList.ValueFromIndex[i];
     AddPkgNode(Doc,SNode,TTmObj(KB.TempPackageList.Objects[i]));
    end;
  Node.appendChild(SNode);
  SNode:=Doc.createElement('FactPackageList');
  for i:=0 to KB.FactPackageList.Count-1 do
    begin
     TTmObj(KB.FactPackageList.Objects[i]).Name:=
      KB.FactPackageList.ValueFromIndex[i];
     AddPkgNode(Doc,SNode,TTmObj(KB.FactPackageList.Objects[i]));
    end;
  Node.appendChild(SNode);
  SNode:=Doc.createElement('RulePackageList');
  for i:=0 to KB.RulePackageList.Count-1 do
    begin
     TTmObj(KB.RulePackageList.Objects[i]).Name:=
      KB.RulePackageList.ValueFromIndex[i];
     AddPkgNode(Doc,SNode,TTmObj(KB.RulePackageList.Objects[i]));
    end;
  Node.appendChild(SNode);
  SNode:=Doc.createElement('GRulePackageList');
  for i:=0 to KB.GRulePackageList.Count-1 do
    begin
     TTmObj(KB.GRulePackageList.Objects[i]).Name:=
      KB.GRulePackageList.ValueFromIndex[i];
     AddPkgNode(Doc,SNode,TTmObj(KB.GRulePackageList.Objects[i]));
    end;
  Node.appendChild(SNode);
  //------------------------------------------------------
  doc.save(SF);//?????????? ? ????
  MainForm.MMessageBox(0,0,'0='+
   STDIClass.LoadSingleString('The knowledge base: ',LangLocaleDir+LangPrefix+'012.lan')+
    KB.Name+
     STDIClass.LoadSingleString('is successfully saved',LangLocaleDir+LangPrefix+'012.lan'));
 except
  MainForm.MMessageBox(2,0,'255='+
   STDIClass.LoadSingleString('Sorry, there was an error while saving the knowledge base (project)',LangLocaleDir+LangPrefix+'012.lan'));
 end;
end;

Function TXmlDow.parXML(FN: string; KB:TKnowledgeBase):Integer;
function GetGVFromNode(N:IXMLNode):TGlobalVar;
//var
// i  : Integer;
begin
 Result:=TGlobalVar.Create;
 Result.Name:=N.ChildNodes.Nodes['Name'].Text;
 Result.ShortName:=N.ChildNodes.Nodes['ShortName'].Text;
 Result.Description:=N.ChildNodes.Nodes['Description'].Text;
 Result.Value:=N.ChildNodes.Nodes['Value'].Text;
 Result.DataType:=N.ChildNodes.Nodes['DataType'].Text;
end;

function GetSFromNode(N:IXMLNode):TSlot;
var
 i  : Extended;
begin
 Result:=TSlot.Create;
 Result.Name:=N.ChildNodes.Nodes['Name'].Text;
 Result.ShortName:=N.ChildNodes.Nodes['ShortName'].Text;
 Result.Description:=N.ChildNodes.Nodes['Description'].Text;
 Result.Value:=N.ChildNodes.Nodes['Value'].Text;
 Result.DataType:=N.ChildNodes.Nodes['DataType'].Text;

 if Result.DataType='' then
  if TryStrToFloat(Result.Value,i) then Result.DataType:='Number'
   else Result.DataType:='String';

 Result.Constraint:=N.ChildNodes.Nodes['Constraint'].Text;
end;

function GetPkgFromNode(N:IXMLNode):TTmObj;
begin
 Result:=TTmObj.Create;
 Result.ID:=N.ChildNodes.Nodes['ID'].Text;
 Result.Name:=N.ChildNodes.Nodes['Name'].Text;
 Result.ID_Root:=N.ChildNodes.Nodes['ID_Root'].Text;
 Result.ID2:=StrToInt(N.ChildNodes.Nodes['ID2'].Text);
end;

function GetUAFromNode(N:IXMLNode):TArgument;
//var
// i  : Integer;
begin
 Result:=TArgument.Create;
 Result.Name:=N.ChildNodes.Nodes['Name'].Text;
 Result.ShortName:=N.ChildNodes.Nodes['ShortName'].Text;
 Result.Description:=N.ChildNodes.Nodes['Description'].Text;
 Result.Value:=N.ChildNodes.Nodes['Value'].Text;
 Result.DataType:=N.ChildNodes.Nodes['DataType'].Text;
 Result.Constraint:=N.ChildNodes.Nodes['Constraint'].Text;
end;

function GetTFromNode(N:IXMLNode):TTemplate;
var
 i  : Integer;
begin
 Result:=TTemplate.Create;
 Result.Init;

 Result.ID:=N.ChildNodes.Nodes['ID'].Text;
 Result.Name:=N.ChildNodes.Nodes['Name'].Text;
 Result.ShortName:=N.ChildNodes.Nodes['ShortName'].Text;
 Result.Description:=N.ChildNodes.Nodes['Description'].Text;
 Result.PackageName:=N.ChildNodes.Nodes['PackageName'].Text;
 Result.RootPackageName:=N.ChildNodes.Nodes['RootPackageName'].Text;
 Result.DrawParams.Text:=N.ChildNodes.Nodes['DrawParams'].Text;

 for i:=0 to N.ChildNodes.Nodes['Slots'].ChildNodes.Count-1 do
  Result.Slots.Add(GetSFromNode(
   N.ChildNodes.Nodes['Slots'].ChildNodes.Nodes[i]
    ));
end;

function GetUFromNode(N:IXMLNode):TFunct;
var
 i  : Integer;
begin
 Result:=TFunct.Create;
 Result.Init;

 Result.ID:=N.ChildNodes.Nodes['ID'].Text;
 Result.Name:=N.ChildNodes.Nodes['Name'].Text;
 Result.ShortName:=N.ChildNodes.Nodes['ShortName'].Text;
 Result.Description:=N.ChildNodes.Nodes['Description'].Text;
 Result.DataType:=N.ChildNodes.Nodes['DataType'].Text;
 Result.Body:=N.ChildNodes.Nodes['Body'].Text;

 for i:=0 to N.ChildNodes.Nodes['Arguments'].ChildNodes.Count-1 do
  Result.Args.Add(GetUAFromNode(
   N.ChildNodes.Nodes['Arguments'].ChildNodes.Nodes[i]
    ));
end;

function GetFFromNode(N:IXMLNode):TFact;
var
 i  : Integer;
begin
 Result:=TFact.Create;
 Result.Init;

 Result.ID:=N.ChildNodes.Nodes['ID'].Text;
 Result.Name:=N.ChildNodes.Nodes['Name'].Text;
 Result.ShortName:=N.ChildNodes.Nodes['ShortName'].Text;
 Result.Mode:=N.ChildNodes.Nodes['Mode'].Text;
 Result.Description:=N.ChildNodes.Nodes['Description'].Text;
 Result.PackageName:=N.ChildNodes.Nodes['PackageName'].Text;
 Result.RootPackageName:=N.ChildNodes.Nodes['RootPackageName'].Text;
 Result.DrawParams.Text:=N.ChildNodes.Nodes['DrawParams'].Text;
 for i:=0 to N.ChildNodes.Nodes['Slots'].ChildNodes.Count-1 do
  Result.Slots.Add(GetSFromNode(
   N.ChildNodes.Nodes['Slots'].ChildNodes.Nodes[i]
    ));
end;
//--------------------------------------
function GetFVarFromNode(N:IXMLNode):TFVar;
var
 i  : Integer;
begin
 Result:=TFVar.Create;
 Result.Init;

 Result.ID:=Trim(N.ChildNodes.Nodes['ID'].Text);
 Result.Name:=N.ChildNodes.Nodes['Name'].Text;
 Result.Description:=N.ChildNodes.Nodes['Description'].Text;

 Result.ListOfValues.Text:=N.ChildNodes.Nodes['ListOfValues'].Text;
 Result.FScaleName:=N.ChildNodes.Nodes['FScaleName'].Text;
 Result.UnitsName:=N.ChildNodes.Nodes['UnitsName'].Text;
 Result.FType:=N.ChildNodes.Nodes['FType'].Text;
 Result.DrawParams.Text:=N.ChildNodes.Nodes['DrawParams'].Text;
 i:=Result.ListOfValues.Count;
 Result.Len:=i;
end;
//--------------------------------------
function GetFScFromNode(N:IXMLNode):TFScale;
var
 i  : Integer;
 tmFVar : TFVar;
begin
 Result:=TFScale.Create;
 Result.Init;

 Result.ID:=Trim(N.ChildNodes.Nodes['ID'].Text);
 Result.Name:=N.ChildNodes.Nodes['Name'].Text;
 Result.Description:=N.ChildNodes.Nodes['Description'].Text;

// Result.ListOfValues.Text:=N.ChildNodes.Nodes['ListOfValues'].Text;
// Result.ListOfNames.Text:=N.ChildNodes.Nodes['ListOfNames'].Text;
 Result.Min:=N.ChildNodes.Nodes['Min'].Text;
 Result.Max:=N.ChildNodes.Nodes['Max'].Text;
 Result.FType:=N.ChildNodes.Nodes['FType'].Text;
 Result.UnitsName:=N.ChildNodes.Nodes['UnitsName'].Text;
 Result.DrawParams.Text:=N.ChildNodes.Nodes['DrawParams'].Text;
 i:=Result.ListOfValues.Count;
 Result.Len:=i;
 for i:=0 to N.ChildNodes.Nodes['Terms'].ChildNodes.Count-1 do
  begin
   tmFVar:=GetFVarFromNode(
    N.ChildNodes.Nodes['Terms'].ChildNodes.Nodes[i]
     );
   Result.ListOfValues.AddObject(tmFVar.Name,tmFVar);
  end;
end;
//--------------------------------------
function GetPFromNode(N:IXMLNode):TTask;
function GetContentFromNode(var s:string;N:IXMLNode):TStringList;
//var
// i  : Integer;
begin
 s:='';
 Result:=TStringList.Create;
 Result.Text:=N.ChildNodes.Nodes['Content'].Text;
 s:=N.ChildNodes.Nodes['Name'].Text;;
end;

function GetDSPFromNode(N:IXMLNode):TMCTask;
var
 i  : Integer;
 s : string;
 tmTs : TStringList;
begin
try
 Result:=TMCTask.Create;
 Result.Init;
 Result.A.Text:=N.ChildNodes.Nodes['A'].Text;
 Result.C.Text:=N.ChildNodes.Nodes['C'].Text;
 Result.E.Text:=N.ChildNodes.Nodes['E'].Text;

 for i:=0 to N.ChildNodes.Nodes['Scales'].ChildNodes.Count-1 do
  begin
   tmTs:=GetContentFromNode(s,
     N.ChildNodes.Nodes['Scales'].ChildNodes.Nodes[i]
      );
   Result.S.AddObject(s,tmTs);
  end;

 for i:=0 to N.ChildNodes.Nodes['Marks'].ChildNodes.Count-1 do
  begin
   tmTs:=GetContentFromNode(s,
     N.ChildNodes.Nodes['Marks'].ChildNodes.Nodes[i]
      );
   Result.Marks.AddObject(s,tmTs);
  end;

 for i:=0 to N.ChildNodes.Nodes['Results'].ChildNodes.Count-1 do
  begin
   tmTs:=GetContentFromNode(s,
     N.ChildNodes.Nodes['Results'].ChildNodes.Nodes[i]
      );
   Result.Results.AddObject(s,tmTs);
  end;
except
end;
end;

var
// i  : Integer;
 s1 : string;
begin
 Result:=TTask.Create;
 Result.Init;

 Result.ID:=N.ChildNodes.Nodes['ID'].Text;
 Result.Name:=N.ChildNodes.Nodes['Name'].Text;
 Result.Description:=N.ChildNodes.Nodes['Description'].Text;
 Result.PackageName:=N.ChildNodes.Nodes['PackageName'].Text;
 Result.RootPackageName:=N.ChildNodes.Nodes['RootPackageName'].Text;

 Result.Authors:=N.ChildNodes.Nodes['Authors'].Text;
 Result.Creation_date:=N.ChildNodes.Nodes['Creation_date'].Text;
 Result.Modification_date:=N.ChildNodes.Nodes['Modification_date'].Text;
 Result.Logo_file:=N.ChildNodes.Nodes['Logo_file'].Text;
 Result.task_Ver:=N.ChildNodes.Nodes['task_Ver'].Text;
 Result.Platfotm:=N.ChildNodes.Nodes['Platfotm'].Text;

 Result.F1:=GetFFromNode(N.ChildNodes.Nodes['Fact']);

 s1:=N.ChildNodes.Nodes['K1'].Text;
 if s1<>'' then //for cases
  Result.K1:=KB;

 //!!!!
 s1:=N.ChildNodes.Nodes['K2'].Text;
// if s1<>'' then //for rules
//  Result.K2:=KB;

 Result.CBRPResults.Text:=N.ChildNodes.Nodes['CBRPResults'].Text;
 Result.DSST:=TMCTask.Create;
 Result.DSST.Init;
 Result.DSST:=GetDSPFromNode(
   N.ChildNodes.Nodes['DSP']
    )
end;

function GetCFromNode(N:IXMLNode):TCondition;
begin
 Result:=TCondition.Create;
 Result.Operator:=N.ChildNodes.Nodes['Operator'].Text;
 Result.Fact:=GetFFromNode(N.ChildNodes.Nodes['Fact']);
end;

function GetAFromNode(N:IXMLNode):TRAction;
begin
 Result:=TRAction.Create;
 Result.Operator:=N.ChildNodes.Nodes['Operator'].Text;
 Result.Fact:=GetFFromNode(N.ChildNodes.Nodes['Fact']);
end;

function GetRFromNode(N:IXMLNode):TRule;
var
 i  : Integer;
begin
 Result:=TRule.Create;
 Result.Init;

 Result.ID:=N.ChildNodes.Nodes['ID'].Text;
 Result.Name:=N.ChildNodes.Nodes['Name'].Text;
 Result.ShortName:=N.ChildNodes.Nodes['ShortName'].Text;
 Result.Description:=N.ChildNodes.Nodes['Description'].Text;
 Result.Salience:=N.ChildNodes.Nodes['Salience'].Text;
 if Trim(Result.Salience)='' then Result.Salience:='1';

 Result.CF:=N.ChildNodes.Nodes['CF'].Text;
 if Trim(Result.CF)='' then Result.CF:='1';

 Result.PackageName:=N.ChildNodes.Nodes['PackageName'].Text;
 Result.RootPackageName:=N.ChildNodes.Nodes['RootPackageName'].Text;
 Result.DrawParams.Text:=N.ChildNodes.Nodes['DrawParams'].Text;

 for i:=0 to N.ChildNodes.Nodes['Conditions'].ChildNodes.Count-1 do
  Result.Conditions.Add(GetCFromNode(
   N.ChildNodes.Nodes['Conditions'].ChildNodes.Nodes[i]
    ));

 for i:=0 to N.ChildNodes.Nodes['Actions'].ChildNodes.Count-1 do
  Result.Actions.Add(GetAFromNode(
   N.ChildNodes.Nodes['Actions'].ChildNodes.Nodes[i]
    ));
end;

function GetGRFromNode(N:IXMLNode;KB:TKnowledgeBase):TGRule;
var
 i,j  : Integer;
 tmT : TTemplate;
begin
 Result:=TGRule.Create;
 Result.Init;

 Result.ID:=N.ChildNodes.Nodes['ID'].Text;
 Result.Name:=N.ChildNodes.Nodes['Name'].Text;
 Result.ShortName:=N.ChildNodes.Nodes['ShortName'].Text;
 Result.Description:=N.ChildNodes.Nodes['Description'].Text;
 Result.PackageName:=N.ChildNodes.Nodes['PackageName'].Text;
 Result.RootPackageName:=N.ChildNodes.Nodes['RootPackageName'].Text;
 Result.DrawParams.Text:=N.ChildNodes.Nodes['DrawParams'].Text;

 for i:=0 to N.ChildNodes.Nodes['Conditions'].ChildNodes.Count-1 do
  begin
    j:=KB.IndexOfTemplateByShortName(N.ChildNodes.Nodes['Conditions'].ChildNodes.Nodes[i].Text,'');
    if j>-1 then
     begin
      tmT:=TTemplate.Create;
      tmT.Init;
      tmT.MakeACloneFrom(1,KB.Templates.Items[j]);
      Result.Conditions.Add(tmT);
     end;
//   Result.Conditions.Add(GetCFromNode(
//    N.ChildNodes.Nodes['Conditions'].ChildNodes.Nodes[i]
//     ));
  end;

 for i:=0 to N.ChildNodes.Nodes['Actions'].ChildNodes.Count-1 do
  begin
    j:=KB.IndexOfTemplateByShortName(N.ChildNodes.Nodes['Actions'].ChildNodes.Nodes[i].Text,'');
    if j>-1 then
     begin
      tmT:=TTemplate.Create;
      tmT.Init;
      tmT.MakeACloneFrom(1,KB.Templates.Items[j]);
      Result.Actions.Add(tmT);
     end;
//   Result.Actions.Add(GetAFromNode(
//   N.ChildNodes.Nodes['Actions'].ChildNodes.Nodes[i]
//    ));
  end;
end;

var
//  bn: string;
//  ln: TList;
  j: integer;
  //  ?????????? ???????? ??????? DOMDocument;
//  coDoc : CoDOMDocument;
  // ?????, ????????????? ? ???????????  IDOMDocument;
//  Doc: IXMLDOMDocument;
  MFXD1: TXMLDocument;

  tmT : TTask;
  tmPkg : TTmObj;
begin
try
  KB.Vars.Clear;
  KB.Rules.Clear;
  KB.Templates.Clear;
  KB.Facts.Clear;
  MainForm.XMLDocument1.LoadFromFile(FN);
  MainForm.XMLDocument1.Active:=true;
  MFXD1:=MainForm.XMLDocument1;
  //-----------------????????? ??? ???? ?????? ? ??????????--------------
  KB.ID:=MFXD1.DocumentElement.ChildNodes.Nodes['KnowledgeBase'].ChildNodes.Nodes['ID'].Text;
  if KB.ID='' then KB.ID:=IntToStr(MilliSecondOfTheYear(Now));

  KB.Name:=MFXD1.DocumentElement.ChildNodes.Nodes['KnowledgeBase'].ChildNodes.Nodes['Name'].Text;
  KB.ShortName:=MFXD1.DocumentElement.ChildNodes.Nodes['KnowledgeBase'].ChildNodes.Nodes['ShortName'].Text;
  KB.Kind:=StrToInt(MFXD1.DocumentElement.ChildNodes.Nodes['KnowledgeBase'].ChildNodes.Nodes['Kind'].Text);
  KB.Description:=MFXD1.DocumentElement.ChildNodes.Nodes['KnowledgeBase'].ChildNodes.Nodes['Description'].Text;
  KB.FileName:=FN;

  //------------------- pakages -----------------------------
  for j:=0 to MFXD1.DocumentElement.ChildNodes.Nodes['KnowledgeBase'].
   ChildNodes.Nodes['TempPackageList'].ChildNodes.Count-1 do
   begin
    tmPkg:=TTmObj.Create;
    tmPkg:=GetPkgFromNode(
        MFXD1.DocumentElement.ChildNodes.Nodes['KnowledgeBase'].
         ChildNodes.Nodes['TempPackageList'].ChildNodes.Nodes[j]
         );
     KB.TempPackageList.AddObject(tmPkg.ID+'='+tmPkg.Name,tmPkg);
   end;
  for j:=0 to MFXD1.DocumentElement.ChildNodes.Nodes['KnowledgeBase'].
   ChildNodes.Nodes['FactPackageList'].ChildNodes.Count-1 do
   begin
    tmPkg:=TTmObj.Create;
    tmPkg:=GetPkgFromNode(
        MFXD1.DocumentElement.ChildNodes.Nodes['KnowledgeBase'].
         ChildNodes.Nodes['FactPackageList'].ChildNodes.Nodes[j]
         );
     KB.FactPackageList.AddObject(tmPkg.ID+'='+tmPkg.Name,tmPkg);
   end;
  for j:=0 to MFXD1.DocumentElement.ChildNodes.Nodes['KnowledgeBase'].
   ChildNodes.Nodes['GRulePackageList'].ChildNodes.Count-1 do
   begin
    tmPkg:=TTmObj.Create;
    tmPkg:=GetPkgFromNode(
        MFXD1.DocumentElement.ChildNodes.Nodes['KnowledgeBase'].
         ChildNodes.Nodes['GRulePackageList'].ChildNodes.Nodes[j]
         );
     KB.GRulePackageList.AddObject(tmPkg.ID+'='+tmPkg.Name,tmPkg);
   end;
  for j:=0 to MFXD1.DocumentElement.ChildNodes.Nodes['KnowledgeBase'].
   ChildNodes.Nodes['RulePackageList'].ChildNodes.Count-1 do
   begin
    tmPkg:=TTmObj.Create;
    tmPkg:=GetPkgFromNode(
        MFXD1.DocumentElement.ChildNodes.Nodes['KnowledgeBase'].
         ChildNodes.Nodes['RulePackageList'].ChildNodes.Nodes[j]
         );
     KB.RulePackageList.AddObject(tmPkg.ID+'='+tmPkg.Name,tmPkg);
   end;
{  KB.TempPackageList.Text:=
   MFXD1.DocumentElement.ChildNodes.Nodes['KnowledgeBase'].ChildNodes.Nodes['TempPackageList'].Text;
  KB.FactPackageList.Text:=
   MFXD1.DocumentElement.ChildNodes.Nodes['KnowledgeBase'].ChildNodes.Nodes['FactPackageList'].Text;
  KB.GRulePackageList.Text:=
   MFXD1.DocumentElement.ChildNodes.Nodes['KnowledgeBase'].ChildNodes.Nodes['GRulePackageList'].Text;
  KB.RulePackageList.Text:=
   MFXD1.DocumentElement.ChildNodes.Nodes['KnowledgeBase'].ChildNodes.Nodes['RulePackageList'].Text;
}  //-----------------????????? vars----------------
  for j:=0 to MFXD1.DocumentElement.ChildNodes.Nodes['KnowledgeBase'].
   ChildNodes.Nodes['Vars'].ChildNodes.Count-1 do
   begin
    if (MainForm.Tag=0)or
     ((MainForm.Tag<>0)and(KBList.Count<=675-674)and
      (KB.Vars.Count<=782-777)) then
       KB.Vars.Add(GetGVFromNode(
        MFXD1.DocumentElement.ChildNodes.Nodes['KnowledgeBase'].
         ChildNodes.Nodes['Vars'].ChildNodes.Nodes[j]
         ));
   end;
  //-----------------????????? ???????----------------
  for j:=0 to MFXD1.DocumentElement.ChildNodes.Nodes['KnowledgeBase'].
   ChildNodes.Nodes['Templates'].ChildNodes.Count-1 do
   begin
//    if (MainForm.Tag=0)or
//     ((MainForm.Tag<>0)and(KBList.Count<=675-674)and
//      (KB.Templates.Count<=782-777)) then
       KB.Templates.Add(GetTFromNode(
        MFXD1.DocumentElement.ChildNodes.Nodes['KnowledgeBase'].
         ChildNodes.Nodes['Templates'].ChildNodes.Nodes[j]
         ));
   end;
  //-----------------????????? ?????----------------------
  for j:=0 to MFXD1.DocumentElement.ChildNodes.Nodes['KnowledgeBase'].
   ChildNodes.Nodes['Facts'].ChildNodes.Count-1 do
   begin
//    if (MainForm.Tag=0)or
//     ((MainForm.Tag<>0)and(KBList.Count<=675-674)and
//      (KB.Facts.Count<=782-772)) then
       KB.Facts.Add(GetFFromNode(
        MFXD1.DocumentElement.ChildNodes.Nodes['KnowledgeBase'].
         ChildNodes.Nodes['Facts'].ChildNodes.Nodes[j]
         ));
   end;
// if KB.Kind=0 then
   //----------------????????? General ???????-----------------------
  for j:=0 to MFXD1.DocumentElement.ChildNodes.Nodes['KnowledgeBase'].
   ChildNodes.Nodes['GRules'].ChildNodes.Count-1 do
   begin
       KB.GRules.Add(GetGRFromNode(
        MFXD1.DocumentElement.ChildNodes.Nodes['KnowledgeBase'].
         ChildNodes.Nodes['GRules'].ChildNodes.Nodes[j],KB
         ));
   end;
  //----------------????????? ???????-----------------------
  for j:=0 to MFXD1.DocumentElement.ChildNodes.Nodes['KnowledgeBase'].
   ChildNodes.Nodes['Rules'].ChildNodes.Count-1 do
   begin
//    if (MainForm.Tag=0)or
//    ((MainForm.Tag<>0)and(KBList.Count<=675-673)and
//     (KB.Rules.Count<=792-782)) then
       KB.Rules.Add(GetRFromNode(
        MFXD1.DocumentElement.ChildNodes.Nodes['KnowledgeBase'].
         ChildNodes.Nodes['Rules'].ChildNodes.Nodes[j]
         ));
   end;

  //-----------------????????? functions----------------
  for j:=0 to MFXD1.DocumentElement.ChildNodes.Nodes['KnowledgeBase'].
   ChildNodes.Nodes['Functions'].ChildNodes.Count-1 do
   begin
//    if (MainForm.Tag=0)or
//     ((MainForm.Tag<>0)and(KBList.Count<=675-674)and
//      (KB.Templates.Count<=782-777)) then
       KB.Functions.Add(GetUFromNode(
        MFXD1.DocumentElement.ChildNodes.Nodes['KnowledgeBase'].
         ChildNodes.Nodes['Functions'].ChildNodes.Nodes[j]
         ));
   end;

  //-----------------????????? FScales----------------------
  for j:=0 to MFXD1.DocumentElement.ChildNodes.Nodes['KnowledgeBase'].
   ChildNodes.Nodes['FScales'].ChildNodes.Count-1 do
   begin
       KB.FScales.Add(GetFScFromNode(
        MFXD1.DocumentElement.ChildNodes.Nodes['KnowledgeBase'].
         ChildNodes.Nodes['FScales'].ChildNodes.Nodes[j]
         ));
   end;
  //-----------------????????? FVars----------------------
  for j:=0 to MFXD1.DocumentElement.ChildNodes.Nodes['KnowledgeBase'].
   ChildNodes.Nodes['FVars'].ChildNodes.Count-1 do
   begin
       KB.FVars.Add(GetFVarFromNode(
        MFXD1.DocumentElement.ChildNodes.Nodes['KnowledgeBase'].
         ChildNodes.Nodes['FVars'].ChildNodes.Nodes[j]
         ));
   end;
  //-----------------????????? Tasks----------------------
  for j:=0 to MFXD1.DocumentElement.ChildNodes.Nodes['KnowledgeBase'].
   ChildNodes.Nodes['Tasks'].ChildNodes.Count-1 do
   begin
//    if (MainForm.Tag=0)or
//     ((MainForm.Tag<>0)and(KBList.Count<=675-674)and
//      (KB.Facts.Count<=782-772)) then
     tmT:=GetPFromNode(
        MFXD1.DocumentElement.ChildNodes.Nodes['KnowledgeBase'].
         ChildNodes.Nodes['Tasks'].ChildNodes.Nodes[j]
         );
//     if tmT<>nil then tmT.K1:=KB;

     KB.Tasks.Add(tmT);
   end;
//  frTree.AptTree;
 Result:=0;
except
  ShowMessage('?????? ???????? ????');
  Result:=-1;
end;
end;

end.
