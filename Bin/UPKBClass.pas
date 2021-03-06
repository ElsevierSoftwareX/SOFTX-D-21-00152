unit UPKBClass;

interface
uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls, OleServer, ComCtrls, Menus, ComObj, RzChkLst,
  RzTreeVw, UDDSClass, RzPanel, Math, DateUtils, RzCmboBx, RRPManagerUnit, RzListVw,
  XMLDoc, XMLIntf, rzCommon, RzLabel, RzSpnEdt;

type

 TKBDS_module = class
  ID : string;
  Name : string;
  Description : string;
  mType : Integer;
{ ??????????????? ????????? ??????? (?????????) = 0;
  ??????????????? ????????? ??????? (?????????) = 1;
  ??????????????? ????????? ????????????? (OWL) = 2;
  ??????????????? ????????? ????????????? (CLIPS) = 3;
  ?????????? ????????? ????????????? (OWL) = 4;
  ?????????? ????????? ????????????? (CLIPS) = 5
 }
  mStatus : Integer;
{
  ???????? ????????? = 0;
  ??????????????? ????????? = 1;
  ?????????? ????????? = 2
  }
 end;

 TKBDS_kb = class
  ID : ShortString;
  Name : ShortString;
  Description : string;
  subject_domain : ShortString;
  author : ShortString;

  kbType : Integer;
{????????? = 0;
 ????????? = 1.
 }
  kbStatus : Integer;
{
 ???????? = 0;
 ???????? = 1.
  }
 end;

 TTmObj = class
  ID : string;
  Name : string;
  ID_Root : string;
  ID2 : Integer;

  Function GetLongName(ID,Name:string; tmKB,tmPkg:TObject):string;
 end;

 TFScale = class
  ID : string;
  Name : string; //short name of the scale
  Description : string; //description of the scale
  ListOfValues : TStringList;   //list of values for the each name
                                //name=values name=val1;val2;val3
//  ListOfNames : TStringList;    //list of names: name=interval
  Min,Max : string;
  Len:Integer;
  FType:string;
  UnitsName : string;  //units
  DrawParams : TStringList;

  procedure Init;
  destructor Destroy; override;
  Function ShowEditPanelsForScale(tmWC:TWinControl;ef:integer):Integer;
  Function GetInterval(c,F:Integer):string;
  Function AddToTreeView(Tree:TTreeView;pN:TTreeNode):TTreeNode;
  Function AddToListView(List:TRzListView;position,clF,imIndex,tabCnt:Integer;
    SelectedObject:TObject):Integer;
  Function AddToRzCheckTree(Tree:TRzCheckTree;pN:TTreeNode):TTreeNode;
  Function CopyFrom(Source:TObject):Integer;
  Function ShowScaleAsString:string;
  Function ShowAsTable(WC:TWinControl;T:Integer):Integer;
  Function DrawV2(WC:TWinControl;fs,ts:Integer;doi:string):TRzPanel;
  Function DrawArrowsV2(Canvas: TCanvas; sbdX,sbdY:Integer):Integer;
  Function OrderV2:Integer;
 end;

 TFVar = class
  ID : string;
  Name : string; //short name of the fvar
  Description : string; //description of the scale
  FScaleName : string;
  ListOfValues : TStringList;   //list of values or params
                                //fval=<mf_val, mf_val ...> in acordance of intervals
  UnitsName : string;  //units
  FType : string;
  Len : Integer;

  DrawParams : TStringList;
  procedure Init;
  destructor Destroy; override;
  Function AddToTreeView(Tree:TTreeView;pN:TTreeNode):TTreeNode;
  Function AddToListView(List:TRzListView;position,clF,imIndex,tabCnt:Integer;
   K18,SelectedObject:TObject):Integer;
  Function AddToRzCheckTree(Tree:TRzCheckTree;pN:TTreeNode):TTreeNode;
  Function ShowAsTable(WC:TWinControl;T:Integer):Integer;
  Function CopyFrom(Source:TObject):Integer;
  Function ShowScaleAsString:string;
  Function DrawV2(WC:TWinControl;fs:Integer;doi:string):TRzPanel;
 end;

 TCDictionary = class
   FName : String;
   Name : String;     //????????????
   Description  : String;
   Names : TStringList;
   Values : TStringList;
   procedure Init;
   destructor Destroy; override;
   function Load(FileName:String):Integer;
   function Save(FileName:String):Integer;
   function Copy(tmDic:TObject):Integer;
   Function AddToTreeView(Tree:TTreeView;pN:TTreeNode):TTreeNode;
 end;

 TActionItem = class
   ID : Integer;    //
   Name : String;   //description of action
   Date : String;   //date
   Kind : Integer;  //kind of action
   KBs  : TList;    //dump of KBs before action
   SelectedNode  : TTreeNode;
   procedure Init;
   destructor Destroy; override;
   function CopyKBs(KBL,KBs:TList):Integer;
 end;

 THelpMessage = class
   ID : Integer;
   Title  : String;
   Body   : String;
 end;

 TTemplate = class    //??????
   ID : String;
   Name : String;     //????????????
   ShortName : String;     //???????????? - latin
   Description  : String;
   Slots : TList;     //?????
   DrawParams : TStringList;
   RVMLImage : TImage;

   PackageName: string; //package name
   RootPackageName: string; //root package name

   procedure Init;
   destructor Destroy; override;
   procedure Delete(i:Integer);
   function IndexOf(S:String;c:Integer):Integer;
   Function AddToTreeView(Tree:TTreeView;pN:TTreeNode):TTreeNode;
   Function AddToListView(List:TRzListView;position,clF,imIndex,tabCnt:Integer;
    SelectedObject:TObject):Integer;
   Function AddToRzCheckTree(Tree:TRzCheckTree;pN:TTreeNode):TTreeNode;
   Procedure Trans(TL:TStringList);
   Function Draw(WC:TWinControl):TImage;
   Function DrawV2(WC:TWinControl;fs,ss:Integer;doi:string):TRzPanel;
   Function DrawArrowsV2(Canvas: TCanvas; sbdX,sbdY:Integer;
     K3:TObject):Integer;
   Function OrderV2(K4:TObject):Integer;

   Function MakeACloneFrom(m:Integer;T2:TObject):Integer;
   Function ShowAsTable(WC:TWinControl;T,F:Integer):Integer;
   Function ShowEditPanelsForSlots(tmWC:TWinControl;delBtnF:Boolean):Integer;
   Function ShowAsPanelForObjectInspector(WC:TWinControl;T,F:Integer):Integer;
   Function ShowInputModule(tmWC:TWinControl;Tg1:Integer;tK,tmFact:TObject):Integer;

   Function RefreshFromSlotPanels(tmWC:TWinControl):Integer;
   procedure PurifyName;
   function CheckNameForRestrictedSymbols:string;
   function CreateCFM:string;
   function isEqual(T2:TObject):Boolean;
  private
    { Private declarations }
//   function GetName(s:String):Integer;
  public
    { Public declarations }
   function GetDescriptionOnKBLanguage(L:String;KB5:TObject):String;
   Function GetSlotByName(Sn:String):Integer;
   Procedure AddFactImageClick(Sender:TObject);
   Procedure DelFactImageClick(Sender:TObject);
   Function Print(Wrd:Variant):Integer;
 end;

 TFunct = class //function
   ID  : String;
   Name : String;     //????????????
   ShortName : String;     //???????????? - latin
   Description  : String; //
   DataType : String;
   Body : String;
   Args : TList;  //arguments

   PackageName: string; //package name
   RootPackageName: string; //root package name

   procedure Init;
   destructor Destroy; override;
   Function AddToTreeView(Tree:TTreeView;pN:TTreeNode):TTreeNode;
   Function AddToRzCheckTree(Tree:TRzCheckTree;pN:TTreeNode):TTreeNode;
   Procedure Trans(TL:TStringList);
   function GetDescriptionOnKBLanguage(L:String):String;
 end;

 TArgument = class    //????
   Name : String;     //????????????
   ShortName : String;     //???????????? - latin
   Description  : String; //
   Value : String;     //????????
   DataType : String;   //??? ??????: ???????? ??? ?????????
   Constraint : String; //??????????? ?? ???????? ?????, ???????????? ?????? ? ????????
   Function AddToTreeView(Tree:TTreeView;pN:TTreeNode):TTreeNode;
   Procedure Trans(TL:TStringList);
//   Function GetSimpleDataType:String;
  private
    { Private declarations }
//   function GetName(s:String):Integer;
  public
    { Public declarations }
//   function GetDescriptionOnKBLanguage(L,M:String):String;
 end;

 TSlot = class    //????
   Name : String;     //????????????
   ShortName : String;     //???????????? - latin
   Description  : String; //
   Value : String;     //????????
   DataType : String;   //??? ??????: ???????? ??? ?????????
   Constraint : String; //??????????? ?? ???????? ?????, ???????????? ?????? ? ????????
   Function AddToTreeView(Tree:TTreeView;pN:TTreeNode):TTreeNode;
   Function AddToListView(List:TRzListView;position,clF,imIndex,tabCnt:Integer;
    KB17,SelectedObject:TObject):Integer;

   Procedure Trans(TL:TStringList);
   Function GetSimpleDataType:String;
   Function TempValue:string;
   Function CopyFrom(Source:TObject):Integer;

   Function ShowEditPanel(tmWC:TWinControl;delBtnF:Boolean; T,L:Integer):TRzPanel;
  private
    { Private declarations }
//   function GetName(s:String):Integer;
  public
    { Public declarations }
   function GetDescriptionOnKBLanguage(L,M:String):String;
   procedure PurifyName;
   function CheckNameForRestrictedSymbols:string;
   Function Print(WordTable:Variant;j:Integer;F:integer):Integer;
 end;

 TFact = class    //????
   ID : String;
   Name : String;     //????????????
   ShortName : String;     //???????????? - latin
//   Value : String;    //????????
   Slots : TList;     //?????
   Mode  :  String;   //????? - 0 ????????????? ??? 1 ???????????????
   DrawParams : TStringList;
   RVMLImage : TImage;
   Description  : String;
   Hash : string;

   PackageName: string; //package name
   RootPackageName: string; //root package name

   procedure Init;
   destructor Destroy; override;
   Function AddToTreeView(Tree:TTreeView;pN:TTreeNode):TTreeNode;
   Function AddToListView(List:TRzListView;position,clF,imIndex,tabCnt:Integer;
    SelectedObject:TObject):Integer;

   Function AddToRzCheckTree(Tree:TRzCheckTree;pN:TTreeNode):TTreeNode;
   Function GetHash:string;
   Function GetSlotsFrom(T:TTemplate):Integer;
   Procedure Trans(TL:TStringList);
   Function Draw(WC:TWinControl;K:Integer):TImage;
   Function DrawV2(WC:TWinControl;K,fs,ts:Integer;doi:string):TRzPanel;
   Function DrawArrowsV2(Canvas: TCanvas; sbdX,sbdY:Integer;
     K3:TObject):Integer;
   Function OrderV2(K4:TObject):Integer;

   Function ShowAsTable(WC:TWinControl;T,F:Integer):Integer;
   Function ShowAsPanel(Op:string;WC:TWinControl;T,j:Integer):Integer;
   Function MakeACloneFrom(F2:TObject):Integer;
  private
//  function GetName(s:string):Integer;
    { Private declarations }
  public
    { Public declarations }
   Function FactOrderMark(m:String):Integer;
   function GetDescriptionOnKBLanguage(L:String):String;
   function GetBriefTextualDescription:string;
   Function GetSlotByName(Sn:String):Integer;
   Function Print(Wrd:variant;F:Integer):Integer;
   Function PrintV2(Wrd:variant;lineNum:Integer):Integer;
 end;


 TGRule = class    //generalised ???????
   ID : String;
   Name : String;     //????????????
   ShortName : String;     //???????????? - latin
   Description  : String;
//   Salience : String;     //????????
   Conditions : TList;     //???????
   Actions : TList;        //????????
   DrawnObjects : TList;
   RVMLImage : TImage;

   PackageName: string; //package name
   RootPackageName: string; //root package name

   DrawParams : TStringList; //for the core

   procedure Init;
   destructor Destroy; override;

   Function IndexOfActionByID(s:string):Integer;
   Function IndexOfConditionByID(s:string):Integer;

   function CreateCFM:string;

   Function MakeACloneFrom(KB6,G2:TObject):Integer;
   Function AddToTreeView(Tree:TTreeView;pN:TTreeNode):TTreeNode;
   Function AddToListView(List:TRzListView;position,clF,imIndex,tabCnt:Integer):Integer;
   Function Load(s:string;KB:TObject):Integer;
   Function AddToRzCheckTree(Tree:TRzCheckTree;pN:TTreeNode):TTreeNode;
   Function Draw(WC:TWinControl):TImage;
   Function DrawV2(WC:TWinControl;fs:Integer;doi:string):TImage;

   Function Order:Integer;
   Function OrderV2(WC:TWinControl;m:Integer):Integer;

//   Function DrawArrows(Canvas: TCanvas; sbdX,sbdY:Integer):Integer;
   Function DrawArrowsV2(Canvas: TCanvas; sbdX,sbdY:Integer):Integer;
   Function GetRUID:string;
   Function GetRUIDV2:string;
   Function GetAtomsCnt(F:string):Integer;
   Function IndexOfComponentByName(k:Integer;N:string):Integer;
   Function Reverse:TGRule;

   Function UpdateElementPosition(OldX,OldY,NewX,NewY:Integer):Integer;
   Function GetElementByPosition(X,Y:Integer):TObject;
   function isEqual(G2:TObject):Boolean;
   function isEqualByConditions(G2:TObject):Boolean;
//   function NewID(s:String):String;
  private
//  function GetName(s:String):Integer;
//  function GetSalienc(s:String): Integer;

    { Private declarations }
  public
    { Public declarations }
//  Procedure Trans(TL:TStringList);
//  Function FactOrderMark(m:String):Integer;
//  function GetDescriptionOnKBLanguage(L:String):String;
   procedure PurifyName;
   function CheckNameForRestrictedSymbols:string;
 end;

 TRule = class    //???????
   ID : String;
   Name : String;     //????????????
   ShortName : String;     //???????????? - latin
   Description  : String;
   Salience : String;     //????????
   CF : string; //????. ???????????
   Conditions : TList;     //???????
   Actions : TList;        //????????
   DrawnObjects : TList;
   RVMLImage : TImage;
   Hash : string;
   PackageName: string; //package name
   RootPackageName: string; //root package name

   DrawParams : TStringList;  //for the core

   procedure Init;
   destructor Destroy; override;

   function MakeACloneFrom(KB6,R2:TObject):Integer;

   Function AddToTreeView(Tree:TTreeView;pN:TTreeNode):TTreeNode;
   Function AddToListView(List:TRzListView;position,clF,imIndex,tabCnt:Integer):Integer;
   Function AddToRzCheckTree(Tree:TRzCheckTree;pN:TTreeNode):TTreeNode;
   Function ClearStructure:Integer;
   function NewID(s:String):String;
   Function GetStructureFrom(G:TGRule):Integer;
   Function InserRuleComponent(k,i:Integer;Op:string;T:TTemplate):Integer;
   Function Draw(WC:TWinControl):TImage;
   Function DrawV2(WC:TWinControl;fs:Integer;doi:string):TImage;

   Function Order:Integer;
   Function OrderV2(WC:TWinControl;m:Integer):Integer;

   Function DrawArrows(Canvas: TCanvas; sbdX,sbdY:Integer):Integer;
   Function DrawArrowsV2(Canvas: TCanvas; sbdX,sbdY:Integer):Integer;

   Function GetRUID:string;
   Function GetRUIDV2:string;
   Function GetHash(mode : Integer):string;
   Function Reverse:TRule;
   Function GetAtomsCnt(F:string):Integer;

   Function UpdateElementPosition(OldX,OldY,NewX,NewY:Integer):Integer;
   Function GetElementByPosition(X,Y:Integer):TObject;
   Function ShowAsList(F,F1,T,L:Integer;tmWC:TWinControl;K:TObject):Integer;
   Function ShowAsPanel(K:TObject;WC:TWinControl;T,j:Integer):Integer;
   Function ShowAsTable(WC:TWinControl;T,L,ti:Integer):Integer;
   Function ShowAsTableV3(WC:TWinControl;T,L,ti:Integer):Integer;
   procedure ShowRuleComponentImageClick(Sender: TObject);
  private
//  function GetName(s:String):Integer;
//  function GetSalienc(s:String): Integer;

    { Private declarations }
  public
    { Public declarations }
  Procedure Trans(TL:TStringList);
  Function FactOrderMark(m:String):Integer;
  function GetDescriptionOnKBLanguage(L:String):String;
  procedure PurifyName;
  function CheckNameForRestrictedSymbols:string;
 end;

 TGlobalVar = class //global variable
  ID  : String;
  Name  : String;
  ShortName : String;     //???????????? - latin (max length 1)
  Value : String; //value by default
  Description  : String;
  DataType : String;   //??? ??????: ???????? ??? ?????????

   PackageName: string; //package name
   RootPackageName: string; //root package name

  Function AddToTreeView(Tree:TTreeView;pN:TTreeNode):TTreeNode;
  Function AddToRzCheckTree(Tree:TRzCheckTree;pN:TTreeNode):TTreeNode;
  Procedure Trans(TL:TStringList);
  function GetDescriptionOnKBLanguage(L:String):String;
 end;

 TKnowledgeBase = class //???? ??????
   ID : string;
   Name : String;
   ShortName : String;     //???????????? - latin
   Kind : Integer;  //0 - rule base; 1 - case base
   Description  : String; //
   FileName :  String;
   Vars : TList;  //variables
   Rules : TList;       //???????
   GRules : TList; //generalized rules
   Facts : TList;       //?????
   Templates : TList;   //???????
   Functions  : TList;
   Tasks : TList;
   FScales : TList;  //fuzzy scales for slot values

   TempPackageList : TStringList;
   FactPackageList : TStringList;
   RulePackageList : TStringList;
   GRulePackageList : TStringList;
   CErrors : TStringList;

   FVars : TList;
//   FScales : TList;

   procedure Init;
   destructor Destroy; override;
   function LoadFromFileAs(dllName,fName:String):Integer;
   function LoadFromMDLFile(fName:String):Integer;
   function LoadFromCSVFile(fName:String):Integer;
   function LoadFromMDJFile(fName:String):Integer;
   function LoadFromUMLFile(fName:String):Integer;
   function LoadFromCXLFile(dllName,fName:String):Integer;
   function LoadFromMDLFileV2(fName:String):Integer;

   Function SaveToMDLFile(fName:String):Integer;
   function SaveToCmapTools(dllName,fName:String):Integer;
   function SaveToStarUml(fName:String):Integer;
   function SaveToOwl(fName:String):Integer;
   function SaveToRDF(fName:String):Integer;
   function SaveToTxt(fName:String):Integer;
   function SaveToPHP(fName:String):Integer;
   function SaveToPHP_V2(fName:String):Integer;
   function SaveToCSV(fName:String;b:Boolean):Integer;
   function SaveToJSON(fName:String):Integer;

   function CreateCFM(FolderName:string):Integer;
   Function Aggregate(StrategesLst:String):integer;

   function LoadGRules(fName:String):Integer;
   function LoadScalesFromFile(fName:String):Integer;
   function LoadScalesToControl(WC:TWinControl;Sc:string):Integer;
   function LoadTemplatesFromCFM:Integer;
   function LoadCFM(fName:String):Integer;

   function SaveAs(dllName,fName:String):Integer;

   function ClearDuplicatedRules:Integer;
   function CopyRFT(KB1:TKnowledgeBase; RL,FL,TL,VL,FuL:String):Integer;
   function CopySlot(S1:TSlot; var S2:TSlot):Integer;
   function CopyArgument(S1:TArgument; var S2:TArgument):Integer;
   function CopyFact(M:Integer; F1:TFact;var F2:TFact):Integer;
   function CopyPkg(P1:TTmObj; var P2:TTmObj):Integer;

   function CopyRule(M:Integer; R1:TRule; var R2:TRule):Integer;
   function CopyTemplate(M:Integer; T1:TTemplate; var T2:TTemplate):Integer;
   function CopyGRule(M:Integer; GR1:TGRule; var GR2:TGRule):Integer;
   function CopyTask(M:Integer; T1:TObject; var T2:TObject):Integer;
   function CopyRFT_V2(LV:TRzCheckTree):Integer;
   function CopyRFT_V3(K1:TKnowledgeBase):Integer;
   Function CreateReportV4(Vis:Boolean; FileName: WideString):WideString;

   function NewID(s:String):String;
   function GetDescriptionOnKBLanguage(L:String):String;
   Function GetHashForFacts:Integer;
   Function GetHashForRules:Integer;
   procedure Delete(s:String;i:Integer);
   function IndexOf(KBList:TList):Integer;

   Function AddToTreeView(Tree:TTreeView;pN:TTreeNode):TTreeNode;
   Function AddToTreeViewV2(Tree:TTreeView;pN:TTreeNode;dF:Integer):TTreeNode;
   Function AddToRzCheckTree(Tree:TRzCheckTree;pN:TTreeNode):TTreeNode;
   Function AddToRzCheckTreeForRules(Tree:TRzCheckTree;pN:TTreeNode):TTreeNode;

   Function IndexOfFactByID(ID:string):Integer;
   Function IndexOfFactByName(s:string):Integer;
   Function IndexOfFactByHash(s:string):Integer;
   Function IndexOfFactByShortName(s:string):Integer;
   Function IndexOfFVar(N:string):Integer;
   Function IndexOfFScale(N:string):Integer;
   Function IndexOfFScaleByTerm(N:string):Integer;
   Function IndexOfGRule(R:TRule):Integer;
   Function IndexOfGRuleV2(R:TRule):Integer;
   Function IndexOfGRuleByName(s:string):Integer;
   Function IndexOfGRuleByShortName(GR:TGRule):Integer;
   Function IndexOfGRuleByTemplateShortName(s:string):Integer;
   Function IndexOfGRuleByID(s:string):Integer;
   Function IndexOfGRuleByConditionDescription(s:string):Integer;
   Function IndexOfRuleByName(s:string):Integer;
   Function IndexOfRuleByNameV2(s:string):Integer;
   Function IndexOfRuleByID(s:string):Integer;
   Function IndexOfRuleByHash(s:string):Integer;
   Function IndexOfRuleByShortName(R:TRule):Integer;
   Function IndexOfRuleByGRule(GR:TGRule):Integer;
   Function IndexOfTemplateWithFScale(fvn:string):Integer;
   Function IndexOfTemplate(F:TFact):Integer;
   Function IndexOfTemplateV2(F:TFact):Integer;
   Function IndexOfTemplateV3(F:TFact):Integer; //by structure
   Function IndexOfTemplateByName(s,s1:string):Integer;
   Function IndexOfTemplateByShortName(s,s1:string):Integer;
   Function IndexOfTemplateByID(s:string):Integer;
//   Function IndexOfFVarWithScale(fsn:string):Integer;



   Function GetListOfFactsByTemplate(T:TTemplate):TStringList;

   Function IndexesOfRUG(GR:TGRule):TStringList;
   Function IndexesOfRUF(F:TFact):TStringList;
   Function IndexesOfRUT(T:TTemplate):TStringList;
   Function IndexesOfGUT(T:TTemplate):TStringList;
   Function IndexesOfFUT(T:TTemplate):TStringList;
   Function FactOrderMark(m:String):Integer;
   Procedure Trans(TL:TStringList);
   Procedure Update(FL:TStringList;CL:TStringList);
   Function UpdateGRFbyT(T1,T2:TTemplate;UL:TStringList):Integer;
   Function UpdateIDforGRules:Integer;
   Function SyncFact(tmF:TFact;m:Integer):Integer;
   Function SyncPackages:Integer;
   Function Sync(m:Integer):Integer;

   Function DataPreporationForCRP(ti:Integer):string;
   Function AddGRule(R:TRule):Integer;

   Function CheckForCErrors:Integer;
   Function ShowCErrors(LV:TRzListView):Integer;

   Function GetGRules:Integer;
   Function GetRulesByGRule(GR:TGRule;PkgID:string):string;
   Function GetPkgIDByName(Lst:TStringList;Name:string):string;
   Function GetPkgByID(ID,S:string):TObject;
   function GetObjForReplacement(FN:string;ObjLst:TStringList):Integer;
   function GetFactValuesForSlotName(sn,tdv:string):string;
   function GetUniqueName(n,s:string; var s1:string):string;

   function ReversingRules(LV:TRzCheckTree):Integer;

   Function SortPackages:Integer;
   Function ShowRulesAsTable(tmWC:TWinControl;M:Integer):Integer;
   Function ShowEditTempPanelForGrule
    (tmWC:TWinControl;T1:TTemplate;delBtnF:Boolean; T,L:Integer):TRzPanel;
   Function ShowEditGRulePanel
    (tmWC:TWinControl;G1:TGRule;delBtnF:Boolean; T,L:Integer):TRzPanel;
   procedure DelRuleComponentImageClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
//   function Load(KBName:String):Integer;
//   function GetByName(n:String; var T:String):TObject;
 end;

 TTask = class //task
  ID  : String;
  Name  : String;
  Description  : String;

  Authors : string;
  Creation_date : string;
  Modification_date : string;
  Logo_file : string;
  task_Ver : string;
  Platfotm : string;

//  Template : TTemplate;
  F1 : TFact;
  K1 : TKnowledgeBase;
  K2 : TRRPKnowledgeBase;
  DSST : TMCTask;

//  TempProblPart : TStringList;
//  TempDecisPart : TStringList;
  CBRPResults : TStringList;

  PackageName: string; //package name
  RootPackageName: string; //root package name

  procedure Init;
  destructor Destroy; override;
  Function AddToTreeView(Tree:TTreeView;pN:TTreeNode):TTreeNode;
  Function AddToRzCheckTree(Tree:TRzCheckTree;pN:TTreeNode):TTreeNode;
  Function DataPreporationForCRP(K1:TKnowledgeBase):string;
  Function DataPreporationForDSP:string;
  function ShowDSPResults(WC:TWinControl;T:Integer):Integer;
  function SaveMetaInfotoFile(tmTs:TStringList):Integer;
//  Procedure Trans(TL:TStringList);
//  function GetDescriptionOnKBLanguage(L:String):String;
 end;

 TCondition = class    //??????? ???????
   Operator: String;  //???????? ???????
   Fact : TFact;    //????
//   Description  : String;
   Function AddToTreeView(Tree:TTreeView;pN:TTreeNode):TTreeNode;
   Function AddToListView(List:TRzListView;position,clF,imIndex,tabCnt:Integer;
    SelectedObject:TObject):Integer;
  private
//  function GetPro(s:String):Integer;

    { Private declarations }
  public
    { Public declarations }
  Function GetInfo(c,f: Integer; tKB:TKnowledgeBase):String;
  Function GetOperator:String;
 end;

  TRAction = class    //????????
   Operator: String;  //???????? ????????
   Fact : TFact;    //????
//   Description  : String;
   Function AddToTreeView(Tree:TTreeView;pN:TTreeNode):TTreeNode;
   Function AddToListView(List:TRzListView;position,clF,imIndex,tabCnt:Integer;
    SelectedObject:TObject):Integer;
  private
//  function GetPro(s:String):Integer;

    { Private declarations }
  public
    { Public declarations }
  Function GetInfo(c,f: Integer; tKB:TKnowledgeBase):String;
  Function GetOperator:String;
 end;

var
 KB: TKnowledgeBase;

implementation

uses uTrans, USTDIClass, CRPManagerUnit, MAIN, SDXML, LevUnit, TDTEUnit,
  TRMLEUnit;
//----------------------------------------------------------------
function StrHash(const st:string):cardinal;
 var
  i:integer;
 begin
  result:=0;
  for i:=1 to length(st) do
   result:=result*$20844 xor byte(st[i]);
 end;
//----------------------------------------------------------------
function TTask.SaveMetaInfotoFile(tmTs:TStringList):Integer;
begin
 if tmTs<>nil then
  begin
   tmTs.Insert(0,';Task_Platfotm='+Platfotm);
   tmTs.Insert(0,';Task_Ver='+task_Ver);
   tmTs.Insert(0,';Task_Modification_date='+Modification_date);
   tmTs.Insert(0,';Task_Creation_date='+Creation_date);
   tmTs.Insert(0,';Task_Authors='+Authors);
   tmTs.Insert(0,';Task_Description='+Description);
   tmTs.Insert(0,';Task_Name='+Name);
   tmTs.Insert(0,';Task_ID='+ID);
  end;
end;
//----------------------------------------------------------------
Procedure TTemplate.DelFactImageClick(Sender:TObject);
var
 j,i : Integer;
 tmWC : TWinControl;
begin
  if MainForm.MMessageBox(1,1,'0='+
   'Really remove the fact?'
//   MainForm.LS('Add a new component?')
    )=0
   then
    begin
     tmWC:=TImage(Sender).Parent.Parent.Parent;
     TImage(Sender).Parent.Parent.Free;

    //resize panel
    j:=0;
    for i := 0 to tmWC.ControlCount-1 do
     j:=j+tmWC.Controls[i].Height+6;
    tmWC.Height:=j;

    if TWinControl(tmWC).ControlCount=1 then
     begin
      TCheckBox(
       TWinControl(TWinControl(tmWC).Controls[0]).Controls[0]
       ).Checked:=False;
     end;
    end;
end;
//----------------------------------------------------------------
Procedure TTemplate.AddFactImageClick(Sender:TObject);
var
 j,i : Integer;
begin
  if MainForm.MMessageBox(1,1,'0='+
   'Add a new fact?'
//   MainForm.LS('Add a new component?')
    )=0
   then
    begin
     ShowInputModule(
      TImage(Sender).Parent.Parent.Parent
      ,TImage(Sender).Tag,KB,nil
       );

    //resize panel
    j:=0;
    for i := 0 to TImage(Sender).Parent.Parent.Parent.ControlCount-1 do
     j:=j+TImage(Sender).Parent.Parent.Parent.Controls[i].Height+6;
    TImage(Sender).Parent.Parent.Parent.Height:=j;
    end;
end;
//----------------------------------------------------------------
Function TKnowledgeBase.GetListOfFactsByTemplate(T:TTemplate):TStringList;
var
 i : Integer;
begin
 Result:=TStringList.Create;
 for i := 0 to Facts.Count-1 do
  if TFact(Facts.Items[i]).ShortName=T.ShortName then
   Result.AddObject(IntToStr(i),TFact(Facts.Items[i]));
end;
//----------------------------------------------------------------
Function TFact.ShowAsPanel(Op:string;WC:TWinControl;T,j:Integer):Integer;
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
 i:=ShowAsTable(tmP2,1,1);

// i:=tmP2.Tag+1;
 tmP.Height:=i+3;
 Result:=tmP.Top+tmP.Height;
end;
//--------------------------------------------------------------
Function TRule.GetElementByPosition(X,Y:Integer):TObject;
var
 i : Integer;
 isCore : Boolean;
 tmRHS : TRAction;
 tmLHS : TCondition;
begin
 Result:=nil;
try
 isCore:=True;
 for i := 0 to Conditions.Count-1 do
  begin
   tmLHS:=TCondition(Conditions.Items[i]);
   if (StrToInt(tmLHS.Fact.DrawParams.Values['x'])<=X) and
    (StrToInt(tmLHS.Fact.DrawParams.Values['y'])<=Y) and
    (StrToInt(tmLHS.Fact.DrawParams.Values['x'])+StrToInt(tmLHS.Fact.DrawParams.Values['w'])>=X) and
    (StrToInt(tmLHS.Fact.DrawParams.Values['y'])+StrToInt(tmLHS.Fact.DrawParams.Values['h'])>=Y)
    then
      begin
       Result:=tmLHS;
       isCore:=False;
       Break;
      end;
  end;

 for i := 0 to Actions.Count-1 do
  begin
   tmRHS:=TRAction(Actions.Items[i]);
   if (StrToInt(tmRHS.Fact.DrawParams.Values['x'])<=X) and
    (StrToInt(tmRHS.Fact.DrawParams.Values['y'])<=Y) and
    (StrToInt(tmRHS.Fact.DrawParams.Values['x'])+StrToInt(tmRHS.Fact.DrawParams.Values['w'])>=X) and
    (StrToInt(tmRHS.Fact.DrawParams.Values['y'])+StrToInt(tmRHS.Fact.DrawParams.Values['h'])>=Y)
     then
      begin
       Result:=tmRHS;
       isCore:=False;
       Break;
      end;
  end;

 if isCore then
  begin
   Result:=Self;
  end;
except
end;
end;
//--------------------------------------------------------------
procedure TGRule.PurifyName;
begin
  Name:=StringReplace(Name,'(','_',[rfReplaceAll]);
  Name:=StringReplace(Name,')','_',[rfReplaceAll]);
end;
//-----------------------------------------------------------------
Function TGRule.isEqual(G2:TObject):Boolean;
var
 j,c  : Integer;
begin
 Result:=False;
 if Conditions.Count=TGRule(G2).Conditions.Count then
  begin
   j:=0;
   for c:=0 to TGRule(G2).Conditions.Count-1 do
    if IndexOfComponentByName(0,TTemplate(TGRule(G2).Conditions.Items[c]).ShortName)>-1
     then Inc(j);
   if j=TGRule(G2).Conditions.Count then Result:=True;
  end;

 if Actions.Count=TGRule(G2).Actions.Count then
  begin
   j:=0;
   for c:=0 to TGRule(G2).Actions.Count-1 do
    if IndexOfComponentByName(1,TTemplate(TGRule(G2).Actions.Items[c]).ShortName)>-1
     then Inc(j);
   if j<>TGRule(G2).Actions.Count then Result:=False;
  end;
end;
//-----------------------------------------------------------------
Function TGRule.isEqualByConditions(G2:TObject):Boolean;
var
 j,c  : Integer;
begin
 Result:=False;
 if Conditions.Count=TGRule(G2).Conditions.Count then
  begin
   j:=0;
   for c:=0 to TGRule(G2).Conditions.Count-1 do
    if IndexOfComponentByName(0,TTemplate(TGRule(G2).Conditions.Items[c]).ShortName)>-1
     then Inc(j);
   if j=TGRule(G2).Conditions.Count then Result:=True;
  end;
end;
//-----------------------------------------------------------------
Function TGRule.GetElementByPosition(X,Y:Integer):TObject;
var
 i : Integer;
 tmT : TTemplate;
 isCore : Boolean;
begin
 Result:=nil;
try
 isCore:=True;
 for i := 0 to Conditions.Count-1 do
  begin
   tmT:=TTemplate(Conditions.Items[i]);
   if (StrToInt(tmT.DrawParams.Values['x'])<=X) and
    (StrToInt(tmT.DrawParams.Values['y'])<=Y) and
    (StrToInt(tmT.DrawParams.Values['x'])+StrToInt(tmT.DrawParams.Values['w'])>=X) and
    (StrToInt(tmT.DrawParams.Values['y'])+StrToInt(tmT.DrawParams.Values['h'])>=Y)
     then
      begin
       Result:=tmT;
       isCore:=False;
       Break;
      end;
  end;

 for i := 0 to Actions.Count-1 do
  begin
   tmT:=TTemplate(Actions.Items[i]);
   if (StrToInt(tmT.DrawParams.Values['x'])<=X) and
    (StrToInt(tmT.DrawParams.Values['y'])<=Y) and
    (StrToInt(tmT.DrawParams.Values['x'])+StrToInt(tmT.DrawParams.Values['w'])>=X) and
    (StrToInt(tmT.DrawParams.Values['y'])+StrToInt(tmT.DrawParams.Values['h'])>=Y)
     then
       begin
       Result:=tmT;
       isCore:=False;
       Break;
      end;
  end;

 if isCore then
  begin
   Result:=Self;
  end;
except
end;
end;
//--------------------------------------------------------------
Function TGRule.UpdateElementPosition(OldX,OldY,NewX,NewY:Integer):Integer;
var
 i : Integer;
 tmT : TTemplate;
 isCore : Boolean;
begin
try
 isCore:=True;
 for i := 0 to Conditions.Count-1 do
  begin
   tmT:=TTemplate(Conditions.Items[i]);
   if (tmT.DrawParams.Values['x']=IntToStr(OldX)) and
    (tmT.DrawParams.Values['y']=IntToStr(OldY)) then
      begin
       tmT.DrawParams.Values['x']:=IntToStr(NewX);
       tmT.DrawParams.Values['y']:=IntToStr(NewY);
       isCore:=False;
       Break;
      end;
  end;

 for i := 0 to Actions.Count-1 do
  begin
   tmT:=TTemplate(Actions.Items[i]);
   if (tmT.DrawParams.Values['x']=IntToStr(OldX)) and
    (tmT.DrawParams.Values['y']=IntToStr(OldY)) then
      begin
       tmT.DrawParams.Values['x']:=IntToStr(NewX);
       tmT.DrawParams.Values['y']:=IntToStr(NewY);
       isCore:=False;
       Break;
      end;
  end;

 if isCore then
  begin
   DrawParams.Values['x']:=IntToStr(NewX);
   DrawParams.Values['y']:=IntToStr(NewY);
  end;
 Result:=0;
except
 Result:=-1;
end;
end;
//--------------------------------------------------------------
Function TRule.UpdateElementPosition(OldX,OldY,NewX,NewY:Integer):Integer;
var
 i : Integer;
 tmRHS : TRAction;
 tmLHS : TCondition;
 isCore : Boolean;
begin
try
 isCore:=True;
 for i := 0 to Conditions.Count-1 do
  begin
   tmLHS:=TCondition(Conditions.Items[i]);
   if (tmLHS.Fact.DrawParams.Values['x']=IntToStr(OldX)) and
    (tmLHS.Fact.DrawParams.Values['y']=IntToStr(OldY)) then
      begin
       tmLHS.Fact.DrawParams.Values['x']:=IntToStr(NewX);
       tmLHS.Fact.DrawParams.Values['y']:=IntToStr(NewY);
       isCore:=False;
       Break;
      end;
  end;

 for i := 0 to Actions.Count-1 do
  begin
   tmRHS:=TRAction(Actions.Items[i]);
   if (tmRHS.Fact.DrawParams.Values['x']=IntToStr(OldX)) and
    (tmRHS.Fact.DrawParams.Values['y']=IntToStr(OldY)) then
      begin
       tmRHS.Fact.DrawParams.Values['x']:=IntToStr(NewX);
       tmRHS.Fact.DrawParams.Values['y']:=IntToStr(NewY);
       isCore:=False;
       Break;
      end;
  end;

 if isCore then
  begin
   DrawParams.Values['x']:=IntToStr(NewX);
   DrawParams.Values['y']:=IntToStr(NewY);
  end;
 Result:=0;
except
 Result:=-1;
end;
end;
//--------------------------------------------------------------
Function TRule.ShowAsList(F,F1,T,L:Integer;tmWC:TWinControl;K:TObject):Integer;
Function GetCountOfNotEmptySlots(F:TFact):Integer;
var
 i : Integer;
begin
 Result:=0;
 for i := 0 to F.Slots.Count-1 do
  if TSlot(F.Slots.Items[i]).Value<>'' then
   Inc(Result);
end;

var
 i : Integer;
 s : string;
begin
  Result:=0;
  if F=1 then
   begin
     T:=STDIClass.AddLabel(tmWC,
      MainForm.LS('Name:')
       ,T,L,250,clNavy,clNone,[]);
     STDIClass.AddLabel(tmWC,'['+ID+']',T,10,30,clInactiveCaption,clNone,[fsBold]);
     T:=STDIClass.AddLabel(tmWC,
      Name
       ,T,L+10+50,tmWC.Width-25-10-50,clBlack,clNone,[fsBold]);

{     T:=STDIClass.AddLabel(tmWC,'???????? ???:',T,L,250,clNavy,clNone,[]);
     T:=STDIClass.AddLabel(tmWC,
      TRule(TreeView1.Selected.Data).ShortName
       ,T,L+10,tmWC.Width-25-10,clInactiveCaption,clNone,[fsBold]);

     STDIClass.AddLabel(tmWC,'????????/?????????:',T,L,80,clNavy,clNone,[]);
     if TRule(TreeView1.Selected.Data).Salience='' then
      T:=STDIClass.AddLabel(tmWC,'???????? ???'
       ,T,L+120,200,clInactiveCaption,clNone,[])
      else
       T:=STDIClass.AddLabel(tmWC,TRule(TreeView1.Selected.Data).Salience
        ,T,L+120,tmWC.Width-25-120,clBlack,clNone,[fsBold]);
 }
     T:=STDIClass.AddLabel(tmWC,
      MainForm.LS('Description:')
       ,T,L,250,clNavy,clNone,[]);
     if Description='' then
      T:=STDIClass.AddLabel(tmWC,
       MainForm.LS('no data')
       ,T,L+10,250,clInactiveCaption,clNone,[])
      else
       T:=STDIClass.AddLabel(tmWC,Trim(Description)
        ,T,L+10,tmWC.Width-25-10,clBlack,clNone,[fsBold]);

     T:=STDIClass.AddLabel(tmWC,
      MainForm.LS('?ertainty factor')
       ,T,L,250,clNavy,clNone,[]);
     if CF='' then
      T:=STDIClass.AddLabel(tmWC,
       MainForm.LS('no data')
       ,T,L+10,250,clInactiveCaption,clNone,[])
      else
       T:=STDIClass.AddLabel(tmWC,Trim(CF)
        ,T,L+10,tmWC.Width-25-10,clBlack,clNone,[fsBold]);

     T:=STDIClass.AddLabel(tmWC,
      MainForm.LS('Priority')
       ,T,L,250,clNavy,clNone,[]);
     if Salience='' then
      T:=STDIClass.AddLabel(tmWC,
       MainForm.LS('no data')
       ,T,L+10,250,clInactiveCaption,clNone,[])
      else
       T:=STDIClass.AddLabel(tmWC,Trim(Salience)
        ,T,L+10,tmWC.Width-25-10,clBlack,clNone,[fsBold]);

    Result:=(TLabel(tmWC.Components[tmWC.ComponentCount-1]).Top+
     TLabel(tmWC.Components[tmWC.ComponentCount-1]).Height);
    tmWC.Parent.Tag:=Result+10;
   end;

  if F1=1 then
   begin
     T:=STDIClass.AddLabel(tmWC,
      MainForm.LS('Condition (IF):')
       ,T+10,L,250,clNavy,clNone,[]);
     for i:=0 to Conditions.Count-1 do
      begin
       if i>0 then
        T:=STDIClass.AddLabel(tmWC,
         TCondition(Conditions.Items[i]).GetOperator
          ,T,L+10,tmWC.Width-25-10,clGreen,clNone,[fsBold]);
       T:=STDIClass.AddLabel(tmWC,
        TCondition(Conditions.Items[i]).GetInfo(0,0,
         TKnowledgeBase(K)
         )
         ,T,L+10,tmWC.Width-25-10,clBlack,clNone,[fsBold]);
      end;

     if Conditions.Count=0 then
      T:=STDIClass.AddLabel(tmWC,
       MainForm.LS('no data')
       ,T,L+10,250,clInactiveCaption,clNone,[]);

     T:=STDIClass.AddLabel(tmWC,
      MainForm.LS('Action (THEN):')
       ,T,L,250,clNavy,clNone,[]);
     for i:=0 to Actions.Count-1 do
      begin
       T:=STDIClass.AddLabel(tmWC,
        TRAction(Actions.Items[i]).GetOperator
         ,T,L+10,tmWC.Width-25-10,clRed,clNone,[fsBold]);
       T:=STDIClass.AddLabel(tmWC,
        TRAction(Actions.Items[i]).GetInfo(0,0,
          TKnowledgeBase(K)
          )
          ,T,L+20,tmWC.Width-25-10,clBlack,clNone,[fsBold]);
       Result:=(TLabel(tmWC.Components[tmWC.ComponentCount-1]).Top+
        TLabel(tmWC.Components[tmWC.ComponentCount-1]).Height);
      end;
   end;
 tmWC.Tag:=Result+10;
end;
//--------------------------------------------------------------
Function TKnowledgeBase.GetPkgByID(ID,S:string):TObject;
var
 i : Integer;
begin
 Result:=nil;
 if ID<>'' then
  begin
   case S[1] of
    'G':begin
      for i:=0 to GRulePackageList.Count-1 do
       if TTmObj(GRulePackageList.Objects[i]).ID=ID then
        begin
         Result:=TTmObj(GRulePackageList.Objects[i]);
         Break;
        end;
    end;
    'R':begin
      for i:=0 to RulePackageList.Count-1 do
       if TTmObj(RulePackageList.Objects[i]).ID=ID then
        begin
         Result:=TTmObj(RulePackageList.Objects[i]);
         Break;
        end;
    end;
   end; //end case
 end;

end;
//--------------------------------------------------------------
Function TTmObj.GetLongName(ID,Name:string; tmKB,tmPkg:TObject):string;
var
 tmO : TObject;
begin
 if Name<>'' then Name:='/'+Name;

 Result:=TTmObj(tmPkg).Name+Name;
 tmO:=TKnowledgeBase(tmKB).GetPkgByID(
  TTmObj(tmPkg).ID_Root,ID
   );
 if tmO<>nil then Result:=TTmObj(tmO).GetLongName(
  ID,Result,tmKB,tmO)+Result;
end;
//--------------------------------------------------------------
procedure TKnowledgeBase.DelRuleComponentImageClick(Sender: TObject);
begin
 if MainForm.MMessageBox(1,1,'0='+MainForm.LS('Delete')+'?')=0
   then
    TRzPanel(TImage(Sender).Parent).Free;
end;
//--------------------------------------------------------------
function TRule.CheckNameForRestrictedSymbols:string;
var
 tmTs : TStringList;
 i : Integer;
begin
 Result:='';
 tmTs:=TStringList.Create;
 tmTs.Add('(');tmTs.Add(')');tmTs.Add('*');tmTs.Add('&');tmTs.Add('%');tmTs.Add('$');
 tmTs.Add('~');tmTs.Add('!');tmTs.Add('@');tmTs.Add('#');tmTs.Add('^');
 for i := 0 to tmTs.Count-1 do
  if pos(tmTs.Strings[i],Name)>0 then
   Result:=Result+' '+tmTs.Strings[0];
end;
//--------------------------------------------------------------
function TGrule.CheckNameForRestrictedSymbols:string;
var
 tmTs : TStringList;
 i : Integer;
begin
 Result:='';
 tmTs:=TStringList.Create;
 tmTs.Add('(');tmTs.Add(')');tmTs.Add('*');tmTs.Add('&');tmTs.Add('%');tmTs.Add('$');
 tmTs.Add('~');tmTs.Add('!');tmTs.Add('@');tmTs.Add('#');tmTs.Add('^');
 for i := 0 to tmTs.Count-1 do
  if pos(tmTs.Strings[i],Name)>0 then
   Result:=Result+' '+tmTs.Strings[0];
end;
//--------------------------------------------------------------
function TSlot.CheckNameForRestrictedSymbols:string;
var
 tmTs : TStringList;
 i : Integer;
begin
 Result:='';
 tmTs:=TStringList.Create;
 tmTs.Add('(');tmTs.Add(')');tmTs.Add('*');tmTs.Add('&');tmTs.Add('%');tmTs.Add('$');
 tmTs.Add('~');tmTs.Add('!');tmTs.Add('@');tmTs.Add('#');tmTs.Add('^');
 for i := 0 to tmTs.Count-1 do
  if pos(tmTs.Strings[i],Name)>0 then
   Result:=Result+' '+tmTs.Strings[0];
end;
//--------------------------------------------------------------
function TGRule.CreateCFM:string;
var
 i : Integer;
 s,s1 : string;
begin
// tmTs.Add('[Generalize rules]');
// tmTs.Add('#'+Name);
 //create con list
 s:='';
 for i := 0 to Conditions.Count-1 do
  begin
   if i<>0 then s:=s+',';
   s:=s+TTemplate(Conditions.Items[i]).ShortName;
  end;
 //create act list
 s1:='';
 for i := 0 to Actions.Count-1 do
  begin
   if i<>0 then s1:=s1+',';
   s1:=s1+TTemplate(Actions.Items[i]).ShortName;
  end;

 Result:=ShortName+'='+Description+':'+s+':'+s1;
end;
//--------------------------------------------------------------
Function TTemplate.isEqual(T2:TObject):Boolean;
var
 j,c  : Integer;
begin
 Result:=False;
 if Slots.Count=TTemplate(T2).Slots.Count then
  begin
   j:=0;
   for c:=0 to TTemplate(T2).Slots.Count-1 do
    if IndexOf(TSlot(TTemplate(T2).Slots.Items[c]).ShortName,-1)>-1
     then Inc(j);
   if j=TTemplate(T2).Slots.Count then Result:=True;
  end;
end;
//--------------------------------------------------------------
function TTemplate.CreateCFM:string;
var
 i : Integer;
 tmTs : TStringList;
 tmV : TStringList; //values
 tmC : TStringList; //captions
 s : string;
begin
 tmTs:=TStringList.Create;
 tmV:=TStringList.Create;
 tmC:=TStringList.Create;

 tmTs.Add('[Metadata]');
 tmTs.Add(';'+Name);
 tmTs.Add('tempale_name='+ShortName);
 tmTs.Add('edited_by_user=Yes');
 tmTs.Add('');
 tmTs.Add('[Fields]');
 tmC.Add('[Captions]');
 for i := 0 to Slots.Count-1 do
  begin
   s:=AnsiUpperCase(
    StringReplace(TSlot(Slots.Items[i]).Value,' ','_',[rfReplaceAll])
     );
   if s<>'' then
    begin
     if tmV.IndexOfName(s)=-1 then
      begin
       tmV.Add(s+'=val'+IntToStr(tmV.Count)+':1');
      end;
     s:=tmV.Values[s];
    end
   else
    begin
     s:=TSlot(Slots.Items[i]).DataType;
    end;
   if s='' then s:='string';
   tmTs.Add(TSlot(Slots.Items[i]).ShortName+'='+s);
   tmC.Add(TSlot(Slots.Items[i]).ShortName+'='+TSlot(Slots.Items[i]).Name);
  end;

 tmTs.Add('');
 tmTs.AddStrings(tmC);
 tmTs.Add('');
 tmTs.Add('[Values]');
 for i := 0 to tmV.Count-1 do
  tmTs.Add(tmV.ValueFromIndex[i]+'='+tmV.Names[i]);

 Result:=tmTs.Text;
end;
//--------------------------------------------------------------
function TTemplate.CheckNameForRestrictedSymbols:string;
var
 tmTs : TStringList;
 i : Integer;
begin
 Result:='';
 tmTs:=TStringList.Create;
 tmTs.Add('(');tmTs.Add(')');tmTs.Add('*');tmTs.Add('&');tmTs.Add('%');tmTs.Add('$');
 tmTs.Add('~');tmTs.Add('!');tmTs.Add('@');tmTs.Add('#');tmTs.Add('^');
 for i := 0 to tmTs.Count-1 do
  if pos(tmTs.Strings[i],Name)>0 then
   Result:=Result+' '+tmTs.Strings[0];
end;
//--------------------------------------------------------------
procedure TTemplate.PurifyName;
begin
  Name:=StringReplace(Name,'(','_',[rfReplaceAll]);
  Name:=StringReplace(Name,')','_',[rfReplaceAll]);
end;
//--------------------------------------------------------------
Function TTemplate.RefreshFromSlotPanels(tmWC:TWinControl):Integer;
var
 i : Integer;
 tmP : TRzPanel;
 tmS : TSlot;
begin
 Slots.Clear;
 for i := 0 to tmWC.ComponentCount-1 do
  if tmWC.Components[i] is TRzPanel then
   begin
    tmP:=TRzPanel(tmWC.Components[i]);
    tmS:=TSlot.Create;
    try
     tmS.Name:=TEdit(tmP.Components[0]).Text;
     tmS.ShortName:=Translit.Trans(tmS.Name, Translit.FL);

     tmS.DataType:=TComboBox(tmP.Components[1]).Text;
     tmS.Value:=TEdit(tmP.Components[2]).Text;
     tmS.Description:=TEdit(tmP.Components[3]).Text;
    except
    end;
    Slots.Add(tmS);
   end;
end;
//--------------------------------------------------------------
Function TFScale.GetInterval(c,F:Integer):string;
var
 f1,f2,f3,delta,f4,f5 : Double;
begin
  try
   TryStrToFloat(Min,f1);
   TryStrToFloat(Max,f2);
   f3:=f2-f1;
   if Len<>0 then delta:=f3/Len else delta:=0;
   f4:=RoundTo(f1+delta*c,-2);
   f5:=RoundTo(f4+delta,-2);
   if F=0 then
    Result:=FloatToStr(f4)+'-'+FloatToStr(f5)
     else Result:=FloatToStr(f4);
  except
   Result:='0-0';
  end;
end;
//--------------------------------------------------------------
Function TFScale.ShowEditPanelsForScale(tmWC:TWinControl;ef:integer):Integer;
var
 i,j,T : Integer;
 tmP : TRzPanel;
 tmTs : TStringList;
 k : Double;
 s : string;
 tmFVar : TFVar;
begin
 tmWC.Visible:=False;
 STDIClass.ReleaseObjects(tmWC);
 if (ListOfValues.Count<>Self.Len) then
  begin
   Self.ListOfValues.Clear;
   if Self.Len<>0 then k:=RoundTo(StrToInt(Self.Max)/Self.Len,-2) else k:=0;
    for i := 0 to Len-1 do
     begin
      tmFVar:=TFVar.Create;
      tmFVar.Init;
      tmFVar.Name:='val_'+IntToStr(i);
      tmFVar.FType:=Self.FType;
      Self.ListOfValues.AddObject(tmFVar.Name,tmFVar);
     end;
  end;
 T:=0;
 for i := 0 to Self.ListOfValues.Count-1 do
  begin
   try
    tmP:=STDIClass.AddRzPanel(T,1,30,500,
     tmWC,0,alTop,clCream,bvNone,bvNone,bsNone,'');
     tmP.BorderWidth:=2;

    //edit for name
    STDIClass.AddEdit(tmP,1,40,110,Self.ListOfValues.Strings[i]);
    TEdit(tmP.Components[tmP.ComponentCount-1]).Text:=ListOfValues.Strings[i];

    //edit the scale values
    if ef=0 then
     begin
      TEdit(tmP.Components[tmP.ComponentCount-1]).Enabled:=False;
      TEdit(tmP.Components[tmP.ComponentCount-1]).Left:=
       TEdit(tmP.Components[tmP.ComponentCount-1]).Left-39;
      TEdit(tmP.Components[tmP.ComponentCount-1]).Width:=
       TEdit(tmP.Components[tmP.ComponentCount-1]).Width+40;
     end;
    TEdit(tmP.Components[tmP.ComponentCount-1]).Tag:=i;
    TEdit(tmP.Components[tmP.ComponentCount-1]).AlignWithMargins:=True;

    //add table
    STDIClass.AddTableAsPanelsV2(tmP,1,150+10,Round(tmP.Width-170),i,Self);

    STDIClass.AddChartV2(tmP,1,150+10+10+
     TRzPanel(tmP.Components[tmP.ComponentCount-1]).Width
     ,50,200,i,Self);

    //!!! Add spinedit
    STDIClass.AddSpinEdit(tmP,25,1,150,IntToStr(TFVar(ListOfValues.Objects[i]).Len));
    if ef=0 then TRzSpinEdit(tmP.Components[tmP.ComponentCount-1]).Enabled:=False;
    TRzSpinEdit(tmP.Components[tmP.ComponentCount-1]).AlignWithMargins:=True;
    TRzSpinEdit(tmP.Components[tmP.ComponentCount-1]).Tag:=i;

    if ef=1 then  //only for new scales
     begin
      STDIClass.AddRzPanel(0,1,20,38,
       tmP,0,alNone,clCream,bvNone,bvNone,bsNone,STDIClass.GetPrefix(Self.Name)+'-');
      TRzPanel(tmP.Components[tmP.ComponentCount-1]).Alignment:=taRightJustify;
     end;

     tmP.AutoSize:=True;
     T:=tmP.Top+tmP.Height;
   except
 //   Result:=nil;
   end;
  end;
 tmWC.Visible:=True;
end;

//--------------------------------------------------------------
function TKnowledgeBase.GetUniqueName(n,s:string; var s1:string):string;
var
 i : Integer;
 s2 : string;
begin
 Result:='';
 i:=1;
 case s[1] of
  'F':begin
    while Result='' do
     begin
      s2:=n+'-'+IntToStr(i);
      s2:=StringReplace(s2,'New template','Fact',[rfReplaceAll]);

      if IndexOfFactByName(s2)=-1 then
       begin
        s1:=Translit.Trans(s2,Translit.FL);
        if IndexOfFactByShortName(s1)=-1 then
         Result:=s2;
       end;
      Inc(i);
     end;
    end;
  'T':begin
    while Result='' do
     begin
      s2:=n+'-'+IntToStr(i);
      if IndexOfTemplateByName(s2,'')=-1 then Result:=s2;
      Inc(i);
     end;
    end;
  'G':begin
    while Result='' do
     begin
      s2:=n+'-'+IntToStr(i);
      if IndexOfGRuleByName(s2)=-1 then
       begin
//        s1:=Translit.Trans(s2,Translit.FL);
//        if IndexOfGRuleByShortName(s1)=-1 then
        Result:=s2;
       end;
      Inc(i);
     end;
    end;
  'R':begin
    while Result='' do
     begin
      s2:=n+'-'+IntToStr(i);
      s2:=StringReplace(s2,'GRule','Rule',[rfReplaceAll]);
      if IndexOfRuleByNameV2(s2)=-1 then
       begin
        s1:=Translit.Trans(s2,Translit.FL);
        if IndexOfRuleByName(s1)=-1 then
         Result:=s2;
       end;
      Inc(i);
     end;
    end;
 end; //end case
 s1:=Translit.Trans(Result,Translit.FL);
end;
//--------------------------------------------------------------
function TKnowledgeBase.GetFactValuesForSlotName(sn,tdv:string):string;
var
 i,j : Integer;
 tmTs : TStringList;
 v : string;
begin
 Result:='';
 tmTs:=TStringList.Create;
 tmTs.Delimiter:=';';
 tmTs.DelimitedText:=StringReplace(tdv,' ','_',[rfReplaceAll]);
// for i := 0 to tmTs.Count-1 do
//  tmTs.Strings[i]:=StringReplace(tmTs.Strings[i],'++',' ',[rfReplaceAll]);

 for i := 0 to Facts.Count-1 do
  begin
   for j := 0 to TFact(Facts.Items[i]).Slots.Count-1 do
    if TSlot(TFact(Facts.Items[i]).Slots.Items[j]).Name=sn then
     begin
       v:=StringReplace(Trim(TSlot(TFact(Facts.Items[i]).Slots.Items[j]).Value),
        ' ','_',[rfReplaceAll]);
       if v<>'' then
        if tmTs.IndexOf(v)=-1 then tmTs.Add(v);
     end;
  end;
  //sort
  for i := 0 to tmTs.Count-2 do
  for j := 0 to tmTs.Count-2 do
   begin
    if tmTs[j]> tmTs[j+1]then tmTs.Exchange(j,j+1);
   end;

  Result:=tmTs.Text;
  tmTs.Free;
end;
//--------------------------------------------------------------
function TKnowledgeBase.GetObjForReplacement(FN:string;ObjLst:TStringList):Integer;
var
 i,j,k : Integer;
 tmF : TFact;
 s : string;
begin
 ObjLst.Clear;
  //search in actions of entered rules
  for i :=Rules.Count-1  downto 0 do
   begin
     for j := 0 to TRule(Rules.Items[i]).Conditions.Count-1 do
      if TCondition(TRule(Rules.Items[i]).Conditions.Items[j]).Fact.ShortName=
       FN then
        begin
         tmF:=TCondition(TRule(Rules.Items[i]).Conditions.Items[j]).Fact;
         s:=tmF.GetBriefTextualDescription;
         k:=ObjLst.IndexOf(s);
         if k=-1 then ObjLst.AddObject(s,tmF);
        end;

     for j := 0 to TRule(Rules.Items[i]).Actions.Count-1 do
      if TRAction(TRule(Rules.Items[i]).Actions.Items[j]).Fact.ShortName=
       FN then
        begin
         tmF:=TRAction(TRule(Rules.Items[i]).Actions.Items[j]).Fact;
         s:=tmF.GetBriefTextualDescription;
         k:=ObjLst.IndexOf(s);
         if k=-1 then ObjLst.AddObject(s,tmF);
        end;
   end;
 Result:=ObjLst.Count;
end;
//--------------------------------------------------------------
Function TTemplate.ShowInputModule(tmWC:TWinControl;Tg1:Integer;tK,tmFact:TObject):Integer;
var
 i,j,c,c1  : Integer;
 T  : Integer;
 tmTs,tmTs1,tmTs2 : TStringList;

 Tg  :  TRzGroupBox;
 W : Integer;


 tmP,tmP1,tmP2 : TRzPanel;
// tmLHS : TCondition;
 tmIm,tmIm1 : TImage;
 tKB : TKnowledgeBase;
 s : string;
begin
   tmTs:=TStringList.Create;
   tmTs1:=TStringList.Create;
   tKB:=TKnowledgeBase(tK);

   tmP2:=STDIClass.AddRzPanel(30,1,30,500,
    tmWC,Tg1,alTop,clCream,bvNone,bvNone,bsSingle,'');
   tmP2.AutoSize:=True;
   tmP2.AlignWithMargins:=True;
   tmP2.BorderColor:=clRed;

   //!!!
   tmP2.Visible:=False;

   tmP:=STDIClass.AddRzPanel(1,1,30,500,
    tmP2,Tg1,alTop,clCream,bvNone,bvNone,bsNone,
      'Fact: '+Name);
   tmP.Tag:=-1;

   //-------------------------------------------------------------------
   //auto fill - get objects
{   tmTs2:=TStringList.Create;
   //!!!
   if tKB.GetObjForReplacement(ShortName,tmTs2)>0 then
    begin
     //auto icon
     tmIm1:=STDIClass.AddImage(tmP,1,1,10,47,MainForm.ImageList1,alRight);
     tmIm1.AlignWithMargins:=True;
     tmIm1.Hint:=MainForm.LS('Auto-fill');
     tmIm1.Tag:=3000+OLst1.Count;
     OLst1.AddObject(IntToStr(tmIm1.Tag),tmTs2);
//     tmIm1.PopupMenu:=MainForm.PopupMenu4;
//     tmIm1.PopupMenu.OnPopup:=PopupMenu2Popup;
//         tmIm1.OnClick:=AutoFillRuleComponentImageClick;
     tmIm1.Cursor:=crHandPoint;
    end;  }
   //-------------------------------------------------------------------

   //del icon
   tmIm1:=STDIClass.AddImage(tmP,1,1,10,5,MainForm.ImageList1,alRight);
   tmIm1.AlignWithMargins:=True;
   tmIm1.Hint:=MainForm.LS('Remove');
   tmIm1.Tag:=Tg1;
   tmIm1.OnClick:=DelFactImageClick;
   tmIm1.Cursor:=crHandPoint;

   //add icon
   tmIm:=STDIClass.AddImage(tmP,1,1,10,20,MainForm.ImageList1,alRight);
   tmIm.AlignWithMargins:=True;
   tmIm.Hint:=MainForm.LS('Add');
   tmIm.Tag:=Tg1;
   tmIm.OnClick:=AddFactImageClick;
   tmIm.Cursor:=crHandPoint;

     T:=tmP.Top+tmP.Height;
    for j := 0 to Slots.Count-1 do
    begin

     tmP:=STDIClass.AddRzPanel(T,1,20,500,
      tmP2,j,alTop,clCream,bvNone,bvNone,bsNone,'');
     tmP.Tag:=i;

     tmP1:=STDIClass.AddRzPanel(1,1,10,W+300,
      tmP,j,alLeft,clCream,bvNone,bvNone,bsSingle,
       TSlot(Slots.Items[j]).Name);
     tmP.Height:=20*(((Length(TSlot(Slots.Items[j]).Name)*7) div tmP1.Width)+1);
     tmP1.Font.Style:=[];
//       tmP1.OnMouseMove:=ComponentMouseMove;
   //values from template
    if TSlot(Slots.Items[j]).DataType='String'  then
     begin //combo for string - use dictionaries

   //   T:=
      STDIClass.AddRzCombo(tmP,T-3,W+2,
       W-5,tmTs.DelimitedText); //text from template
      //!!!!

      TRzComboBox(tmP.Components[tmP.ComponentCount-1]).Items.Text:=
        TSlot(Slots.Items[j]).TempValue;
       //!!!!
      TRzComboBox(tmP.Components[tmP.ComponentCount-1]).Align:=alClient;

      if tmFact<>nil then
       begin
        c:=TRzComboBox(tmP.Components[tmP.ComponentCount-1]).Items.IndexOf(
          TSlot(TFact(tmFact).Slots.Items[j]).Value);
        if c=-1 then
         TRzComboBox(tmP.Components[tmP.ComponentCount-1]).Text:=
          TSlot(TFact(tmFact).Slots.Items[j]).Value
         else
          TRzComboBox(tmP.Components[tmP.ComponentCount-1]).ItemIndex:=c;
       end;

       //----------------------------------------------------------------
       //auto fill value
       if TRzComboBox(tmP.Components[tmP.ComponentCount-1]).Text='' then
        begin
          try
{             s:=tKB.GetStrForReplacement(
            ShortName,
             TSlot(Slots.Items[j]).ShortName,
              AddRuleForm3.ComboBox2.Text,
               tKB
            ); }
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

//         TRzComboBox(tmP.Components[tmP.ComponentCount-1]).OnExit:=
//          OnExitCombo;
     end
    else //edit for integer
     begin
      STDIClass.AddEdit(tmP,T-3,W+2,
       W-5,'');
      TEdit(tmP.Components[tmP.ComponentCount-1]).Align:=alClient;

      if TSlot(Slots.Items[j]).Value<>'' then
       TEdit(tmP.Components[tmP.ComponentCount-1]).Text:=
        TSlot(Slots.Items[j]).Value;
//        TEdit(tmP.Components[tmP.ComponentCount-1]).OnExit:=
//          OnExitEdit;
     end;

     tmP.Components[tmP.ComponentCount-1].Tag:=j;

    //!!!!
     if Tg1=3 then
      begin
       STDIClass.AddRzCombo(tmP,T-3,10,
        40,tmTs1.Text); //weigth
       TRzComboBox(tmP.Components[tmP.ComponentCount-1]).Items.Text:=
        tmTs1.Text;

       if Trim(TSlot(Slots.Items[i]).Constraint)='' then
        TRzComboBox(tmP.Components[tmP.ComponentCount-1]).ItemIndex:=0
         else
          TRzComboBox(tmP.Components[tmP.ComponentCount-1]).ItemIndex:=
           TRzComboBox(tmP.Components[tmP.ComponentCount-1]).Items.IndexOf(
            Trim(TSlot(Slots.Items[j]).Constraint)
             );

       tmP.Components[tmP.ComponentCount-1].Tag:=1000+j;
//       tmP.Components[tmP.ComponentCount-1].Tag:=1000+j;
       TRzComboBox(tmP.Components[tmP.ComponentCount-1]).Align:=alRight;
      end;

    T:=tmP.Top+tmP.Height;
   end;
   tmP2.Visible:=True;
   tmP2.AutoSize:=True;
   tmP2.Constraints.MinHeight:=T;
end;
//--------------------------------------------------------------
Function TTemplate.ShowEditPanelsForSlots(tmWC:TWinControl;delBtnF:Boolean):Integer;
var
 i,T : Integer;
 tmP : TRzPanel;
begin
 STDIClass.ReleaseObjects(tmWC);
 T:=0;
 for i := 0 to Slots.Count-1 do
  begin
   tmP:=TSlot(Slots.Items[i]).ShowEditPanel(tmWC,delBtnF,T,1);
   T:=T+tmP.Height+1;
  end;
end;
//--------------------------------------------------------------
Function TSlot.CopyFrom(Source:TObject):Integer;
begin
 Name:=TSlot(Source).Name;
 ShortName:=Translit.Trans(TSlot(Source).ShortName,Translit.FL);
 Description:=TSlot(Source).Description;
 Value:=TSlot(Source).Value;
 DataType:=TSlot(Source).DataType;
 Constraint:=TSlot(Source).Constraint;
end;
//--------------------------------------------------------------
Function TSlot.ShowEditPanel(tmWC:TWinControl;delBtnF:Boolean; T,L:Integer):TRzPanel;
var
  tmP : TRzPanel;
  s : string;
  tmIm : TImage;
  i : Integer;
begin
 try
  tmP:=STDIClass.AddRzPanel(T,L,20,500,
   tmWC,0,alTop,clCream,bvNone,bvNone,bsNone,'');
   tmP.BorderWidth:=2;

  //edit for name
//  STDIClass.AddEdit(tmP,1,1,120,Name);
  STDIClass.AddEdit(tmP,1,1,190,Name);
  TEdit(tmP.Components[tmP.ComponentCount-1]).Text:=Name;
  TEdit(tmP.Components[tmP.ComponentCount-1]).Align:=alLeft;
  TEdit(tmP.Components[tmP.ComponentCount-1]).AlignWithMargins:=True;

  //combo for datatype
  s:='String;Number;Fuzzy';
  STDIClass.AddCombo(tmP,1,20,60,''); //text from template
  TComboBox(tmP.Components[tmP.ComponentCount-1]).Items.Delimiter:=';';
  TComboBox(tmP.Components[tmP.ComponentCount-1]).Items.DelimitedText:=s;
  TComboBox(tmP.Components[tmP.ComponentCount-1]).Align:=alLeft;
  TComboBox(tmP.Components[tmP.ComponentCount-1]).AlignWithMargins:=True;
  if DataType<>'' then
   begin
    i:=TComboBox(tmP.Components[tmP.ComponentCount-1]).Items.IndexOf(
      DataType
       );
    if i=-1 then i:=0;
    TComboBox(tmP.Components[tmP.ComponentCount-1]).ItemIndex:=i;
   end;

  //edit for default value
  STDIClass.AddEdit(tmP,1,Round(tmWC.Width/2)+60,130,Value);
  TEdit(tmP.Components[tmP.ComponentCount-1]).Text:=Value;
  TEdit(tmP.Components[tmP.ComponentCount-1]).Align:=alLeft;
  TEdit(tmP.Components[tmP.ComponentCount-1]).AlignWithMargins:=True;

  //description
  STDIClass.AddEdit(tmP,1,Round(tmWC.Width/2)+100,Round(tmWC.Width/2),Description);
  TEdit(tmP.Components[tmP.ComponentCount-1]).Text:=Description;
  TEdit(tmP.Components[tmP.ComponentCount-1]).Align:=alClient;
  TEdit(tmP.Components[tmP.ComponentCount-1]).AlignWithMargins:=True;

  if delBtnF then
   begin
     //add icon
     tmIm:=STDIClass.AddImage(tmP,T,Round(tmWC.Width/2)+150,10,5,
      MainForm.ImageList1,alRight);
     tmIm.AlignWithMargins:=True;
     tmIm.Margins.Top:=6;
     tmIm.Hint:=MainForm.LS('Delete');
     tmIm.Cursor:=crHandPoint;
  //   tmIm.OnClick:=GRuleAddImageClick;
    end;
//   tmP1.Cursor:=crHandPoint;
//   tmP1.OnClick:=GRuleLabelClick;
   tmP.AutoSize:=True;
  Result:=tmP;
 except
  Result:=nil;
 end;
end;
//--------------------------------------------------------------
Function TKnowledgeBase.ShowEditGRulePanel
 (tmWC:TWinControl;G1:TGRule;delBtnF:Boolean; T,L:Integer):TRzPanel;
var
  tmP,tmP1 : TRzPanel;
  s : string;
  tmIm : TImage;

  i : Integer;
begin
 try
  tmP1:=STDIClass.AddRzPanel(T,L,22,500,
   tmWC,0,alTop,clCream,bvNone,bvNone,bsNone,'');
  tmP1.BorderWidth:=2;
  tmP1.BorderColor:=clRed;
  tmP1.AlignWithMargins:=True;

  tmP:=STDIClass.AddRzPanel(T,L,22,500,
   tmP1,0,alTop,clCream,bvNone,bvNone,bsNone,MainForm.LS('IF:'));
  tmP.Alignment:=taLeftJustify;
  tmP.AlignWithMargins:=True;
//   tmP.BorderWidth:=2;

   //add icon
   tmIm:=STDIClass.AddImage(tmP,T,Round(tmWC.Width/2)+150,10,22,
    MainForm.ImageList1,alRight);
   tmIm.AlignWithMargins:=True;
   tmIm.Tag:=10;
//   tmIm.Margins.Top:=0;
   tmIm.Hint:='???????? ?????? ????? ? ???????';
   tmIm.Cursor:=crHandPoint;

  for i := 0 to G1.Conditions.Count-1 do
   begin
    T:=tmP.Top+tmP.Height+3;
    tmP:=ShowEditTempPanelForGrule(tmP1,
     TTemplate(G1.Conditions.Items[i]),delBtnF,T,20);
    tmP.AlignWithMargins:=True;
   end;

//  tmP1.Height:=tmP1.ComponentCount*20+5;
  tmP1.AutoSize:=True;

  tmP1:=STDIClass.AddRzPanel((tmP1.Height+tmP1.Width),L,22,500,
   tmWC,0,alTop,clCream,bvNone,bvNone,bsNone,'');
  tmP1.BorderWidth:=2;
  tmP1.BorderColor:=clNavy;
  tmP1.AlignWithMargins:=True;

  T:=tmP.Top+tmP.Height+3;
  tmP:=STDIClass.AddRzPanel(T,L,22,500,
   tmP1,0,alTop,clCream,bvNone,bvNone,bsNone,MainForm.LS('THEN:'));
  tmP.Alignment:=taLeftJustify;
  tmP.AlignWithMargins:=True;
//   tmP.BorderWidth:=2;
   //add icon
   tmIm:=STDIClass.AddImage(tmP,T,Round(tmWC.Width/2)+150,15,22,
    MainForm.ImageList1,alRight);
   tmIm.AlignWithMargins:=True;
   tmIm.Tag:=15;
//   tmIm.Margins.Top:=-1;
   tmIm.Hint:='???????? ?????? ????? ? ???????';
   tmIm.Cursor:=crHandPoint;

  for i := 0 to G1.Actions.Count-1 do
   begin
    T:=tmP.Top+tmP.Height+3;
    tmP:=ShowEditTempPanelForGRule(tmP1,
     TTemplate(G1.Actions.Items[i]),delBtnF,T,20);
    tmP.AlignWithMargins:=True;
   end;
  tmP1.AutoSize:=True;
  Result:=tmP;
 except
  Result:=nil;
 end;
end;
//--------------------------------------------------------------
Function TKnowledgeBase.ShowRulesAsTable(tmWC:TWinControl;M:Integer):Integer;
Function ShowHeader(GR:TGRule;tmWC:TWinControl):Integer;
var
 i,j,l,j1 : Integer;
 tmP,tmP1,tmP2 : TRzPanel;
begin
 STDIClass.ReleaseObjects(tmWC);
 tmP:=STDIClass.AddRzPanel(1,1,40,tmWC.Width,
  tmWC,0,alTop,clCream,bvNone,bvNone,bsNone,'');
 STDIClass.AddRzPanel(1,1,40,50,
  tmP,0,alLeft,clCream,bvNone,bvNone,bsSingle,'ID');
 l:= TRzPanel(tmP.Controls[tmP.ControlCount-1]).Left+
  TRzPanel(tmP.Controls[tmP.ControlCount-1]).Width;

 //conditions
 for i := 0 to GR.Conditions.Count-1 do
  begin
   j:=TTemplate(GR.Conditions.Items[i]).Slots.Count;
   tmP1:=STDIClass.AddRzPanel(1,l,40,j*75,
    tmP,0,alLeft,clCream,bvNone,bvNone,bsNone,'');

   l:= TRzPanel(tmP.Controls[tmP.ControlCount-1]).Left+
    TRzPanel(tmP.Controls[tmP.ControlCount-1]).Width;

   STDIClass.AddRzPanel(1,1,20,j*75,
    tmP1,0,alTop,clMoneyGreen,bvNone,bvNone,bsSingle,
     TTemplate(GR.Conditions.Items[i]).Name
      );
   tmP2:=STDIClass.AddRzPanel(1,1,20,j*75,
    tmP1,0,alClient,clCream,bvNone,bvNone,bsNone,
     ''
      );

   for j1 := 0 to TTemplate(GR.Conditions.Items[i]).Slots.Count-1 do
    begin
     STDIClass.AddRzPanel(1,j*75,20,75,
      tmP2,0,alLeft,clCream,bvNone,bvNone,bsSingle,
       TSlot(TTemplate(GR.Conditions.Items[i]).Slots.Items[j1]).Name
//       IntToStr(j1)
        );
    end;
  end;

 //actions
 for i := 0 to GR.Actions.Count-1 do
  begin
   j:=TTemplate(GR.Actions.Items[i]).Slots.Count;
   tmP1:=STDIClass.AddRzPanel(1,l,40,j*75,
    tmP,0,alLeft,clCream,bvNone,bvNone,bsNone,'');
   l:= TRzPanel(tmP.Controls[tmP.ControlCount-1]).Left+
    TRzPanel(tmP.Controls[tmP.ControlCount-1]).Width;

   STDIClass.AddRzPanel(1,1,20,j*75,
    tmP1,0,alTop,$00D9DDFD,bvNone,bvNone,bsSingle,
     TTemplate(GR.Actions.Items[i]).Name
      );
   tmP2:=STDIClass.AddRzPanel(1,1,20,j*75,
    tmP1,0,alClient,clCream,bvNone,bvNone,bsNone,
     ''
      );
   for j1 := 0 to TTemplate(GR.Actions.Items[i]).Slots.Count-1 do
    begin
     STDIClass.AddRzPanel(1,j*75,20,75,
      tmP2,0,alLeft,clCream,bvNone,bvNone,bsSingle,
       TSlot(TTemplate(GR.Actions.Items[i]).Slots.Items[j1]).Name
//       IntToStr(j1)
        );
    end;
  end;
end;
//-------------
Function ShowHeaderV2(R:TRule;tmWC:TWinControl):Integer;
var
 i,j,l,j1,j2,j3 : Integer;
 tmP,tmP1,tmP2,tmP3 : TRzPanel;
begin
 //2
 tmP:=STDIClass.AddRzPanel(20,1,40,tmWC.Width,
  tmWC,0,alTop,clCream,bvNone,bvNone,bsNone,'');
 //!!!
 tmP.AutoSize:=True;
 //3
 STDIClass.AddRzPanel(1,1,40,50,
  tmP,0,alLeft,$00A0FEFE,bvNone,bvNone,bsSingle,'ID');
 STDIClass.AddRzPanel(1,51,40,25,
  tmP,0,alLeft,$00A0FEFE,bvNone,bvNone,bsSingle,'CF');
 STDIClass.AddRzPanel(1,76,40,50,
  tmP,0,alLeft,$00A0FEFE,bvNone,bvNone,bsSingle,'Priority');

 l:= TRzPanel(tmP.Controls[tmP.ControlCount-1]).Left+
  TRzPanel(tmP.Controls[tmP.ControlCount-1]).Width;

 HeaderWidths.Clear;
 //conditions
 for i := 0 to R.Conditions.Count-1 do
  begin
   j:=TCondition(R.Conditions.Items[i]).Fact.Slots.Count;
   //4
   tmP1:=STDIClass.AddRzPanel(1,l,40,j*70,
    tmP,0,alLeft,clCream,bvNone,bvNone,bsNone,'');

   l:= TRzPanel(tmP.Controls[tmP.ControlCount-1]).Left+
    TRzPanel(tmP.Controls[tmP.ControlCount-1]).Width;
   //5
   tmP3:=STDIClass.AddRzPanel(1,1,20,j*70,
    tmP1,0,alTop,clMoneyGreen,bvNone,bvNone,bsSingle,
     TCondition(R.Conditions.Items[i]).Fact.Name
      );
{    j2:=Length(TCondition(R.Conditions.Items[i]).Fact.Name)*7;
     if j2>70 then
      begin
       j2:=140;
       j3:=j2-70;
       tmP3.Parent.Parent.Width:=tmP3.Parent.Parent.Width+j3;  //1
       tmP3.Parent.Width:=tmP3.Parent.Width+j3;  //2
       tmP3.Width:=tmP3.Width+j3;     //6
      end; }

   //6
   tmP2:=STDIClass.AddRzPanel(1,1,20,tmP3.Width,
    tmP1,0,alClient,clCream,bvNone,bvNone,bsNone,
     ''
      );

   for j1 := 0 to TCondition(R.Conditions.Items[i]).Fact.Slots.Count-1 do
    begin

     j2:=Length(TSlot(TCondition(R.Conditions.Items[i]).Fact.Slots.Items[j1]).Name)*7;
     if j2>70 then
      begin
       j2:=140;
       j3:=j2-70;
       tmP2.Parent.Parent.Parent.Width:=tmP2.Parent.Parent.Parent.Width+j3;  //1
       tmP2.Parent.Parent.Width:=tmP2.Parent.Parent.Width+j3;  //2
       tmP2.Parent.Width:=tmP2.Parent.Width+j3;  //4
       tmP2.Width:=tmP2.Width+j3;     //6
      end
     else j2:=70;
     HeaderWidths.Add(IntToStr(HeaderWidths.Count)+'='+IntToStr(j2));

     if tmP2.ControlCount=0 then j3:=j2
      else
       j3:=tmP2.Controls[tmP2.ControlCount-1].Left+tmP2.Controls[tmP2.ControlCount-1].Width;

     tmP3:=STDIClass.AddRzPanel(1,j3,20,j2,
      tmP2,0,alLeft,clMoneyGreen,bvNone,bvNone,bsSingle,
       TSlot(TCondition(R.Conditions.Items[i]).Fact.Slots.Items[j1]).Name
//       IntToStr(j1)
        );
    end;
  end;

 //actions
 for i := 0 to R.Actions.Count-1 do
  begin
   j:=TRAction(R.Actions.Items[i]).Fact.Slots.Count;
   tmP1:=STDIClass.AddRzPanel(1,l,40,j*70,
    tmP,0,alLeft,clCream,bvNone,bvNone,bsNone,'');
   l:= TRzPanel(tmP.Controls[tmP.ControlCount-1]).Left+
    TRzPanel(tmP.Controls[tmP.ControlCount-1]).Width;

   tmp3:=STDIClass.AddRzPanel(1,1,20,j*70,
    tmP1,0,alTop,$00D9DDFD,bvNone,bvNone,bsSingle,
     TRAction(R.Actions.Items[i]).Fact.Name
      );

   tmP2:=STDIClass.AddRzPanel(1,1,20,j*70,
    tmP1,0,alClient,clCream,bvNone,bvNone,bsNone,
     ''
      );
   for j1 := 0 to TRAction(R.Actions.Items[i]).Fact.Slots.Count-1 do
    begin
     j2:=Length(TSlot(TRAction(R.Actions.Items[i]).Fact.Slots.Items[j1]).Name)*7;
     if j2>70 then
      begin
       j2:=140;
       j3:=j2-70;
       tmP2.Parent.Parent.Parent.Width:=tmP2.Parent.Parent.Parent.Width+j3;  //1
       tmP2.Parent.Parent.Width:=tmP2.Parent.Parent.Width+j3;
       tmP2.Parent.Width:=tmP2.Parent.Width+j3;
       tmP2.Width:=tmP2.Width+j3;
      end
     else j2:=70;
     HeaderWidths.Add(IntToStr(HeaderWidths.Count)+'='+IntToStr(j2));
     if tmP2.ControlCount=0 then j3:=j2
      else
       j3:=tmP2.Controls[tmP2.ControlCount-1].Left+tmP2.Controls[tmP2.ControlCount-1].Width;

     tmp3:=STDIClass.AddRzPanel(1,j3,20,j2,
      tmP2,0,alLeft,$00D9DDFD,bvNone,bvNone,bsSingle,
       TSlot(TRAction(R.Actions.Items[i]).Fact.Slots.Items[j1]).Name
//       IntToStr(j1)
        );
    end;
  end;
end;
//-------------
Function ShowHeaderV3(R:TRule;tmWC:TWinControl):Integer;
var
 i,j,l,j1,j2,j3,j4,j5 : Integer;
 tmP,tmP1,tmP2,tmP3 : TRzPanel;
begin
 //2
 tmP:=STDIClass.AddRzPanel(20,1,60,140,
  tmWC,0,alLeft,clCream,bvNone,bvNone,bsNone,'');
 //!!!
 tmP.AutoSize:=True;
 //3
 STDIClass.AddRzPanel(1,1,20,50,
  tmP,0,alTop,$00A0FEFE,bvNone,bvNone,bsSingle,'ID');
 STDIClass.AddRzPanel(21,1,20,50,
  tmP,0,alTop,$00A0FEFE,bvNone,bvNone,bsSingle,'CF');
 STDIClass.AddRzPanel(41,1,20,50,
  tmP,0,alTop,$00A0FEFE,bvNone,bvNone,bsSingle,'Priority');

 HeaderWidths.Clear;
 HeaderWidths.Add('0=70');
 HeaderWidths.Add('1=70');

 //conditions
 for i := 0 to R.Conditions.Count-1 do
  begin
   j:=TCondition(R.Conditions.Items[i]).Fact.Slots.Count;
   j1:=tmP.Controls[tmP.ControlCount-1].Top+tmP.Controls[tmP.ControlCount-1].Height;
   tmP.Parent.Height:=tmP.Parent.Height+j*20;
   tmP.Height:=tmP.Height+j*20;
   //4
   tmP1:=STDIClass.AddRzPanel(j1,1,j*20,50,
    tmP,0,alTop,clCream,bvNone,bvNone,bsNone,'');
   //!!!
//   tmP1.AutoSize:=True;

   j4:=StrToInt(HeaderWidths.ValueFromIndex[0]);
   //5
   tmP3:=STDIClass.AddRzPanel(1,1,20,j4,
    tmP1,0,alLeft,clMoneyGreen,bvNone,bvNone,bsSingle,
     TCondition(R.Conditions.Items[i]).Fact.Name
      );
   j2:=Length(TCondition(R.Conditions.Items[i]).Fact.Name)*7;
   if j2>j4 then
    begin
     j3:=j2-j4;
//     tmP3.Parent.Parent.Parent.Width:=tmP3.Parent.Parent.Parent.Width+j3;  //1
     tmP3.Parent.Parent.Width:=tmP3.Parent.Parent.Width+j3;  //2
//     tmP3.Parent.Width:=tmP3.Parent.Width+j3;  //4
     tmP3.Width:=tmP3.Width+j3;     //5
     HeaderWidths.ValueFromIndex[0]:=IntToStr(j2);
     for j5 := 3 to tmP3.Parent.Parent.ComponentCount-2 do
       TRzPanel(TRzPanel(tmP3.Parent.Parent.Components[j5]).
        Components[0]).Width:=j2;
     end
   else j2:=j4;

   //6
   tmP2:=STDIClass.AddRzPanel(1,tmP3.Height,20,60,
    tmP1,0,alClient,clCream,bvNone,bvNone,bsNone,
     ''
      );
   //!!!
//   tmP2.AutoSize:= true;

   for j1 := 0 to TCondition(R.Conditions.Items[i]).Fact.Slots.Count-1 do
    begin
//     tmP.Height:=tmP.Height+20;
     j4:=StrToInt(HeaderWidths.ValueFromIndex[1]);
     j2:=Length(TSlot(TCondition(R.Conditions.Items[i]).Fact.Slots.Items[j1]).Name)*7;
     if j2>j4 then
      begin
       j3:=j2-j4;
//       tmP2.Parent.Parent.Parent.Width:=tmP2.Parent.Parent.Parent.Width+j3;  //1
       tmP2.Parent.Parent.Width:=tmP2.Parent.Parent.Width+j3;  //2
//       tmP2.Parent.Width:=tmP2.Parent.Width+j3;  //4
//       tmP2.Width:=tmP2.Width+j3;     //6
       HeaderWidths.ValueFromIndex[1]:=IntToStr(j2);
      end;
     tmP3:=STDIClass.AddRzPanel(1,j1*20,20,j2,
      tmP2,0,alTop,clMoneyGreen,bvNone,bvNone,bsSingle,
       TSlot(TCondition(R.Conditions.Items[i]).Fact.Slots.Items[j1]).Name
//       IntToStr(j1)
        );

    end;
  end;

 //actions
 for i := 0 to R.Actions.Count-1 do
  begin
   j:=TRAction(R.Actions.Items[i]).Fact.Slots.Count;
   j1:=tmP.Controls[tmP.ControlCount-1].Top+tmP.Controls[tmP.ControlCount-1].Height;
   tmP.Parent.Height:=tmP.Parent.Height+j*20;
   tmP.Height:=tmP.Height+j*20;
   tmP1:=STDIClass.AddRzPanel(j1,1,j*20,70,
    tmP,0,alTop,clCream,bvNone,bvNone,bsNone,'');
   tmP1.AutoSize:=True;

   j4:=StrToInt(HeaderWidths.ValueFromIndex[0]);
   tmP3:=STDIClass.AddRzPanel(1,1,20,j4,
    tmP1,0,alLeft,$00D9DDFD,bvNone,bvNone,bsSingle,
     TRAction(R.Actions.Items[i]).Fact.Name
      );
   //!!!
//   tmP3.AutoSize:= true;

   j2:=Length(TRAction(R.Actions.Items[i]).Fact.Name)*7;
   if j2>j4 then
    begin
     j3:=j2-j4;
//     tmP3.Parent.Parent.Parent.Width:=tmP3.Parent.Parent.Parent.Width+j3;  //1
     tmP3.Parent.Parent.Width:=tmP3.Parent.Parent.Width+j3;  //2
//     tmP3.Parent.Width:=tmP3.Parent.Width+j3;  //4
     tmP3.Width:=tmP3.Width+j3;     //5
     HeaderWidths.ValueFromIndex[0]:=IntToStr(j2);
     for j5 := 3 to tmP3.Parent.Parent.ComponentCount-2 do
       TRzPanel(TRzPanel(tmP3.Parent.Parent.Components[j5]).
        Components[0]).Width:=j2;
    end
   else j2:=j4;

   tmP2:=STDIClass.AddRzPanel(1,tmP3.Height,20,60,
    tmP1,0,alClient,clCream,bvNone,bvNone,bsNone,
     ''
      );
   //!!!
   tmP2.AutoSize:= true;

   for j1 := 0 to TRAction(R.Actions.Items[i]).Fact.Slots.Count-1 do
    begin
     j4:=StrToInt(HeaderWidths.ValueFromIndex[1]);
     j2:=Length(TSlot(TRAction(R.Actions.Items[i]).Fact.Slots.Items[j1]).Name)*7;
     if j2>j4 then
      begin
       j3:=j2-j4;
//       tmP2.Parent.Parent.Parent.Width:=tmP2.Parent.Parent.Parent.Width+j3;  //1
       tmP2.Parent.Parent.Width:=tmP2.Parent.Parent.Width+j3;
//       tmP2.Parent.Width:=tmP2.Parent.Width+j3;
//       tmP2.Width:=tmP2.Width+j3;
       HeaderWidths.ValueFromIndex[1]:=IntToStr(j2);
      end;

     tmp3:=STDIClass.AddRzPanel(1,j1*20,20,j2,
      tmP2,0,alTop,$00D9DDFD,bvNone,bvNone,bsSingle,
       TSlot(TRAction(R.Actions.Items[i]).Fact.Slots.Items[j1]).Name
//       IntToStr(j1)
        );
    end;
// tmP2.AutoSize:= true;

  end;
end;
//------
var
 i,j,j1,j2,j3,T,L,tmH,tmW,j4,j5 : Integer;
 tmTs : TStringList;
 s : string;
 tmP,tmP1,tmP2,tmP3,tmP4 : TRzPanel;
 tmRule : TRule;
begin
 tmWC.Visible:=False;
 STDIClass.ReleaseObjects(tmWC);
 tmTs:=TStringList.Create;

 //groupping rules
 for i:=0 to Rules.Count-1 do
   tmTs.Add(IntToStr(IndexOfGRule(TRule(Rules.Items[i])))+
    '='+IntToStr(i));
  tmTs.Sort;


  prP:=STDIClass.CreateProgressIndicator(TDTForm,
   IntToStr(tmTs.Count)
    );
  Application.ProcessMessages;

 //show rules
  s:='';
  T:=1; L:=1;
  j3:=0;
  for i:=0 to tmTs.Count-1 do
  begin
    j2:=StrtoInt(tmTs.ValueFromIndex[i]);
    if s<>tmTs.Names[i] then
     begin
      //create table
      s:=tmTs.Names[i];

      j1:=TGRule(GRules.Items[StrToInt(s)]).GetAtomsCnt('ca')+1;
       if tmWC.ControlCount=0 then T:=1
        else T:=tmWC.Controls[tmWC.ControlCount-1].Top+
          tmWC.Controls[tmWC.ControlCount-1].Height;

      //1
      tmP:=STDIClass.AddRzPanel(T,L,60,(j1*70),
       tmWC,0,alTop,clCream,bvNone,bvNone,bsSingle,'');
      tmP.AlignWithMargins:=True;

      STDIClass.AddLabel(tmP,'Rules for Rule template: '+
       TGRule(GRules.Items[StrToInt(s)]).ID
      //MainForm.LS('Name:')
       ,1,1,250,clNavy,clNone,[]);
      TLabel(tmP.Components[tmP.ComponentCount-1]).Align:=alTop;

      if M=0 then ShowHeaderV2(TRule(Rules.Items[j2]),tmP)
       else ShowHeaderV3(TRule(Rules.Items[j2]),tmP);
     end;
    tmRule:=TRule(Rules.Items[j2]);

    j3:=tmP.Controls[tmP.ControlCount-1].Width+
     tmP.Controls[tmP.ControlCount-1].Left;
    if M=0 then tmRule.ShowAsTable(tmP,i*20+61,1,j2)
     else tmRule.ShowAsTableV3(tmP,1,j3,j2);

    if M=0 then  //mode 1: rules to bottom
     begin
      tmH:=0;
      for j := 0 to tmP.ControlCount-1 do
       tmH:=tmH+TRzPanel(tmP.Controls[j]).Height;
      tmP.Height:=tmH+10;

      tmP1:=TRzPanel(tmP.Controls[1]); //headers !!!! 1
      tmW:=0;
      for j := 1 to tmP1.ControlCount-1 do //for each column
       tmW:=tmW+TRzPanel(tmP1.Controls[j]).Width;
     end
     else  //mode 1: rules to right
      begin
       //resizing sections of rule
       tmP1:=TRzPanel(tmP.Controls[1]); //headers !!!! 1
       tmP4:=TRzPanel(tmP.Controls[2]); //data for first rule

       tmH:=0;
       for j := 0 to tmP4.ControlCount-1 do
        if TRzPanel(tmP4.Controls[j]).ControlCount=0 then
         tmH:=tmH+TRzPanel(tmP4.Controls[j]).Height
          else
            for j4 := 0 to TRzPanel(tmP4.Controls[j]).ControlCount-1 do
             tmH:=tmH+TRzPanel(TRzPanel(tmP4.Controls[j]).Controls[j4]).Height;

       tmP.Height:=tmH+20;
       tmP4.Height:=tmH;
       tmP1.Height:=tmH;  //headers
       T:=tmH;

       tmW:=0;
       for j := 1 to tmP.ControlCount-1 do //for each column
        begin
         tmP2:=TRzPanel(TRzPanel(tmP.Controls[j])); //first element
         tmW:=tmW+tmP2.Width;
        end;
       tmP.Width:=tmW+10;
       tmP.Tag:=tmW+10;

       for j := 3 to tmP1.ControlCount-1 do  //process all rule components
        begin
          tmH:=0;
          tmP4:=TRzPanel(TRzPanel(tmP1.Controls[j]).Controls[1]); //slot names section
          for j3 := 0 to tmP4.ControlCount-1 do
           tmH:=tmH+TRzPanel(tmP4.Controls[j3]).Height; //real size
          TRzPanel(tmP1.Controls[j]).Height:=tmH;
        end;
      end;

   prP.Caption:='Please,wait'+' ('+
    IntToStr(Round(100*i/tmTs.Count))
     +'%)';
   Application.ProcessMessages;
  end;

 if M=0 then
  begin
   for i := 0 to tmWC.ControlCount-1 do  //for each grule container
    for j := 1 to TRzPanel(tmWC.Controls[i]).ControlCount-1 do //for each rule container
      begin
       if j=1 then  //header container
        begin
         j5:=0;
         for j1 := 3 to TRzPanel(TRzPanel(tmWC.Controls[i]).Controls[j]).ControlCount-1 do
          begin
           tmP3:=TRzPanel(TRzPanel(TRzPanel(tmWC.Controls[i]).  //rule component
            Controls[j]).Controls[j1]);
           //!!! tmH
           tmP4:=TRzPanel(tmP3.Controls[0]); //rule header block
           if j5=0 then j5:=tmP4.Height else tmP4.Height:=j5;

           j3:=Length(tmP4.Caption)*7;
           j2:= (j3 div tmP4.Width);
           j3:= (j3 mod tmP4.Width);
           if j3>0 then j3:=1 else j3:=0;
           j3:=20*(j2+j3);
           if j3>tmP4.Height then
            begin
             j4:=j3-tmP4.Height;
             tmP3.Parent.Parent.Height:=tmP3.Parent.Parent.Height+j4;
             tmP3.Parent.Height:=tmP3.Parent.Height+j4;
             tmP3.Height:=tmP3.Height+j4;
             tmP4.Height:=j3;
             j5:=j3;
            end
           else j5:=tmP4.Height;
          end;
         //change header heigth
         tmWC.Controls[i]
        end
       else  //rule container
        begin
         //change rule heigth
         tmP3:=TRzPanel(TRzPanel(TRzPanel(tmWC.Controls[i]).  //rule component
          Controls[j]).Controls[3]);
         j4:=0;
         for j5 := 0 to tmP3.ControlCount-1 do
          begin
           j3:=Length(TRzPanel(tmP3.Controls[j5]).Caption)*7;
           j2:= (j3 div tmP4.Width);
           j3:= (j3 mod tmP4.Width);
           if j3>0 then j3:=1 else j3:=0;
           j3:=20*(j2+j3);
           if j3>j4 then j4:=j3;
          end;
        j5:=abs(tmP3.Parent.Height-j4);
         if tmP3.Parent.Height>j4 then
          tmP3.Parent.Parent.Height:=tmP3.Parent.Parent.Height-j5
           else tmP3.Parent.Parent.Height:=tmP3.Parent.Parent.Height+j5;
         tmP3.Parent.Height:=j4;
        end;
      end;
  end;

 prP.Free;

 if M=0 then
  begin
   i:=tmH;
   j:=4500;
  end
 else
  begin
   j:=0;
   for i := 0 to tmWC.ControlCount-1 do
    if tmWC.Controls[i].Tag>j then j:=tmWC.Controls[i].Tag;

   i:=TRzPanel(tmWC.Controls[tmWC.ControlCount-1]).Top+
    TRzPanel(tmWC.Controls[tmWC.ControlCount-1]).Height;

   if TDTForm.Width>j then j:=TDTForm.Width;
   if TDTForm.Height>i then i:=TDTForm.Height;
  end;

 STDIClass.AddRzBtn(tmWC,'1',i,j,10);
 tmWC.ClientWidth:=j;

 tmWC.Visible:=True;

 TScrollBox(tmWC).VertScrollBar.Position:=0;
 TScrollBox(tmWC).HorzScrollBar.Position:=0;
end;
//--------------------------------------------------------------
Function TKnowledgeBase.ShowEditTempPanelForGRule
 (tmWC:TWinControl;T1:TTemplate;delBtnF:Boolean; T,L:Integer):TRzPanel;
var
  tmP : TRzPanel;
  s : string;
  tmIm : TImage;
  tmCB : TRzComboBox;

  i : Integer;
begin
 try
  tmP:=STDIClass.AddRzPanel(T,L,20,500,
   tmWC,0,alTop,clCream,bvNone,bvNone,bsNone,'');
  tmP.BorderWidth:=2;
  tmP.Margins.Top:=0;
  tmP.Margins.Bottom:=1;
  tmP.AlignWithMargins:=True;

  //combo for temp name
  STDIClass.AddRzCombo(tmP,1,20,230,''); //text from template
  tmCB:=
   TRzComboBox(tmP.Components[tmP.ComponentCount-1]);

  for i := 0 to Templates.Count-1 do
   begin
    s:=TTemplate(Templates.Items[i]).Description;
    if s<>'' then s:=' ('+s+')';
    //!!!!
    tmCB.Items.AddObject(
     TTemplate(Templates.Items[i]).Name+s,
      TTemplate(Templates.Items[i])
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

  if tmCB.ItemIndex=-1 then tmCB.ItemIndex:=0;

  if delBtnF then
   begin
     //del icon
     tmIm:=STDIClass.AddImage(tmP,T,Round(tmWC.Width/2)+150,5,5,
      MainForm.ImageList1,alRight);
     tmIm.AlignWithMargins:=True;
     tmIm.Margins.Top:=6;
     tmIm.Hint:=MainForm.LS('Delete');
     tmIm.Cursor:=crHandPoint;
//     tmIm.OnClick:=DelRuleComponentImageClick;
    end;
   tmP.AutoSize:=True;
  Result:=tmP;
 except
  Result:=nil;
 end;
end;
//---------------------------------------------------------------------------
function TTask.ShowDSPResults(WC:TWinControl;T:Integer):Integer;
var
 i,j,c : Integer;
 tmP,tmP1 : TRzPanel;
 tmS : string;
 tmTs : TStringList;
begin
// WC.Visible:=False;
 try
 if T=1 then STDIClass.ReleaseObjects(WC);

 for i := 0 to DSST.Results.Count-1 do
  begin

   tmP:=STDIClass.AddRzPanel(T,1,20,500,
    WC,i,alTop,clCream,bvNone,bvNone,bsNone,DSST.Results.Strings[i]+':');
   T:=tmP.Top+tmP.Height;
   tmTs:=TStringList(DSST.Results.Objects[i]);

   for j := 0 to tmTs.Count-1 do
    begin
     tmP:=STDIClass.AddRzPanel(T,1,20,500,
      WC,j,alTop,clCream,bvNone,bvNone,bsNone,'');
     T:=tmP.Top+tmP.Height;

     STDIClass.AddRzPanel(1,1,10,30,
      tmP,j,alLeft,clCream,bvNone,bvNone,bsSingle,
       IntToStr(j+1));

     tmP1:=STDIClass.AddRzPanel(1,100,10,45,
      tmP,j,alLeft,clCream,bvNone,bvNone,bsSingle,
       '['+tmTs.Names[j]+']');
     tmP1.Font.Style:=[fsBold];
     tmP1.Font.Color:=cl3DDkShadow;
     tmP1.Tag:=j;
  //   tmP1.OnClick:=ResultPanelClick;
  //   tmP1.Cursor:=crHandPoint;

     c:=K1.IndexOfFactByID(tmTs.Names[j]);
     if c=-1 then tmS:=MainForm.LS('no data')
      else
       begin
        tmS:=TFact(K1.Facts.Items[c]).Name;
       end;

     tmP1:=STDIClass.AddRzPanel(1,100,10,45,
      tmP,j,alClient,clCream,bvNone,bvNone,bsSingle,
       tmS);
     tmP1.Font.Style:=[fsBold];
     tmP1.Tag:=j;
     tmP1.Height:=20*(((Length(tmS)*8) div 80)+1);
      if tmP.Height<tmP1.Height then tmP.Height:=tmP1.Height;

  //   tmP1.OnClick:=ResultPanelClick;
  //   tmP1.Cursor:=crHandPoint;
     //on click

     tmP1:=STDIClass.AddRzPanel(1,500,10,90,
      tmP,i,alRight,clCream,bvNone,bvNone,bsSingle,
       tmTs.ValueFromIndex[j]);
     tmP1.Font.Style:=[fsBold];
  //   tmP1.Font.Color:=clWhite;
     tmP1.Color:=CRPManager.GetColorForUResultsPublication(
      StrToFloat(
       tmTs.ValueFromIndex[j]),1);
     tmP1.Tag:=j;
  //   tmP1.OnClick:=ResultPanelClick;
  //   tmP1.Cursor:=crHandPoint;
   end;
 tmP:=STDIClass.AddRzPanel(T,1,100,500,
  WC,i,alTop,clCream,bvNone,bvNone,bsNone,
   '? ?????????? ?????????? ?????????? ?? ?????? ? ?????? ??????????? ???? ????????, ??? ???????????? '+
    tmTs.Names[0]
     +' ???????? ???????? ????????????????, ?????? ??? ??? ??????????? ????? ???? ????????? ?'
     +' ?????????? ???????? (?? ???? ????????? ????? ??????? ???????? ??????). ?'
     +' ???????????? '+tmTs.Names[tmTs.Count-1]
     +' ????????? ????? ? ?????? ???????????? (?? ???? ????????? ????? ?????? ??????)');
  end;
 except

 end;
// WC.Visible:=True;
end;
//------------------------------------------------------------------------
Function TTask.DataPreporationForDSP:string;
function GetScaleForDSP(v:string):string;
var
 tmTs : TStringList;
 tmTs1 : TStringList;
 i : Integer;
begin
 tmTs:=TStringList.Create;
 tmTs1:=TStringList.Create;
 tmTs.Delimiter:=';';
 tmTs.DelimitedText:=
  StringReplace(v,' ','_',[rfReplaceAll]);
 for i := 0 to tmTs.Count-1 do
  tmTs1.Add(tmTs.Strings[i]+'='+IntToStr(i+1));
 Result:=tmTs1.Text;
end;

var
 i,c : Integer;
 T : TTemplate;
 tmF : TFact;
 s : string;
 tmTs : TStringList;
 tmScales : TStringList;
begin
try
 DSST:=TMCTask.Create;
 DSST.Init;

 //load criteria (parameters)
 for i := 0 to F1.Slots.Count-1 do
  DSST.C.Add(TSlot(F1.Slots.Items[i]).Name);
 DSST.C.Add('????????');

 //load experts
 DSST.E.Add(Application.Title);

 //load scales
 T:=TTemplate.Create;
 T.Init;
 i:=K1.IndexOfTemplate(F1);
 if i>-1 then
  T:=K1.Templates[i];
 tmScales:=TStringList.Create;

 for i := 0 to T.Slots.Count-1 do
  begin
   tmTs:=TStringList.Create;
   tmTs.Text:=GetScaleForDSP(TSlot(T.Slots.Items[i]).Value);
   tmScales.AddObject(TSlot(T.Slots.Items[i]).Name,tmTs); //scales char_value=int_value
   tmTs:=TStringList.Create;
//!!!!!
//   for c := tmScales.Count-1 downto 0 do
   for c := 0 to tmScales.Count-1 do
    tmTs.Add(IntToStr(c+1));
   DSST.S.AddObject(TSlot(T.Slots.Items[i]).Name,tmTs);
  end;
 //for sim
 tmTs:=TStringList.Create;
 for i := 100 downto 0 do
  tmTs.Add(FloatToStr(i/100));
 DSST.S.AddObject(MainForm.LS('Similarity'),tmTs);

 //load alternatives (cases) and marks
 for i := 0 to CBRPResults.Count-1 do
  begin
   DSST.A.Add(CBRPResults.Names[i]);
   tmTs:=TStringList.Create;
   c:=K1.IndexOfFactByID(CBRPResults.Names[i]);
   if c>-1 then
    begin
     tmF:=TFact(K1.Facts[c]);
     for c := 0 to tmF.Slots.Count-1 do
      begin
       s:=TStringList(tmScales.Objects[c]).Values[
        Trim(TSlot(tmF.Slots.Items[c]).Value)
         ];
         if s='' then s:='0';

       tmTs.Add(
        TSlot(tmF.Slots.Items[c]).Name+'='+s
         );
      end;
     tmTs.Add(MainForm.LS('Similarity')+'='+CBRPResults.ValueFromIndex[i]);
    end;
   DSST.Marks.AddObject(CBRPResults.Names[i],tmTs);
  end;
 Result:='';
except
 Result:='-1';
end;
end;
//---------------------------------------------------------------------------
Function TKnowledgeBase.GetPkgIDByName(Lst:TStringList;Name:string):string;
var
 i : Integer;
begin
 Result:='';
 for i := 0 to Lst.Count-1 do
  if Lst.ValueFromIndex[i]=Name then
   begin
    Result:=Lst.Names[i];
    Break;
   end;
end;
//---------------------------------------------------------------------------
Function TKnowledgeBase.CopyPkg(P1:TTmObj; var P2:TTmObj):Integer;
begin
 P2:=TTmObj.Create;
 P2.ID:=P1.ID;
 P2.Name:=P1.Name;
 P2.ID_Root:=P1.ID_Root;
 P2.ID2:=P1.ID2;
end;
//---------------------------------------------------------------------------
Function TKnowledgeBase.GetRulesByGRule(GR:TGRule;PkgID:string):string;
var
 s,s1 : string;
 i,j,c : Integer;
 TR : TRule;
 sF : Integer; //similarity
 tmTs : TStringList;
begin
 tmTs:=TStringList.Create;

 if PkgID='' then
  begin
   //get grule package name
   s:=GRulePackageList.Values[GR.PackageName];
   s1:='';
   //get rule package id
   for i := 0 to RulePackageList.Count-1 do
    if RulePackageList.ValueFromIndex[i]=s then
     begin
      s1:=RulePackageList.Names[i];
      Break;
     end;
   end
  else
   begin
    s1:=PkgID;
   end;
   //find of relevant rule
   for i := 0 to Rules.Count-1 do
    if (TRule(Rules.Items[i]).PackageName=s1) then
     begin
      TR:=TRule(Rules.Items[i]);
//      if (TR.Actions.Count=GR.Actions.Count)and
//       (TR.Conditions.Count=GR.Conditions.Count) then
//         begin
          SF:=0;
          for j := 0 to TR.Conditions.Count-1 do
           if GR.IndexOfComponentByName(0,
            TCondition(TR.Conditions.Items[j]).Fact.ShortName)=-1 then
             begin
              sF:=0;
              Break;
             end
            else sF:=1;
            if SF=1 then
            for j := 0 to TR.Actions.Count-1 do
             if GR.IndexOfComponentByName(1,
              TRAction(TR.Actions.Items[j]).Fact.ShortName)=-1 then
               begin
                sF:=0;
                Break;
               end;
{          for j := 0 to TR.Conditions.Count-1 do
           if TCondition(TR.Conditions.Items[j]).Fact.ShortName<>
            TTemplate(GR.Conditions.Items[j]).ShortName then
             begin
              sF:=0;
              Break;
             end
            else sF:=1;
            if SF=1 then
              for j := 0 to TR.Actions.Count-1 do
               if TRAction(TR.Actions.Items[j]).Fact.ShortName<>
                TTemplate(GR.Actions.Items[j]).ShortName then
                 begin
                  sF:=0;
                  Break;
                 end;
           }

           if sF=1 then
            begin
             tmTs.Add(TR.ID+'='+IntToStr(i));
            end;
//         end;
     end;
 Result:=tmTs.Text;
end;
//---------------------------------------------------------------------------
Function TKnowledgeBase.IndexesOfRUG(GR:TGRule):TStringList;
var
 s,s1 : string;
 i,j,c : Integer;
 TR : TRule;
 sF : Integer; //similarity
begin
 Result:=TStringList.Create;
 //get grule package name
 s:=GRulePackageList.Values[GR.PackageName];
 s1:='';
 //get rule package id
 for i := 0 to RulePackageList.Count-1 do
  if RulePackageList.ValueFromIndex[i]=s then
   begin
    s1:=RulePackageList.Names[i];
    Break;
   end;
 //find of relevant rule
 for i := 0 to Rules.Count-1 do
  if (TRule(Rules.Items[i]).PackageName=s1) then
   begin
    TR:=TRule(Rules.Items[i]);
    if (TR.Actions.Count=GR.Actions.Count)and
     (TR.Conditions.Count=GR.Conditions.Count) then
       begin
        SF:=0;
        for j := 0 to TR.Conditions.Count-1 do
         if TCondition(TR.Conditions.Items[j]).Fact.ShortName<>
          TTemplate(GR.Conditions.Items[j]).ShortName then
           begin
            sF:=0;
            Break;
           end
          else sF:=1;
          if SF=1 then
            for j := 0 to TR.Actions.Count-1 do
             if TRAction(TR.Actions.Items[j]).Fact.ShortName<>
              TTemplate(GR.Actions.Items[j]).ShortName then
               begin
                sF:=0;
                Break;
               end;

         if sF=1 then
          begin
           Result.AddObject('['+TR.ID+'] '+TR.Name,TR);
//           Break;
          end;
       end;
   end;
end;
//---------------------------------------------------------------------------
Function TKnowledgeBase.IndexOfRuleByGRule(GR:TGRule):Integer;
var
 s,s1 : string;
 i,j,c : Integer;
 TR : TRule;
 sF : Integer; //similarity
begin
 Result:=-1;
 //get grule package name
 s:=GRulePackageList.Values[GR.PackageName];
 s1:='';
 //get rule package id
 for i := 0 to RulePackageList.Count-1 do
  if RulePackageList.ValueFromIndex[i]=s then
   begin
    s1:=RulePackageList.Names[i];
    Break;
   end;
 //find of relevant rule
 for i := 0 to Rules.Count-1 do
  if (TRule(Rules.Items[i]).PackageName=s1) then
   begin
    TR:=TRule(Rules.Items[i]);
    if (TR.Actions.Count=GR.Actions.Count)and
     (TR.Conditions.Count=GR.Conditions.Count) then
       begin
        SF:=0;
        for j := 0 to TR.Conditions.Count-1 do
         if TCondition(TR.Conditions.Items[j]).Fact.ShortName<>
          TTemplate(GR.Conditions.Items[j]).ShortName then
           begin
            sF:=0;
            Break;
           end
          else sF:=1;
          if SF=1 then
            for j := 0 to TR.Actions.Count-1 do
             if TRAction(TR.Actions.Items[j]).Fact.ShortName<>
              TTemplate(GR.Actions.Items[j]).ShortName then
               begin
                sF:=0;
                Break;
               end;

         if sF=1 then
          begin
           Result:=i;
           Break;
          end;
       end;
   end;
end;
//---------------------------------------------------------------------------
Function TKnowledgeBase.SortPackages;
var
 i,j : Integer;
begin
 //sort
 for i := 0 to TempPackageList.Count-2 do
 for j := 0 to TempPackageList.Count-2 do
  if TempPackageList.ValueFromIndex[j]>
   TempPackageList.ValueFromIndex[j+1] then
    TempPackageList.Exchange(j,j+1);
 for i := 0 to FactPackageList.Count-2 do
 for j := 0 to FactPackageList.Count-2 do
  if FactPackageList.ValueFromIndex[j]>
   FactPackageList.ValueFromIndex[j+1] then
    FactPackageList.Exchange(j,j+1);
 for i := 0 to GRulePackageList.Count-2 do
 for j := 0 to GRulePackageList.Count-2 do
  if GRulePackageList.ValueFromIndex[j]>
   GRulePackageList.ValueFromIndex[j+1] then
    GRulePackageList.Exchange(j,j+1);
 for i := 0 to RulePackageList.Count-2 do
 for j := 0 to RulePackageList.Count-2 do
  if RulePackageList.ValueFromIndex[j]>
   RulePackageList.ValueFromIndex[j+1] then
    RulePackageList.Exchange(j,j+1);
end;
//----------------------------------------------------------------------------
Function TKnowledgeBase.SaveToMDLFile(fName:String):Integer;
Function GetGUID:string;
var
 i,j : Integer;
begin
 Result:='';
 Randomize;
 for i := 0 to 11 do
  begin
   Result:=Result+IntToHex(Random(15),1);
  end;
end;

var
 tmTs,tmTs1,tmTs2 : TStringList;
 i,j,k,c,c1,currPosition : Integer;
 tmT : TTemplate;
 s1,s2,s3 : string;
begin
 tmTs:=TStringList.Create;
 tmTs1:=TStringList.Create;
 tmTs2:=TStringList.Create;
 //load template for MDL
 tmTs.LoadFromFile(ExtractFileDir(Application.ExeName)+'/Dll/101.dlx');
 s1:=''; s2:='';
 currPosition:=200;
 for i := 0 to Templates.Count-1 do
  begin
{
	for index, cls in enumerate(classes):
		target.write('''(object Class "'''+ cls.find('Name').text +'''"
			quid       	"'''+ quids[index] +'''"''')
		for att in cls.find('Slots'):
			target.write('''class_attributes 	(list class_attribute_list
				(object ClassAttribute "'''+ att.find('Name').text +'''"
				quid       	"'''+genUID()+'''")))\n''')

	target.write(')))')
}
   tmT:=TTemplate(Templates.Items[i]);
   tmTs1.Add(tmT.Name+'='+GetGUID);
   s1:=s1+'(object Class "'+tmT.Name+'"'+#10+
    'guid "'+tmTs1.ValueFromIndex[i]+'"';
   s1:=s1+#10+'class_attributes   (list class_attribute_list';
   for j := 0 to tmT.Slots.Count-1 do
    s1:=s1+#10+
     '(object ClassAttribute "'+TSlot(tmT.Slots.Items[j]).Name+'"'+#10+
     'guid "'+GetGUID+'")';
   s1:=s1+'))';
//   s1:=s1+#10+')))'+#10;
   s1:=s1+#10;
   //for view section
   if s2<>'' then s2:=s2+#10;
   s2:=s2+'(object ClassView "Class" "Logical View::'
   +tmT.Name+'" @'+IntToStr(i+1)+#10+
				'ShowCompartmentStereotypes 	TRUE'+#10+
				'IncludeAttribute 	TRUE'+#10+
				'IncludeOperation 	TRUE'+#10+
				'location   	('+IntToStr(currPosition)+','+IntToStr(currPosition)+')'+#10+
				'font       	(object Font'+#10+
					'size       	10'+#10+
					'face       	"Arial"'+#10+
					'charSet    	204'+#10+
					'bold       	FALSE'+#10+
					'italics    	FALSE'+#10+
					'underline  	FALSE'+#10+
					'strike     	FALSE'+#10+
					'color      	0'+#10+
					'default_color 	TRUE)'+#10+
				'label      	(object ItemLabel'+#10+
					'Parent_View 	@1'+#10+
					'location   	('+IntToStr(currPosition-117)+','+IntToStr(currPosition-81)+')'+#10+
					'fill_color 	13434879'+#10+
					'nlines     	1'+#10+
					'max_width  	234'+#10+
					'justify    	0'+#10+
					'label      	"'+tmT.Name+'")'+#10+
				'icon_style 	"Icon"'+#10+
				'line_color 	3342489'+#10+
				'fill_color 	13434879'+#10+
				'quidu      	"'+tmTs1.Strings[i]+'"'+#10+
				'compartment 	(object Compartment'+#10+
					'Parent_View 	@'+IntToStr(i+1)+''+#10+
					'location   	('+IntToStr(currPosition-117)+','+IntToStr(currPosition-20)+')'+#10+
					'font       	(object Font'+#10+
					'size       	10'+#10+
					'face       	"Arial"'+#10+
					'charSet    	204'+#10+
					'bold       	FALSE'+#10+
					'italics    	FALSE'+#10+
					'underline  	FALSE'+#10+
					'strike     	FALSE'+#10+
					'color      	0'+#10+
					'default_color 	TRUE)'+#10+
					'icon_style 	"Icon"'+#10+
					'fill_color 	13434879'+#10+
					'anchor     	2'+#10+
					'nlines     	2'+#10+
					'max_width  	231'+#10+
					'justify    	1)'+#10+
				'width      	252'+#10+
				'height     	186'+#10+
				'annotation 	8'+#10+
				'autoResize 	TRUE)';
   tmTs2.Add(tmT.Name+'='+IntToStr(i+1));  //references
  end;
 //association
 c:=0;
// c1:=tmTs2.Count-1;
 for i := 0 to GRules.Count-1 do
  begin
   //for each action
   for j := 0 to TGRule(GRules.Items[i]).Actions.Count-1 do
    begin

      for k := 0 to TGRule(GRules.Items[i]).Conditions.Count-1 do
       begin
        s1:=s1+'(object Association "$UNNAMED$'+IntToStr(c)+'"'+#10;
        s3:=GetGUID;
        tmTs1.Add('$UNNAMED$'+IntToStr(c)+'='+s3);
        s1:=s1+
         'quid       	"'+s3+'"'+#10+
         'roles      	(list role_list'+#10+
         '(object Role "'+TGRule(GRules.Items[i]).ID+'_'+IntToStr(j)+'"'+#10+
         'quid       	"'+GetGUID+'"'+#10+
         'label      	"'+TGRule(GRules.Items[i]).ID+'_'+IntToStr(j)+'"'+#10+
         'supplier   	"Logical View::'+TTemplate(TGRule(GRules.Items[i]).Actions.Items[j]).Name+'"'+#10+
         'quidu      	"'+tmTs1.Values[TTemplate(TGRule(GRules.Items[i]).Actions.Items[j]).Name]+'"'+#10+
         'client_cardinality 	(value cardinality "1")'+#10+
         'is_navigable 	TRUE)'+#10+
         '(object Role "$UNNAMED$'+IntToStr(c+1)+'"'+#10;
        s3:=GetGUID;
        tmTs1.Add('$UNNAMED$'+IntToStr(c+1)+'='+s3);
        s1:=s1+
         'quid       	"'+s3+'"'+#10+
         'supplier   	"Logical View::'+TTemplate(TGRule(GRules.Items[i]).Conditions.Items[k]).Name+'"'+#10+
         'quidu      	"'+tmTs1.Values[TTemplate(TGRule(GRules.Items[i]).Conditions.Items[k]).Name]+'")'+#10+
         '(object Role "$UNNAMED$'+IntToStr(c+2)+'"'+#10;
        s3:=GetGUID;
        tmTs1.Add('$UNNAMED$'+IntToStr(c+2)+'='+s3);
        s1:=s1+
         'quid       	"'+s3+'"'+#10+
         'supplier   	"Logical View::'+TTemplate(TGRule(GRules.Items[i]).Actions.Items[j]).Name+'"'+#10+
         'quidu      	"'+tmTs1.Values[TTemplate(TGRule(GRules.Items[i]).Actions.Items[j]).Name]+'")))'+#10;


         s2:=s2+#10+'(object AssociationViewNew "$UNNAMED$'+IntToStr(c)+'" @200'+IntToStr(c)
          +#10+
         ' 		location   	(739, 781)'+#10+
	 '		font       	(object Font'+#10+
	 '		    size       	10'+#10+
	 '		    face       	"Arial"'+#10+
	 '		    charSet    	204'+#10+
	 '		    bold       	FALSE'+#10+
	 '		    italics    	FALSE'+#10+
	 '		    underline  	FALSE'+#10+
	 '		    strike     	FALSE'+#10+
	 '		    color      	0'+#10+
	 '		    default_color 	TRUE)'+#10+
	 '		stereotype 	TRUE'+#10+
	 '		line_color 	3342489'+#10+
         '		quidu      	"'+tmTs1.Values['$UNNAMED$'+IntToStr(c)]+'"'+#10+
         '		roleview_list 	(list RoleViews'+#10+
	 '	       (object RoleView "$UNNAMED$' +IntToStr(c+1)+'" @200'+IntToStr(c+1)
          +#10+
         '		Parent_View 	@200'+IntToStr(c)+#10+
         '		location   	(367, 156)'+#10+
	 '			font       	(object Font'+#10+
	 '			    size       	10'+#10+
	 '			    face       	"Arial"'+#10+
	 '			    charSet    	204'+#10+
	 '			    bold       	FALSE'+#10+
	 '			    italics    	FALSE'+#10+
	 '			    underline  	FALSE'+#10+
	 '			    strike     	FALSE'+#10+
	 '			    color      	0'+#10+
	 '			    default_color 	TRUE)'+#10+
	 '			label      	(object SegLabel @100'+#10+IntToStr(c)+#10+
         '			    Parent_View 	@200'+IntToStr(c+1)+#10+
         '			    location   	(630, 804)'+#10+
	 '			    font       	(object Font'+#10+
	 '			    size       	10'+#10+
	 '			    face       	"Arial"'+#10+
	 '			    charSet    	204'+#10+
	 '			    bold       	FALSE'+#10+
	 '			    italics    	FALSE'+#10+
	 '			    underline  	FALSE'+#10+
	 '			    strike     	FALSE'+#10+
	 '			    color      	0'+#10+
	 '			    default_color 	TRUE)'+#10+
	 '			    hidden     	TRUE'+#10+
	 '			    anchor     	1'+#10+
	 '			    anchor_loc 	1'+#10+
	 '			    nlines     	1'+#10+
	 '			    max_width  	309'+#10+
	 '			    justify    	0'+#10+
	 '			    label      	""'+#10+
	 '			    pctDist    	-0.531011'+#10+
	 '			    height     	64'+#10+
	 '			    orientation 	1)'+#10+
	 '			stereotype 	TRUE'+#10+
	 '			line_color 	3342489'+#10+
	 '			quidu      	"'+tmTs1.Values['$UNNAMED$'+IntToStr(c+1)]+'"'+#10+
         '	       		supplier   	@'+tmTs2.Values[TTemplate(TGRule(GRules.Items[i]).Actions.Items[j]).Name]+#10+
         '		     	vertices   	(list Points'+#10+
	 '			    (739, 781)'+#10+
	 '			    (901, 850))'+#10+
	 '			line_style 	0'+#10+
	 '			label      	(object SegLabel @100'+#10+IntToStr(c+1)+#10+
	 '			    Parent_View 	@200'+IntToStr(c+1)+#10+
         '			    location   	(904, 794)'+#10+
	 '			    font       	(object Font'+#10+
	 '				size       	10'+#10+
	 '				face       	"Arial"'+#10+
	 '				charSet    	204'+#10+
	 '				bold       	FALSE'+#10+
	 '				italics    	FALSE'+#10+
	 '				underline  	FALSE'+#10+
	 '				strike     	FALSE'+#10+
	 '				color      	0'+#10+
	 '				default_color 	TRUE)'+#10+
	 '			    anchor     	2'+#10+
	 '			    anchor_loc 	1'+#10+
	 '			    nlines     	1'+#10+
	 '			    max_width  	15'+#10+
	 '			    justify    	0'+#10+
	 '			    label      	"1"'+#10+
	 '			    pctDist    	0.900000'+#10+
	 '			    height     	54'+#10+
	 '			    orientation 	0))'+#10+
	 '		    (object RoleView "$UNNAMED$'+IntToStr(c+2)+'" @200'+IntToStr(c+2)
          +#10+
         '		   	Parent_View 	@200'+IntToStr(c)+#10+
         '			location   	(367, 156)'+#10+
	 '			stereotype 	TRUE'+#10+
	 '			line_color 	3342489'+#10+
         '		      	quidu      	"'+tmTs1.Values['$UNNAMED$'+IntToStr(c+2)]+'"'+#10+
         '			client     	@200'+IntToStr(c)+#10+
         '			supplier   	@'+tmTs2.Values[TTemplate(TGRule(GRules.Items[i]).Conditions.Items[k]).Name]+#10+
         '		       	vertices   	(list Points'+#10+
	 '			    (739, 781)'+#10+
	 '			    (578, 712))'+#10+
	 '			line_style 	0)))';
         Inc(c,3);
       end;
    end;

  end;

 tmTs.Text:=StringReplace(tmTs.Text,'<PUTYOURCODEHERE_CLASSES>',s1+')))',[rfReplaceAll]);
 tmTs.Text:=StringReplace(tmTs.Text,'<PUTYOURCODEHERE_VIEW>',s2,[rfReplaceAll]);
 tmTs.SaveToFile(fName);
end;
//----------------------------------------------------------------------------
Function TKnowledgeBase.LoadFromUMLFile(fName:String):Integer;
begin
//
end;
//----------------------------------------------------------------------------
Function TKnowledgeBase.LoadFromMDJFile(fName:String):Integer;
const
  capacity=10;
var
  List: TStringList;
  AssociationList: TStringList;
  //nfile: string;
  i, j, r, k, l, position, position1, position2, position3 : Integer;
  s, word, end1, end2,t,t1: string;
  //MyArray: array [0..999] of array [1..2] of string[30];
  FS: TFileStream;
  ObjectClass: Boolean;//???? TRUE ?????? ?? ????? ?????
  ObjectAssociation: Boolean;//???? TRUE ?????? ?? ????? ?????
  FirstObjectAssociation: Boolean;//?????????? ?? ????? ?????? ?????
  RuleInKB: Boolean;//???? True ?????? ??????? ??? ?????????? ? ???? ??????
  p,p1,p2,p3,p4,p5,UMLClass:boolean;
//KnowledgeBase: TKnowledgeBase;
  Template, tMP, tMP1, tMP2: TTemplate;
  Slot: TSlot;
  Rule, Rule1: TGRule;

begin
  ObjectAssociation:=false;
  RuleInKB:=False;
  FirstObjectAssociation:=False;
  FS:=TFileStream.Create(fName, fmOpenRead);
  List:=TStringList.Create;
  List.LoadFromStream(FS);
  AssociationList:=TStringList.Create;
  l:=0;
  p:=false;
  p1:=false;
  p2:=false;
  p3:=false;
  p4:=false;
  p5:=false;
  UMLClass:=false;
  end1:='';
  end2:='';
  //KnowledgeBase := TKnowledgeBase.create;
  //KnowledgeBase.Init;
  //KnowledgeBase.Name := 'NewKB';

  //processing classes
  for i:=0 to List.count-1 do
    begin
      //????? ???????
      s:=List.Strings[i];
      //???? ????? ?????, ?? ????? ??? ???
      position := AnsiPos('"UMLClass"', s);
      if position<>0 then
      begin
       r:=1; //??????? ??????
       UMLClass:=true;
       Template:=TTemplate.Create;
       Template.Init;
       Templates.Add(Template);
//       Template.Name:=Copy(s,Pos('"',s)+9,LastDelimiter('"',s)-1-Pos('"',s));
      end;



      position := AnsiPos('"UMLAttribute"', s);
      if position<>0 then
      begin
       r:=2; //??????? ????????
       Slot:=TSlot.Create;
       Slot.DataType:='String';
       Template.Slots.Add(Slot);
//       Template.Name:=Copy(s,Pos('"',s)+9,LastDelimiter('"',s)-1-Pos('"',s));
      end;

      position1 := AnsiPos('"name"', s);
      if position1<>0 then
      begin
        case r of
         1: begin
//           MyArray[l,2]:=Copy(s,Pos('"',s)+9,LastDelimiter('"',s)-9-Pos('"',s));
           Template.Name:=Copy(s,Pos('"',s)+9,LastDelimiter('"',s)-9-Pos('"',s));
	   Template.PurifyName;
//           Template.Name:=MyArray[l,2];
           Template.ShortName:=Template.ID;
//            Translit.Trans(Template.Name,Translit.FL);
//           Template.Name:=Copy(s,Pos('"',s)+9,LastDelimiter('"',s)-9-Pos('"',s));
//           MyArray[l,1]:=Template.Name;
//           l:=l+1;

         end;
         2: begin
           Slot.Name:=Copy(s,Pos('"',s)+9,LastDelimiter('"',s)-9-Pos('"',s));
           Slot.PurifyName;
           Slot.DataType:='string';
//           Slot.ShortName:=Translit.Trans(Slot.Name,Translit.FL);
         end;
        end;
      end;

      position1 := AnsiPos('"_id":', s);
      if (position1<>0) and (UMLClass=true) then
      begin
        case r of
         1: begin
         if Template.ID='' then
         begin
//         Template.ID:=NewID('T');
//         MyArray[l,1]:=Copy(s,Pos('"',s)+8,LastDelimiter('"',s)-8-Pos('"',s));
//         Template.ID:=MyArray[l,1];
         Template.ID:=Copy(s,Pos('"',s)+8,LastDelimiter('"',s)-8-Pos('"',s));
//         Template.ID:=end1;
         end;
//         Template.ID:=Copy(s,Pos('"',s)+8,LastDelimiter('"',s)-8-Pos('"',s));
        end;
       end;
      end;

    end;  //end analyse classes

 {   if l mod 10=0 then
       begin
        SetLength(MyArray,Length(MyArray)+Capacity);
       end; }

 //processin associations
 for i:=0 to List.count-1 do
  begin
  s:=List.Strings[i];

  position := AnsiPos('"UMLAssociation"', s);
  if position <> 0 Then
    begin
    ObjectAssociation:=True;
    end;

  position := AnsiPos('"end1"', s);
  if (ObjectAssociation=True) and (position <> 0) Then
    begin
    p:=true;
    end;

  position1:=AnsiPos('"reference"',s);
  if (ObjectAssociation=True) and (p=true) and (position1 <> 0) Then
    begin
    p1:=true;
    end;

  position2:=AnsiPos('"$ref"',s);
  if (ObjectAssociation=True) and (p=true) and (p1=true) and (position2 <> 0) Then
    begin
//    end1:='';
    if end1='' then
    begin
    p2:=true;
    end1:=Copy(s,Pos('"',s)+9,LastDelimiter('"',s)-9-Pos('"',s));
    end;
    end;

  position := AnsiPos('"end2"', s);
  if (ObjectAssociation=True) and (p=true) and (p1=true) and (p2=true) and (position <> 0) Then
    begin
    p3:=true;
    end;

  position1:=AnsiPos('"reference"',s);
  if (ObjectAssociation=True) and (p=true) and (p1=true) and (p2=true) and (p3=true) and (position1 <> 0) Then
    begin
    p4:=true;
    end;

  position2:=AnsiPos('"$ref"',s);
  if (ObjectAssociation=True) and (p=true) and (p1=true) and (p2=true) and (p3=true) and (p4=true) and (position2 <> 0) Then
    begin
//    end2:='';
    if end2='' then
    begin
    end2:=Copy(s,Pos('"',s)+9,LastDelimiter('"',s)-9-Pos('"',s));
    p5:=true;
    end;
    end;

 //    if (ObjectAssociation=True) and (p=true) and (p1=true) and (p2=true) and (p3=true) and (p4=true) and (p5=true) then
     if (end1<>'')and (end2<>'') then
      begin  //add grule
          //???? False ?????? ??? ?????? ???????? ?????
//          if FirstObjectAssociation = False then
//          begin
//            FirstObjectAssociation:=True;
     //       for j:=0 to Templates.Count-1 do
     //       begin
     //         tMP:=Template.Create;
     //         tMP:=Templates[j];
              //???? tMP.Name=word ?????? ?? ????? ?????????? ???????????? ??????? ? ????? ? ???????????? ??????? ? ??
             j:=IndexOfTemplateByID(end2);

             if j>-1 then
              begin
                tMP:=Templates.Items[j];
                //KnowledgeBase.GRules.Count>0 ?????? ??????? ??? ???? ? ???? ?????????
                //???? ?? ??????? ? ?????? ?? ??????????, ???? ??, ?? ???? ?? ??????????

                Rule:=nil;
                //add action
                for r:=0 to GRules.Count-1 do
                 begin //find the grule by the action
                  k:=TGRule(GRules.Items[r]).IndexOfActionByID(end2);
                  if k>-1 then
                   begin
                    RuleInKB:=True;
                    Rule:=GRules.Items[r];
                    Break;
                   end;
                 end;

                if RuleInKB=False then
                 begin
                  Rule:=TGRule.Create;
                  Rule.Init;
                  Rule.ID:='G'+IntToStr(GRules.Count);
                  GRules.Add(Rule);
                  Rule.Actions.Add(tMP);
                 end;


               //add condition
               if Rule<>nil then
                begin
                 j:=IndexOfTemplateByID(end1);
                 if j>-1 then
                  begin
                   tMP:=Templates[j];
                   k:=Rule.IndexOfConditionByID(end1);
                   if k=-1 then Rule.Conditions.Add(tMP)
                  end;
                end;

              end;
           // end;

      RuleInKB:=False;
      p:=false;
      p1:=false;
      p2:=false;
      p3:=false;
      p4:=false;
      p5:=false;
      end1:='';
      end2:='';
      ObjectAssociation:=False;
     end;  //end grule
  end;  //end processin associations

//    Result:=KnowledgeBase;

  for i := 0 to Templates.Count-1 do
   begin
    TTemplate(Templates.Items[i]).ID:='T'+IntToStr(i);
    TTemplate(Templates.Items[i]).ShortName:=TTemplate(Templates.Items[i]).Name;
   end;

  for i := 0 to GRules.Count-1 do
   begin
    TGRule(GRules.Items[i]).Name:=TGRule(GRules.Items[i]).GetRUID;
    TGRule(GRules.Items[i]).PurifyName;
    TGRule(GRules.Items[i]).ShortName:=TGRule(GRules.Items[i]).ID;
//     Translit.Trans(TGRule(GRules.Items[i]).Name,Translit.FL);
   end;

  FS.Free;
end;
//-----------------------------------------------------------------------------
procedure TRule.ShowRuleComponentImageClick(Sender: TObject);
begin
 if TImage(Sender).Tag=1 then
 //need to expand
  begin
   MainForm.ImageList3.GetBitmap(0,TImage(Sender).Picture.Bitmap);
   TImage(Sender).Tag:=0;
   TImage(Sender).Parent.Parent.Height:=TImage(Sender).Parent.Tag;
  end
 else
  begin
   MainForm.ImageList3.GetBitmap(1,TImage(Sender).Picture.Bitmap);
   TImage(Sender).Tag:=1;
   TImage(Sender).Parent.Parent.Height:=TImage(Sender).Parent.Parent.Tag;
  end;
end;
//----------------------------------------------------------------
Function TRule.Reverse:TRule;
var
 i : Integer;
 tmR : TRule;
begin
 tmR:=TRule.Create;
 tmR.Init;
 tmR.Name:=Name;
 tmR.ShortName:=ShortName;
 tmR.ID:=ID;
 for i := 0 to Conditions.Count-1 do
  begin //put conditions to actions
   tmR.Actions.Add(Conditions.Items[i]);
   TRAction(tmR.Actions.Items[tmR.Actions.Count-1]).&Operator:='add';
  end;
 for i := 0 to Actions.Count-1 do
  begin //put actions to conditions
   tmR.Conditions.Add(Actions.Items[i]);
   TCondition(tmR.Conditions.Items[tmR.Conditions.Count-1]).&Operator:='and';
  end;
 //!!!!
 Result:=tmR;
end;
//----------------------------------------------------------------
Function TGRule.Reverse:TGRule;
var
 i : Integer;
 tmGR : TGRule;
begin
 tmGR:=TGRule.Create;
 tmGR.Init;
 tmGR.Name:=Name;
 tmGR.ShortName:=ShortName;
 tmGR.ID:=ID;
 for i := 0 to Conditions.Count-1 do
  begin //put conditions to actions
   tmGR.Actions.Add(Conditions.Items[i]);
  end;
 for i := 0 to Actions.Count-1 do
  begin //put actions to conditions
   tmGR.Conditions.Add(Actions.Items[i]);
  end;
 //!!!!
 Result:=tmGR;
end;
//----------------------------------------------------------------
Function TRule.ShowAsPanel(K:TObject;WC:TWinControl;T,j:Integer):Integer;
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

 i:=ShowAsList(1,1,5,5,tmP2,TKnowledgeBase(K));
 tmP2.Height:=20*i+10;
// tmP2.Tag:=i;

 tmIm:=STDIClass.AddImage(tmP2,tmP2.Height-16,1,13,1,
  MainForm.ImageList3,alCustom);
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
//----------------------------------------------------------------------------
Function TKnowledgeBase.Aggregate(StrategesLst:String):integer;
var
  tmTs, tmTs1, tmTs2 : TStringList;
  i, i1, j, k, k1, k_rh, k_gr: Integer;
  f : Extended;
  s, s1: string;
  ObjectAssociation: Boolean;//???? TRUE ?????? ?? ????? ?????
  Template: TTemplate;
  GRule : TGRule;
  Slot: TSlot;
  eF : Boolean; //equl classes flag

  tmTs3 : TStringList;

begin
 try
  tmTs3:=TStringList.Create;
  tmTs3.Text:=StrategesLst;

   //---------------------------------------------------------------
   //--------------------- aggregation -----------------------------
   //Classes with equal names are merged (a common list of attributes is formed)
   //When the names of a class and attribute are equal, the attribute of the same name is removed;
   //the corresponding relationship between classes is created
   for i := 0 to Templates.Count-1 do
    begin
    for j := TTemplate(Templates.Items[i]).Slots.Count-1 downto 0 do
     begin
      Application.ProcessMessages;
      //looking for templates
      s1:=TSlot(TTemplate(Templates.Items[i]).Slots.Items[j]).ShortName;
      k:=IndexOfTemplateByShortName(s1,'');
      if k>-1 then //we can create a grule
       begin
        //remove the slot
        s1:=TSlot(TTemplate(Templates.Items[i]).Slots.Items[j]).Description;
        TTemplate(Templates.Items[i]).Slots.Delete(j);

        //!!! if is the last slot, then add Name slot
        if  TTemplate(Templates.Items[i]).Slots.Count=0 then
         begin
          Slot:=TSlot.Create;
          Slot.Name:='Name';
          Slot.ShortName:='Name';
          Slot.DataType:='String';
          TTemplate(Templates.Items[i]).Slots.Add(Slot);
         end;
        k_gr:=-1;
        //looking for exising grule
        for i1 := 0 to GRules.Count-1 do
         begin
          //by conditions
          k1:=TGRule(GRules.Items[i1]).IndexOfComponentByName(0,TTemplate(Templates.Items[i]).ShortName);
          if k1>-1 then //a rule with our template
           begin
            //by actions
            k1:=TGRule(GRules.Items[i1]).IndexOfComponentByName(1,TTemplate(Templates.Items[k]).ShortName);
            if k1>-1 then //the rule with both components
             begin
              k_gr:=i1;
              TTemplate(TGRule(GRules.Items[i1]).Actions.Items[k1]).Description:=
               TTemplate(TGRule(GRules.Items[i1]).Actions.Items[k1]).Description+'/'+s1;

              Break;
             end;
           end;
         end;

        //if no grule with the same components
        if (k_gr=-1)and
        (TTemplate(Templates.Items[k]).ShortName<>
         TTemplate(Templates.Items[i]).ShortName) then
         begin
          //create a grule
          GRule:=TGRule.Create;
          GRule.Init;
          GRule.ID:=NewID('G');
          GRule.Name:='has_a_'+GRule.ID;
          GRule.ShortName:=GRule.Name;
          GRule.Conditions.Add(TTemplate(Templates.Items[i]));
          GRule.Actions.Add(TTemplate(Templates.Items[k]));
          GRules.Add(GRule);
         end;
       end;
     end;
      //-----------------------------
      prP.Caption:='Post processing 1'+' ('+
       IntToStr(Round(100*i/Templates.Count))
       +'%)';
      Application.ProcessMessages;
      //-----------------------------
    end;


   //----------------- merge similar properties -------------------
  if tmTs3.IndexOf('5')>-1 then
   begin
     for i := 0 to Templates.Count-1 do
      begin
       for i1 := 0 to TTemplate(Templates.Items[i]).Slots.Count-1 do
        for j := TTemplate(Templates.Items[i]).Slots.Count-1 downto i1+1 do
         begin
          eF:=False;
           //processing strings only
           if (TryStrToFloat(TSlot(TTemplate(Templates.Items[i]).Slots.Items[i1]).ShortName,f)=False) then
            k:=LeveDist(TSlot(TTemplate(Templates.Items[i]).Slots.Items[i1]).ShortName,
             TSlot(TTemplate(Templates.Items[i]).Slots.Items[j]).ShortName);

           //processed strings mast have the length  greater then 6
           if (k>0)and(k<3)and(Length(TSlot(TTemplate(Templates.Items[i]).Slots.Items[i1]).ShortName)>6)
            then eF:=True;

          if eF then
           begin   //calasses are equal
             //mark description
             TSlot(TTemplate(Templates.Items[i]).Slots.Items[i1]).Description:=
              TSlot(TTemplate(Templates.Items[i]).Slots.Items[i1]).Description+' / '+
               TSlot(TTemplate(Templates.Items[i]).Slots.Items[j]).Description;
            TTemplate(Templates.Items[i]).Slots.Delete(j);
           end;
         end;
      end;
   end;
   //----------------- merge similar classes ----------------------
  if tmTs3.IndexOf('1')>-1 then
   begin
     for i := 0 to Templates.Count-1 do
      begin
      for j := Templates.Count-1 downto i+1 do
       begin
        eF:=False;
       //--------------------- by name --------------------------------
       k:=-1;
       //processing strings only
       if (TryStrToFloat(TTemplate(Templates.Items[i]).ShortName,f)=False) then
        k:=LeveDist(TTemplate(Templates.Items[i]).ShortName,
         TTemplate(Templates.Items[j]).ShortName);

       //processed strings mast have the length  greater then 3
       if (k>0)and(k<3)and(Length(TTemplate(Templates.Items[i]).ShortName)>3)
        and(TTemplate(Templates.Items[i]).isEqual(TTemplate(Templates.Items[j])))
         then eF:=True;
       //---------------------- by content ------------------------------
       if ((TTemplate(Templates.Items[i]).Slots.Count>1)or
        ((TTemplate(Templates.Items[i]).Slots.Count=1)and
         (TSlot(TTemplate(Templates.Items[i]).Slots.Items[0]).Name<>'Name')))
          and(TTemplate(Templates.Items[i]).isEqual(TTemplate(Templates.Items[j])))
           then eF:=True;
       //'----------------------------------------------------------------

        if eF then
         begin   //calasses are equal
           //mark description
           TTemplate(Templates.Items[i]).Description:=
            TTemplate(Templates.Items[i]).Description+' / '+
             TTemplate(Templates.Items[j]).Description;
            //looking for grules with Templates.Items[j]
            //and replace Templates.Items[j] by Templates.Items[i]
            for i1 := 0 to GRules.Count-1 do
             begin
              //by conditions
              k1:=TGRule(GRules.Items[i1]).IndexOfComponentByName(0,TTemplate(Templates.Items[j]).ShortName);
              if k1>-1 then //a rule with our template
               begin
                TGRule(GRules.Items[i1]).Conditions.Delete(k1);
                k1:=TGRule(GRules.Items[i1]).IndexOfComponentByName(0,TTemplate(Templates.Items[i]).ShortName);
                if k1=-1 then
                 TGRule(GRules.Items[i1]).Conditions.Add(TTemplate(Templates.Items[i]));
               end;
                //by actions
               k1:=TGRule(GRules.Items[i1]).IndexOfComponentByName(1,TTemplate(Templates.Items[j]).ShortName);
               if k1>-1 then //the rule with both components
                begin
                 TGRule(GRules.Items[i1]).Actions.Delete(k1);
                 k1:=TGRule(GRules.Items[i1]).IndexOfComponentByName(1,TTemplate(Templates.Items[i]).ShortName);
                 if k1=-1 then
                  TGRule(GRules.Items[i1]).Actions.Add(TTemplate(Templates.Items[i]));
                end;
             end;
           Templates.Delete(j);
          end;
       end;
        //-----------------------------
        prP.Caption:='Post processing 2'+' ('+
         IntToStr(Round(100*i/Templates.Count))
         +'%)';
        Application.ProcessMessages;
        //-----------------------------
      end;
   end;

   //----------------- merge similar grules (relationships) -------
  if tmTs3.IndexOf('4')>-1 then
   begin
   for i := 0 to GRules.Count-1 do
    for j := GRules.Count-1 downto i+1 do
     begin
      if TGRule(GRules.Items[i]).isEqual(
       TGRule(GRules.Items[j])) then
        begin
         GRules.Delete(j);
        end;
     end;
   end;

   //----------------- merge grules with equal conditions -------
   for i := 0 to GRules.Count-1 do
    for j := GRules.Count-1 downto i+1 do
     begin
      if TGRule(GRules.Items[i]).isEqualByConditions(
       TGRule(GRules.Items[j])) then
        begin
         for i1 := 0 to TGRule(GRules.Items[j]).Actions.Count-1 do
          begin
           k1:=TGRule(GRules.Items[i]).
            IndexOfComponentByName(1,
             TTemplate(TGRule(GRules.Items[j]).Actions.Items[i1]).ShortName);
             if k1=-1 then
              TGRule(GRules.Items[i]).Actions.Add(
               TTemplate(TGRule(GRules.Items[j]).Actions.Items[i1])
                );
          end;
         GRules.Delete(j);
        end;
     end;

   //---------------------------------------------------------------
   //remove trash grules (relationships)
   for i := GRules.Count-1 downto 0 do
    begin
     if (TGRule(GRules.Items[i]).Actions.Count=0)or
       (TGRule(GRules.Items[i]).Conditions.Count=0)then
      GRules.Delete(i);
    end;

   //remove trash rules (relationships)
   for i := Rules.Count-1 downto 0 do
    begin
     if (TRule(Rules.Items[i]).Actions.Count=0)or
       (TRule(Rules.Items[i]).Conditions.Count=0)then
      Rules.Delete(i);
    end;

   //remove trash templates
   for i := Templates.Count-1 downto 0 do
    begin
     if (TTemplate(Templates.Items[i]).Slots.Count=0)then
      Templates.Delete(i);
    end;
  Result:=Templates.Count;
 except
  Result:=-1;
 end;
end;
//----------------------------------------------------------------------------
Function TKnowledgeBase.LoadFromCSVFile(fName:String):Integer;   //for TabbyXL
Function GetEntityInfo(Text1:string;cn,scn:Integer;pn:string):string;
var
 i : Integer;
 tmTs,tmTs1,tmTs2 : TStringList;
 s,s1 : string;
begin
  tmTs := TStringList.Create;  //csv file
  tmTs1 := TStringList.Create; //csv file line
  tmTs2 := TStringList.Create; //ColumnHeading
  tmTs.Text:=Text1;
  Result:='';
  try
  for i := 0 to tmTs.Count-1 do
   begin
    tmTs1.Clear;
    tmTs1.Delimiter:=';';
    tmTs1.DelimitedText:=StringReplace(tmTs.Strings[i],' ','++',[rfReplaceAll]);
    if (tmTs1.Count>0)and(tmTs1.Strings[0]<>'DATA') then
     begin
      tmTs2.Clear;
      tmTs2.Delimiter:='|';
      tmTs2.DelimitedText:=Trim(tmTs1.Strings[cn]);
      if tmTs1.Count>2 then
       begin  //three columns
        if scn>0 then  //for row
         begin
         s:=Trim(StringReplace(tmTs2.Strings[scn-1],'++',' ',[rfReplaceAll]));
         if s='' then s:='empty';
         if s=pn then
          try
{           if scn>tmTs2.Count then
            begin
             if pos('-;',Result)=0 then Result:=Result+'-;';
//             if pos(Trim(StringReplace(tmTs2.Strings[scn]+';','++',' ',[rfReplaceAll])),Result)=0 then
//              Result:=Result+Trim(StringReplace(tmTs2.Strings[scn]+';','++',' ',[rfReplaceAll]));
            end
           else
            begin
//             if pos('-;',Result)=0 then Result:=Result+'-;';
             if pos(Trim(StringReplace(tmTs2.Strings[scn]+';','++',' ',[rfReplaceAll])),Result)=0 then
              Result:=Result+Trim(StringReplace(tmTs2.Strings[scn]+';','++',' ',[rfReplaceAll]));
            end;}
            if scn>tmTs2.Count then  //out of list
              s1:='-;';
            if tmTs2.Count=1 then  //the first element
              s1:=Trim(StringReplace(tmTs2.Strings[0]+';','++',' ',[rfReplaceAll]));
            if (tmTs2.Count<>1)and(scn<=tmTs2.Count) then  //the second element
              s1:=Trim(StringReplace(tmTs2.Strings[scn]+';','++',' ',[rfReplaceAll]));

            if pos(s1,Result)=0 then Result:=Result+s1;
          except
           if pos('-;',Result)=0 then Result:=Result+'-;';
          end;
         end
        else   //for data
         begin
         if pos(pn,StringReplace(tmTs1.Strings[tmTs1.Count-1],'++',' ',[rfReplaceAll]))>0 then
  //       Trim(StringReplace(tmTs1.Strings[0],'++',' ',[rfReplaceAll]))=pn then
          try
           if scn>tmTs2.Count then
            begin
            if pos('-;',Result)=0 then Result:=Result+'-;';
//             if pos(Trim(StringReplace(tmTs2.Strings[scn]+';','++',' ',[rfReplaceAll])),Result)=0 then
//              Result:=Result+Trim(StringReplace(tmTs2.Strings[scn]+';','++',' ',[rfReplaceAll]));
            end
           else
            begin
//             if pos('-;',Result)=0 then Result:=Result+'-;';
             if pos(Trim(StringReplace(tmTs2.Strings[scn]+';','++',' ',[rfReplaceAll])),Result)=0 then
              Result:=Result+Trim(StringReplace(tmTs2.Strings[scn]+';','++',' ',[rfReplaceAll]));
            end;
          except
           if pos('-;',Result)=0 then Result:=Result+'-;';
          end;
         end;
       end
      else  //for two columns
       begin
//         if pos(pn,StringReplace(tmTs1.Strings[tmTs1.Count-1],'++',' ',[rfReplaceAll]))>0 then
         if Trim(StringReplace(tmTs1.Strings[tmTs1.Count-1],'++',' ',[rfReplaceAll]))=pn then
          try
           if scn>tmTs2.Count then
            begin  //out of range
             if pos('-;',Result)=0 then Result:=Result+'-;';
            end
           else
            begin
             if pos(Trim(StringReplace(tmTs2.Strings[scn]+';','++',' ',[rfReplaceAll])),Result)=0 then
              Result:=Result+Trim(StringReplace(tmTs2.Strings[scn]+';','++',' ',[rfReplaceAll]));
            end;
          except
           if pos('-;',Result)=0 then Result:=Result+'-;';
          end;
       end;
     end;
   end;
  except
   Result:='err';
  end;
end;
//----------------------------------------------------------------------
//----------- get data (value) for the slot ----------------------------
function isDataForSlot(line,fN,tD,sD:string):Boolean;
begin
 Result:=False;
 tD:=Trim(StringReplace(tD,fN+'::','',[rfReplaceAll]));
 sD:=Trim(StringReplace(sD,fN+'::','',[rfReplaceAll]));
 if (pos(tD,line)>0)and(pos(sD,line)>0)  then
  Result:=True;
end;
//----------------------------------------------------------------------
var
  tmTs, tmTs1, tmTs2 : TStringList;
  i, i1, j, k, k1, k_rh, k_gr: Integer;
  f : Extended;
  s, s1, s2: string;
  ObjectAssociation: Boolean;//???? TRUE ?????? ?? ????? ?????
  Template: TTemplate;
  GRule : TGRule;
  Slot: TSlot;
  eF : Boolean; //equl classes flag
  tmRule : TRule;

begin
 try
// Templates.Clear;

  tmTs := TStringList.Create;  //csv file
  tmTs1 := TStringList.Create; //csv file line
  tmTs2 := TStringList.Create; //ColumnHeading
  tmTs.LoadFromFile(fName);

  for i := 0 to tmTs.Count-1 do
   begin
    Application.ProcessMessages;

    tmTs1.Clear;
    tmTs1.Delimiter:=';';
    tmTs1.DelimitedText:=StringReplace(tmTs.Strings[i],' ','++',[rfReplaceAll]);
    if (tmTs1.Count>0)and(tmTs1.Strings[0]<>'DATA') then
     begin
     if tmTs1.Count=3 then
      begin
      //load templates
      //create calss for row heading
        tmTs2.Clear;
        tmTs2.Delimiter:='|';
        tmTs2.DelimitedText:=Trim(tmTs1.Strings[1]);
        if tmTs2.Count>0 then
         begin
          s:=Trim(StringReplace(tmTs2.Strings[0],'++',' ',[rfReplaceAll]));
          if s='' then s:='empty';
          
          s1:=Trim(Translit.Trans(s, Translit.FL));
          //search such class in the kb
//          k_orh:=k_rh;  //old rh
          k_rh:=IndexOfTemplateByShortName(s1,'');
          if k_rh=-1 then
           begin  //create a new template
            Template:=TTemplate.Create;
            Template.Init;
            Template.Name:=s;
            Template.Description:=ExtractFileName(fName)+'::'+s;
            Template.ShortName:=s1;
            Template.ID:=NewID('T');
            Templates.Add(Template);
            k_rh:=IndexOfTemplateByShortName(s1,'');

            Slot:=TSlot.Create;
            Slot.Name:='Name';
            Slot.ShortName:='Name';
            s:=GetEntityInfo(tmTs.Text,1,1,Template.Name);
            Slot.Value:=s;
            Slot.Description:=ExtractFileName(fName)+'::'+s;

            Slot.DataType:='String';
            Template.Slots.Add(Slot);

            GRule:=TGRule.Create;
            GRule.Init;
            GRule.ID:=NewID('G');
            GRule.Name:='has_a_'+GRule.ID;
//          GRule.Name:='has_a_'+Template.Name;

            GRule.ShortName:=GRule.Name;
  //          k_gr:=IndexOfGRuleByShortName(GRule);
  //          if k_gr=-1 then GRules.Add(GRule);
  //          k_gr:=IndexOfGRuleByShortName(GRule);
  //          TGRule(GRules.Items[k_gr]).Conditions.Add(Template);
            GRule.Conditions.Add(Template);
            GRules.Add(GRule);
//            start_f:=0;
           end
          else
           begin
            k_gr:=IndexOfGRuleByTemplateShortName(s1);
            if k_gr=-1 then  //!!!!
             begin
              GRule:=TGRule.Create;
              GRule.Init;
              GRule.ID:=NewID('G');
              GRule.Name:='has_a_'+GRule.ID;
              GRule.ShortName:=GRule.Name;
              GRule.Conditions.Add( TTemplate(Templates.Items[k_rh]));
              GRules.Add(GRule);
//              start_f:=0;
             end
            else
             begin
              GRule:=TGRule(GRules.Items[k_gr]);
             end;
           end;
        //----------------------------
         end;

      tmTs2.Clear;
      tmTs2.Delimiter:='|';
      tmTs2.DelimitedText:=tmTs1.Strings[2];

      case tmTs2.Count of
      1:begin
      //---------------------------------------------------------
      //add properties to rh_class
        s:=Trim(StringReplace(tmTs2.Strings[0],'++',' ',[rfReplaceAll]));
        s1:=Trim(Translit.Trans(s, Translit.FL));

        k1:=TTemplate(Templates.Items[k_rh]).IndexOf(s1,-1);
        if k1=-1 then
         begin
          Slot:=TSlot.Create;
          Slot.Name:=s;
          Slot.ShortName:=s1;
          Slot.Description:=ExtractFileName(fName)+'::'+s;
          Slot.DataType:='String';
          s:=GetEntityInfo(tmTs.Text,0,0,Slot.Name);
          Slot.Value:=s;
          TTemplate(Templates.Items[k_rh]).Slots.Add(Slot);
        end;
      //---------------------------------------------------------
      end;  //end 1
      2:begin
      //create calass and connect them with rh_calss
      //-----------------------------------------------------------
      for i1 := 0 to tmTs2.Count-1 do
       begin
        //get class name
        if (i1=0) then
         begin
          s:=Trim(StringReplace(tmTs2.Strings[i1],'++',' ',[rfReplaceAll]));
          s1:=Trim(Translit.Trans(s, Translit.FL));
          //search such class in the kb
          k:=IndexOfTemplateByShortName(s1,'');
          if k=-1 then
           begin  //create a new template
            Template:=TTemplate.Create;
            Template.Init;
            Template.Name:=s;
            Template.ShortName:=s1;
            Template.Description:=ExtractFileName(fName)+'::'+s;
            Template.ID:=NewID('T');
            Templates.Add(Template);
            k:=IndexOfTemplateByShortName(s1,'');
           end;

          //connect calss with rowheading calss
          k1:=GRule.IndexOfComponentByName(1,TTemplate(Templates.Items[k]).ShortName);
          if k1=-1 then
           GRule.Actions.Add(TTemplate(Templates.Items[k]));
          //-------------------------------------
        end
       else
        begin
         //get class properties
          s:=Trim(StringReplace(tmTs2.Strings[i1],'++',' ',[rfReplaceAll]));
          s1:=Trim(Translit.Trans(s, Translit.FL));

          k1:=TTemplate(Templates.Items[k]).IndexOf(s1,-1);
          if k1=-1 then
           begin
            Slot:=TSlot.Create;
            Slot.Name:=s;
            Slot.ShortName:=s1;
            Slot.Description:=ExtractFileName(fName)+'::'+s;
            Slot.DataType:='String';
            s:=GetEntityInfo(tmTs.Text,0,0,Slot.Name);
            Slot.Value:=s;
            TTemplate(Templates.Items[k]).Slots.Add(Slot);
          end;
        end;
       end;
      //-----------------------------------------------------------
      end;   //end 2
      3:begin
      //create properties of rh_class
      //create class and connect them with rh_calss
      //-----------------------------------------------------------
      for i1 := 0 to tmTs2.Count-1 do
       begin
        //get class name
        if (i1=1) then
         begin
          s:=Trim(StringReplace(tmTs2.Strings[i1],'++',' ',[rfReplaceAll]));
          s1:=Trim(Translit.Trans(s, Translit.FL));
          //search such class in the kb
          k:=IndexOfTemplateByShortName(s1,'');
          if k=-1 then
           begin  //create a new template
            Template:=TTemplate.Create;
            Template.Init;
            Template.Name:=s;
            Template.ShortName:=s1;
            Template.Description:=ExtractFileName(fName)+'::'+s;
            Template.ID:=NewID('T');
            Templates.Add(Template);
            k:=IndexOfTemplateByShortName(s1,'');

           end;
          //connect calss with rowheading calss
          k1:=GRule.IndexOfComponentByName(1,TTemplate(Templates.Items[k]).ShortName);
          if k1=-1 then
           GRule.Actions.Add(TTemplate(Templates.Items[k]));
          //-------------------------------------
        end
       else
        begin
         //get class properties
          s:=Trim(StringReplace(tmTs2.Strings[i1],'++',' ',[rfReplaceAll]));
          s1:=Trim(Translit.Trans(s, Translit.FL));

          if i1=0 then k:=k_rh;

          k1:=TTemplate(Templates.Items[k]).IndexOf(s1,-1);
          if k1=-1 then
           begin
            Slot:=TSlot.Create;
            Slot.Name:=s;
            Slot.ShortName:=s1;
            Slot.Description:=ExtractFileName(fName)+'::'+s;
            Slot.DataType:='String';
            s:=GetEntityInfo(tmTs.Text,0,0,Slot.Name);
            Slot.Value:=s;
            TTemplate(Templates.Items[k]).Slots.Add(Slot);
          end;
        end;
       end;
      //-----------------------------------------------------------
      end;   //end 3
      end; //end case
     end; //tmTs1.Count=3

     if tmTs1.Count=2 then
      begin
      //create calss for row heading
        tmTs2.Clear;
        tmTs2.Delimiter:='|';
        tmTs2.DelimitedText:=Trim(tmTs1.Strings[1]);
        if tmTs2.Count>0 then
         begin
          if i=1 then
           begin  //create a new template
            Template:=TTemplate.Create;
            Template.Init;
            Template.Name:='new';
            Template.Description:=ExtractFileName(fName)+'::new';
            Template.ShortName:='new';
            Template.ID:=NewID('T');
            Templates.Add(Template);
            k_rh:=IndexOfTemplateByShortName('new','');
           end;
          s:=Trim(StringReplace(tmTs2.Strings[0],'++',' ',[rfReplaceAll]));
          s1:=Trim(Translit.Trans(s, Translit.FL));
          Slot:=TSlot.Create;
          Slot.Name:=s;
          Slot.ShortName:=s1;
          Slot.Description:=ExtractFileName(fName)+'::'+s;
          s:=GetEntityInfo(tmTs.Text,0,0,s);
          Slot.Value:=s;
          Slot.DataType:='String';
          Template.Slots.Add(Slot);
         end;
      end;  //tmTs1.Count=2
     end;
   end;

   //---------------------------------------------------------------
   //--------------------- creating rule instances -----------------
   if CreateInstancesFlag=1 then
    begin
     s:=''; //sing of the cycle
     k:=0;  //cycle steps cnt
     tmRule:=nil;   //!!!
      for i := 0 to tmTs.Count-1 do   //start processing file
       begin
        Application.ProcessMessages;

        tmTs1.Clear;
        tmTs1.Delimiter:=';';
        tmTs1.DelimitedText:=StringReplace(tmTs.Strings[i],' ','++',[rfReplaceAll]);
        if (tmTs1.Count>0)and(tmTs1.Strings[0]<>'DATA') then
         begin  //skip first line with headers
          if (s=tmTs1.Strings[tmTs1.Count-1])or(s='') then
           begin
            if s='' then s:=tmTs1.Strings[tmTs1.Count-1];
            if tmRule<>nil then Rules.Add(tmRule);

            //------------------- create rule -----------------------
            //get condition name for rule serach
            tmTs2.Clear;
            tmTs2.Delimiter:='|';
            tmTs2.DelimitedText:=Trim(tmTs1.Strings[1]);
            if tmTs2.Count>0 then
             s1:=ExtractFileName(fName)+'::'+
              Trim(StringReplace(tmTs2.Strings[0],'++',' ',[rfReplaceAll]));
            s2:='';
             if tmTs2.Count>1 then
              s2:=Trim(StringReplace(tmTs2.Strings[1],'++',' ',[rfReplaceAll]));
            //search for grule by condition description
            k1:=IndexOfGRuleByConditionDescription(s1);
            if k1<>-1 then
             begin
              tmRule:=TRule.Create;
              tmRule.Init;
              tmRule.ID:=NewID('R');
              tmRule.Name:=TGRule(GRules.Items[k1]).Name+'-'+tmRule.ID;
              tmRule.ShortName:=tmRule.Name;
              tmRule.Description:=tmRule.Name;
              //name
              //description
              tmRule.GetStructureFrom(TGRule(GRules.Items[k1]));
             end;
           end;

           k_gr:=0; //sign of line processing completness
           if tmRule<>nil then
             begin
              for j := 0 to tmRule.Conditions.Count-1 do
               if k_gr=0 then
                 for i1 := 0 to TCondition(tmRule.Conditions.Items[j]).Fact.Slots.Count-1 do
                   begin
                    //load Name value
                    if TSlot(TTemplate(TGRule(GRules.Items[k1]).Conditions[j]).Slots.Items[i1]).Name=
                     'Name' then
                      begin
                       if pos(
                         Trim(StringReplace(TTemplate(TGRule(GRules.Items[k1]).Conditions[j]).Description,
                          ExtractFileName(fName)+'::','',[rfReplaceAll])),
                        Trim(StringReplace(tmTs1.Text,'++',' ',[rfReplaceAll])))>0 then
                         TSlot(TCondition(tmRule.Conditions.Items[j]).Fact.Slots.Items[i1]).Value:=s2;
                      end
                     else
                      //load slot value
                      if isDataForSlot(
                       Trim(StringReplace(tmTs1.Text,'++',' ',[rfReplaceAll])),
                        ExtractFileName(fName),
                         TTemplate(TGRule(GRules.Items[k1]).Conditions[j]).Description,
                         TSlot(TTemplate(TGRule(GRules.Items[k1]).Conditions[j]).Slots.Items[i1]).Description
    //                     TCondition(tmRule.Conditions.Items[j]).Fact.Description,
    //                     TSlot(TCondition(tmRule.Conditions.Items[j]).Fact.Slots.Items[i1]).Description
                         ) then
                          begin
                           TSlot(TCondition(tmRule.Conditions.Items[j]).Fact.Slots.Items[i1]).Value:=
                            Trim(StringReplace(tmTs1.Strings[0],'++',' ',[rfReplaceAll]));
                           k_gr:=1;
                           Break;
                          end;
                   end;

              for j := 0 to tmRule.Actions.Count-1 do
               if k_gr=0 then
                 for i1 := 0 to TRAction(tmRule.Actions.Items[j]).Fact.Slots.Count-1 do
                   begin
                    //load Name value
                    if TSlot(TTemplate(TGRule(GRules.Items[k1]).Actions[j]).Slots.Items[i1]).Name=
                     'Name' then
                      begin
                       if pos(TTemplate(TGRule(GRules.Items[k1]).Actions[j]).Description,
                        Trim(StringReplace(tmTs1.Text,'++',' ',[rfReplaceAll])))>0 then
                         TSlot(TRAction(tmRule.Actions.Items[j]).Fact.Slots.Items[i1]).Value:=s2;
                      end
                     else
                      //load slot value
                      if isDataForSlot(
                       Trim(StringReplace(tmTs1.Text,'++',' ',[rfReplaceAll])),
                        ExtractFileName(fName),
    //                     TRAction(tmRule.Actions.Items[j]).Fact.Description,
    //                     TSlot(TRAction(tmRule.Actions.Items[j]).Fact.Slots.Items[i1]).Description
                         TTemplate(TGRule(GRules.Items[k1]).Actions[j]).Description,
                         TSlot(TTemplate(TGRule(GRules.Items[k1]).Actions[j]).Slots.Items[i1]).Description
                         ) then
                          begin
                           TSlot(TRAction(tmRule.Actions.Items[j]).Fact.Slots.Items[i1]).Value:=
                            Trim(StringReplace(tmTs1.Strings[0],'++',' ',[rfReplaceAll]));
                           k_gr:=1;
                           Break;
                          end;
                   end;
             end;
           //end

         end;
       end;
       if tmRule<>nil then Rules.Add(tmRule);
    end;

   Result:=Templates.Count;
  except
   on e:Exception do
    begin
     MainForm.MMessageBox(1,0,'0='+
      'Error: The processed file ('+ ExtractFileName(fName)+') is locked (or opened by another application).'
//      +e.Message
  //!!!          LS('Error: Knobledge base file is missing')
      );
     Result:=-1;
    end;
  end;
end;
//----------------------------------------------------------------------------
Function TKnowledgeBase.LoadFromMDLFile(fName:String):Integer;
var
  List: TStringList;
  AssociationList: TStringList;
  //nfile: string;
  i, j, r, k, position, position1: Integer;
  s, word: string;
  FS: TFileStream;
  ObjectClass: Boolean;//???? TRUE ?????? ?? ????? ?????
  ObjectAssociation: Boolean;//???? TRUE ?????? ?? ????? ?????
  FirstObjectAssociation: Boolean;//?????????? ?? ????? ?????? ?????
  RuleInKB: Boolean;//???? True ?????? ??????? ??? ?????????? ? ???? ??????

//  KnowledgeBase: TKnowledgeBase;
  Template, tMP, tMP1: TTemplate;
  Slot: TSlot;
  Rule, Rule1: TGRule;

begin
 Vars.Clear;
 Rules.Clear;
 GRules.Clear;
 Facts.Clear;

 Templates.Clear;
 Functions.Clear;

  RuleInKB:=False;
  FirstObjectAssociation:=False;

  FS := TFileStream.Create(fName, fmOpenRead);
  List := TStringList.Create;
  List.LoadFromStream(FS);

  AssociationList := TStringList.Create;
//  KnowledgeBase := TKnowledgeBase.create;
//  KnowledgeBase.Init;
//  KnowledgeBase.Name := 'NewKB';

  for i:=0 to List.count-1 do
    begin
      //????? ???????
      s:=List.Strings[i];
      position := AnsiPos('object Class ', s);

      //???? ????? ?????, ?? ????? ??? ???
      if position <> 0 then
        begin
          ObjectClass:=True;
          Template:=TTemplate.Create;
          Template.Init;
          Template.Name:=Copy(s,Pos('"',s)+1,LastDelimiter('"',s)-1-Pos('"',s));
          Template.ShortName:=Translit.Trans(Template.Name,Translit.FL);
          Template.ID:=NewID('T');
          Templates.Add(Template);
        end;

      //?????? ????????? ???? ?? ? ?????? ????????
      position := AnsiPos('(object ClassAttribute', s);
      if (position <> 0) and (ObjectClass = True) then
        begin
          Slot:=TSlot.Create;
          Slot.Name:=Copy(s,Pos('"',s)+1,LastDelimiter('"',s)-1-Pos('"',s));
          Slot.ShortName:=Translit.Trans(Slot.Name,Translit.FL);
          Slot.DataType:='String';
          Template.Slots.Add(Slot);
        end;

      //???? ???????? ??????, ????? ???????, ??? ????? ?????? ? ?????? ??? ?????????
      position := AnsiPos(')))', s);
      if (position <> 0) and (ObjectClass = True) then
        begin
          ObjectClass:=False;
          ObjectAssociation:=False;
        end;

      //?????? ???? c????
      position := AnsiPos('object Association ', s);
      if position <> 0 then
        begin
          ObjectAssociation:=True;
        end;

      //?????? StringList ?? ???????
      position := AnsiPos('supplier ', s);
      position1 := AnsiPos('Logical View', s);
      if (ObjectAssociation = True) and (position <> 0) and (position1 <> 0) then
        begin
          position1 := LastDelimiter('"',s);
          position := AnsiPos('::', s);
          position1 := position1-position-2;
          word:=Copy(s,position+2,position1);
          //???? False ?????? ??? ?????? ???????? ?????
          if FirstObjectAssociation = False then
          begin
            FirstObjectAssociation:=True;
            for j:=0 to Templates.Count-1 do
            begin
              tMP:=Template.Create;
              tMP:=Templates[j];
              //???? tMP.Name=word ?????? ?? ????? ?????????? ???????????? ??????? ? ????? ? ???????????? ??????? ? ??
              if tMP.Name=word then
              begin
                //KnowledgeBase.GRules.Count>0 ?????? ??????? ??? ???? ? ???? ?????????
                //???? ?? ??????? ? ?????? ?? ??????????, ???? ??, ?? ???? ?? ??????????
                for r:=0 to GRules.Count-1 do
                begin
                  Rule:=TGRule.Create;
                  Rule.Init;
                  Rule:=GRules[r];
                  //Rule.Actions.Count>0 ?????? ???????? ??? ???? ? ???? ?????????
                  //???? ?? ???????? ? ?????? ?? ?????????, ???? ??, ?? ???? ?? ????????
                  for k:=0 to Rule.Actions.Count-1 do
                  begin
                    tMP1:=TTemplate.Create;
                    tMP1.Init;
                    tMP1:=Rule.Actions[k];
                    if tMP1.Name=tMP.Name then
                    begin
                      Rule:=Rule;
                      RuleInKB:=True;
                    end;
                  end;
                end;
                if RuleInKB=False then
                begin
                  Rule:=TGRule.Create;
                  Rule.Init;
                  Rule.Name:='NewRule'+IntToStr(i);
//                  Rule.Name:=Rule.GetRUID;
                  Rule.ShortName:=Translit.Trans(Rule.Name,Translit.FL);
                  Rule.ID:=NewID('G');
                  Rule.Actions.Add(tMP);
                end;
              end;
            end;
          end
          else
            begin
              FirstObjectAssociation:=False;
              for j:=0 to Templates.Count-1 do
                begin
                  tMP:=Template.Create;
                  tMP:=Templates[j];
                  if tMP.Name=word then
                    begin
                      Rule.Conditions.Add(tMP);
                      Break;
                    end;
                end;
              if RuleInKB=False then
              begin
                GRules.Add(Rule);
              end;
              RuleInKB:=False;
            end;
        end;
    end;
//    Result:=KnowledgeBase;
  for i := 0 to GRules.Count-1 do
   try
    TGRule(GRules.Items[i]).Name:=TGRule(GRules.Items[i]).GetRUID;
    TGRule(GRules.Items[i]).ShortName:=Translit.Trans(
     TGRule(GRules.Items[i]).Name,Translit.FL);
   except
   end;
    FS.Free;
end;
//----------------------------------------------------------------------------
Function TKnowledgeBase.LoadFromMDLFileV2(fName:String):Integer;
var
  List: TStringList;
  AssociationList: TStringList;
  //nfile: string;
  i, j, r, k, position, position1: Integer;
  s,s1,s2,end1,end2, word: string;
  FS: TFileStream;
  ObjectClass: Boolean;//???? TRUE ?????? ?? ????? ?????
  ObjectAssociation: Boolean;//???? TRUE ?????? ?? ????? ?????
  FirstObjectAssociation: Boolean;//?????????? ?? ????? ?????? ?????
  RuleInKB: Boolean;//???? True ?????? ??????? ??? ?????????? ? ???? ??????

//  KnowledgeBase: TKnowledgeBase;
  Template, tMP, tMP1: TTemplate;
  Slot: TSlot;
  Rule, Rule1: TGRule;

begin
 Vars.Clear;
 Rules.Clear;
 GRules.Clear;
 Facts.Clear;

 Templates.Clear;
 Functions.Clear;

  RuleInKB:=False;
  FirstObjectAssociation:=False;

  FS := TFileStream.Create(fName, fmOpenRead);
  List := TStringList.Create;
  List.LoadFromStream(FS);

  AssociationList := TStringList.Create;
//  KnowledgeBase := TKnowledgeBase.create;
//  KnowledgeBase.Init;
//  KnowledgeBase.Name := 'NewKB';
  //object Class_Category "Logical View"
  ObjectClass:=False;
  for i:=0 to List.count-1 do
   begin
    s:=List.Strings[i];
    if AnsiPos('object Association ', s)>0 then Break;
    if AnsiPos('object Class_Category "Logical View"', s)>0 then ObjectClass:=True;
    if ObjectClass then
     begin
      //????? ???????
//      position := AnsiPos('object Class ', s);

      //???? ????? ?????, ?? ????? ??? ???
      if AnsiPos('object Class ', s)> 0 then
        begin
          r:=1;
//          ObjectClass:=True;
          Template:=TTemplate.Create;
          Template.Init;
          Template.Name:=Copy(s,Pos('"',s)+1,LastDelimiter('"',s)-1-Pos('"',s));
          Template.PurifyName;

          Template.ShortName:=Translit.Trans(Template.Name,Translit.FL);
//          Template.ID:=NewID('T');
          Templates.Add(Template);
        end;

      if (AnsiPos('quid', s)> 0) then
        begin
         if r=1 then
          Template.ID:=Copy(s,Pos('"',s)+1,LastDelimiter('"',s)-1-Pos('"',s))
         end;

      //?????? ????????? ???? ?? ? ?????? ????????
      if (AnsiPos('(object ClassAttribute', s) <> 0) and (ObjectClass = True) then
        begin
          r:=0;
          Slot:=TSlot.Create;
          Slot.Name:=Copy(s,Pos('"',s)+1,LastDelimiter('"',s)-1-Pos('"',s));
          Slot.PurifyName;
          Slot.DataType:='String';
          Slot.ShortName:=Translit.Trans(Slot.Name,Translit.FL);
          Template.Slots.Add(Slot);
        end;
      if (AnsiPos('type', s)> 0) then
       Slot.DataType:=Copy(s,Pos('"',s)+1,LastDelimiter('"',s)-1-Pos('"',s));
      if (AnsiPos('initv', s)> 0) then
       Slot.Value:=
        StringReplace(
         Copy(s,Pos('"',s)+1,LastDelimiter('"',s)-1-Pos('"',s))
          ,',',';',[rfReplaceAll]);
     end;
    end; //end load classes

  //load associations
  ObjectAssociation:=False;
  r:=0;
  for i:=i to List.count-1 do
    begin
    s:=List.Strings[i];
    if AnsiPos('object Association ', s)>0 then
     begin
      ObjectAssociation:=True;
      r:=0; //first step
      s1:=''; //association name
      Rule:=nil;
      end1:='';
      end2:='';
     end;

    if AnsiPos('logical_presentations 	(l', s)>0 then Break;
      //?????? ???? c????
    if ObjectAssociation then
     begin

      //get association name
      if (AnsiPos('object Role ', s)> 0) then
       begin
        s1:=Copy(s,Pos('"',s)+1,LastDelimiter('"',s)-1-Pos('"',s));
        if AnsiPos('$', s1)= 0 then  r:=3  //name of association
         else Inc(r); //order of element
       end;

      if (AnsiPos('is_navigable', s)> 0) then
       begin
        case r of
         1: begin
          end2:=end1;
          end1:='';
         end;
         3: end2:=s2;
        end;
       end;

      if (AnsiPos('quidu', s)> 0) then
       begin
        s2:=Copy(s,Pos('"',s)+1,LastDelimiter('"',s)-1-Pos('"',s));
        case r of
         1:begin //condition
          if end1='' then end1:=s2
           else end2:=s2;
         end;
         2:begin //action
          if end2='' then end2:=s2
           else
            if end1='' then end1:=s2
         end;
         3:begin //name of association
          s1:=s1+s2; //grule id (as short name)
          j:=IndexOfGRuleByID(s1);
          r:=0;
          if j>-1 then
           Rule:=GRules.Items[j]
            else
             begin
              Rule:=TGRule.Create;
              Rule.Init;
              Rule.ID:=s1;
              GRules.Add(Rule);
             end;
         end; //end 3
        end;  //end case of r
       end;

     if (end1<>'')and (end2<>'') then
      begin  //add grule
       if Rule<>nil then
        begin
         j:=IndexOfTemplateByID(end2);
         if j>-1 then
          begin
           tMP:=Templates.Items[j];
           k:=Rule.IndexOfActionByID(end2);
           if k=-1 then Rule.Actions.Add(tMP)
          end;
         j:=IndexOfTemplateByID(end1);
         if j>-1 then
          begin
           tMP:=Templates.Items[j];
           k:=Rule.IndexOfConditionByID(end1);
           if k=-1 then Rule.Conditions.Add(tMP)
          end;
        end
       else
        begin
            j:=IndexOfTemplateByID(end2);

             if j>-1 then
              begin
                tMP:=Templates.Items[j];
                //KnowledgeBase.GRules.Count>0 ?????? ??????? ??? ???? ? ???? ?????????
                //???? ?? ??????? ? ?????? ?? ??????????, ???? ??, ?? ???? ?? ??????????
//                Rule:=nil;
                //add action
                for r:=0 to GRules.Count-1 do
                 begin //find the grule by the action
                  k:=TGRule(GRules.Items[r]).IndexOfActionByID(end2);
                  if k>-1 then
                   begin
                    RuleInKB:=True;
                    Rule:=GRules.Items[r];
                    Break;
                   end
                  else
                   RuleInKB:=False;
                 end;

                if RuleInKB=False then
                 begin
                  Rule:=TGRule.Create;
                  Rule.Init;
                  Rule.ID:='G'+IntToStr(GRules.Count);
                  GRules.Add(Rule);
                  Rule.Actions.Add(tMP);
                 end;


               //add condition
               if Rule<>nil then
                begin
                 j:=IndexOfTemplateByID(end1);
                 if j>-1 then
                  begin
                   tMP:=Templates.Items[j];
                   k:=Rule.IndexOfConditionByID(end1);
                   if k=-1 then Rule.Conditions.Add(tMP)
                  end;
                end;
              end;
        end;
      end;  //end add grule
     end;
    end; //end load associations

//  end;
//    Result:=KnowledgeBase;
  for i := 0 to GRules.Count-1 do
   try
    TGRule(GRules.Items[i]).Name:=TGRule(GRules.Items[i]).GetRUID;
    TGRule(GRules.Items[i]).PurifyName;
    TGRule(GRules.Items[i]).ShortName:=Translit.Trans(
     TGRule(GRules.Items[i]).Name,Translit.FL);
    TGRule(GRules.Items[i]).ID:='G'+IntToStr(i);
   except
   end;
    FS.Free;
end;
//----------------------------------------------------------------------------
Function TKnowledgeBase.AddGRule(R:TRule):Integer;
var
 i,j,c1 : Integer;
 tmGRule : TGRule;
 s,s1 : string;
 tmTemplate : TTemplate;
 tmSlot : TSlot;
begin
try
 tmGRule:=TGRule.Create;
 tmGRule.Init;
 s1:='';
 for i :=0 to R.Conditions.Count-1 do
  begin
   j:=IndexOfTemplate(TCondition(R.Conditions.Items[i]).Fact);
   if j>-1 then
    begin
     tmTemplate:=TTemplate.Create;
     //copy template
     tmTemplate.Init;
     tmTemplate.Name:=TTemplate(Templates.Items[j]).Name;
     tmTemplate.ShortName:=TTemplate(Templates.Items[j]).ShortName;
     tmTemplate.Description:=TTemplate(Templates.Items[j]).Description;
     for c1:=0 to TTemplate(Templates.Items[j]).Slots.Count-1 do
      begin
       tmSlot:=TSlot.Create;
       Self.CopySlot(TSlot(TTemplate(Templates.Items[j]).Slots.Items[c1]),
        tmSlot);
       tmTemplate.Slots.Add(tmSlot);
      end;
     tmGRule.Conditions.Add(tmTemplate);

    if s1<>'' then s1:=s1+' & ';
     s1:=s1+TTemplate(Templates.Items[j]).ShortName;
   end;
  end;

 s:='';
 for i :=0 to R.Actions.Count-1 do
  begin
   j:=IndexOfTemplate(TRAction(R.Actions.Items[i]).Fact);
   if j>-1 then
    begin
     tmTemplate:=TTemplate.Create;
     //copy template
     tmTemplate.Init;
     tmTemplate.Name:=TTemplate(Templates.Items[j]).Name;
     tmTemplate.ShortName:=TTemplate(Templates.Items[j]).ShortName;
     tmTemplate.Description:=TTemplate(Templates.Items[j]).Description;
     for c1:=0 to TTemplate(Templates.Items[j]).Slots.Count-1 do
      begin
       tmSlot:=TSlot.Create;
       Self.CopySlot(TSlot(TTemplate(Templates.Items[j]).Slots.Items[c1]),
        tmSlot);
       tmTemplate.Slots.Add(tmSlot);
      end;
     tmGRule.Actions.Add(tmTemplate);
     if s<>'' then s:=s+' & ';
     s:=s+TTemplate(Templates.Items[j]).ShortName;
    end;
  end;
 tmGRule.ShortName:=MainForm.LS('Generalized rule')+' '+IntToStr(GRules.Count+1);
 tmGRule.Name:=tmGRule.ShortName;
 tmGRule.Description:=s1+' => '+s;
 GRules.Add(tmGRule);
 Result:=0;
except
 Result:=-1;
end;
end;

//----------------------------------------------------------------------------
Function TGRule.IndexOfComponentByName(k:Integer;N:string):Integer;
var
 i : Integer;
begin
 Result:=-1;
try
 case k of
  0:begin  //condition
   for i := 0 to Conditions.Count-1 do
    if TTemplate(Conditions.Items[i]).ShortName=N then
     begin
      Result:=i;
      Break;
     end;
  end;
  1:begin  //action
   for i := 0 to Actions.Count-1 do
    if TTemplate(Actions.Items[i]).ShortName=N then
     begin
      Result:=i;
      Break;
     end;
  end;
 end; //end case
 except
 end;
end;
//----------------------------------------------------------------------------
Function TGRule.GetRUID:string;
var
 i : Integer;
begin
 Result:='';
try
 for i := 0 to Conditions.Count-1 do
  begin
   if Result<>'' then Result:=Result+'+';
   Result:=Result+TTemplate(Conditions.Items[i]).ShortName;
  end;
 Result:=Result+'>';
 for i := 0 to Actions.Count-1 do
  begin
   if Result<>'' then Result:=Result+'+';
   Result:=Result+TTemplate(Actions.Items[i]).ShortName;
  end;
 Result:=StringReplace(Result,'>+','>',[rfReplaceAll]);
except
end;
end;
//----------------------------------------------------------------------------
Function TFact.GetHash:string;
var
 i : Integer;
 s : string;
 h1 : Cardinal;
begin
 for i := 0 to Slots.Count-1 do
  begin
   s:=TSlot(Slots.Items[i]).ShortName+'/'+
    TSlot(Slots.Items[i]).Constraint+'/'+
     TSlot(Slots.Items[i]).Value;
   h1:=StrHash(s);
   if Result<>'' then Result:=Result+'_';
   Result:=Result+IntToStr(h1);
  end;
 Hash:=Result;
end;
//----------------------------------------------------------------------------
Function TRule.GetHash(mode : Integer):string;
var
 i,j : Integer;
 h1 : Cardinal;
begin
 h1:=0;
 if mode=0 then
  h1:=StrHash(ShortName);
 Result:=IntToStr(h1);

 for i:=0 to Conditions.Count-1 do
  begin
   Result:=Result+'_'+
    TCondition(Conditions.Items[i]).Fact.GetHash;
  end;
 for i:=0 to Actions.Count-1 do
  begin
   h1:=StrHash(TRAction(Actions.Items[i]).&Operator);
   Result:=Result+'_'+IntToStr(h1)+'_'+
    TRAction(Actions.Items[i]).Fact.GetHash;
  end;
 Hash:=Result;
end;
//----------------------------------------------------------------------------
Function TGRule.GetAtomsCnt(F:string):Integer;
var
 i : Integer;
begin
 Result:=0;
 if pos('c',F)>0 then
  for i := 0 to Conditions.Count-1 do
   Result:=Result+TTemplate(Conditions.Items[i]).Slots.Count;
 if pos('a',F)>0 then
   for i := 0 to Actions.Count-1 do
    Result:=Result+TTemplate(Actions.Items[i]).Slots.Count;
end;
//----------------------------------------------------------------------------
Function TRule.GetAtomsCnt(F:string):Integer;
var
 i : Integer;
begin
 Result:=0;
 if pos('c',F)>0 then
  for i := 0 to Conditions.Count-1 do
   Result:=Result+TCondition(Conditions.Items[i]).Fact.Slots.Count;
 if pos('a',F)>0 then
   for i := 0 to Actions.Count-1 do
    Result:=Result+TRAction(Actions.Items[i]).Fact.Slots.Count;
end;
//----------------------------------------------------------------------------
Function TGRule.GetRUIDV2:string;
var
 i,j : Integer;
begin
 Result:='';
try
 for i := 0 to Conditions.Count-1 do
 for j := 0 to TTemplate(Conditions.Items[i]).Slots.Count-1 do
  begin
   if Result<>'' then Result:=Result+'+';
   Result:=Result+TSlot(TTemplate(Conditions.Items[i]).Slots.Items[j]).ShortName;
  end;
 Result:=Result+'>';
 for i := 0 to Actions.Count-1 do
 for j := 0 to TTemplate(Actions.Items[i]).Slots.Count-1 do
  begin
   if i<>0 then Result:=Result+'+';
   Result:=Result+TSlot(TTemplate(Actions.Items[i]).Slots.Items[j]).ShortName;
  end;
// Result:=StringReplace(Result,'>+','>',[rfReplaceAll]);
except
end;
end;
//----------------------------------------------------------------------------
Function TRule.GetRUIDV2:string;
var
 i,j : Integer;
begin
 Result:='';
try
 for i := 0 to Conditions.Count-1 do
 for j := 0 to TCondition(Conditions.Items[i]).Fact.Slots.Count-1 do
  begin
   if Result<>'' then Result:=Result+'+';
   Result:=Result+TSlot(TCondition(Conditions.Items[i]).Fact.Slots.Items[j]).ShortName;
  end;
 Result:=Result+'>';
 for i := 0 to Actions.Count-1 do
 for j := 0 to TRAction(Actions.Items[i]).Fact.Slots.Count-1 do
  begin
   if i<>0 then Result:=Result+'+';
   Result:=Result+TSlot(TRAction(Actions.Items[i]).Fact.Slots.Items[j]).ShortName;
  end;
// Result:=StringReplace(Result,'>+','>',[rfReplaceAll]);
except
end;
end;
//----------------------------------------------------------------------------
Function TRule.GetRUID:string;
var
 i : Integer;
begin
 Result:='';
try
 for i := 0 to Conditions.Count-1 do
  begin
   if Result<>'' then Result:=Result+'+';
   Result:=Result+TCondition(Conditions.Items[i]).Fact.ShortName;
  end;
 Result:=Result+'>';
 for i := 0 to Actions.Count-1 do
  begin
   if Result<>'' then Result:=Result+'+';
   Result:=Result+TRAction(Actions.Items[i]).Fact.ShortName;
  end;
 Result:=StringReplace(Result,'>+','>',[rfReplaceAll]);
except
end;
end;
//----------------------------------------------------------------------------
Function TKnowledgeBase.IndexOfGRuleV2(R:TRule):Integer;
var
 RUID : string;
 i : Integer;
begin
 Result:=-1;
 try
 //get RUID
 RUID:=R.GetRUIDV2;
 //
 for i := 0 to GRules.Count-1 do
  if TGRule(GRules.Items[i]).GetRUIDV2=RUID then
   begin
    Result:=i;
    Break;
   end;
except
end;
end;
//----------------------------------------------------------------------------
Function TKnowledgeBase.IndexOfGRule(R:TRule):Integer;
var
 RUID : string;
 i : Integer;
begin
 Result:=-1;
 try
 //get RUID
 RUID:=R.GetRUID;
 //
 for i := 0 to GRules.Count-1 do
  if TGRule(GRules.Items[i]).GetRUID=RUID then
   begin
    Result:=i;
    Break;
   end;
except
end;
end;
//----------------------------------------------------------------------------
Function TKnowledgeBase.CheckForCErrors:Integer;
Function CheckSlots(T1:TTemplate;O1:TObject; s:string):TStringList;
var
 k : Integer;
 tmTs : TStringList;
begin
  Result:=TStringList.Create;
   tmTs:=TStringList.Create;
   for k := 0 to T1.Slots.Count-1 do
    tmTs.Add(TSlot(T1.Slots.Items[k]).ShortName);

  if O1 is TFact then
   begin
   for k := 0 to TFact(O1).Slots.Count-1 do
    if tmTs.IndexOf(TSlot(TFact(O1).Slots.Items[k]).ShortName)=-1 then
      Result.AddObject(
       s+' '+MainForm.LS('Slot')+' '
        +TSlot(TFact(O1).Slots.Items[k]).ShortName
         +' '+MainForm.LS('in the template')+' '+T1.ShortName+' '+MainForm.LS('is not found')
        ,O1
        )
   end;
    if O1 is TTemplate then
     begin
     for k := 0 to TTemplate(O1).Slots.Count-1 do
      if tmTs.IndexOf(TSlot(TTemplate(O1).Slots.Items[k]).ShortName)=-1 then
        Result.AddObject(
         s+' '+MainForm.LS('Slot')+' '
          +TSlot(TTemplate(O1).Slots.Items[k]).ShortName
           +' '+MainForm.LS('in the template')+' '+T1.ShortName+' '+MainForm.LS('is not found')
          ,O1
          )
     end;
end;

var
 i,j,g,k : Integer;
 tmTs : TStringList;
 tmT : TTemplate;
 tmC : TCondition;
 tmA : TRAction;
 tmF : TFact;
 s : string;
begin
 CErrors.Clear;
 //-----------------------------------------------------
 //duplicates of names
 //-----------------------------------------------------
 //templates
 for i := 0 to Templates.Count-1 do
  begin
   s:=TTemplate(Templates.Items[i]).CheckNameForRestrictedSymbols;
   if s<>'' then
    begin
     s:='['+TTemplate(Templates.Items[i]).ID+']: '
       +MainForm.LS('Shortname of the template:')
       +' "'+TTemplate(Templates.Items[i]).ShortName
         +'" '+
          'contains restricted symbols: '+s;
         //MainForm.LS('is a duplicate')
          ;
     if CErrors.IndexOf(s)=-1 then
      CErrors.AddObject(s
       ,TTemplate(Templates.Items[i]))
    end;

   for j := i+1 to Templates.Count-1 do
  //  if i<>j then
     if TTemplate(Templates.Items[i]).ShortName=TTemplate(Templates.Items[j]).ShortName then
      begin
       //duplicates
       s:='['+TTemplate(Templates.Items[j]).ID+']: '
         +MainForm.LS('Shortname of the template:')
         +' "'+TTemplate(Templates.Items[j]).ShortName
           +'" '+MainForm.LS('is a duplicate');
       if CErrors.IndexOf(s)=-1 then
        CErrors.AddObject(s
         ,TTemplate(Templates.Items[j]))
      end;
  end;
{ //facts
 for i := 0 to Facts.Count-1 do
 for j := i+1 to Facts.Count-1 do
  if i<>j then
   if TFact(Facts.Items[i]).ShortName=TFact(Facts.Items[j]).ShortName then
    begin
     //duplicates
     s:='['+TFact(Facts.Items[j]).ID+']: '
       +MainForm.LS('Shortname of the fact:')
       +' "'+TFact(Facts.Items[j]).ShortName
         +'" '+MainForm.LS('is a duplicate');
     if CErrors.IndexOf(s)=-1 then
       CErrors.AddObject(s
        ,TFact(Facts.Items[j]))
    end;
 }
 //rules
 for i := 0 to Rules.Count-1 do
  begin
   s:=TRule(Rules.Items[i]).CheckNameForRestrictedSymbols;
   if s<>'' then
    begin
     s:='['+TRule(Rules.Items[i]).ID+']: '
       +MainForm.LS('Shortname of the rule:')
       +' "'+TRule(Rules.Items[i]).ShortName
         +'" '+
          'contains restricted symbols: '+s;
         //MainForm.LS('is a duplicate')
          ;
     if CErrors.IndexOf(s)=-1 then
      CErrors.AddObject(s
       ,TRule(Rules.Items[i]))
    end;

   for j := i+1 to Rules.Count-1 do
  //  if i<>j then
     if TRule(Rules.Items[i]).ShortName=TRule(Rules.Items[j]).ShortName then
      begin
       //duplicates
       s:='['+TRule(Rules.Items[j]).ID+']: '
         +MainForm.LS('Shortname of the rule:')
         +' "'+TRule(Rules.Items[j]).ShortName
           +'" '+MainForm.LS('is a duplicate');
       if CErrors.IndexOf(s)=-1 then
        CErrors.AddObject(s
         ,TRule(Rules.Items[j]))
      end;
  end;
 //grules
 {
 for i := 0 to GRules.Count-1 do
  begin
   s:=TGRule(GRules.Items[i]).CheckNameForRestrictedSymbols;
   if s<>'' then
    begin
     s:='['+TGRule(GRules.Items[i]).ID+']: '
       +MainForm.LS('Shortname of the generalized rule:')
       +' "'+TGRule(GRules.Items[i]).ShortName
         +'" '+
          'contains restricted symbols: '+s;
         //MainForm.LS('is a duplicate')
          ;
     if CErrors.IndexOf(s)=-1 then
      CErrors.AddObject(s
       ,TGRule(GRules.Items[i]))
    end;

   for j := i+1 to GRules.Count-1 do
  //  if i<>j then
     if TGRule(GRules.Items[i]).ShortName=TGRule(GRules.Items[j]).ShortName then
      begin
       //duplicates
       s:='['+TGRule(GRules.Items[j]).ID+']: '
         +MainForm.LS('Shortname of the generalized rule:')
         +' "'+TGRule(GRules.Items[j]).ShortName
           +'" '+MainForm.LS('is a duplicate');
       if CErrors.IndexOf(s)=-1 then
        CErrors.AddObject(s
         ,TGRule(GRules.Items[j]))
      end;
  end; }

 //-----------------------------------------------------
 //-----------------------------------------------------
 //chk grules
 for i := 0 to GRules.Count-1 do
  begin 
   //conditions
   for j := 0 to TGRule(GRules.Items[i]).Conditions.Count-1 do
    begin  
     tmT:=TTemplate(TGRule(GRules.Items[i]).Conditions.Items[j]);
     g:=IndexOfTemplateByShortName(
      tmT.ShortName,'');
     if g=-1 then
      CErrors.AddObject(
       '['+TGRule(GRules.Items[i]).ID+']: '
       +MainForm.LS('Condition of the generzlized rule:')
       +' '+MainForm.LS('Template')+' "'
        +tmT.ShortName
         +'" '+MainForm.LS('is not found')
          ,TGRule(GRules.Items[i]))
       else
        begin //chk slots
         CErrors.AddStrings(
          CheckSlots(TTemplate(Templates.Items[g]),tmT,
           '['+TGRule(GRules.Items[i]).ID+']: '+MainForm.LS('Condition of the generzlized rule:'))
          );
        end;
    end;
   //actions
   for j := 0 to TGRule(GRules.Items[i]).Actions.Count-1 do
    begin  
     tmT:=TTemplate(TGRule(GRules.Items[i]).Actions.Items[j]);
     g:=IndexOfTemplateByShortName(
      tmT.ShortName,'');
     if g=-1 then
      CErrors.AddObject(
       '['+TGRule(GRules.Items[i]).ID+']: '
       +MainForm.LS('Action of the generalized rule:')
       +' '+MainForm.LS('Template')+' "'
        +tmT.ShortName
         +'" '+MainForm.LS('is not found')
          ,TGRule(GRules.Items[i])) 
       else
        begin //chk slots
         CErrors.AddStrings(
          CheckSlots(TTemplate(Templates.Items[g]),tmT,
           '['+TGRule(GRules.Items[i]).ID+']: '+MainForm.LS('Action of the generalized rule:'))
          );
        end;
    end;   
  end;
 //-----------------------------------------------------
 //chk rules
 for i := 0 to Rules.Count-1 do
  begin 
   //conditions
   for j := 0 to TRule(Rules.Items[i]).Conditions.Count-1 do
    begin  
     tmF:=TCondition(TRule(Rules.Items[i]).Conditions.Items[j]).Fact;
     g:=IndexOfTemplate(tmF);
     if g=-1 then
      CErrors.AddObject(
       '['+TRule(Rules.Items[i]).ID+']: '
        +MainForm.LS('Condition of the rule:')+' '+MainForm.LS('Template')+' "'
        +tmF.ShortName
         +'" '+MainForm.LS('for the fact')+' '+MainForm.LS('is not found')
          ,tmF) 
       else
        begin //chk slots
         CErrors.AddStrings(
          CheckSlots(TTemplate(Templates.Items[g]),tmF,
           '['+TRule(Rules.Items[i]).ID+']: '+MainForm.LS('Condition of the rule:'))
          );
        end;
    end;
   //actions
   for j := 0 to TRule(Rules.Items[i]).Actions.Count-1 do
    begin  
     tmF:=TRAction(TRule(Rules.Items[i]).Actions.Items[j]).Fact;
     g:=IndexOfTemplate(tmF);
     if g=-1 then
      CErrors.AddObject(
       '['+TRule(Rules.Items[i]).ID+']: '+MainForm.LS('Action of the rule:')
        +' '+MainForm.LS('Template')+' "'
        +tmF.ShortName
         +'" '+MainForm.LS('for the fact')+' '+MainForm.LS('is not found')
          ,tmF)
       else
        begin //chk slots
         CErrors.AddStrings(
          CheckSlots(TTemplate(Templates.Items[g]),tmF,
           '['+TRule(Rules.Items[i]).ID+']: '+MainForm.LS('Action of the rule:'))
          );
        end;
    end;  
  end;
 //-----------------------------------------------------
 //chk facts
 for i := 0 to Facts.Count-1 do
  begin 
     tmF:=TFact(Facts.Items[i]);
     g:=IndexOfTemplate(tmF);
     if g=-1 then
      CErrors.AddObject(
       '['+tmF.ID+']: '+MainForm.LS('Template')+' "'+tmF.ShortName
        +'" '+MainForm.LS('for the fact')+' '
         +' '+MainForm.LS('is not found')
          ,tmF)
       else
        begin //chk slots
         CErrors.AddStrings(
          CheckSlots(TTemplate(Templates.Items[g]),tmF,
           '['+tmF.ID+']: ')
          );
        end;
  end;
 Result:=CErrors.Count; 
end;
//----------------------------------------------------------------------------
Function TKnowledgeBase.ShowCErrors(LV:TRzListView):Integer;
var
 i : Integer;
begin
 CheckForCErrors;
 LV.Clear;
 for i := 0 to CErrors.Count-1 do
  LV.AddItem(IntToStr(i+1)+'. '+CErrors.Strings[i],CErrors.Objects[i]);
end;
//----------------------------------------------------------------------------
Function TKnowledgeBase.GetGRules:Integer;
var
 i,c : Integer;
 tmGRule : TGRule;
begin
 for i := 0 to Rules.Count-1 do
  begin
   c:=IndexOfGRule(TRule(Rules.Items[i]));
   if c=-1 then
    AddGRule(TRule(Rules.Items[i]));
  end;
end;
//------------------------------------------------------------------------
Function TSlot.TempValue:string;
var
 i : Integer;
 tmTs : TStringList;
 tmTs1 : TStringList;
begin
 tmTs:=TStringList.Create;
 tmTs1:=TStringList.Create;
 tmTs.Delimiter:=';';
 tmTs.DelimitedText:=StringReplace(Value,' ','_',[rfReplaceAll]);
 for i := 0 to tmTs.Count-1 do
  begin
   tmTs1.Add(
    Trim(StringReplace(tmTs.Strings[i],'_',' ',[rfReplaceAll]))
    );
  end;
 Result:=tmTs1.Text;
end;
//------------------------------------------------------------------------
Function TRule.Order:Integer;
Function OrderByX:Integer;
var
 i,lhs_x_1,lhs_x_2,lhs_w,rhs_x : Integer;
 rhs_x_1,rhs_x_2,rhs_w : Integer;

 x,w : Integer;
 tmI : TImage;
 tmT : TRAction;
 tmT_0 : TCondition;

 center_1,center_2,center_3,center_max : Integer;
begin
if DrawnObjects.Count>0 then
 begin
  //get conditions width
  tmI:=TImage(DrawnObjects.Items[0]);
  lhs_x_1:=tmI.Left;
  tmI:=TImage(DrawnObjects.Items[Conditions.Count-1]);
  lhs_x_2:=tmI.Left+tmI.Width;
  lhs_w:=lhs_x_2-lhs_x_1;

  center_1:=Round(lhs_w/2);

  //set core position
  tmI:=TImage(DrawnObjects.Items[Conditions.Count]);

  center_2:=Round((tmI.Width)/2);

  //get actions width
  tmI:=TImage(DrawnObjects.Items[Conditions.Count+1]);
  rhs_x_1:=tmI.Left;
  tmI:=TImage(DrawnObjects.Items[Conditions.Count+Actions.Count]);
  rhs_x_2:=tmI.Left+tmI.Width;
  rhs_w:=rhs_x_2-rhs_x_1;

  center_3:=Round(rhs_w/2);
  center_max:=0;
  if center_1>center_max then center_max:=center_1;
  if center_2>center_max then center_max:=center_2;
  if center_3>center_max then center_max:=center_3;
//  center_deltas:=TStringList.Create;

  lhs_x_1:=center_max-center_1+5;
  for i := 0 to Conditions.Count-1 do
   begin
    TImage(DrawnObjects.Items[i]).Left:=lhs_x_1;
    tmT_0:=TCondition(Conditions.Items[i]);
    tmT_0.Fact.DrawParams.Values['x']:=
     IntToStr(TImage(DrawnObjects.Items[i]).Left);
    lhs_x_1:=StrToInt(tmT_0.Fact.DrawParams.Values['x'])+
     StrToInt(tmT_0.Fact.DrawParams.Values['w'])+5;
   end;

  TImage(DrawnObjects.Items[Conditions.Count]).Left:=
   center_max-center_2+5;
  DrawParams.Values['x']:=IntToStr(TImage(DrawnObjects.Items[Conditions.Count]).Left);

  rhs_x_1:=center_max-center_3+5;
  for i := 0 to Actions.Count-1 do
   begin
    TImage(DrawnObjects.Items[Conditions.Count+1+i]).Left:=rhs_x_1;
    tmT:=TRAction(Actions.Items[i]);
    tmT.Fact.DrawParams.Values['x']:=
     IntToStr(TImage(DrawnObjects.Items[Conditions.Count+1+i]).Left);
    rhs_x_1:=StrToInt(tmT.Fact.DrawParams.Values['x'])+
     StrToInt(tmT.Fact.DrawParams.Values['w'])+5;
   end;
 end;
end;

begin
 OrderByX;
end;
//------------------------------------------------------------------------
Function TRule.OrderV2(WC:TWinControl;m:Integer):Integer;
Function OrderByX:Integer;
var
 i,lhs_x_1,lhs_x_2,lhs_w,rhs_x : Integer;
 rhs_x_1,rhs_x_2,rhs_w : Integer;

 lhs_y, y, rhs_y, max_lhs_h, max_rhs_h : Integer;

 center_1,center_2,center_3,center_max : Integer;
 center_deltas : TStringList;
begin
//if DrawnObjects.Count>0 then
// begin
  //get conditions width
  lhs_x_1:=StrToInt(TCondition(Conditions.Items[0]).Fact.DrawParams.Values['x'+ID]);

  lhs_x_2:=StrToInt(TCondition(Conditions.Items[Conditions.Count-1]).Fact.DrawParams.Values['x'+ID])+
   StrToInt(TCondition(Conditions.Items[Conditions.Count-1]).Fact.DrawParams.Values['w']);
  lhs_w:=lhs_x_2-lhs_x_1;

  center_1:=Round(lhs_w/2);
  //-------------------------
  //process by y
  //get max condition height
  max_lhs_h:=0;
  for i := 0 to Conditions.Count-1 do
   if max_lhs_h<StrToInt(TCondition(Conditions.Items[i]).Fact.DrawParams.Values['h']) then
    max_lhs_h:=StrToInt(TCondition(Conditions.Items[i]).Fact.DrawParams.Values['h']);

  for i := 0 to Conditions.Count-1 do
    TCondition(Conditions.Items[i]).Fact.DrawParams.Values['y'+ID]:=
     IntToStr(
      Round(
       (max_lhs_h-StrToInt(TCondition(Conditions.Items[i]).Fact.DrawParams.Values['h']))+5
      )
     );
  DrawParams.Values['y'+ID]:=IntToStr(max_lhs_h+5+35);
  max_rhs_h:=0;
//  for i := 0 to Actions.Count-1 do
//   if max_rhs_h<StrToInt(TTemplate(Actions.Items[i]).DrawParams.Values['h']) then
//    max_rhs_h:=StrToInt(TTemplate(Actions.Items[i]).DrawParams.Values['h']);

  for i := 0 to Actions.Count-1 do
    TRAction(Actions.Items[i]).Fact.DrawParams.Values['y'+ID]:=
     IntToStr(
      max_lhs_h+5+35+35+StrToInt(DrawParams.Values['h'])
//      +
//      Round(
//       (max_rhs_h-StrToInt(TTemplate(Actions.Items[i]).DrawParams.Values['h']))+5
 //     )
     );
  //---------------------------
  //set core position
//  tmI:=TImage(DrawnObjects.Items[Conditions.Count]);
  center_2:=Round((StrToInt(DrawParams.Values['w']))/2);

  //get actions width
  rhs_x_1:=StrToInt(TRAction(Actions.Items[0]).Fact.DrawParams.Values['x'+ID]);
  rhs_x_2:=StrToInt(TRAction(Actions.Items[Actions.Count-1]).Fact.DrawParams.Values['x'+ID])+
   StrToInt(TRAction(Actions.Items[Actions.Count-1]).Fact.DrawParams.Values['w']);
  rhs_w:=rhs_x_2-rhs_x_1;

  center_3:=Round(rhs_w/2);
  center_max:=0;
  if center_1>center_max then center_max:=center_1;
  if center_2>center_max then center_max:=center_2;
  if center_3>center_max then center_max:=center_3;
//  center_deltas:=TStringList.Create;

  lhs_x_1:=center_max-center_1+5;
  for i := 0 to Conditions.Count-1 do
   begin
    TCondition(Conditions.Items[i]).Fact.DrawParams.Values['x'+ID]:=IntToStr(lhs_x_1);

    lhs_x_1:=lhs_x_1+
     StrToInt(TCondition(Conditions.Items[i]).Fact.DrawParams.Values['w'])+5;
   end;

  DrawParams.Values['x'+ID]:=IntToStr(center_max-center_2+5);

  rhs_x_1:=center_max-center_3+5;
  for i := 0 to Actions.Count-1 do
   begin
    TRAction(Actions.Items[i]).Fact.DrawParams.Values['x'+ID]:=IntToStr(rhs_x_1);

    rhs_x_1:=rhs_x_1+
     StrToInt(TRAction(Actions.Items[i]).Fact.DrawParams.Values['w'])+5;
   end;
 end;
//end;
var
 i,j : Integer;
begin
 OrderByX;
 if m=1 then
  begin
  j:=-1;
   for i := 0 to WC.ControlCount-1 do
    if WC.Controls[i] is TRzPanel then
     begin
      Inc(j);
      if j<Self.Conditions.Count then //conditions
       begin
        TRzPanel(WC.Controls[i]).Top:=
         StrToInt(TCondition(Self.Conditions.Items[j]).Fact.DrawParams.Values[
          'y'+Self.ID]);
        TRzPanel(WC.Controls[i]).Left:=
         StrToInt(TCondition(Self.Conditions.Items[j]).Fact.DrawParams.Values[
          'x'+Self.ID]);
       end
      else
        if j=Self.Conditions.Count then //core
         begin
          TRzPanel(WC.Controls[i]).Top:=
           StrToInt(Self.DrawParams.Values[
            'y'+Self.ID]);
          TRzPanel(WC.Controls[i]).Left:=
           StrToInt(Self.DrawParams.Values[
            'x'+Self.ID]);
         end
        else
         begin  //actions
          TRzPanel(WC.Controls[i]).Top:=
           StrToInt(TRAction(Self.Actions.Items[
            j-Self.Conditions.Count-1
             ]).Fact.DrawParams.Values['y'+Self.ID]);
          TRzPanel(WC.Controls[i]).Left:=
           StrToInt(TRAction(Self.Actions.Items[
            j-Self.Conditions.Count-1
             ]).Fact.DrawParams.Values['x'+Self.ID]);
         end;
      end;
  end;
end;
//------------------------------------------------------------------------
Function TFact.OrderV2(K4:TObject):Integer;
Function OrderByX(K4:TKnowledgeBase):Integer;
var
 i,j1,j2,j3,j4,j5, lhs_x_1,lhs_x_2,lhs_w : Integer;
 lhs_y, y, max_lhs_h : Integer;

 center_1,center_2,center_max : Integer;
 center_deltas : TStringList;
 tmTs : TStringList;
begin
  tmTs:=TStringList.Create;
    //get used terms
    j1:=K4.IndexOfTemplateV3(Self);
    j2:=0;
    for i := 0 to Slots.Count-1 do
     begin
      if j1>-1 then
       for j3 := 0 to TTemplate(K4.Templates.Items[j1]).Slots.Count-1 do
        if (TSlot(TTemplate(K4.Templates.Items[j1]).Slots.Items[j3]).DataType='Fuzzy')
 //       and
 //         (TSlot(TTemplate(K4.Templates.Items[j1]).Slots.Items[j3]).Name=
 //          TSlot(Slots.Items[i]).Name)
           then
         begin
          j4:=K4.IndexOfFScale(TSlot(TTemplate(tmKb.Templates.Items[j1]).Slots.Items[j3]).Value);
          if j4>-1 then
           begin
            j5:=TFScale(K4.FScales.Items[j4]).ListOfValues.IndexOf(TSlot(Slots.Items[i]).Value);
            if j5>-1 then
            if tmTs.IndexOf(TSlot(Slots.Items[i]).Value)=-1 then
             begin
              tmTs.AddObject(TSlot(Slots.Items[i]).Value,
                TFVar(TFScale(K4.FScales.Items[j4]).ListOfValues.Objects[j5]));
             end;
           end;
         end;
     end;

 if tmTs.Count>0 then
  begin
    lhs_x_1:=StrToInt(TFVar(tmTs.Objects[0]).DrawParams.Values['x'+ID]);

    lhs_x_2:=StrToInt(TFVar(tmTs.Objects[tmTs.Count-1]).DrawParams.Values['x'+ID])+
     StrToInt(TFVar(tmTs.Objects[tmTs.Count-1]).DrawParams.Values['w']);
    lhs_w:=lhs_x_2-lhs_x_1;

    center_1:=Round(lhs_w/2);
    //-------------------------
    //process by y
    //get max  height
    max_lhs_h:=0;
    for i := 0 to tmTs.Count-1 do
     if max_lhs_h<StrToInt(TFVar(tmTs.Objects[i]).DrawParams.Values['h']) then
      max_lhs_h:=StrToInt(TFVar(tmTs.Objects[i]).DrawParams.Values['h']);

    for i := 0 to tmTs.Count-1 do
      TFVar(tmTs.Objects[i]).DrawParams.Values['y'+ID]:=
       IntToStr(35+StrToInt(DrawParams.Values['h']));

    DrawParams.Values['y'+ID]:=IntToStr(5);

    //---------------------------
    //set core position
    center_2:=Round((StrToInt(DrawParams.Values['w']))/2);

    center_max:=0;
    if center_1>center_max then center_max:=center_1;
    if center_2>center_max then center_max:=center_2;
//    if center_3>center_max then center_max:=center_3;
  //  center_deltas:=TStringList.Create;

    lhs_x_1:=center_max-center_1+5;
    for i := 0 to tmTs.Count-1 do
     begin
      TFVar(tmTs.Objects[i]).DrawParams.Values['x'+ID]:=IntToStr(lhs_x_1);

      lhs_x_1:=lhs_x_1+
       StrToInt(TFVar(tmTs.Objects[i]).DrawParams.Values['w'])+5;
     end;

    DrawParams.Values['x'+ID]:=IntToStr(center_max-center_2+5);
   end;
 end;
begin
 OrderByX(TKnowledgeBase(K4));
end;
//------------------------------------------------------------------------
Function TTemplate.OrderV2(K4:TObject):Integer;
Function OrderByX(K4:TKnowledgeBase):Integer;
var
 i,j1,lhs_x_1,lhs_x_2,lhs_w : Integer;

 lhs_y, y, max_lhs_h : Integer;

 center_1,center_2,center_max : Integer;
 center_deltas : TStringList;
 tmTs : TStringList;
begin
  tmTs:=TStringList.Create;
    //get used scales
    for i := 0 to Slots.Count-1 do
     begin
      if TSlot(Slots.Items[i]).DataType='Fuzzy' then
       begin
        j1:=K4.IndexOfFScale(TSlot(Slots.Items[i]).Value);
        if j1>-1 then
        if tmTs.IndexOf(TSlot(Slots.Items[i]).Value)=-1 then
         begin
          tmTs.AddObject(TSlot(Slots.Items[i]).Value,
            TFScale(K4.FScales.Items[j1]));
         end;
       end;
     end;
 if tmTs.Count>0 then
  begin
    lhs_x_1:=StrToInt(TFScale(tmTs.Objects[0]).DrawParams.Values['x'+ID]);

    lhs_x_2:=StrToInt(TFScale(tmTs.Objects[tmTs.Count-1]).DrawParams.Values['x'+ID])+
     StrToInt(TFScale(tmTs.Objects[tmTs.Count-1]).DrawParams.Values['w']);
    lhs_w:=lhs_x_2-lhs_x_1;

    center_1:=Round(lhs_w/2);
    //-------------------------
    //process by y
    //get max  height
    max_lhs_h:=0;
    for i := 0 to tmTs.Count-1 do
     if max_lhs_h<StrToInt(TFScale(tmTs.Objects[i]).DrawParams.Values['h']) then
      max_lhs_h:=StrToInt(TFScale(tmTs.Objects[i]).DrawParams.Values['h']);

    DrawParams.Values['y'+ID]:=IntToStr(5);

    for i := 0 to tmTs.Count-1 do
      TFScale(tmTs.Objects[i]).DrawParams.Values['y'+ID]:=
       IntToStr(35+StrToInt(DrawParams.Values['h'])
       );

    //---------------------------
    //set core position
    center_2:=Round((StrToInt(DrawParams.Values['w']))/2);

    center_max:=0;
    if center_1>center_max then center_max:=center_1;
    if center_2>center_max then center_max:=center_2;
//    if center_3>center_max then center_max:=center_3;
  //  center_deltas:=TStringList.Create;

    lhs_x_1:=center_max-center_1+5;
    for i := 0 to tmTs.Count-1 do
     begin
      TFScale(tmTs.Objects[i]).DrawParams.Values['x'+ID]:=IntToStr(lhs_x_1);

      lhs_x_1:=lhs_x_1+
       StrToInt(TFScale(tmTs.Objects[i]).DrawParams.Values['w'])+5;
     end;

    DrawParams.Values['x'+ID]:=IntToStr(center_max-center_2+5);
   end;
 end;
begin
 OrderByX(TKnowledgeBase(K4));
end;
//------------------------------------------------------------------------
Function TFScale.OrderV2:Integer;
Function OrderByX:Integer;
var
 i,lhs_x_1,lhs_x_2,lhs_w : Integer;
 lhs_y, y, max_lhs_h : Integer;
 center_1,center_2,center_max : Integer;
 center_deltas : TStringList;
begin
 if ListOfValues.Count>0 then
  begin
    lhs_x_1:=StrToInt(TFVar(ListOfValues.Objects[0]).DrawParams.Values['x'+ID]);

    lhs_x_2:=StrToInt(TFVar(ListOfValues.Objects[ListOfValues.Count-1]).DrawParams.Values['x'+ID])+
     StrToInt(TFVar(ListOfValues.Objects[ListOfValues.Count-1]).DrawParams.Values['w']);
    lhs_w:=lhs_x_2-lhs_x_1;

    center_1:=Round(lhs_w/2);
    //-------------------------
    //process by y
    //get max  height
    max_lhs_h:=0;
    for i := 0 to ListOfValues.Count-1 do
     if max_lhs_h<StrToInt(TFVar(ListOfValues.Objects[i]).DrawParams.Values['h']) then
      max_lhs_h:=StrToInt(TFVar(ListOfValues.Objects[i]).DrawParams.Values['h']);

    for i := 0 to ListOfValues.Count-1 do
      TFVar(ListOfValues.Objects[i]).DrawParams.Values['y'+ID]:=
       IntToStr(35+StrToInt(DrawParams.Values['h']));

    DrawParams.Values['y'+ID]:=IntToStr(5);

    //---------------------------
    //set core position
    center_2:=Round((StrToInt(DrawParams.Values['w']))/2);

    center_max:=0;
    if center_1>center_max then center_max:=center_1;
    if center_2>center_max then center_max:=center_2;
//    if center_3>center_max then center_max:=center_3;
  //  center_deltas:=TStringList.Create;

    lhs_x_1:=center_max-center_1+5;
    for i := 0 to ListOfValues.Count-1 do
     begin
      TFVar(ListOfValues.Objects[i]).DrawParams.Values['x'+ID]:=IntToStr(lhs_x_1);

      lhs_x_1:=lhs_x_1+
       StrToInt(TFVar(ListOfValues.Objects[i]).DrawParams.Values['w'])+5;
     end;

    DrawParams.Values['x'+ID]:=IntToStr(center_max-center_2+5);
   end;
 end;
begin
 OrderByX;
end;
//------------------------------------------------------------------------
Function TGRule.Order:Integer;
Function OrderByX:Integer;
var
 i,lhs_x_1,lhs_x_2,lhs_w,rhs_x : Integer;
 rhs_x_1,rhs_x_2,rhs_w : Integer;
 tmI : TImage;
 tmT : TTemplate;

 center_1,center_2,center_3,center_max : Integer;
 center_deltas : TStringList;
begin
if DrawnObjects.Count>0 then
 begin
  //get conditions width
  tmI:=TImage(DrawnObjects.Items[0]);
  lhs_x_1:=tmI.Left;
  tmI:=TImage(DrawnObjects.Items[Conditions.Count-1]);
  lhs_x_2:=tmI.Left+tmI.Width;
  lhs_w:=lhs_x_2-lhs_x_1;

  center_1:=Round(lhs_w/2);

  //set core position
  tmI:=TImage(DrawnObjects.Items[Conditions.Count]);

  center_2:=Round((tmI.Width)/2);

  //get actions width
  tmI:=TImage(DrawnObjects.Items[Conditions.Count+1]);
  rhs_x_1:=tmI.Left;
  tmI:=TImage(DrawnObjects.Items[Conditions.Count+Actions.Count]);
  rhs_x_2:=tmI.Left+tmI.Width;
  rhs_w:=rhs_x_2-rhs_x_1;

  center_3:=Round(rhs_w/2);
  center_max:=0;
  if center_1>center_max then center_max:=center_1;
  if center_2>center_max then center_max:=center_2;
  if center_3>center_max then center_max:=center_3;
//  center_deltas:=TStringList.Create;

  lhs_x_1:=center_max-center_1+5;
  for i := 0 to Conditions.Count-1 do
   begin
    TImage(DrawnObjects.Items[i]).Left:=lhs_x_1;
    tmT:=TTemplate(Conditions.Items[i]);
    tmT.DrawParams.Values['x']:=
     IntToStr(TImage(DrawnObjects.Items[i]).Left);
    lhs_x_1:=StrToInt(tmT.DrawParams.Values['x'])+
     StrToInt(tmT.DrawParams.Values['w'])+5;
   end;

  TImage(DrawnObjects.Items[Conditions.Count]).Left:=
   center_max-center_2+5;
  DrawParams.Values['x']:=IntToStr(TImage(DrawnObjects.Items[Conditions.Count]).Left);

  rhs_x_1:=center_max-center_3+5;
  for i := 0 to Actions.Count-1 do
   begin
    TImage(DrawnObjects.Items[Conditions.Count+1+i]).Left:=rhs_x_1;
    tmT:=TTemplate(Actions.Items[i]);
    tmT.DrawParams.Values['x']:=
     IntToStr(TImage(DrawnObjects.Items[Conditions.Count+1+i]).Left);
    rhs_x_1:=StrToInt(tmT.DrawParams.Values['x'])+
     StrToInt(tmT.DrawParams.Values['w'])+5;
   end;
 end;
end;

begin
 OrderByX;
end;
//------------------------------------------------------------------------
Function TGRule.OrderV2(WC:TWinControl;m:Integer):Integer;
Function OrderByX:Integer;
var
 i,lhs_x_1,lhs_x_2,lhs_w,rhs_x : Integer;
 rhs_x_1,rhs_x_2,rhs_w : Integer;

 lhs_y, y, rhs_y, max_lhs_h, max_rhs_h : Integer;
// tmI : TImage;
// tmT : TTemplate;

 center_1,center_2,center_3,center_max : Integer;
 center_deltas : TStringList;
begin
//if DrawnObjects.Count>0 then
// begin
  //get conditions width
  lhs_x_1:=StrToInt(TTemplate(Conditions.Items[0]).DrawParams.Values['x'+ID]);

  lhs_x_2:=StrToInt(TTemplate(Conditions.Items[Conditions.Count-1]).DrawParams.Values['x'+ID])+
   StrToInt(TTemplate(Conditions.Items[Conditions.Count-1]).DrawParams.Values['w']);
  lhs_w:=lhs_x_2-lhs_x_1;

  center_1:=Round(lhs_w/2);
  //-------------------------
  //process by y
  //get max condition height
  max_lhs_h:=0;
  for i := 0 to Conditions.Count-1 do
   if max_lhs_h<StrToInt(TTemplate(Conditions.Items[i]).DrawParams.Values['h']) then
    max_lhs_h:=StrToInt(TTemplate(Conditions.Items[i]).DrawParams.Values['h']);

  for i := 0 to Conditions.Count-1 do
    TTemplate(Conditions.Items[i]).DrawParams.Values['y'+ID]:=
     IntToStr(
      Round(
       (max_lhs_h-StrToInt(TTemplate(Conditions.Items[i]).DrawParams.Values['h']))+5
      )
     );
  DrawParams.Values['y'+ID]:=IntToStr(max_lhs_h+5+35);
  max_rhs_h:=0;
//  for i := 0 to Actions.Count-1 do
//   if max_rhs_h<StrToInt(TTemplate(Actions.Items[i]).DrawParams.Values['h']) then
//    max_rhs_h:=StrToInt(TTemplate(Actions.Items[i]).DrawParams.Values['h']);

  for i := 0 to Actions.Count-1 do
    TTemplate(Actions.Items[i]).DrawParams.Values['y'+ID]:=
     IntToStr(
      max_lhs_h+5+35+35+StrToInt(DrawParams.Values['h'])
//      +
//      Round(
//       (max_rhs_h-StrToInt(TTemplate(Actions.Items[i]).DrawParams.Values['h']))+5
 //     )
     );
  //---------------------------
  //set core position
//  tmI:=TImage(DrawnObjects.Items[Conditions.Count]);
  center_2:=Round((StrToInt(DrawParams.Values['w']))/2);

  //get actions width
  rhs_x_1:=StrToInt(TTemplate(Actions.Items[0]).DrawParams.Values['x'+ID]);
  rhs_x_2:=StrToInt(TTemplate(Actions.Items[Actions.Count-1]).DrawParams.Values['x'+ID])+
   StrToInt(TTemplate(Actions.Items[Actions.Count-1]).DrawParams.Values['w']);
  rhs_w:=rhs_x_2-rhs_x_1;

  center_3:=Round(rhs_w/2);
  center_max:=0;
  if center_1>center_max then center_max:=center_1;
  if center_2>center_max then center_max:=center_2;
  if center_3>center_max then center_max:=center_3;
//  center_deltas:=TStringList.Create;

  lhs_x_1:=center_max-center_1+5;
  for i := 0 to Conditions.Count-1 do
   begin
    TTemplate(Conditions.Items[i]).DrawParams.Values['x'+ID]:=IntToStr(lhs_x_1);

    lhs_x_1:=lhs_x_1+
     StrToInt(TTemplate(Conditions.Items[i]).DrawParams.Values['w'])+5;
   end;

  DrawParams.Values['x'+ID]:=IntToStr(center_max-center_2+5);

  rhs_x_1:=center_max-center_3+5;
  for i := 0 to Actions.Count-1 do
   begin
    TTemplate(Actions.Items[i]).DrawParams.Values['x'+ID]:=IntToStr(rhs_x_1);

    rhs_x_1:=rhs_x_1+
     StrToInt(TTemplate(Actions.Items[i]).DrawParams.Values['w'])+5;
   end;
 end;
//end;
var
 i,j : Integer;
begin
 OrderByX;
 if m=1 then
  begin
  j:=-1;
   for i := 0 to WC.ControlCount-1 do
    if WC.Controls[i] is TRzPanel then
     begin
      Inc(j);
      if j<Self.Conditions.Count then //conditions
       begin
        TRzPanel(WC.Controls[i]).Top:=
         StrToInt(TTemplate(Self.Conditions.Items[j]).DrawParams.Values[
          'y'+Self.ID]);
        TRzPanel(WC.Controls[i]).Left:=
         StrToInt(TTemplate(Self.Conditions.Items[j]).DrawParams.Values[
          'x'+Self.ID]);
       end
      else
        if j=Self.Conditions.Count then //core
         begin
          TRzPanel(WC.Controls[i]).Top:=
           StrToInt(Self.DrawParams.Values[
            'y'+Self.ID]);
          TRzPanel(WC.Controls[i]).Left:=
           StrToInt(Self.DrawParams.Values[
            'x'+Self.ID]);
         end
        else
         begin  //actions
          TRzPanel(WC.Controls[i]).Top:=
           StrToInt(TTemplate(Self.Actions.Items[
            j-Self.Conditions.Count-1
             ]).DrawParams.Values['y'+Self.ID]);
          TRzPanel(WC.Controls[i]).Left:=
           StrToInt(TTemplate(Self.Actions.Items[
            j-Self.Conditions.Count-1
             ]).DrawParams.Values['x'+Self.ID]);
         end;
      end;
  end;
end;
//------------------------------------------------------------------------
Function TTemplate.Draw(WC:TWinControl):TImage;
function TrancString(s:ShortString;i:Integer):ShortString;
begin
 Result:=s;
 if Length(s)>i then
  try
   Result:=Copy(s,1,i)+'...';
  except
   Result:='';
  end;
end;

var
 r: TRect;
 canvas: TCanvas;
 x,y,w,h,tw,th,pw : Integer;
 tmI : TImage;
 i : Integer;
 tmT : TStringList;
 s1 : ShortString;
begin

try
 if DrawParams.Values['x']='' then
  DrawParams.Add('x=5');
 if DrawParams.Values['y']='' then
  DrawParams.Add('y=5');
 x:=StrToInt(DrawParams.Values['x']);
 y:=StrToInt(DrawParams.Values['y']);

 pw:=0;

 //!!!
 tmT:=TStringList.Create;

 for i := 0 to Slots.Count-1 do
//  if Trim(TSlot(Slots.Items[i]).Value)<>'' then
  begin
   if TSlot(Slots.Items[i]).DataType='' then
    TSlot(Slots.Items[i]).DataType:='String';

   s1:=TrancString(TSlot(Slots.Items[i]).Name,25)+'='+
     TrancString(TSlot(Slots.Items[i]).DataType,10);
   if Trim(TSlot(Slots.Items[i]).Value)<>'' then
    s1:=s1+' = '+TrancString(TSlot(Slots.Items[i]).Value,10);

   tmT.Add(s1);
   if Length(tmT.Strings[tmT.Count-1])>pw then
    pw:=Length(tmT.Strings[tmT.Count-1])+2;
  end;

 s1:=TrancString(Name,30);
 if Length(s1)+8>pw then pw:=Length(s1)+8;

 h:=(13+2)*(tmT.Count+1)+20;
// h:=(tmT.Count+1)*20;
 w:=pw*6+10;

 if DrawParams.Values['h']='' then
  DrawParams.Add('h='+IntToStr(h))
   else DrawParams.Values['h']:=IntToStr(h);
 if DrawParams.Values['w']='' then
  DrawParams.Add('w='+IntToStr(w))
   else DrawParams.Values['w']:=IntToStr(w);

 //TRzPanel(WC).Canvas.MoveTo(0,0);
//TRzPanel(WC).Canvas.LineTo(100,100);
 tmI:=TImage.Create(WC);
 tmI.Parent:=WC;
 tmI.OnDragOver:=MainForm.ScrollBox4.onDragOver;
 tmI.OnDragDrop:=MainForm.ScrollBox4.OnDragDrop;
 tmI.Tag:=1;

 tmI.Top:=y;
 tmI.Left:=x;
 tmI.Width:=w;
 tmI.Height:=h;

 RVMLImage:=tmI;

 canvas:=tmI.Canvas;
// canvas:=TRzPanel(WC).Canvas;
 canvas.Brush.Color :=  $00B8F4FA;
 canvas.Pen.Width := 2;
 canvas.Pen.color := clMaroon;

// canvas.Rectangle(1,1,100,100);

 x:=1; y:=1; h:=h-x; w:=w-y;
 tw:=20;

 canvas.Pen.Style := psSolid; //action

 canvas.Rectangle(x,y,x+w,y+h);  //main contur external
 x:=5; y:=5; h:=h-8; w:=w-8;
 canvas.Rectangle(x,y,x+w,y+h);  //main contur internal
 canvas.Rectangle(x,y,x+w,y+tw);  //template name contur
// canvas.Rectangle(x+w-tw-1,y,x+w,y+tw);  //cf contur

  canvas.Font.style := [fsbold];

  canvas.TextOut(((x+w) div 2)-(canvas.TextWidth(s1) div 2),
    y + 2, s1); //template name

  //show slots
  canvas.Font.style := [];
  th:=y+tw+2;
  for i := 0 to tmT.Count-1 do
   begin
    canvas.TextOut(
     10,th,tmT.Names[i]+' : '+tmT.ValueFromIndex[i]
      );
    th:=th+canvas.TextHeight(tmT.Names[i])+2;
   end;
  canvas.Pen.Width := 1;
  canvas.Brush.Color := clWhite;

//  tmI.OnDblClick:=MainForm.RVMLElementDBClick;
// tmI.OnClick:=MainForm.RVMLElementClick;
  Result:=tmI;
 except
  Result:=nil;
 end;

//  WC.Refresh;
end;
//------------------------------------------------------------------------
Function TTemplate.DrawV2(WC:TWinControl;fs,ss:Integer;doi:string):TRzPanel;
label l1;
var
 r: TRect;
 canvas: TCanvas;
 x,y,w,h,tw,th,pw : Integer;
 tmI3,tmI2 : TImage;
 i,j1,j2,j3,t,j4 : Integer;
 tmT,tmT1 : TStringList;
 s1 : ShortString;


 tmP,tmP1,tmP2 : TRzPanel;
 tmL : TLabel;
 tmL1 : TRzLabel;
 tmKb : TKnowledgeBase;

 needForOrder:Boolean;
begin
try
 needForOrder:=false;
 //-----------------------------------
 tmI3:=TImage.Create(WC);
 tmI3.Parent:=WC;
 tmI3.Align:=alClient;
 tmI3.Tag:=0;
// DrawnObjects1:=TList.Create;
 tmI3.DragMode:=dmAutomatic;
 if fs=0 then tmI3.OnDragOver:=MainForm.ElementDragOver;
 if fs=1 then tmI3.OnDragOver:=TRVMLEForm.ElementDragOver;
 //-----------------------------------

 if DrawParams.IndexOfName('x'+doi)=-1 then
  DrawParams.Add('x'+doi+'=15');
 if DrawParams.IndexOfName('y'+doi)=-1 then
  begin
   DrawParams.Add('y'+doi+'=15');
   needForOrder:=true;
  end;
 x:=StrToInt(DrawParams.Values['x'+doi]);
 y:=StrToInt(DrawParams.Values['y'+doi]);

 tmT:=TStringList.Create;
 tmT1:=TStringList.Create;

 for i := 0 to Slots.Count-1 do
//  if Trim(TSlot(Slots.Items[i]).Value)<>'' then
  begin
   if TSlot(Slots.Items[i]).DataType='' then
    TSlot(Slots.Items[i]).DataType:='String';

   s1:=TSlot(Slots.Items[i]).Name+'='+
     TSlot(Slots.Items[i]).DataType;
   if Trim(TSlot(Slots.Items[i]).Value)<>'' then
    s1:=s1+' = '+Trim(TSlot(Slots.Items[i]).Value);

   tmT.Add(s1);
  end;

 //---------------------------------------------------------
 //preprocessing
 //calculate width
 j1:=70;
 if fs=0 then canvas:=MainForm.Canvas;
 if fs=1 then canvas:=TRVMLEForm.Canvas;
l1:
 tmT1.Clear;
 canvas.Font.Style := [fsBold];
 canvas.Font.Size:=8;
 j2:=Canvas.TextWidth(Name)+8;
// j2:=Round(Length(Name)*7);
 while (j2>j1)and(j1<>250) do
  begin
   if (j1=70) then j1:=140
    else
     if j1=140 then j1:=200
      else
       if j1=200 then j1:=250;
  end;

 for i := 0 to tmT.Count-1 do
  begin
   j4:=-1;
   s1:=tmT.ValueFromIndex[i];
   for j3 := 1 to Length(s1) do
    begin
      if (s1[j3]=';')and(j3<Length(s1)) then
       if s1[j3+1]<>' ' then
        begin
         Insert(' ',s1,j3+1);
         j4:=1;
        end;
    end;
   if j4>-1 then
    begin
//     TSlot(Slots.Items[i]).Value:=s1;
     tmT.ValueFromIndex[i]:=s1;
    end;

   Canvas.Font.Style := [];
   j2:=Canvas.TextWidth(Trim(tmT.Names[i]+' : '+tmT.ValueFromIndex[i]))+8;
//   j2:=Round(Length(Trim(tmT.Names[i]+' : '+tmT.ValueFromIndex[i]))*5.5);
   while (j2>j1)and(j1<>250) do
    begin
     if (j1=70) then j1:=140
      else
       if j1=140 then j1:=200
        else
         if j1=200 then j1:=250;
    end;
  end;

 //calculate heigth
 if fs=0 then
  begin
   STDIClass.AddLabel(MainForm,Name,1,1,j1,clNone,clNone,[fsBold]);
   tmL:=TLabel(MainForm.Components[MainForm.ComponentCount-1]);
  end;
 if fs=1 then
  begin
   STDIClass.AddLabel(TRVMLEForm,Name,1,1,j1,clNone,clNone,[fsBold]);
   tmL:=TLabel(TRVMLEForm.Components[TRVMLEForm.ComponentCount-1]);
  end;
 tmL.WordWrap:=True;
 tmL.AutoSize:=True;
 j2:=tmL.Height+4;

 t:=j2+2;
 tmT1.Add(IntToStr(j2));

 for i := 0 to tmT.Count-1 do
  begin
   tmL.Font.Style:=[];
   tmL.AutoSize:=False;
   tmL.Caption:=Trim(tmT.Names[i]+' : '+tmT.ValueFromIndex[i]);
   tmL.Width:=j1-8;
   tmL.AutoSize:=True;
   j2:=tmL.Height+4;

   t:=t+j2;
   tmT1.Add(IntToStr(j2));
  end;

  j4:=0;
  for i := 0 to tmT1.Count-1 do
   if StrToInt(tmT1.Strings[i])>j4 then j4:=StrToInt(tmT1.Strings[i]);
  if j4>52 then
   begin
    if j1=70 then
     begin
      j1:=140;
      goto l1;
     end;
    if j1=140 then
     begin
      j1:=200;
      goto l1;
     end;
    if j1=200 then
     begin
      j1:=250;
      goto l1;
     end;
    end;

 if DrawParams.IndexOfName('w')=-1 then DrawParams.Add('w='+IntToStr(j1+12))
  else DrawParams.Values['w']:=IntToStr(j1+12);
 if DrawParams.IndexOfName('h')=-1 then DrawParams.Add('h='+IntToStr(t+12))
  else DrawParams.Values['h']:=IntToStr(t+12);

 //main contur external
 tmP:=STDIClass.AddRzPanel(y,x,t+12,j1+12,
  WC,0,alNone,$00B8F4FA,bvNone,bvNone,bsNone,
   '');

 tmP.Tag:=1;
 tmP.DragMode:=dmAutomatic;
// tmP.OnMouseDown:=TRVMLEForm.ElementMouseDown;
 if fs=0 then
  begin
   tmP.OnDragOver:=MainForm.ElementDragOver;
   tmP.OnEndDrag:=MainForm.ElementEndDrag;
  end;
 if fs=1 then
  begin
   tmP.OnDragOver:=TRVMLEForm.ElementDragOver;
   tmP.OnEndDrag:=TRVMLEForm.ElementEndDrag;
  end;

 tmI2:=TImage.Create(tmP);
 tmI2.Parent:=tmP;
 tmI2.Tag:=2;
 tmI2.Top:=0;
 tmI2.Left:=0;
 tmI2.Width:=tmP.Width;
 tmI2.Height:=tmP.Height;

 tmI2.Align:=alClient;
 tmI2.DragMode:=dmAutomatic;
// tmI2.OnMouseDown:=TRVMLEForm.ElementMouseDown;
 if fs=0 then
  begin
   tmI2.OnDragOver:=MainForm.ElementDragOver;
   tmI2.OnEndDrag:=MainForm.ElementEndDrag;
  end;
 if fs=1 then
  begin
   tmI2.OnDragOver:=TRVMLEForm.ElementDragOver;
   tmI2.OnEndDrag:=TRVMLEForm.ElementEndDrag;
  end;
 canvas:=tmI2.Canvas;
 canvas.Pen.Style := psSolid;
 canvas.Brush.Color :=  $00B8F4FA;

 canvas.Pen.Width := 2;
 canvas.Pen.color := clMaroon;
 canvas.Rectangle(1,1,tmI2.Width-1,tmI2.Height-1);  //main contur
 canvas.Rectangle(5,5,tmI2.Width-5,tmI2.Height-5);  //internal contur
 canvas.MoveTo(5,5+StrToInt(tmT1.Strings[0])+1);
 canvas.LineTo(tmI2.Width-6,5+StrToInt(tmT1.Strings[0])+1);

  tmP2:=STDIClass.AddRzPanel(6,6,StrToInt(tmT1.Strings[0])-1,j1-1,
   tmP,0,alCustom,$00B8F4FA,bvNone,bvNone,bsNone,
    Name);
  tmP2.DragMode:=dmAutomatic;
//  tmP2.OnMouseDown:=TRVMLEForm.ElementMouseDown;
  if fs=0 then
   begin
    tmP2.OnDragOver:=MainForm.ElementDragOver;
    tmP2.OnEndDrag:=MainForm.ElementEndDrag;
   end;
  if fs=1 then
   begin
    tmP2.OnDragOver:=TRVMLEForm.ElementDragOver;
    tmP2.OnEndDrag:=TRVMLEForm.ElementEndDrag;
   end;
  tmP2.Tag:=3;
  tmP2.Font.Style:=[fsBold];
//  tmP2.OnMouseMove:=TRVMLEForm.RVMLComponentMouseMove;
  t:=6+StrToInt(tmT1.Strings[0])+1;

 for i := 0 to tmT.Count-1 do
//  if Trim(TSlot(Slots.Items[i]).Value)<>'' then
  begin
    tmP2:=STDIClass.AddRzPanel(t,6+4,StrToInt(tmT1.Strings[i+1]),j1-8,
     tmP,0,alCustom,$00B8F4FA,bvNone,bvNone,bsNone,
      Trim(tmT.Names[i]+' : '+tmT.ValueFromIndex[i]));
    tmP2.Alignment:=taLeftJustify;
    tmP2.DragMode:=dmAutomatic;
//    tmP2.OnMouseDown:=TRVMLEForm.ElementMouseDown;
    if fs=0 then
     begin
      tmP2.OnDragOver:=MainForm.ElementDragOver;
      tmP2.OnEndDrag:=MainForm.ElementEndDrag;
     end;
    if fs=1 then
     begin
      tmP2.OnDragOver:=TRVMLEForm.ElementDragOver;
      tmP2.OnEndDrag:=TRVMLEForm.ElementEndDrag;
     end;
    tmP2.Tag:=100+i;
    t:=t+StrToInt(tmT1.Strings[i+1]);
  end;

  //--------------------------------------------------
  //draw scales
  if ss=1 then
   begin
    y:=y+StrToInt(DrawParams.Values['h'])+35;
    x:=15;
    tmT.Clear;

    if fs=0 then tmKb:=MainForm.GetKBForNode(MainForm.TreeView1.Selected);
    if fs=1 then tmKb:=MainForm.GetKBForNode(TRVMLEForm.TreeView1.Selected);
    j2:=0;
    for i := 0 to Slots.Count-1 do
     begin
      if TSlot(Slots.Items[i]).DataType='Fuzzy' then
       begin
        j1:=tmKb.IndexOfFScale(TSlot(Slots.Items[i]).Value);
        if j1>-1 then
        if tmT.IndexOf(
         TFScale(tmKb.FScales.Items[j1]).Name
        )=-1 then
         begin
          if TFScale(tmKb.FScales.Items[j1]).DrawParams.IndexOfName('x'+doi)=-1 then
           TFScale(tmKb.FScales.Items[j1]).DrawParams.Add('x'+doi+'='+IntToStr(x));
//            else TFScale(tmKb.FScales.Items[j1]).DrawParams.Values[
//             'x'+doi]:=IntToStr(x);
          if TFScale(tmKb.FScales.Items[j1]).DrawParams.IndexOfName('y'+doi)=-1 then
           TFScale(tmKb.FScales.Items[j1]).DrawParams.Add('y'+doi+'='+IntToStr(y));

          TFScale(tmKb.FScales.Items[j1]).DrawV2(WC,fs,0,doi);
          x:=x+10+StrToInt(TFScale(tmKb.FScales.Items[j1]).DrawParams.Values['w']);
          j2:=1;
          tmT.Add(TFScale(tmKb.FScales.Items[j1]).Name);
         end;
       end;
     end;
     if j2=1 then     //draw arrows
      begin
//       if needForOrder then OrderV2(tmKb);

       DrawArrowsV2(tmI3.Canvas,TScrollBox(WC).HorzScrollBar.Position,
        TScrollBox(WC).VertScrollBar.Position,tmKb);
      end;
  end;
  //--------------------------------------------------

  Result:=tmP;
 except
  Result:=nil;
 end;
 //--------------------------------------------------------------
 //output control
 tmT1.Clear;
 for i := 0 to DrawParams.Count-1 do
  if tmT1.IndexOfName(DrawParams.Names[i])=-1 then
   tmT1.Add(DrawParams.Strings[i]);
 DrawParams.Text:=tmT1.Text;
 tmL.Free;
end;
//------------------------------------------------------------------------
Function TRule.DrawArrows(Canvas: TCanvas; sbdX,sbdY:Integer):Integer;
function solve(x1, y1, x2, y2, x3, y3, x4, y4: integer; var xp, yp: integer): boolean;
var a, b, c, d, e, f,
  dt, ds, det, t, s: real;
begin
  a := x2 - x1;
  b := x3 - x4;
  c := x3 - x1;
  d := y2 - y1;
  e := y3 - y4;
  f := y3 - y1;

  det := a * e - b * d;
  if det = 0 then
  begin
    solve := false;
    exit;
  end;
  dt := c * e - f * b;
  ds := a * f - c * d;
  t := dt / det;
  s := ds / det;

  if (0 <= s) and (s <= 1)
    and (0 <= t) and (t <= 1) then
  begin
    xp := round(x1 * (1 - t) + x2 * t)-5;
    yp := round(y1 * (1 - t) + y2 * t)-5;
    solve := true;
  end
  else
  begin
    solve := false;
    exit;
  end;
end;

procedure DrawArrowHead(Canvas: TCanvas; X, Y: Integer; Angle, LW: Extended);
var
  A1, A2: Extended;
  Arrow: array[0..3] of TPoint;
  OldWidth: Integer;
const
  Beta = 0.322;
  LineLen = 4.74;
  CentLen = 3;
begin
  Angle := Pi + Angle;
  Arrow[0] := Point(X, Y);
  A1 := Angle - Beta;
  A2 := Angle + Beta;
  Arrow[1] := Point(X + Round(LineLen * LW * Cos(A1)), Y - Round(LineLen * LW * Sin(A1)));
  Arrow[2] := Point(X + Round(CentLen * LW * Cos(Angle)), Y - Round(CentLen * LW * Sin(Angle)));
  Arrow[3] := Point(X + Round(LineLen * LW * Cos(A2)), Y - Round(LineLen * LW * Sin(A2)));
  OldWidth := Canvas.Pen.Width;
  Canvas.Pen.Width := 1;
  Canvas.Polygon(Arrow);
  Canvas.Pen.Width := OldWidth
end;

procedure DrawArrow(Canvas: TCanvas; X1, Y1, X2, Y2: Integer; LW: Extended; Dash: integer = 0);
var
  Angle: Extended;
begin
  Angle := ArcTan2(Y1 - Y2, X2 - X1);
  if Dash = 1 then canvas.Pen.Style := psDash;
  Canvas.MoveTo(X1, Y1);
  Canvas.LineTo(X2 - Round(2 * LW * Cos(Angle)), Y2 + Round(2 * LW * Sin(Angle)));
  canvas.Pen.Style := psSolid;
  DrawArrowHead(Canvas, X2, Y2, Angle, LW);
end;

procedure DrawArrowV1(from,tom:TImage;typ:Integer;Canvas:TCanvas;sbdX,sbdY:Integer);
var xa, ya: integer;
   xaa, yaa: integer;
  x1, y1, x2, y2: integer;
  dx, dy: integer;
  s: string;
begin
  if (from <> nil) and (tom <> nil) then
  begin
    if not solve(from.Left + (from.width div 2), from.Top + (from.Height div 2),
     tom.Left + (tom.width div 2), tom.Top + (tom.Height div 2),
      from.Left, from.Top, from.Left + from.width, from.Top, xa, ya) then
       if not solve(from.Left + (from.width div 2), from.Top + (from.Height div 2), tom.Left + (tom.width div 2), tom.Top + (tom.Height div 2),  from.Left, from.Top, from.Left, from.Top + from.Height, xa, ya) then
        if not solve(from.Left + (from.width div 2), from.Top + (from.Height div 2), tom.Left + (tom.width div 2), tom.Top + (tom.Height div 2),  from.Left + from.width, from.Top, from.Left + from.width, from.Top + from.Height, xa, ya) then
          if not solve(from.Left + (from.width div 2), from.Top + (from.Height div 2), tom.Left + (tom.width div 2), tom.Top + (tom.Height div 2), from.Left, from.Top + from.Height, from.Left + from.width, from.Top + from.Height, xa, ya) then ;

    if not solve(from.Left + (from.width div 2), from.Top + (from.Height div 2), tom.Left + (tom.width div 2), tom.Top + (tom.Height div 2),  tom.Left, tom.Top, tom.Left + tom.width, tom.Top, xaa, yaa) then
      if not solve(from.Left + (from.width div 2), from.Top + (from.Height div 2), tom.Left + (tom.width div 2), tom.Top + (tom.Height div 2),  tom.Left, tom.Top, tom.Left, tom.Top + tom.Height, xaa, yaa) then
        if not solve(from.Left + (from.width div 2), from.Top + (from.Height div 2), tom.Left + (tom.width div 2), tom.Top + (tom.Height div 2),  tom.Left + tom.width, tom.Top, tom.Left + tom.width, tom.Top + tom.Height, xaa, yaa) then
          if not solve(from.Left + (from.width div 2), from.Top + (from.Height div 2), tom.Left + (tom.width div 2), tom.Top + (tom.Height div 2),  tom.Left, tom.Top + tom.Height, tom.Left + tom.width, tom.Top + tom.Height, xaa, yaa) then ;

    canvas.Pen.Color := clMaroon;

    if typ = 4 then
      DrawArrow(Canvas, xa+sbdX, ya+sbdY, xaa+sbdX, yaa+sbdY, 4, 1)
    else
      DrawArrow(Canvas, xa+sbdX, ya+sbdY, xaa+sbdX, yaa+sbdY, 4, 0);
 {
    if Ne then
    begin
      dx := 6;
      dy := 6;
      if not solve(from.x + from.width div 2, from.y + from.heigth div 2, tom.x + tom.width div 2, tom.y + tom.heigth div 2,  from.x - dx, from.y - dy, from.x + dx + from.width, from.y - dy, x1, y1) then
        if not solve(from.x + from.width div 2, from.y + from.heigth div 2, tom.x + tom.width div 2, tom.y + tom.heigth div 2,  from.x - dx, from.y - dy, from.x - dx, from.y + dy + from.heigth, x1, y1) then
          if not solve(from.x + from.width div 2, from.y + from.heigth div 2, tom.x + tom.width div 2, tom.y + tom.heigth div 2,  from.x + dx + from.width, from.y - dy, from.x + dx + from.width, from.y + dy + from.heigth, x1, y1) then
            if not solve(from.x + from.width div 2, from.y + from.heigth div 2, tom.x + tom.width div 2, tom.y + tom.heigth div 2,  from.x - dx, from.y + dy + from.heigth, from.x + dx + from.width, from.y + dy + from.heigth, x1, y1) then ;
      canvas.Pen.Width := 2;
      canvas.Brush.Color := clInfoBk;
      canvas.Pen.color := $00404080;
      canvas.Ellipse(x1 - dx, y1 - dx, x1 + dx, y1 + dx);
      canvas.Pen.Width := 1;
    end;
  }
    if Typ in [2, 3] then
    begin
      dx := 30;
      dy := 30;
      if not solve(from.Left + (from.width div 2), from.Top + (from.Height div 2), tom.Left + (tom.width div 2), tom.Top + (tom.Height div 2),  tom.Left - dx, tom.Top - dy, tom.Left + dx + tom.width, tom.Top - dy, x1, y1) then
        if not solve(from.Left + (from.width div 2), from.Top + (from.Height div 2), tom.Left + (tom.width div 2), tom.Top + (tom.Height div 2),  tom.Left - dx, tom.Top - dy, tom.Left - dx, tom.Top + dy + tom.Height, x1, y1) then
          if not solve(from.Left + (from.width div 2), from.Top + (from.Height div 2), tom.Left + (tom.width div 2), tom.Top + (tom.Height div 2),  tom.Left + dx + tom.width, tom.Top - dy, tom.Left + dx + tom.width, tom.Top + dy + tom.Height, x1, y1) then
            if not solve(from.Left + (from.width div 2), from.Top + (from.Height div 2), tom.Left + (tom.width div 2), tom.Top + (tom.Height div 2),  tom.Left - dx, tom.Top + dy + tom.Height, tom.Left + dx + tom.width, tom.Top + dy + tom.Height, x1, y1) then ;
      canvas.Pen.Width := 1;
      canvas.Brush.Color := clWhite;
      canvas.Pen.Color := clred;

      dx := 10;
      canvas.Ellipse(x1 - dx + sbdX, y1 - dx+ sbdY, x1 + dx + sbdX, y1 + dx + sbdY);

      if Typ in [3] then
      begin
        s := '-';
        canvas.font.Size := 10;
        canvas.TextOut(x1 - (canvas.TextWidth(s) div 2)+ sbdX,
         y1 - (canvas.TextHeight(s) div 2)+ sbdY, s);
        canvas.font.Size := 8;
      end;

      if Typ in [2] then
      begin
        s := '+';
        canvas.font.Size := 10;
        canvas.TextOut(x1 - (canvas.TextWidth(s) div 2)+ sbdX,
          y1 - (canvas.TextHeight(s) div 2)+ sbdY, s);
        canvas.font.Size := 8;
      end;

      canvas.Pen.Width := 1;
    end;

    canvas.Brush.Color := clwhite;
    canvas.Pen.Color := clblack;
  end;
end;

var
 i : Integer;
 tmI,tmI2 : TImage;
begin
 RVMLImage.Canvas.fillrect(RVMLImage.Canvas.cliprect);
 RVMLImage.Align:=alClient;
 tmI2:=TImage(DrawnObjects.Items[Conditions.Count]); //core

 //for conditions
 for i := 0 to Conditions.Count-1 do
  begin
   tmI:=TImage(DrawnObjects.Items[i]);
   DrawArrowV1(tmI,tmI2,6,Canvas,sbdX,sbdY);
  end;

 //for actions
 for i := 0 to Actions.Count-1 do
  begin
   tmI:=TImage(DrawnObjects.Items[Conditions.Count+1+i]);
   DrawArrowV1(tmI2,tmI,2,Canvas,sbdX,sbdY);
  end;
end;
//------------------------------------------------------------------------
Function TGRule.DrawArrowsV2(Canvas: TCanvas; sbdX,sbdY:Integer):Integer;
var
 i : Integer;
begin
 //clear area
 Canvas.FillRect(Canvas.ClipRect);
 //for conditions
 for i := 0 to Conditions.Count-1 do
  begin
//   tmI:=TImage(DrawnObjects.Items[i]);
   STDIClass.DrawArrowV2(TTemplate(Conditions.Items[i]).DrawParams,
    DrawParams,'',Canvas,psSolid,clMaroon,sbdX,sbdY,ID);
  end;

 //for actions
 for i := 0 to Actions.Count-1 do
  begin
   STDIClass.DrawArrowV2(DrawParams,
    TTemplate(Actions.Items[i]).DrawParams,'',Canvas,psSolid,clMaroon,
     sbdX,sbdY,ID);
  end;
end;
//------------------------------------------------------------------------
Function TFScale.DrawArrowsV2(Canvas: TCanvas; sbdX,sbdY:Integer):Integer;
var
 i : Integer;
begin
 //clear area
 Canvas.FillRect(Canvas.ClipRect);
 //for terms
 for i := 0 to ListOfValues.Count-1 do
  begin
   STDIClass.DrawArrowV2(TFVar(ListOfValues.Objects[i]).DrawParams,
    Self.DrawParams,'',Canvas,psDot,clMaroon,sbdX,sbdY,ID);
  end;
end;
//------------------------------------------------------------------------
Function TTemplate.DrawArrowsV2(Canvas: TCanvas; sbdX,sbdY:Integer;
 K3:TObject):Integer;
var
 i,j1 : Integer;
begin
 //clear area
 Canvas.FillRect(Canvas.ClipRect);
 //for scales
 for i := 0 to Slots.Count-1 do
  begin
    if TSlot(Slots.Items[i]).DataType='Fuzzy' then
     begin
      j1:=TKnowledgeBase(K3).IndexOfFScale(TSlot(Slots.Items[i]).Value);
      if j1>-1 then
       STDIClass.DrawArrowV2(DrawParams,
        TFScale(TKnowledgeBase(K3).FScales.Items[j1]).DrawParams,
         '',Canvas,psDot,clMaroon,sbdX,sbdY,ID);
     end;
  end;
end;
//------------------------------------------------------------------------
Function TFact.DrawArrowsV2(Canvas: TCanvas; sbdX,sbdY:Integer;
 K3:TObject):Integer;
var
 i,j1,j3,j4,j5 : Integer;
begin
 //clear area
 Canvas.FillRect(Canvas.ClipRect);
 //for terms
  j1:=TKnowledgeBase(K3).IndexOfTemplateV3(Self);
// j2:=0;
  for i := 0 to Slots.Count-1 do
   begin
    if j1>-1 then
     for j3 := 0 to TTemplate(TKnowledgeBase(K3).Templates.Items[j1]).Slots.Count-1 do
      if (TSlot(TTemplate(TKnowledgeBase(K3).Templates.Items[j1]).Slots.Items[j3]).DataType='Fuzzy')and
        (TSlot(TTemplate(TKnowledgeBase(K3).Templates.Items[j1]).Slots.Items[j3]).Name=
         TSlot(Slots.Items[i]).Name)then
       begin
        j4:=TKnowledgeBase(K3).IndexOfFScale(TSlot(TTemplate(tmKb.Templates.Items[j1]).Slots.Items[j3]).Value);
        if j4>-1 then
         begin
          j5:=TFScale(TKnowledgeBase(K3).FScales.Items[j4]).ListOfValues.IndexOf(TSlot(Slots.Items[i]).Value);
          if j5>-1 then
           begin
             STDIClass.DrawArrowV2(DrawParams,
              TFVar(TFScale(TKnowledgeBase(K3).FScales.Items[j4]).ListOfValues.Objects[j5]).DrawParams,
               '',Canvas,psDot,clMaroon,sbdX,sbdY,ID);
           end;
         end;
       end;
   end;
end;
//------------------------------------------------------------------------
Function TRule.DrawArrowsV2(Canvas: TCanvas; sbdX,sbdY:Integer):Integer;
var
 i : Integer;
begin
 //clear area
 Canvas.FillRect(Canvas.ClipRect);
 //for conditions
 for i := 0 to Conditions.Count-1 do
  begin
   STDIClass.DrawArrowV2(TCondition(Conditions.Items[i]).Fact.DrawParams,
    DrawParams,'',Canvas,psSolid,clMaroon,sbdX,sbdY,ID);
  end;

 //for actions
 for i := 0 to Actions.Count-1 do
  begin
   STDIClass.DrawArrowV2(DrawParams,
    TRAction(Actions.Items[i]).Fact.DrawParams,TRAction(Actions.Items[i]).&Operator,
     Canvas,psSolid,clMaroon,sbdX,sbdY,ID);
  end;
end;
//------------------------------------------------------------------------
Function TGRule.Draw(WC:TWinControl):TImage;
function TrancString(s:ShortString;i:Integer):ShortString;
begin
 Result:=s;
 if Length(s)>i then
  try
   Result:=Copy(s,1,i)+'...';
  except
   Result:='';
  end;
end;

var
 x,y,y1,y2,i,w,h,cfh,cfw,pw,delta_cf : Integer;
 tmT : TTemplate;
 tmI,tmI2: TImage;
 canvas : TCanvas;
 cf : string;
 needForOrder : Boolean;
 s1 : ShortString;
begin
try
 //-----------------------------------
 tmI2:=TImage.Create(WC);
 tmI2.Parent:=WC;
 tmI2.Align:=alClient;
 //-----------------------------------
 RVMLImage:=tmI2;

 needForOrder:=False;
 DrawnObjects.Clear;
 x:=5; y:=5; y2:=y;
 for i := 0 to Conditions.Count-1 do
  begin
   tmT:=TTemplate(Conditions.Items[i]);
   if tmT.DrawParams.Values['x']='' then
    tmT.DrawParams.Add('x='+IntToStr(x));
//     else tmT.DrawParams.Values['x']:=IntToStr(x);
   if tmT.DrawParams.Values['y']='' then
    tmT.DrawParams.Add('y='+IntToStr(y));
//     else tmT.DrawParams.Values['y']:=IntToStr(y);

   tmI:=tmT.Draw(WC);
   tmI.OnDragOver:=MainForm.ScrollBox4.onDragOver;
   tmI.OnDragDrop:=MainForm.ScrollBox4.OnDragDrop;
   tmI.Tag:=2;

   DrawnObjects.Add(tmI);
   x:=StrToInt(tmT.DrawParams.Values['x'])+
    StrToInt(tmT.DrawParams.Values['w'])+5;

   y1:=StrToInt(tmT.DrawParams.Values['y'])+
     StrToInt(tmT.DrawParams.Values['h']);
   if y1>y2 then y2:=y1;
  end;

 //central block
 y:=y2+35;
 x:=5; h:=40;
 if DrawParams.Values['x']='' then
  begin
   DrawParams.Add('x='+IntToStr(x));
   needForOrder:=True;
  end
  else x:=StrToInt(DrawParams.Values['x']);
 if DrawParams.Values['y']='' then DrawParams.Add('y='+IntToStr(y))
  else y:=StrToInt(DrawParams.Values['y']);

 s1:= TrancString(Name,35);
 w:=(Length(s1)+2)*7+30;
 if w>300 then w:=300;
// if cf='' then
 cf:='-';

// w:=(Length(Name)+2)*7+30;

 cfh:=20;     //20
 cfw:=Length(cf)*6+8;
 delta_cf:=4;
 if cfw<20 then
  begin
   cfw:=20;
   delta_cf:=7;
  end;

 tmI:=TImage.Create(WC);
 tmI.Parent:=WC;
 tmI.OnDragOver:=MainForm.ScrollBox4.onDragOver;
 tmI.OnDragDrop:=MainForm.ScrollBox4.OnDragDrop;
 tmI.Tag:=3;


 if DrawParams.Values['w']='' then DrawParams.Add('w='+IntToStr(w))
  else w:=StrToInt(DrawParams.Values['w']);
 if DrawParams.Values['h']='' then DrawParams.Add('h='+IntToStr(h))
  else h:=StrToInt(DrawParams.Values['h']);

 tmI.Top:=y;
 tmI.Left:=x;
 tmI.Width:=w;
 tmI.Height:=h;

 canvas:=tmI.Canvas;
 canvas.Brush.Color :=  $00B8F4FA;
 canvas.Pen.Width := 2;
 canvas.Pen.color := clMaroon;

 x:=1; y:=1; h:=h-1; w:=w-1;

 canvas.Rectangle(x,y,x+w,y+h);  //main contur
 canvas.Rectangle(x+w-cfw-1,y,x+w,y+cfh);  //cf contur
 canvas.Rectangle(x+w-cfw-1,y+cfh-1,x+w,y+h);  //s contur
 canvas.Font.style := [fsbold];

  canvas.TextOut(((x+w-20) div 2)-(canvas.TextWidth(s1) div 2),
    y + 12, s1); //rule name

  canvas.TextOut(  //cf
   x + w - cfw + delta_cf,
    y + 2, cf);

  canvas.TextOut(  //s
   x + w - cfw + delta_cf,
    y + 22, '-');

   y2:=y2+40+5;
   DrawnObjects.Add(tmI);
 //----------------------------------
 //draw actions
 y:=y2+35+35;
 x:=5;
 for i := 0 to Actions.Count-1 do
  begin
   tmT:=TTemplate(Actions.Items[i]);
   if tmT.DrawParams.Values['x']='' then
    tmT.DrawParams.Add('x='+IntToStr(x));
//     else tmT.DrawParams.Values['x']:=IntToStr(x);
   if tmT.DrawParams.Values['y']='' then
    tmT.DrawParams.Add('y='+IntToStr(y));
//     else tmT.DrawParams.Values['y']:=IntToStr(y);

   tmI:=tmT.Draw(WC);
   tmI.OnDragOver:=MainForm.ScrollBox4.onDragOver;
   tmI.OnDragDrop:=MainForm.ScrollBox4.OnDragDrop;
   tmI.Tag:=4;

   DrawnObjects.Add(tmI);
   x:=StrToInt(tmT.DrawParams.Values['x'])+
    StrToInt(tmT.DrawParams.Values['w'])+5;

   y1:=StrToInt(tmT.DrawParams.Values['y'])+
     StrToInt(tmT.DrawParams.Values['h']);
   if y1>y2 then y2:=y1;
  end;

  //draw arrows
  if DrawnObjects.Count>1 then
   begin
//    if needForOrder then Order;
 //   DrawArrowsV1(tmI2.Canvas,TScrollBox(WC).HorzScrollBar.Position,
 //    TScrollBox(WC).VertScrollBar.Position);
   end;

 except
  Result:=nil;
 end;

end;
//------------------------------------------------------------------------
Function TGRule.DrawV2(WC:TWinControl;fs:Integer;doi:string):TImage;
label l1;
var
 x,y,y1,y2,i,w,h,cfh,cfw,pw,delta_cf : Integer;
 tmT : TTemplate;
 tmI,tmI2: TImage;
 canvas : TCanvas;

 j1,j2,j3,j4,t : Integer;
 tmP,tmP2 : TRzPanel;
 DrawnObjects1 : TList;

 cf : string;
 needForOrder : Boolean;
 s1 : ShortString;
 tmL : TLabel;
 tmT1 : TStringList;
begin
try
 WC.Visible:=False;
 STDIClass.ReleaseObjects(WC);
 tmT1:=TStringList.Create;
 //-----------------------------------
 tmI2:=TImage.Create(WC);
 tmI2.Parent:=WC;
 tmI2.Align:=alClient;
 tmI2.Tag:=0;
// DrawnObjects1:=TList.Create;
//tmP.OnMouseDown:=TRVMLEForm.ElementMouseDown;
 tmI2.DragMode:=dmAutomatic;
 if fs=0 then tmI2.OnDragOver:=MainForm.ElementDragOver;
 if fs=1 then tmI2.OnDragOver:=TRVMLEForm.ElementDragOver;
// tmI2.OnEndDrag:=TRVMLEForm.ElementEndDrag;
 //-----------------------------------
 RVMLImage:=tmI2;

 needForOrder:=False;
 DrawnObjects.Clear;
 x:=15; y:=15; y2:=y;

 if cf='' then cf:='-';

 for i := 0 to Conditions.Count-1 do
  begin
   tmT:=TTemplate(Conditions.Items[i]);

   //!!!
//   tmT.DrawParams.Clear;

   if tmT.DrawParams.IndexOfName('x'+doi)=-1 then
    begin
     tmT.DrawParams.Add('x'+doi+'='+IntToStr(x));
     needForOrder:=True;
    end;
//     else tmT.DrawParams.Values['x']:=IntToStr(x);
   if tmT.DrawParams.IndexOfName('y'+doi)=-1 then
    tmT.DrawParams.Add('y'+doi+'='+IntToStr(y));
//     else tmT.DrawParams.Values['y']:=IntToStr(y);

   tmP2:=tmT.DrawV2(WC,fs,0,doi);
//   tmI.OnDragOver:=TScrollBox(WC).onDragOver;
//   tmI.OnDragDrop:=TScrollBox(WC).OnDragDrop;
//   tmI.Tag:=2;

//   DrawnObjects1.Add(tmP2);
   x:=x+StrToInt(tmT.DrawParams.Values['w'])+5;

   y1:=y+StrToInt(tmT.DrawParams.Values['h']);
   if y1>y2 then y2:=y1;
  end;

 //central block
  //!!!
//  DrawParams.Clear;

 y:=y2+40;
 x:=15; //h:=40;
 if DrawParams.IndexOfName('x'+doi)=-1 then
  begin
   DrawParams.Add('x'+doi+'='+IntToStr(x));
   needForOrder:=True;
  end
  else x:=StrToInt(DrawParams.Values['x'+doi]);
 if DrawParams.IndexOfName('y'+doi)=-1 then DrawParams.Add('y'+doi+'='+IntToStr(y))
  else y:=StrToInt(DrawParams.Values['y'+doi]);

 //---------------------------------------------------------
 //preprocessing
 //calculate width
 //!!!
 if pos(' + ',Name)=0 then s1:=StringReplace(Name,'+',' + ',[rfReplaceAll])
  else s1:=Name;
 if pos(' -> ',s1)=0 then s1:=StringReplace(s1,'>',' -> ',[rfReplaceAll]);

 j1:=70;
l1:
// canvas.Font.Style := [fsBold];
// canvas.Font.Size:=8;
// j2:=Canvas.TextWidth(s1)+8;
 j2:=Round(Length(s1)*7)+10;
 if j2>j1 then
  begin
   if (j1=70) then j1:=140
    else
     if j1=140 then j1:=200;
  end;

 //calculate heigth
 if fs=0 then
  begin
   STDIClass.AddLabel(MainForm,s1,1,1,j1,clNone,clNone,[fsBold]);
   tmL:=TLabel(MainForm.Components[MainForm.ComponentCount-1]);
  end;
 if fs=1 then
  begin
   STDIClass.AddLabel(TRVMLEForm,s1,1,1,j1,clNone,clNone,[fsBold]);
   tmL:=TLabel(TRVMLEForm.Components[TRVMLEForm.ComponentCount-1]);
  end;
 tmL.WordWrap:=True;
 tmL.AutoSize:=True;
 j2:=tmL.Height+4;
 {
 j2:=Round(Length(s1)*8);
 j3:= (j2 div j1);
 j2:= (j2 mod j1);
 if j2>0 then j2:=1 else j2:=0;
 j2:=13*(j2+j3)+4; if j2<28 then j2:=30;
}
 if j2<28 then j2:=30;
 t:=j2;
 if j2>42 then
   begin
    if j1=70 then
     begin
      j1:=140;
      goto l1;
     end;
    if j1=140 then
     begin
      j1:=200;
      goto l1;
     end;
    if j1=200 then
     begin
      j1:=250;
      goto l1;
     end;
    end;

 //main contur external
 tmP:=STDIClass.AddRzPanel(y,x,t+4,j1+30,
  WC,0,alNone,$00B8F4FA,bvNone,bvNone,bsNone,
   '');
 tmP.DragMode:=dmAutomatic;
// tmP.OnMouseDown:=TRVMLEForm.ElementMouseDown;
 if fs=0 then
  begin
   tmP.OnDragOver:=MainForm.ElementDragOver;
   tmP.OnEndDrag:=MainForm.ElementEndDrag;
  end;
 if fs=1 then
  begin
   tmP.OnDragOver:=TRVMLEForm.ElementDragOver;
   tmP.OnEndDrag:=TRVMLEForm.ElementEndDrag;
  end;
 tmP.Tag:=1;

 tmI:=TImage.Create(tmP);
 tmI.Parent:=tmP;
 tmI.Top:=0;
 tmI.Left:=0;
 tmI.Width:=tmP.Width;
 tmI.Height:=tmP.Height;
 tmI.Tag:=2;
 tmI.DragMode:=dmAutomatic;
// tmI.OnMouseDown:=TRVMLEForm.ElementMouseDown;
 if fs=0 then
  begin
   tmI.OnDragOver:=MainForm.ElementDragOver;
   tmI.OnEndDrag:=MainForm.ElementEndDrag;
  end;
 if fs=1 then
  begin
   tmI.OnDragOver:=TRVMLEForm.ElementDragOver;
   tmI.OnEndDrag:=TRVMLEForm.ElementEndDrag;
  end;

 tmI.Align:=alClient;
 canvas:=tmI.Canvas;

 canvas.Pen.Style := psSolid; //action
 canvas.Pen.Width := 2;
 canvas.Brush.Color :=  $00B8F4FA;

 canvas.Pen.color := clMaroon;
 canvas.Rectangle(1,1,tmI.Width,tmI.Height);  //main contur
 canvas.Rectangle(tmI.Width-34,1,tmI.Width,Round(tmI.Height/2)+2);  //cf contur
 canvas.Rectangle(tmI.Width-34,Round(tmI.Height/2),tmI.Width,j2+4);  //priority contur


  tmP2:=STDIClass.AddRzPanel(2,2,j2,j1-7,
   tmP,0,alCustom,$00B8F4FA,bvNone,bvNone,bsNone,
    s1);
  tmP2.Font.Style:=[fsBold];
  tmP2.DragMode:=dmAutomatic;
//  tmP2.OnMouseDown:=TRVMLEForm.ElementMouseDown;
  if fs=0 then
   begin
    tmP2.OnDragOver:=MainForm.ElementDragOver;
    tmP2.OnEndDrag:=MainForm.ElementEndDrag;
   end;
  if fs=1 then
   begin
    tmP2.OnDragOver:=TRVMLEForm.ElementDragOver;
    tmP2.OnEndDrag:=TRVMLEForm.ElementEndDrag;
   end;
  tmP2.Tag:=2;

  tmP2:=STDIClass.AddRzPanel(2,j1-2,Round(tmI.Height/2)-3,30,
   tmP,0,alCustom,$00B8F4FA,bvNone,bvNone,bsNone,
    cf);
  tmP2.Font.Style:=[fsBold];
  tmP2.DragMode:=dmAutomatic;
//  tmP2.OnMouseDown:=TRVMLEForm.ElementMouseDown;
  if fs=0 then
   begin
    tmP2.OnDragOver:=MainForm.ElementDragOver;
    tmP2.OnEndDrag:=MainForm.ElementEndDrag;
   end;
  if fs=1 then
   begin
    tmP2.OnDragOver:=TRVMLEForm.ElementDragOver;
    tmP2.OnEndDrag:=TRVMLEForm.ElementEndDrag;
   end;
  tmP2.Tag:=3;

  tmP2:=STDIClass.AddRzPanel(Round(tmI.Height/2)+1,j1-2,Round(tmI.Height/2)-4,30,
   tmP,0,alCustom,$00B8F4FA,bvNone,bvNone,bsNone,
    '-');
  tmP2.Font.Style:=[fsBold];
  tmP2.DragMode:=dmAutomatic;
//  tmP2.OnMouseDown:=TRVMLEForm.ElementMouseDown;
  if fs=0 then
   begin
    tmP2.OnDragOver:=MainForm.ElementDragOver;
    tmP2.OnEndDrag:=MainForm.ElementEndDrag;
   end;
  if fs=1 then
   begin
    tmP2.OnDragOver:=TRVMLEForm.ElementDragOver;
    tmP2.OnEndDrag:=TRVMLEForm.ElementEndDrag;
   end;
  tmP2.Tag:=4;

 if DrawParams.IndexOfName('w')=-1 then DrawParams.Add('w='+IntToStr(tmP.Width))
  else DrawParams.Values['w']:=IntToStr(tmP.Width);
 if DrawParams.IndexOfName('h')=-1 then DrawParams.Add('h='+IntToStr(tmP.Height))
  else DrawParams.Values['h']:=IntToStr(tmP.Height);
 //---------------------------------------------------------
//  DrawnObjects1.Add(tmP);
 //----------------------------------
 //draw actions
 y:=y+StrToInt(DrawParams.Values['h'])+40;
 x:=15;

 for i := 0 to Actions.Count-1 do
  begin
   tmT:=TTemplate(Actions.Items[i]);

   //!!!
//   tmT.DrawParams.Clear;

   if tmT.DrawParams.IndexOfName('x'+doi)=-1 then
    tmT.DrawParams.Add('x'+doi+'='+IntToStr(x));
//     else tmT.DrawParams.Values['x']:=IntToStr(x);
   if tmT.DrawParams.IndexOfName('y'+doi)=-1 then
    tmT.DrawParams.Add('y'+doi+'='+IntToStr(y));
//     else tmT.DrawParams.Values['y']:=IntToStr(y);

   tmP2:=tmT.DrawV2(WC,fs,0,doi);
//   tmI.OnDragOver:=TScrollBox(WC).onDragOver;
//   tmI.OnDragDrop:=TScrollBox(WC).OnDragDrop;
//   tmI.Tag:=4;

//   DrawnObjects1.Add(tmP);
   x:=StrToInt(tmT.DrawParams.Values['x'+doi])+
    StrToInt(tmT.DrawParams.Values['w'])+5;

   y1:=StrToInt(tmT.DrawParams.Values['y'+doi])+
     StrToInt(tmT.DrawParams.Values['h']);
   if y1>y2 then y2:=y1;
  end;

  if needForOrder then OrderV2(WC,1);
  //draw arrows
   DrawArrowsV2(tmI2.Canvas,TScrollBox(WC).HorzScrollBar.Position,
    TScrollBox(WC).VertScrollBar.Position);

 except
  Result:=nil;
 end;
//--------------------------------------------------------------
//output control
 tmT1.Clear;
 for i := 0 to DrawParams.Count-1 do
  if tmT1.IndexOfName(DrawParams.Names[i])=-1 then
   tmT1.Add(DrawParams.Strings[i]);
 DrawParams.Text:=tmT1.Text;

 WC.Visible:=True;
 tmL.Free;
end;
//------------------------------------------------------------------------
Function TFScale.DrawV2(WC:TWinControl;fs,ts:Integer;doi:string):TRzPanel;
label l1;
var
 x,y,y1,y2,i,w,h,cfh,cfw,pw,delta_cf : Integer;
 tmT : TFVar;
 tmI,tmI2: TImage;
 canvas : TCanvas;

 j1,j2,j3,j4,t : Integer;
 tmP,tmP2 : TRzPanel;
 DrawnObjects1 : TList;

 cf : string;
 needForOrder : Boolean;
 s1 : ShortString;
 tmL : TLabel;
 tmT1,tmTs1 : TStringList;
begin
try
 tmT1:=TStringList.Create;
 tmTs1:=TStringList.Create;
 //-----------------------------------
 tmI2:=TImage.Create(WC);
 tmI2.Parent:=WC;
 tmI2.Align:=alClient;
 tmI2.Tag:=0;
// DrawnObjects1:=TList.Create;
//tmP.OnMouseDown:=TRVMLEForm.ElementMouseDown;
 tmI2.DragMode:=dmAutomatic;
 if fs=0 then tmI2.OnDragOver:=MainForm.ElementDragOver;
 if fs=1 then tmI2.OnDragOver:=TRVMLEForm.ElementDragOver;
// tmI2.OnEndDrag:=TRVMLEForm.ElementEndDrag;
 //-----------------------------------
// RVMLImage:=tmI2;

 needForOrder:=False;
// DrawnObjects.Clear;
 x:=15; y:=15; y2:=y;
 if DrawParams.IndexOfName('x'+doi)=-1 then
  begin
   DrawParams.Add('x'+doi+'='+IntToStr(x));
   needForOrder:=True;
  end
  else x:=StrToInt(DrawParams.Values['x'+doi]);
 if DrawParams.IndexOfName('y'+doi)=-1 then DrawParams.Add('y'+doi+'='+IntToStr(y))
  else y:=StrToInt(DrawParams.Values['y'+doi]);

 tmT1.Add('['+Min+'; '+Max+']');
 tmT1.Add('{'+ShowScaleAsString+'}');
 s1:=Trim(UnitsName); if s1='' then s1:='-';
 tmT1.Add(s1);
 tmT1.Add(FType);

 //---------------------------------------------------------
 //preprocessing
 //calculate width
 j1:=70;
 if fs=0 then canvas:=MainForm.Canvas;
 if fs=1 then canvas:=TRVMLEForm.Canvas;
l1:
 tmTs1.Clear;
 canvas.Font.Style := [fsBold];
 canvas.Font.Size:=8;
 j2:=Canvas.TextWidth(Name)+8;
// j2:=Round(Length(Name)*7);
 while (j2>j1)and(j1<>250) do
  begin
   if (j1=70) then j1:=140
    else
     if j1=140 then j1:=200
      else
       if j1=200 then j1:=250;
  end;

 for i := 0 to tmT1.Count-1 do
  begin
   j4:=-1;
   s1:=tmT1.Strings[i];
   for j3 := 1 to Length(s1) do
    begin
      if (s1[j3]=';')and(j3<Length(s1)) then
       if s1[j3+1]<>' ' then
        begin
         Insert(' ',s1,j3+1);
         j4:=1;
        end;
    end;
   if j4>-1 then
    begin
//     TSlot(Slots.Items[i]).Value:=s1;
     tmT1.ValueFromIndex[i]:=s1;
    end;

   Canvas.Font.Style := [];
   j2:=Canvas.TextWidth(Trim(tmT1.Strings[i]))+8;
//   j2:=Round(Length(Trim(tmT.Names[i]+' : '+tmT.ValueFromIndex[i]))*5.5);
   while (j2>j1)and(j1<>250) do
    begin
     if (j1=70) then j1:=140
      else
       if j1=140 then j1:=200
        else
         if j1=200 then j1:=250;
    end;
  end;

 //calculate heigth
 if fs=0 then
  begin
   STDIClass.AddLabel(MainForm,Name,1,1,j1,clNone,clNone,[fsBold]);
   tmL:=TLabel(MainForm.Components[MainForm.ComponentCount-1]);
  end;
 if fs=1 then
  begin
   STDIClass.AddLabel(TRVMLEForm,Name,1,1,j1,clNone,clNone,[fsBold]);
   tmL:=TLabel(TRVMLEForm.Components[TRVMLEForm.ComponentCount-1]);
  end;
 tmL.WordWrap:=True;
 tmL.AutoSize:=True;
 j2:=tmL.Height+4;

 t:=j2+2;
 tmTs1.Add(IntToStr(j2));

 for i := 0 to tmT1.Count-1 do
  begin
   tmL.Font.Style:=[];
   tmL.AutoSize:=False;
   tmL.Caption:=Trim(tmT1.Strings[i]);
   tmL.Width:=j1-8;
   tmL.AutoSize:=True;
   j2:=tmL.Height+4;

   t:=t+j2;
   tmTs1.Add(IntToStr(j2));
  end;

  j4:=0;
  for i := 0 to tmTs1.Count-1 do
   if StrToInt(tmTs1.Strings[i])>j4 then j4:=StrToInt(tmTs1.Strings[i]);
  if j4>52 then
   begin
    if j1=70 then
     begin
      j1:=140;
      goto l1;
     end;
    if j1=140 then
     begin
      j1:=200;
      goto l1;
     end;
    if j1=200 then
     begin
      j1:=250;
      goto l1;
     end;
    end;

 if DrawParams.IndexOfName('w')=-1 then DrawParams.Add('w='+IntToStr(j1+4))
  else DrawParams.Values['w']:=IntToStr(j1+4);
 if DrawParams.IndexOfName('h')=-1 then DrawParams.Add('h='+IntToStr(t+4))
  else DrawParams.Values['h']:=IntToStr(t+4);

 //main contur external
 tmP:=STDIClass.AddRzPanel(y,x,t+4,j1+4,
  WC,0,alNone,$00B8F4FA,bvNone,bvNone,bsNone,
   '');

 tmP.Tag:=1;
 tmP.DragMode:=dmAutomatic;
// tmP.OnMouseDown:=TRVMLEForm.ElementMouseDown;
 if fs=0 then
  begin
   tmP.OnDragOver:=MainForm.ElementDragOver;
   tmP.OnEndDrag:=MainForm.ElementEndDrag;
  end;
 if fs=1 then
  begin
   tmP.OnDragOver:=TRVMLEForm.ElementDragOver;
   tmP.OnEndDrag:=TRVMLEForm.ElementEndDrag;
  end;

 tmI:=TImage.Create(tmP);
 tmI.Parent:=tmP;
 tmI.Tag:=2;
 tmI.Top:=0;
 tmI.Left:=0;
 tmI.Width:=tmP.Width;
 tmI.Height:=tmP.Height;

 tmI.Align:=alClient;
 tmI.DragMode:=dmAutomatic;
// tmI2.OnMouseDown:=TRVMLEForm.ElementMouseDown;
 if fs=0 then
  begin
   tmI.OnDragOver:=MainForm.ElementDragOver;
   tmI.OnEndDrag:=MainForm.ElementEndDrag;
  end;
 if fs=1 then
  begin
   tmI.OnDragOver:=TRVMLEForm.ElementDragOver;
   tmI.OnEndDrag:=TRVMLEForm.ElementEndDrag;
  end;
 canvas:=tmI.Canvas;
 canvas.Pen.Style := psDot;
 canvas.Brush.Color :=  $00B8F4FA;

 canvas.Pen.Width := 1;
 canvas.Pen.color := clMaroon;
 canvas.Rectangle(1,1,tmI.Width,tmI.Height);  //main contur
// canvas.Rectangle(5,5,tmI2.Width-5,tmI2.Height-5);  //internal contur
 canvas.MoveTo(1,StrToInt(tmTs1.Strings[0])+3);
 canvas.LineTo(tmI.Width,StrToInt(tmTs1.Strings[0])+3);

  tmP2:=STDIClass.AddRzPanel(2,2,StrToInt(tmTs1.Strings[0]),j1,
   tmP,0,alCustom,$00B8F4FA,bvNone,bvNone,bsNone,
    Name);
  tmP2.DragMode:=dmAutomatic;
//  tmP2.OnMouseDown:=TRVMLEForm.ElementMouseDown;
  if fs=0 then
   begin
    tmP2.OnDragOver:=MainForm.ElementDragOver;
    tmP2.OnEndDrag:=MainForm.ElementEndDrag;
   end;
  if fs=1 then
   begin
    tmP2.OnDragOver:=TRVMLEForm.ElementDragOver;
    tmP2.OnEndDrag:=TRVMLEForm.ElementEndDrag;
   end;
  tmP2.Tag:=2;
  tmP2.Font.Style:=[fsBold];
//  tmP2.OnMouseMove:=TRVMLEForm.RVMLComponentMouseMove;
  t:=3+StrToInt(tmTs1.Strings[0])+1;

 for i := 0 to tmT1.Count-1 do
//  if Trim(TSlot(Slots.Items[i]).Value)<>'' then
  begin
    tmP2:=STDIClass.AddRzPanel(t,2+4,StrToInt(tmTs1.Strings[i+1]),j1-6,
     tmP,0,alCustom,$00B8F4FA,bvNone,bvNone,bsNone,
      Trim(tmT1.Strings[i]));
    tmP2.Alignment:=taCenter;
    tmP2.DragMode:=dmAutomatic;
//    tmP2.OnMouseDown:=TRVMLEForm.ElementMouseDown;
    if fs=0 then
     begin
      tmP2.OnDragOver:=MainForm.ElementDragOver;
      tmP2.OnEndDrag:=MainForm.ElementEndDrag;
     end;
    if fs=1 then
     begin
      tmP2.OnDragOver:=TRVMLEForm.ElementDragOver;
      tmP2.OnEndDrag:=TRVMLEForm.ElementEndDrag;
     end;
    tmP2.Tag:=100+i;
    t:=t+StrToInt(tmTs1.Strings[i+1]);
  end;
{
 if DrawParams.IndexOfName('x'+doi)=-1 then
  begin
   DrawParams.Add('x'+doi+'='+IntToStr(x));
   needForOrder:=True;
  end
  else x:=StrToInt(DrawParams.Values['x'+doi]);
 if DrawParams.IndexOfName('y'+doi)=-1 then DrawParams.Add('y'+doi+'='+IntToStr(y))
  else y:=StrToInt(DrawParams.Values['y'+doi]);
 }
 //----------------------------------
 //draw terms
 if ts=1 then
  begin
   y:=y+StrToInt(DrawParams.Values['h'])+35;
   x:=15;

   for i := 0 to ListOfValues.Count-1 do
    begin
     tmT:=TFVar(ListOfValues.Objects[i]);

     if tmT.DrawParams.IndexOfName('x'+doi)=-1 then
      tmT.DrawParams.Add('x'+doi+'='+IntToStr(x));
  //     else tmT.DrawParams.Values['x']:=IntToStr(x);
     if tmT.DrawParams.IndexOfName('y'+doi)=-1 then
      tmT.DrawParams.Add('y'+doi+'='+IntToStr(y));
  //     else tmT.DrawParams.Values['y']:=IntToStr(y);

     tmP2:=tmT.DrawV2(WC,fs,doi);

     x:=StrToInt(tmT.DrawParams.Values['x'+doi])+
      StrToInt(tmT.DrawParams.Values['w'])+5;

//     y1:=StrToInt(tmT.DrawParams.Values['y'+doi])+
//       StrToInt(tmT.DrawParams.Values['h']);
//     if y1>y2 then y2:=y1;
    end;

//   if needForOrder then OrderV2;
    //draw arrows
      DrawArrowsV2(tmI2.Canvas,TScrollBox(WC).HorzScrollBar.Position,
       TScrollBox(WC).VertScrollBar.Position);
  end;
 except
  Result:=nil;
 end;
//--------------------------------------------------------------
//output control
 tmT1.Clear;
 for i := 0 to DrawParams.Count-1 do
  if tmT1.IndexOfName(DrawParams.Names[i])=-1 then
   tmT1.Add(DrawParams.Strings[i]);
 DrawParams.Text:=tmT1.Text;
 tmL.Free;
end;
//------------------------------------------------------------------------
Function TRule.DrawV2(WC:TWinControl;fs:Integer;doi:string):TImage;
label l1;
var
 x,y,y1,y2,i,w,h,cfh,cfw,pw,delta_cf : Integer;
 tmT : TFact;
 tmI,tmI2: TImage;
 canvas : TCanvas;

 j1,j2,j3,j4,t : Integer;
 tmP,tmP2 : TRzPanel;
 DrawnObjects1 : TList;

 cf : string;
 needForOrder : Boolean;
 s1 : ShortString;
 tmL : TLabel;
 tmT1 : TStringList;
begin
try
 WC.Visible:=False;
 tmT1:=TStringList.Create;
 STDIClass.ReleaseObjects(WC);
 //-----------------------------------
 tmI2:=TImage.Create(WC);
 tmI2.Parent:=WC;
 tmI2.Align:=alClient;
 tmI2.Tag:=0;
// DrawnObjects1:=TList.Create;
 tmI2.DragMode:=dmAutomatic;
 if fs=0 then tmI2.OnDragOver:=MainForm.ElementDragOver;
 if fs=1 then tmI2.OnDragOver:=TRVMLEForm.ElementDragOver;
 //-----------------------------------
 RVMLImage:=tmI2;

 needForOrder:=False;
 DrawnObjects.Clear;
 x:=15; y:=15; y2:=y;
 cf:=Self.CF;
 if cf='' then cf:='-';

 for i := 0 to Conditions.Count-1 do
  begin
   tmT:=TCondition(Conditions.Items[i]).Fact;
   if tmT.DrawParams.IndexOfName('x'+doi)=-1 then
    tmT.DrawParams.Add('x'+doi+'='+IntToStr(x));
//     else tmT.DrawParams.Values['x']:=IntToStr(x);
   if tmT.DrawParams.IndexOfName('y'+doi)=-1 then
    tmT.DrawParams.Add('y'+doi+'='+IntToStr(y));
//     else tmT.DrawParams.Values['y']:=IntToStr(y);

   tmP2:=tmT.DrawV2(WC,1,fs,0,doi);
   x:=x+StrToInt(tmT.DrawParams.Values['w'])+5;

   y1:=y+StrToInt(tmT.DrawParams.Values['h']);
   if y1>y2 then y2:=y1;
  end;

 //central block
  //!!!
//  DrawParams.Clear;

 y:=y2+35;
 x:=15; //h:=40;
 if DrawParams.IndexOfName('x'+doi)=-1 then
  begin
   DrawParams.Add('x'+doi+'='+IntToStr(x));
   needForOrder:=True;
  end
  else x:=StrToInt(DrawParams.Values['x'+doi]);
 if DrawParams.IndexOfName('y'+doi)=-1 then DrawParams.Add('y'+doi+'='+IntToStr(y))
  else y:=StrToInt(DrawParams.Values['y'+doi]);

 //---------------------------------------------------------
 //preprocessing
 //calculate width
 //!!!
 if pos(' + ',Name)=0 then s1:=StringReplace(Name,'+',' + ',[rfReplaceAll])
  else s1:=Name;
 if pos(' -> ',s1)=0 then s1:=StringReplace(s1,'>',' -> ',[rfReplaceAll]);

 j1:=70;
 if fs=0 then canvas:=MainForm.Canvas;
 if fs=1 then canvas:=TRVMLEForm.Canvas;
l1:
 canvas.Font.Style := [fsBold];
 canvas.Font.Size:=8;
 j2:=Canvas.TextWidth(s1)+8;
// j2:=Round(Length(s1)*7);
 while (j2>j1)and(j1<>250) do
  begin
   if (j1=70) then j1:=140
    else
     if j1=140 then j1:=200
      else
       if j1=200 then j1:=250;
  end;

 //calculate heigth
 if fs=0 then
  begin
   STDIClass.AddLabel(MainForm,s1,1,1,j1,clNone,clNone,[fsBold]);
   tmL:=TLabel(MainForm.Components[MainForm.ComponentCount-1]);
  end;
 if fs=1 then
  begin
   STDIClass.AddLabel(TRVMLEForm,s1,1,1,j1,clNone,clNone,[fsBold]);
   tmL:=TLabel(TRVMLEForm.Components[TRVMLEForm.ComponentCount-1]);
  end;
 tmL.WordWrap:=True;
 tmL.AutoSize:=True;
 j2:=tmL.Height+4;

// j2:=Round(Length(s1)*8);
{ j3:= (j2 div j1);
 j2:= (j2 mod j1);
 if j2>0 then j2:=1 else j2:=0;
 j2:=13*(j2+j3)+4;
 }
 if j2<28 then j2:=30;

 t:=j2;
 if j2>42 then
   begin
    if j1=70 then
     begin
      j1:=140;
      goto l1;
     end;
    if j1=140 then
     begin
      j1:=200;
      goto l1;
     end;
    if j1=200 then
     begin
      j1:=250;
      goto l1;
     end;
    end;

 //main contur external
 tmP:=STDIClass.AddRzPanel(y,x,t+4,j1+30,
  WC,0,alNone,$00B8F4FA,bvNone,bvNone,bsNone,
   '');
 tmP.DragMode:=dmAutomatic;
// tmP.OnMouseDown:=TRVMLEForm.ElementMouseDown;
 if fs=0 then
  begin
   tmP.OnDragOver:=MainForm.ElementDragOver;
   tmP.OnEndDrag:=MainForm.ElementEndDrag;
  end;
 if fs=1 then
  begin
   tmP.OnDragOver:=TRVMLEForm.ElementDragOver;
   tmP.OnEndDrag:=TRVMLEForm.ElementEndDrag;
  end;
 tmP.Tag:=1;

 tmI:=TImage.Create(tmP);
 tmI.Parent:=tmP;
 tmI.Top:=0;
 tmI.Left:=0;
 tmI.Width:=tmP.Width;
 tmI.Height:=tmP.Height;
 tmI.Tag:=2;
 tmI.DragMode:=dmAutomatic;
// tmI.OnMouseDown:=TRVMLEForm.ElementMouseDown;
 if fs=0 then
  begin
   tmI.OnDragOver:=MainForm.ElementDragOver;
   tmI.OnEndDrag:=MainForm.ElementEndDrag;
  end;
 if fs=1 then
  begin
   tmI.OnDragOver:=TRVMLEForm.ElementDragOver;
   tmI.OnEndDrag:=TRVMLEForm.ElementEndDrag;
  end;

 tmI.Align:=alClient;
 canvas:=tmI.Canvas;

 canvas.Pen.Style := psSolid; //action
 canvas.Pen.Width := 2;
 canvas.Brush.Color :=  $00B8F4FA;

 canvas.Pen.color := clMaroon;
 canvas.Rectangle(1,1,tmI.Width,tmI.Height);  //main contur
 canvas.Rectangle(tmI.Width-34,1,tmI.Width,Round(tmI.Height/2)+2);  //cf contur
 canvas.Rectangle(tmI.Width-34,Round(tmI.Height/2),tmI.Width,j2+4);  //priority contur


  tmP2:=STDIClass.AddRzPanel(2,2,j2,j1-7,
   tmP,0,alCustom,$00B8F4FA,bvNone,bvNone,bsNone,
    s1);
  tmP2.Font.Style:=[fsBold];
  tmP2.DragMode:=dmAutomatic;
//  tmP2.OnMouseDown:=TRVMLEForm.ElementMouseDown;
  if fs=0 then
   begin
    tmP2.OnDragOver:=MainForm.ElementDragOver;
    tmP2.OnEndDrag:=MainForm.ElementEndDrag;
   end;
  if fs=1 then
   begin
    tmP2.OnDragOver:=TRVMLEForm.ElementDragOver;
    tmP2.OnEndDrag:=TRVMLEForm.ElementEndDrag;
   end;
  tmP2.Tag:=2;

  tmP2:=STDIClass.AddRzPanel(2,j1-2,Round(tmI.Height/2)-3,30,
   tmP,0,alCustom,$00B8F4FA,bvNone,bvNone,bsNone,
    cf);
  tmP2.Font.Style:=[fsBold];
  tmP2.DragMode:=dmAutomatic;
//  tmP2.OnMouseDown:=TRVMLEForm.ElementMouseDown;
  if fs=0 then
   begin
    tmP2.OnDragOver:=MainForm.ElementDragOver;
    tmP2.OnEndDrag:=MainForm.ElementEndDrag;
   end;
  if fs=1 then
   begin
    tmP2.OnDragOver:=TRVMLEForm.ElementDragOver;
    tmP2.OnEndDrag:=TRVMLEForm.ElementEndDrag;
   end;
  tmP2.Tag:=3;

  tmP2:=STDIClass.AddRzPanel(Round(tmI.Height/2)+1,j1-2,Round(tmI.Height/2)-4,30,
   tmP,0,alCustom,$00B8F4FA,bvNone,bvNone,bsNone,
    Salience);
  tmP2.Font.Style:=[fsBold];
  tmP2.DragMode:=dmAutomatic;
//  tmP2.OnMouseDown:=TRVMLEForm.ElementMouseDown;
  if fs=0 then
   begin
    tmP2.OnDragOver:=MainForm.ElementDragOver;
    tmP2.OnEndDrag:=MainForm.ElementEndDrag;
   end;
  if fs=1 then
   begin
    tmP2.OnDragOver:=TRVMLEForm.ElementDragOver;
    tmP2.OnEndDrag:=TRVMLEForm.ElementEndDrag;
   end;
  tmP2.Tag:=4;

 if DrawParams.IndexOfName('w')=-1 then DrawParams.Add('w='+IntToStr(tmP.Width))
  else DrawParams.Values['w']:=IntToStr(tmP.Width);
 if DrawParams.IndexOfName('h')=-1 then DrawParams.Add('h='+IntToStr(tmP.Height))
  else DrawParams.Values['h']:=IntToStr(tmP.Height);
 //---------------------------------------------------------
//  DrawnObjects1.Add(tmP);
 //----------------------------------
 //draw actions
 y:=y+StrToInt(DrawParams.Values['h'])+35;
 x:=15;

 for i := 0 to Actions.Count-1 do
  begin
   tmT:=TRAction(Actions.Items[i]).Fact;

   //!!!
//   tmT.DrawParams.Clear;

   if tmT.DrawParams.IndexOfName('x'+doi)=-1 then
    tmT.DrawParams.Add('x'+doi+'='+IntToStr(x));
//     else tmT.DrawParams.Values['x']:=IntToStr(x);
   if tmT.DrawParams.IndexOfName('y'+doi)=-1 then
    tmT.DrawParams.Add('y'+doi+'='+IntToStr(y));
//     else tmT.DrawParams.Values['y']:=IntToStr(y);

   tmP2:=tmT.DrawV2(WC,2,fs,0,doi);
//   tmI.OnDragOver:=TScrollBox(WC).onDragOver;
//   tmI.OnDragDrop:=TScrollBox(WC).OnDragDrop;
//   tmI.Tag:=4;

//   DrawnObjects1.Add(tmP);
   x:=StrToInt(tmT.DrawParams.Values['x'+doi])+
    StrToInt(tmT.DrawParams.Values['w'])+5;

   y1:=StrToInt(tmT.DrawParams.Values['y'+doi])+
     StrToInt(tmT.DrawParams.Values['h']);
   if y1>y2 then y2:=y1;
  end;

  if needForOrder then OrderV2(WC,1);

  //draw arrows
    DrawArrowsV2(tmI2.Canvas,TScrollBox(WC).HorzScrollBar.Position,
     TScrollBox(WC).VertScrollBar.Position);
 except
  Result:=nil;
 end;
//--------------------------------------------------------------
//output control
 tmT1.Clear;
 for i := 0 to DrawParams.Count-1 do
  if tmT1.IndexOfName(DrawParams.Names[i])=-1 then
   tmT1.Add(DrawParams.Strings[i]);
 DrawParams.Text:=tmT1.Text;

 WC.Visible:=True;
 tmL.Free;
end;
//------------------------------------------------------------------------
Function TRule.Draw(WC:TWinControl):TImage;
function TrancString(s:ShortString;i:Integer):ShortString;
begin
 Result:=s;
 if Length(s)>i then
  try
   Result:=Copy(s,1,i)+'...';
  except
   Result:='';
  end;
end;

var
 x,y,y1,y2,i,w,h,cfh,cfw,pw,delta_cf : Integer;
 tmLHS : TCondition;
 tmRHS : TRAction;
 tmI,tmI2 : TImage;
 canvas : TCanvas;
// cf : string;
 needForOrder : Boolean;
 s1 : ShortString;
 cf_f : Extended;
begin
 //-----------------------------------
 tmI2:=TImage.Create(WC);
 tmI2.Parent:=WC;
 tmI2.Align:=alClient;
// tmI2.Canvas.Brush.Color:=clGreen;
 //-----------------------------------
 RVMLImage:=tmI2;

 needForOrder:=False;
 DrawnObjects.Clear;
try

 x:=5; y:=5; y2:=y;
 for i := 0 to Conditions.Count-1 do
  begin
   tmLHS:=TCondition(Conditions.Items[i]);
   if tmLHS.Fact.DrawParams.Values['x']='' then
    tmLHS.Fact.DrawParams.Add('x='+IntToStr(x));
//     else tmLHS.Fact.DrawParams.Values['x']:=IntToStr(x);
   if tmLHS.Fact.DrawParams.Values['y']='' then
    tmLHS.Fact.DrawParams.Add('y='+IntToStr(y));
//     else tmLHS.Fact.DrawParams.Values['y']:=IntToStr(y);

   tmI:=tmLHS.Fact.Draw(WC,1);
   tmI.OnDragOver:=MainForm.ScrollBox4.onDragOver;
   tmI.OnDragDrop:=MainForm.ScrollBox4.OnDragDrop;
   tmI.Tag:=6;

   DrawnObjects.Add(tmI);
   x:=StrToInt(tmLHS.Fact.DrawParams.Values['x'])+
    StrToInt(tmLHS.Fact.DrawParams.Values['w'])+5;

   y1:=StrToInt(tmLHS.Fact.DrawParams.Values['y'])+
     StrToInt(tmLHS.Fact.DrawParams.Values['h']);
   if y1>y2 then y2:=y1;
  end;

 //central block
 y:=y2+35;
 x:=5; h:=40;
 if DrawParams.Values['x']='' then
  begin
   DrawParams.Add('x='+IntToStr(x));
   needForOrder:=True;
  end
  else x:=StrToInt(DrawParams.Values['x']);
 if DrawParams.Values['y']='' then DrawParams.Add('y='+IntToStr(y))
  else y:=StrToInt(DrawParams.Values['y']);

// if cf='' then
 cf:=StringReplace(cf,'.',',',[rfReplaceAll]);
 if not TryStrToFloat(cf,cf_f) then cf:='-';

 s1:= TrancString(Name,35);
 w:=(Length(s1)+2)*7+30;
 if w>300 then w:=300;

 cfh:=20;     //20
 cfw:=Length(cf)*6+8;
 delta_cf:=4;
 if cfw<20 then
  begin
   cfw:=20;
   delta_cf:=7;
  end;

 tmI:=TImage.Create(WC);
 tmI.Parent:=WC;
 tmI.OnDragOver:=MainForm.ScrollBox4.onDragOver;
 tmI.OnDragDrop:=MainForm.ScrollBox4.OnDragDrop;
 tmI.Tag:=7;


 if DrawParams.Values['w']='' then DrawParams.Add('w='+IntToStr(w))
  else w:=StrToInt(DrawParams.Values['w']);
 if DrawParams.Values['h']='' then DrawParams.Add('h='+IntToStr(h))
  else h:=StrToInt(DrawParams.Values['h']);

 tmI.Top:=y;
 tmI.Left:=x;
 tmI.Width:=w;
 tmI.Height:=h;

 canvas:=tmI.Canvas;
 canvas.Brush.Color :=  $00B8F4FA;
 canvas.Pen.Width := 2;
 canvas.Pen.color := clMaroon;

 x:=1; y:=1; h:=h-1; w:=w-1;
 canvas.Rectangle(x,y,x+w,y+h);  //main contur
 canvas.Rectangle(x+w-cfw-1,y,x+w,y+cfh);  //cf contur
 canvas.Rectangle(x+w-cfw-1,y+cfh-1,x+w,y+h);  //s contur
 canvas.Font.style := [fsbold];

  canvas.TextOut(((x+w-cfw) div 2)-(canvas.TextWidth(s1) div 2),
    y + 12, s1); //rule name

  canvas.TextOut(  //cf
   x + w - cfw + delta_cf,
    y + 2, cf);

  canvas.TextOut(  //s
   x + w - cfw + delta_cf,
    y + cfh+2, Salience);

   y2:=y2+40+5;
   DrawnObjects.Add(tmI);
 //----------------------------------

 y:=y2+35+35;
 x:=5;
 for i := 0 to Actions.Count-1 do
  begin
   tmRHS:=TRAction(Actions.Items[i]);
   if tmRHS.Fact.DrawParams.Values['x']='' then
    tmRHS.Fact.DrawParams.Add('x='+IntToStr(x));
//     else tmRHS.Fact.DrawParams.Values['x']:=IntToStr(x);
   if tmRHS.Fact.DrawParams.Values['y']='' then
    tmRHS.Fact.DrawParams.Add('y='+IntToStr(y));
//     else tmRHS.Fact.DrawParams.Values['y']:=IntToStr(y);

   tmI:=tmRHS.Fact.Draw(WC,2);
   tmI.OnDragOver:=MainForm.ScrollBox4.onDragOver;
   tmI.OnDragDrop:=MainForm.ScrollBox4.OnDragDrop;
   tmI.Tag:=8;

   DrawnObjects.Add(tmI);

   x:=StrToInt(tmRHS.Fact.DrawParams.Values['x'])+
    StrToInt(tmRHS.Fact.DrawParams.Values['w'])+5;

   y1:=StrToInt(tmRHS.Fact.DrawParams.Values['y'])+
     StrToInt(tmRHS.Fact.DrawParams.Values['h']);
   if y1>y2 then y2:=y1;
  end;
   //draw arrows
  if DrawnObjects.Count>1 then
   begin
//    if needForOrder then Order;
    DrawArrows(tmI2.Canvas,TScrollBox(WC).HorzScrollBar.Position,
     TScrollBox(WC).VertScrollBar.Position);
   end;

except
 Result:=nil;
end;

end;

//------------------------------------------------------------------------
Function TTemplate.ShowAsTable(WC:TWinControl;T,F:Integer):Integer;
var
 i,c : Integer;
 tmP,tmP1 : TRzPanel;
begin
STDIClass.ReleaseObjects(WC);
if F=1 then
 begin
  tmP:=STDIClass.AddRzPanel(T,1,20,500,
   WC,0,alTop,clCream,bvNone,bvNone,bsNone,
    Name+':');
  T:=T+tmP.Height;
 end;

c:=0;
for i := 0 to Slots.Count-1 do
// if Trim(TSlot(Slots.Items[i]).Value)<>'' then
  begin
   Inc(c);
   tmP:=STDIClass.AddRzPanel(T,1,20,500,
    WC,i,alTop,clCream,bvNone,bvNone,bsNone,'');
   tmP.AutoSize:=True;

   //slot name
   tmP1:=STDIClass.AddRzPanel(1,1,10,200,
//   tmP1:=STDIClass.AddRzPanel(1,1,10,120,
    tmP,i,alLeft,clCream,bvNone,bvNone,bsSingle,
     TSlot(Slots.Items[i]).Name);
   tmP1.Height:=20*(((Length(TSlot(Slots.Items[i]).Name)*8) div 120)+1);
   if tmP.Height<tmP1.Height then tmP.Height:=tmP1.Height;

   //slot datatype
   tmP1:=STDIClass.AddRzPanel(1,190,10,60,
    tmP,i,alLeft,clCream,bvNone,bvNone,bsSingle,
     TSlot(Slots.Items[i]).DataType);

   //slot default value
   tmP1:=STDIClass.AddRzPanel(1,210,10,130,
    tmP,i,alLeft,clCream,bvNone,bvNone,bsSingle,
     TSlot(Slots.Items[i]).Value);
   tmP1.Font.Style:=[];
   tmP1.Font.Color:=clGreen;
   tmP1.Height:=20*(((Length(TSlot(Slots.Items[i]).Value)*8) div 80)+1);
   if tmP.Height<tmP1.Height then tmP.Height:=tmP1.Height;

   //slot description
   tmP1:=STDIClass.AddRzPanel(1,250,10,80,
    tmP,i,alClient,clCream,bvNone,bvNone,bsSingle,
     TSlot(Slots.Items[i]).Description);
//   tmP1.Font.Style:=[fsBold];
   tmP1.Font.Color:=clGreen;
//   if 20*(((Length(TSlot(Slots.Items[i]).Value)*7) div tmP1.Width)+1)>tmP.Height then
//    tmP.Height:=20*(((Length(TSlot(Slots.Items[i]).Value)*7) div tmP1.Width)+1);

   T:=T+tmP.Height;
  end;
 Result:=T;
 WC.Tag:=c;
end;
//------------------------------------------------------------------------
Function TTemplate.ShowAsPanelForObjectInspector(WC:TWinControl;T,F:Integer):Integer;
var
 i,c : Integer;
 tmP,tmP1 : TRzPanel;
begin
 WC.Visible:=False;
 STDIClass.ReleaseObjects(WC);

  tmP:=STDIClass.AddRzPanel(T,1,20,500,
   WC,0,alTop,clCream,bvNone,bvNone,bsNone,
    Name+':');
  T:=T+tmP.Height;

c:=0;
for i := 0 to Slots.Count-1 do
// if Trim(TSlot(Slots.Items[i]).Value)<>'' then
  begin
   Inc(c);
   tmP:=STDIClass.AddRzPanel(T,1,20,500,
    WC,i,alTop,clCream,bvNone,bvNone,bsNone,'');
   tmP.AutoSize:=True;

   //slot name
   tmP1:=STDIClass.AddRzPanel(1,1,10,200,
//   tmP1:=STDIClass.AddRzPanel(1,1,10,120,
    tmP,i,alLeft,clCream,bvNone,bvNone,bsSingle,
     TSlot(Slots.Items[i]).Name);
   tmP1.Height:=20*(((Length(TSlot(Slots.Items[i]).Name)*8) div 120)+1);
   if tmP.Height<tmP1.Height then tmP.Height:=tmP1.Height;

   //slot datatype
   tmP1:=STDIClass.AddRzPanel(1,190,10,60,
    tmP,i,alLeft,clCream,bvNone,bvNone,bsSingle,
     TSlot(Slots.Items[i]).DataType);

   //slot default value
   tmP1:=STDIClass.AddRzPanel(1,210,10,130,
    tmP,i,alLeft,clCream,bvNone,bvNone,bsSingle,
     TSlot(Slots.Items[i]).Value);
   tmP1.Font.Style:=[];
   tmP1.Font.Color:=clGreen;
   tmP1.Height:=20*(((Length(TSlot(Slots.Items[i]).Value)*8) div 80)+1);
   if tmP.Height<tmP1.Height then tmP.Height:=tmP1.Height;

   //slot description
   tmP1:=STDIClass.AddRzPanel(1,250,10,80,
    tmP,i,alClient,clCream,bvNone,bvNone,bsSingle,
     TSlot(Slots.Items[i]).Description);
//   tmP1.Font.Style:=[fsBold];
   tmP1.Font.Color:=clGreen;
//   if 20*(((Length(TSlot(Slots.Items[i]).Value)*7) div tmP1.Width)+1)>tmP.Height then
//    tmP.Height:=20*(((Length(TSlot(Slots.Items[i]).Value)*7) div tmP1.Width)+1);

   T:=T+tmP.Height;
  end;
 WC.Visible:=True;
 Result:=T;
// WC.Tag:=c;
end;
//------------------------------------------------------------------------
Function TRule.ShowAsTable(WC:TWinControl;T,L,ti:Integer):Integer;
Function GetWidth_(hi,cnt:Integer):Integer;
var
 i : Integer;
begin
 Result:=0;
 for i := hi-1 downto 0 do
  begin
   Result:=Result+StrToInt(HeaderWidths.ValueFromIndex[i]);
   Dec(cnt);
   if cnt=0 then Break;
  end;
end;
//-------------------
Function ShowFactAsTable_(WC:TWinControl;F:TFact;L,ti,hi:Integer):Integer;
var
 i2,ti2,j1,j2,hw,j3,j4,j5 : Integer;
 tmP,tmP1,tmP2,tmP3 : TRzPanel;
begin
   i2:=GetWidth_(hi+F.Slots.Count,F.Slots.Count);
   tmP:=STDIClass.AddRzPanel(1,L,20,i2,
    WC,0,alLeft,clCream,bvNone,bvNone,bsNone,
     '');

 for i2 := 0 to F.Slots.Count-1 do
  begin
   hw:=StrToInt(HeaderWidths.ValueFromIndex[hi]);

   j2:=Length(TSlot(F.Slots.Items[i2]).Value)*7;
   if (j2>hw)and(hw=70) then
    begin
     WC.Parent.Width:=WC.Parent.Width+70;
     WC.Width:=140;  //2
     HeaderWidths.ValueFromIndex[hi]:='140';
     hw:=140;
     for j4 := 1 to WC.Parent.ControlCount-2 do
      begin
       if j4=1 then  //header
        begin
         tmP2:=TRzPanel(WC.Parent.Controls[j4]);  //header container
         tmP2.Width:=tmP2.Width+70;
         tmP3:=TRzPanel(tmP2.Components[tmP.ComponentIndex]); //fact header container
         tmP3.Width:=tmP3.Width+70;
         TRzPanel(tmP3.Components[1]).Width:=TRzPanel(tmP3.Components[1]).Width+70;
         TRzPanel(TRzPanel(tmP3.Components[1]).Components[i2]).Width:=140;
        end
       else
        begin   //rule
         tmP2:=TRzPanel(WC.Parent.Controls[j4]);  //rule container
         tmP3:=TRzPanel(tmP2.Components[tmP.ComponentIndex]); //fact container
         TRzPanel(tmP3.Components[i2]).Width:=140;
        end;
      end;
    end;

   Inc(hi);
   j1:=Length(TSlot(F.Slots.Items[i2]).Value)*7;
   j2:= (j1 div hw);
   j1:= (j1 mod hw);
   if j1>0 then j1:=1 else j1:=0;

   j1:=20*(j2+j1);
   if j1>tmP.Height then
    begin
     j2:=j1-tmP.Height;
     tmP.Parent.Parent.Height:=tmP.Parent.Parent.Height+j2;
     tmP.Parent.Height:=tmP.Parent.Height+j2;
     tmP.Height:=tmP.Height+j2;
    end;

   ti2:=ti+i2;
   if tmP.ControlCount=0 then j3:=1
    else
     j3:=tmP.Width-hw;

   tmP1:=STDIClass.AddRzPanel(1,j3,j1,hw,
//   STDIClass.AddRzPanel(1,F.Slots.Count*75,20,75,
    tmP,ti2,alLeft,clCream,bvNone,bvNone,bsSingle,
     TSlot(F.Slots.Items[i2]).Value
//     IntToStr(ti2)
      );
  end;
  for j4 := 2 to WC.Parent.ControlCount-2 do
   begin
     tmP2:=TRzPanel(WC.Parent.Controls[j4]);  //rule container
     tmP2.Width:=tmP.Width;
     tmP3:=TRzPanel(tmP2.Components[tmP.ComponentIndex]); //fact container
     tmP3.Width:=tmP.Width;
   end;

 Result:=hi;
end;
//-------------------
var
 i,c,i1,i2,hi : Integer;
 tmP,tmP1 : TRzPanel;
begin
 tmP:=STDIClass.AddRzPanel(T,L,20,WC.Width,
  WC,ti,alTop,clCream,bvNone,bvNone,bsNone,'');

 tmP.AutoSize:= true;

 tmP1:=STDIClass.AddRzPanel(1,1,20,50,
  tmP,i,alLeft,clCream,bvNone,bvNone,bsSingle,ID);
 tmP1.Font.Style:=[fsBold];
 tmP1:=STDIClass.AddRzPanel(1,51,20,25,
  tmP,i,alLeft,clCream,bvNone,bvNone,bsSingle,CF);
 tmP1.Font.Style:=[fsBold];
 tmP1:=STDIClass.AddRzPanel(1,76,20,50,
  tmP,i,alLeft,clCream,bvNone,bvNone,bsSingle,Salience);
 tmP1.Font.Style:=[fsBold];

 c:=135;
 ti:=ti*100000;
 hi:=0;
 for i := 0 to Conditions.Count-1 do
  begin
   hi:=ShowFactAsTable_(tmP,TCondition(Conditions.Items[i]).Fact,c,ti+i*100,hi);
   c:=c+GetWidth_(hi,TCondition(Conditions.Items[i]).Fact.Slots.Count);
  end;

// c:=1;
 for i := 0 to Actions.Count-1 do
  begin
   hi:=ShowFactAsTable_(tmP,TRAction(Actions.Items[i]).Fact,c,ti+i*100+10000,hi);
   c:=c+GetWidth_(hi,TRAction(Actions.Items[i]).Fact.Slots.Count);
  end;
 Result:=tmP.Top+tmP.Height;
// WC.Tag:=c;
end;
//------------------------------------------------------------------------
Function TRule.ShowAsTableV3(WC:TWinControl;T,L,ti:Integer):Integer;
Function ShowFactAsTable_(WC:TWinControl;F:TFact;ti,hi:Integer):Integer;
var
 i2,ti2,j1,j2,hw,j3,j4,j5 : Integer;
 tmP,tmP1,tmP2 : TRzPanel;
begin
  j5:=WC.Controls[WC.ControlCount-1].Top+
   WC.Controls[WC.ControlCount-1].Height;

   tmP:=STDIClass.AddRzPanel(j5,1,F.Slots.Count*20,WC.Width,
    WC,0,alTop,clCream,bvNone,bvNone,bsNone,
     '');

 for i2 := 0 to F.Slots.Count-1 do
  begin
   ti2:=ti+i2;
   j2:=Length(TSlot(F.Slots.Items[i2]).Value)*7;
   if j2>70 then
    begin
     WC.Parent.Width:=WC.Parent.Width+70;
     WC.Width:=140;  //2
    end;

   j1:=Length(TSlot(F.Slots.Items[i2]).Value)*7;
   j2:= (j1 div WC.Width);
   j1:= (j1 mod WC.Width);
   if j1>0 then j1:=1 else j1:=0;

   j1:=20*(j2+j1);
   j4:=0;
   for j3 := 1 to WC.Parent.ComponentCount-2 do
    begin
       if j3=1 then
        begin
         if j4<
         TRzPanel(TRzPanel(TRzPanel(TRzPanel(WC.Parent.Components[j3]).
          Components[tmP.ComponentIndex]).
           Components[1]).Components[tmP.ComponentCount]).Height
           then
            j4:=TRzPanel(TRzPanel(TRzPanel(TRzPanel(WC.Parent.Components[j3]).
             Components[tmP.ComponentIndex]).
              Components[1]).Components[tmP.ComponentCount]).Height;
        end
       else
        begin
         if j4<
         TRzPanel(TRzPanel(TRzPanel(WC.Parent.Components[j3]).
          Components[tmP.ComponentIndex]).Components[tmP.ComponentCount]).Height
           then
            j4:=TRzPanel(TRzPanel(TRzPanel(WC.Parent.Components[j3]).
             Components[tmP.ComponentIndex]).Components[tmP.ComponentCount]).Height;
        end;
      end;

   if j1>j4 then
    begin
     j2:=j1-20;
     WC.Parent.Parent.Height:=WC.Parent.Parent.Height+j2;
     WC.Parent.Height:=WC.Parent.Height+j2;
     WC.Height:=WC.Height+j2;  //rule
     tmP.Height:=tmP.Height+j2;

     for j3 := 1 to WC.Parent.ComponentCount-2 do
      begin
       TRzPanel(WC.Parent.Components[j3]).Height:=WC.Height;
       TRzPanel(TRzPanel(WC.Parent.Components[j3]).Components[tmP.ComponentIndex]).Height:=
        tmP.Height;
       if j3=1 then
        begin
         TRzPanel(TRzPanel(TRzPanel(TRzPanel(WC.Parent.Components[j3]).
          Components[tmP.ComponentIndex]).
           Components[1]).Components[tmP.ComponentCount]).Height:=j1;
        end
       else
        begin
         TRzPanel(TRzPanel(TRzPanel(WC.Parent.Components[j3]).
          Components[tmP.ComponentIndex]).Components[tmP.ComponentCount]).Height:=j1;
        end;
       end;
    end
   else
    begin
     j1:=j4;
     j2:=abs(j1-j4)+20;
     WC.Parent.Parent.Height:=WC.Parent.Parent.Height+j2;
     WC.Parent.Height:=WC.Parent.Height+j2;
     WC.Height:=WC.Height+j2;  //rule
     tmP.Height:=tmP.Height+j2;
    end;

   tmP1:=STDIClass.AddRzPanel(j5,1,j1,WC.Width,
//   STDIClass.AddRzPanel(1,F.Slots.Count*75,20,75,
    tmP,ti2,alTop,clCream,bvNone,bvNone,bsSingle,
     TSlot(F.Slots.Items[i2]).Value
//     IntToStr(ti2)
      );
   tmP.AutoSize:=True;
  end;

  Result:=tmP.Height;
end;
//-------------------
var
 i,c,i1,i2,hi : Integer;
 tmP,tmP1 : TRzPanel;
begin
 WC.Width:=WC.Width+70;
 tmP:=STDIClass.AddRzPanel(1,WC.Width-70,60,70,
  WC,ti,alLeft,clCream,bvNone,bvNone,bsNone,'');
 //!!!
 tmP.AutoSize:= true;

 tmP1:=STDIClass.AddRzPanel(1,1,20,50,
  tmP,i,alTop,clCream,bvNone,bvNone,bsSingle,ID);
 tmP1.Font.Style:=[fsBold];
 tmP1:=STDIClass.AddRzPanel(21,1,20,25,
  tmP,i,alTop,clCream,bvNone,bvNone,bsSingle,CF);
 tmP1.Font.Style:=[fsBold];
 tmP1:=STDIClass.AddRzPanel(41,1,20,50,
  tmP,i,alTop,clCream,bvNone,bvNone,bsSingle,Salience);
 tmP1.Font.Style:=[fsBold];

 ti:=ti*100000;
 for i := 0 to Conditions.Count-1 do
  begin
   hi:=ShowFactAsTable_(tmP,TCondition(Conditions.Items[i]).Fact,ti+i*100,hi);
  end;

 for i := 0 to Actions.Count-1 do
  begin
   hi:=ShowFactAsTable_(tmP,TRAction(Actions.Items[i]).Fact,ti+i*100+10000,hi);
  end;
 Result:=hi;
end;
//------------------------------------------------------------------------
Function TFact.ShowAsTable(WC:TWinControl;T,F:Integer):Integer;
var
 i,c : Integer;
 tmP,tmP1 : TRzPanel;
begin
if F=1 then
 begin
  tmP:=STDIClass.AddRzPanel(T,1,20,500,
   WC,0,alTop,clCream,bvNone,bvNone,bsNone,
    Name+':');
  T:=T+tmP.Height;
 end;

c:=0;
for i := 0 to Slots.Count-1 do
 if Trim(TSlot(Slots.Items[i]).Value)<>'' then
  begin
   Inc(c);
   tmP:=STDIClass.AddRzPanel(T,1,20,500,
    WC,i,alTop,clCream,bvNone,bvNone,bsNone,'');
//   tmP.AutoSize:=True;

   tmP1:=STDIClass.AddRzPanel(1,1,10,Round(tmP.Width/2),
    tmP,i,alLeft,clCream,bvNone,bvNone,bsSingle,
     TSlot(Slots.Items[i]).Name);
   tmP.Height:=20*(((Length(TSlot(Slots.Items[i]).Name)*7) div tmP1.Width)+1);

   tmP1:=STDIClass.AddRzPanel(1,100,10,Round(tmP.Width/2),
    tmP,i,alClient,clCream,bvNone,bvNone,bsSingle,
     TSlot(Slots.Items[i]).Value);
   tmP1.Font.Style:=[fsBold];
   tmP1.Font.Color:=clGreen;
   if 20*(((Length(TSlot(Slots.Items[i]).Value)*7) div tmP1.Width)+1)>tmP.Height then
    tmP.Height:=20*(((Length(TSlot(Slots.Items[i]).Value)*7) div tmP1.Width)+1);

   T:=T+tmP.Height;
  end;
 Result:=T;
 WC.Tag:=c;
end;
//------------------------------------------------------------------------
Function TFVar.ShowAsTable(WC:TWinControl;T:Integer):Integer;
var
 tmP,tmP1 : TRzPanel;
 s : string;
begin
 T:=T+50;
{ tmP:=STDIClass.AddRzPanel(T,1,20,500,
  WC,0,alTop,clCream,bvNone,bvNone,bsNone,'');
//   tmP.AutoSize:=True;

 tmP1:=STDIClass.AddRzPanel(1,1,10,Round(tmP.Width/2),
  tmP,0,alLeft,clCream,bvNone,bvNone,bsSingle,
   'FScaleName');
 tmP.Height:=20*(((Length('FScaleName')*7) div tmP1.Width)+1);

 tmP1:=STDIClass.AddRzPanel(1,100,10,Round(tmP.Width/2),
  tmP,0,alClient,clCream,bvNone,bvNone,bsSingle,
   FScaleName);
 tmP1.Font.Style:=[fsBold];
 tmP1.Font.Color:=clGreen;
 T:=T+tmP.Height; }
 {
 tmP:=STDIClass.AddRzPanel(T,1,20,500,
  WC,0,alTop,clCream,bvNone,bvNone,bsNone,'');
//   tmP.AutoSize:=True;

 tmP1:=STDIClass.AddRzPanel(1,1,10,Round(tmP.Width/2),
  tmP,0,alLeft,clCream,bvNone,bvNone,bsSingle,
   'UnitsName');
 s:=UnitsName; if Trim(s)='' then s:='-';

 tmP1:=STDIClass.AddRzPanel(1,100,10,Round(tmP.Width/2),
  tmP,0,alClient,clCream,bvNone,bvNone,bsSingle,
   s);
 tmP1.Font.Style:=[fsBold];
 tmP1.Font.Color:=clGreen;
 T:=T+tmP.Height;

 tmP:=STDIClass.AddRzPanel(T,1,20,500,
  WC,0,alTop,clCream,bvNone,bvNone,bsNone,'');
//   tmP.AutoSize:=True;

 tmP1:=STDIClass.AddRzPanel(1,1,10,Round(tmP.Width/2),
  tmP,0,alLeft,clCream,bvNone,bvNone,bsSingle,
   'FunctionType');
// tmP.Height:=20*(((Length('FunctionType')*7) div tmP1.Width)+1);

 tmP1:=STDIClass.AddRzPanel(1,100,10,Round(tmP.Width/2),
  tmP,0,alClient,clCream,bvNone,bvNone,bsSingle,
   FType);
 tmP1.Font.Style:=[fsBold];
 tmP1.Font.Color:=clGreen;
// if 20*(((Length(UnitsName)*7) div tmP1.Width)+1)>tmP.Height then
//  tmP.Height:=20*(((Length(FType)*7) div tmP1.Width)+1);
 T:=T+tmP.Height;  }

 tmP:=STDIClass.AddRzPanel(T,1,20,500,
  WC,0,alTop,clCream,bvNone,bvNone,bsNone,'');
//   tmP.AutoSize:=True;

 tmP1:=STDIClass.AddRzPanel(1,1,10,Round(tmP.Width/2),
  tmP,0,alLeft,clCream,bvNone,bvNone,bsSingle,
   'Values');

 tmP1:=STDIClass.AddRzPanel(1,100,10,Round(tmP.Width/2),
  tmP,0,alClient,clCream,bvNone,bvNone,bsSingle,
   '{'+ShowScaleAsString+'}');
 tmP1.Font.Style:=[fsBold];
 tmP1.Font.Color:=clGreen;
 if 20*(((Length(ListOfValues.Text)*7) div tmP1.Width)+1)>tmP.Height then
  tmP.Height:=20*(((Length('{'+ShowScaleAsString+'}')*7) div tmP1.Width)+1);
 T:=T+tmP.Height;

 Result:=T;
end;
//------------------------------------------------------------------------
Function TFScale.ShowAsTable(WC:TWinControl;T:Integer):Integer;
var
 tmP,tmP1 : TRzPanel;
 s : ShortString;
begin
 T:=T+50;
 tmP:=STDIClass.AddRzPanel(T,1,20,500,
  WC,0,alTop,clCream,bvNone,bvNone,bsNone,'');
//   tmP.AutoSize:=True;

 tmP1:=STDIClass.AddRzPanel(1,1,10,Round(tmP.Width/2),
  tmP,0,alLeft,clCream,bvNone,bvNone,bsSingle,
   'Domain');

 tmP1:=STDIClass.AddRzPanel(1,100,10,Round(tmP.Width/2),
  tmP,0,alClient,clCream,bvNone,bvNone,bsSingle,
   '['+Min+'; '+Max+']');
 tmP1.Font.Style:=[fsBold];
 tmP1.Font.Color:=clGreen;
 T:=T+tmP.Height;
{
 tmP:=STDIClass.AddRzPanel(T,1,20,500,
  WC,0,alTop,clCream,bvNone,bvNone,bsNone,'');
//   tmP.AutoSize:=True;

 tmP1:=STDIClass.AddRzPanel(1,1,10,Round(tmP.Width/2),
  tmP,0,alLeft,clCream,bvNone,bvNone,bsSingle,
   'Min');

 tmP1:=STDIClass.AddRzPanel(1,100,10,Round(tmP.Width/2),
  tmP,0,alClient,clCream,bvNone,bvNone,bsSingle,
   Min);
 tmP1.Font.Style:=[fsBold];
 tmP1.Font.Color:=clGreen;
 T:=T+tmP.Height;

 tmP:=STDIClass.AddRzPanel(T,1,20,500,
  WC,0,alTop,clCream,bvNone,bvNone,bsNone,'');
//   tmP.AutoSize:=True;

 tmP1:=STDIClass.AddRzPanel(1,1,10,Round(tmP.Width/2),
  tmP,0,alLeft,clCream,bvNone,bvNone,bsSingle,
   'Max');

 tmP1:=STDIClass.AddRzPanel(1,100,10,Round(tmP.Width/2),
  tmP,0,alClient,clCream,bvNone,bvNone,bsSingle,
   Max);
 tmP1.Font.Style:=[fsBold];
 tmP1.Font.Color:=clGreen;
 T:=T+tmP.Height; }

 tmP:=STDIClass.AddRzPanel(T,1,20,500,
  WC,0,alTop,clCream,bvNone,bvNone,bsNone,'');
//   tmP.AutoSize:=True;

 tmP1:=STDIClass.AddRzPanel(1,1,10,Round(tmP.Width/2),
  tmP,0,alLeft,clCream,bvNone,bvNone,bsSingle,
   'Terms');

 tmP1:=STDIClass.AddRzPanel(1,100,10,Round(tmP.Width/2),
  tmP,0,alClient,clCream,bvNone,bvNone,bsSingle,
   '{'+ShowScaleAsString+'}');
 tmP1.Font.Style:=[fsBold];
 tmP1.Font.Color:=clGreen;
 if 20*(((Length(ListOfValues.Text)*7) div tmP1.Width)+1)>tmP.Height then
  tmP.Height:=20*(((Length('{'+ShowScaleAsString+'}')*7) div tmP1.Width)+1);
 T:=T+tmP.Height;

 tmP:=STDIClass.AddRzPanel(T,1,20,500,
  WC,0,alTop,clCream,bvNone,bvNone,bsNone,'');
//   tmP.AutoSize:=True;

 tmP1:=STDIClass.AddRzPanel(1,1,10,Round(tmP.Width/2),
  tmP,0,alLeft,clCream,bvNone,bvNone,bsSingle,
   'UnitName');
 s:=Trim(UnitsName);
 if s='' then s:='-';

 tmP1:=STDIClass.AddRzPanel(1,100,10,Round(tmP.Width/2),
  tmP,0,alClient,clCream,bvNone,bvNone,bsSingle,
   s);
 tmP1.Font.Style:=[fsBold];
 tmP1.Font.Color:=clGreen;
 T:=T+tmP.Height;

 tmP:=STDIClass.AddRzPanel(T,1,20,500,
  WC,0,alTop,clCream,bvNone,bvNone,bsNone,'');
//   tmP.AutoSize:=True;

 tmP1:=STDIClass.AddRzPanel(1,1,10,Round(tmP.Width/2),
  tmP,0,alLeft,clCream,bvNone,bvNone,bsSingle,
   'FunctionType');
// tmP.Height:=20*(((Length('FunctionType')*7) div tmP1.Width)+1);

 tmP1:=STDIClass.AddRzPanel(1,100,10,Round(tmP.Width/2),
  tmP,0,alClient,clCream,bvNone,bvNone,bsSingle,
   FType);
 tmP1.Font.Style:=[fsBold];
 tmP1.Font.Color:=clGreen;
// if 20*(((Length(UnitsName)*7) div tmP1.Width)+1)>tmP.Height then
//  tmP.Height:=20*(((Length(FType)*7) div tmP1.Width)+1);
 T:=T+tmP.Height;

 Result:=T;
end;
//------------------------------------------------------------------------
Function TFact.Draw(WC:TWinControl;K:Integer):TImage;
function TrancString(s:ShortString;i:Integer):ShortString;
begin
 Result:=s;
 if Length(s)>i then
  try
   Result:=Copy(s,1,i)+'...';
  except
   Result:='';
  end;
end;

var
 r: TRect;
 canvas: TCanvas;
 x,y,w,h,tw,th,cfh,cfw,pw,delta_cf : Integer;
 tmI : TImage;
 i : Integer;
 tmT : TStringList;
 cf,s1 : ShortString;
 cf_f : Extended;
begin
try
// cf:='1'; //value cf by default
 if DrawParams.Values['x']='' then
  begin
   DrawParams.Add('x=15');
   DrawParams.Add('y=15');
  end;
 x:=StrToInt(DrawParams.Values['x']);
 y:=StrToInt(DrawParams.Values['y']);

 pw:=0;
 //!!!
 tmT:=TStringList.Create;
 for i := 0 to Slots.Count-1 do
  if Trim(TSlot(Slots.Items[i]).Value)<>'' then
   begin
    if (pos('??????????? ???????????',AnsiLowerCase(Trim(TSlot(Slots.Items[i]).Name)))>0) or
     (pos('??',AnsiUpperCase(TSlot(Slots.Items[i]).Name))>0)or
      (pos('CF',AnsiUpperCase(TSlot(Slots.Items[i]).Name))>0) then
       begin
        cf:=TSlot(Slots.Items[i]).Value;
       end
     else
      begin
        tmT.Add(
         TrancString(TSlot(Slots.Items[i]).Name,25)
          +'='+
          TrancString(AnsiLowerCase(TSlot(Slots.Items[i]).Value),20)
          );
        if Length(tmT.Strings[tmT.Count-1])>pw then
         pw:=Length(tmT.Strings[tmT.Count-1]);
      end;
   end;
 s1:=TrancString(Name,30);
 if Length(s1)+6>pw then pw:=Length(s1)+6;

// h:=(tmT.Count+1)*20;
//heigth of string = 13 for 8 pt
//width = 7 for 8 pt

 cf:=StringReplace(cf,'.',',',[rfReplaceAll]);
 if not TryStrToFloat(cf,cf_f) then cf:='-';
// if cf='' then cf:='-';

 h:=(13+2)*(tmT.Count+1)+10;

// w:=pw*8+6+20;
 w:=pw*6+15;
 if DrawParams.Values['h']='' then
  DrawParams.Add('h='+IntToStr(h))
   else DrawParams.Values['h']:=IntToStr(h);
 if DrawParams.Values['w']='' then
  DrawParams.Add('w='+IntToStr(w))
   else DrawParams.Values['w']:=IntToStr(w);

 //TRzPanel(WC).Canvas.MoveTo(0,0);
//TRzPanel(WC).Canvas.LineTo(100,100);
 tmI:=TImage.Create(WC);
 tmI.Parent:=WC;
 tmI.Tag:=5;

 tmI.OnDragOver:=MainForm.ScrollBox4.onDragOver;
 tmI.OnDragDrop:=MainForm.ScrollBox4.OnDragDrop;
// tmI.OnClick:=MainForm.ImgClick;

 tmI.Top:=y;
 tmI.Left:=x;
 tmI.Width:=w;
 tmI.Height:=h;

 RVMLImage:=tmI;

 canvas:=tmI.Canvas;
 case K of
  1: canvas.Pen.Style := psDash;  //condition
  2: canvas.Pen.Style := psSolid; //action
 end;

 canvas.Brush.Color :=  $00B8F4FA;
 if K=2 then canvas.Pen.Width := 2;
 canvas.Pen.color := clMaroon;

// canvas.Rectangle(1,1,100,100);

 x:=1; y:=1; h:=h-1; w:=w-1;
 cfh:=20;     //20
 cfw:=Length(cf)*6+8;
 delta_cf:=4;
 if cfw<20 then
  begin
   cfw:=20;
   delta_cf:=7;
  end;

 canvas.Rectangle(x,y,x+w,y+h);  //main contur
 canvas.Rectangle(x,y,x+w-cfw,y+cfh);  //template name contur
 canvas.Rectangle(x+w-cfw-1,y,x+w,y+cfh);  //cf contur

  canvas.Font.style := [fsbold];
  canvas.TextOut(((x+w-cfw) div 2)-(canvas.TextWidth(s1) div 2),
    y + 2, s1); //template name

  canvas.TextOut(  //cf
   x + w - cfw + delta_cf,
    y + 2, cf);

  //show slots
  canvas.Font.style := [];
  th:=y+cfh+2;
  for i := 0 to tmT.Count-1 do
   begin
    canvas.TextOut(
     8,th,tmT.Names[i]+' : '+tmT.ValueFromIndex[i]
      );
    th:=th+canvas.TextHeight(tmT.Names[i])+2;
   end;
  canvas.Pen.Width := 1;
  canvas.Brush.Color := clWhite;

 //!!!
// tmI.OnMouseMove:=MainForm.ImgMouseMove;

 Result:=tmI;
except
 Result:=nil;
end;
end;
//------------------------------------------------------------------------
Function TFact.DrawV2(WC:TWinControl;K,fs,ts:Integer;doi:string):TRzPanel;
label l1;
var
 r: TRect;
 canvas: TCanvas;
 x,y,w,h,tw,th,cfh,cfw,pw,delta_cf : Integer;
 tmI3,tmI2 : TImage;
 i,j1,j11,j2,j3,j4,j5,t : Integer;
 tmT,tmT1 : TStringList;
 cf,s1 : ShortString;
 cf_f : Extended;

 tmP,tmP1,tmP2 : TRzPanel;
 tmL : TLabel;
 tmL1 : TRzLabel;
 needForOrder : Boolean;
begin
try
 needForOrder:=False;
 //-----------------------------------
 tmI3:=TImage.Create(WC);
 tmI3.Parent:=WC;
 tmI3.Align:=alClient;
 tmI3.Tag:=0;
// DrawnObjects1:=TList.Create;
 tmI3.DragMode:=dmAutomatic;
 if fs=0 then tmI3.OnDragOver:=MainForm.ElementDragOver;
 if fs=1 then tmI3.OnDragOver:=TRVMLEForm.ElementDragOver;
 //-----------------------------------

 if DrawParams.IndexOfName('x'+doi)=-1 then
  begin
   DrawParams.Add('x'+doi+'=15');
   DrawParams.Add('y'+doi+'=15');
   needForOrder:=True;
  end;
 x:=StrToInt(DrawParams.Values['x'+doi]);
 y:=StrToInt(DrawParams.Values['y'+doi]);

 tmT:=TStringList.Create;
 tmT1:=TStringList.Create;

 for i := 0 to Slots.Count-1 do
  if Trim(TSlot(Slots.Items[i]).Value)<>'' then
   begin
    if (pos('??????????? ???????????',AnsiLowerCase(Trim(TSlot(Slots.Items[i]).Name)))>0) or
     (pos('??',AnsiUpperCase(TSlot(Slots.Items[i]).Name))>0)
      or(pos('CF',AnsiUpperCase(TSlot(Slots.Items[i]).Name))>0)
      then
       begin
        cf:=TSlot(Slots.Items[i]).Value;
       end
     else
      begin
        tmT.Add(
         TSlot(Slots.Items[i]).Name
          +'='+
          AnsiLowerCase(TSlot(Slots.Items[i]).Value)
          );
      end;
   end;

 cf:=StringReplace(cf,'.',',',[rfReplaceAll]);
 if not TryStrToFloat(cf,cf_f) then cf:='-';

 //---------------------------------------------------------
 //---------------------------------------------------------
 //preprocessing
 //calculate width
 j1:=70;
 if fs=0 then canvas:=MainForm.Canvas;
 if fs=1 then canvas:=TRVMLEForm.Canvas;
l1:
 j11:=j1+34;
 tmT1.Clear;
 canvas.Font.Style := [fsBold];
 canvas.Font.Size:=8;
 j2:=Canvas.TextWidth(Name)+8;
// j2:=Round(Length(Name)*7);
 while (j2>j1)and(j1<>250) do
  begin
   if (j1=70) then begin j1:=140; j11:=j1+34; end
    else
     if j1=140 then begin j1:=200; j11:=j1+34; end
      else
       if j1=200 then begin j1:=250; j11:=j1+34; end
  end;

 for i := 0 to tmT.Count-1 do
  begin
//   j4:=-1;
{   s1:=tmT.ValueFromIndex[i];
   for j3 := 1 to Length(s1) do
    begin
      if (s1[j3]=';')and(j3<Length(s1)) then
       if s1[j3+1]<>' ' then
        begin
         Insert(' ',s1,j3+1);
         j4:=1;
        end;
    end;
   if j4>-1 then
    begin
//     TSlot(Slots.Items[i]).Value:=s1;
     tmT.ValueFromIndex[i]:=s1;
    end; }

   Canvas.Font.Style := [];
   j2:=Canvas.TextWidth(Trim(tmT.Names[i]+' : '+tmT.ValueFromIndex[i]))+10;
//   j2:=Round(Length(Trim(tmT.Names[i]+' : '+tmT.ValueFromIndex[i]))*5.5);
   while (j2>(j11))and(j11<>250+34) do
    begin
     if (j11=70+34) then begin j11:=140+34; j1:=j11-34; end
      else
       if (j11=140+34) then begin j11:=200+34; j1:=j11-34; end
        else
         if (j11=200+34) then begin j11:=250+34; j1:=j11-34; end;
    end;
  end;

 //calculate heigth
 canvas.Font.Style := [fsBold];
 canvas.Font.Size:=8;

 if fs=0 then
  begin
   STDIClass.AddLabel(MainForm,Name,1,1,j1,clNone,clNone,[fsBold]);
   tmL:=TLabel(MainForm.Components[MainForm.ComponentCount-1]);
  end;
 if fs=1 then
  begin
   STDIClass.AddLabel(TRVMLEForm,Name,1,1,j1,clNone,clNone,[fsBold]);
   tmL:=TLabel(TRVMLEForm.Components[TRVMLEForm.ComponentCount-1]);
  end;
 tmL.WordWrap:=True;
 tmL.AutoSize:=True;
 j2:=tmL.Height+4;

 t:=j2+2;
 tmT1.Add(IntToStr(j2));

 for i := 0 to tmT.Count-1 do
  begin
   tmL.Font.Style:=[];
   tmL.AutoSize:=False;
   tmL.Caption:=Trim(tmT.Names[i]+' : '+tmT.ValueFromIndex[i]);
   tmL.Width:=j11-8;
   tmL.AutoSize:=True;
   j2:=tmL.Height+4;

   t:=t+j2;
   tmT1.Add(IntToStr(j2));
  end;

  j4:=0;
  for i := 0 to tmT1.Count-1 do
   if StrToInt(tmT1.Strings[i])>j4 then j4:=StrToInt(tmT1.Strings[i]);
  if j4>52 then
   begin
    if j1=70 then
     begin
      j1:=140;
      goto l1;
     end;
    if j1=140 then
     begin
      j1:=200;
      goto l1;
     end;
    if j1=200 then
     begin
      j1:=250;
      goto l1;
     end;
    end;

 if DrawParams.IndexOfName('w')=-1 then DrawParams.Add('w='+IntToStr(j11+4))
  else DrawParams.Values['w']:=IntToStr(j11+4);
 if DrawParams.IndexOfName('h')=-1 then DrawParams.Add('h='+IntToStr(t+4))
  else DrawParams.Values['h']:=IntToStr(t+4);

 //main contur external
 tmP:=STDIClass.AddRzPanel(y,x,t+4,j11+4,
  WC,0,alNone,$00B8F4FA,bvNone,bvNone,bsNone,
   '');

 tmP.Tag:=1;
 tmP.DragMode:=dmAutomatic;
// tmP.OnMouseDown:=TRVMLEForm.ElementMouseDown;
 if fs=0 then
  begin
   tmP.OnDragOver:=MainForm.ElementDragOver;
   tmP.OnEndDrag:=MainForm.ElementEndDrag;
  end;
 if fs=1 then
  begin
   tmP.OnDragOver:=TRVMLEForm.ElementDragOver;
   tmP.OnEndDrag:=TRVMLEForm.ElementEndDrag;
  end;

 tmI2:=TImage.Create(tmP);
 tmI2.Parent:=tmP;
 tmI2.Top:=0;
 tmI2.Tag:=2;
 tmI2.Left:=0;
 tmI2.Width:=tmP.Width;
 tmI2.Height:=tmP.Height;

 tmI2.Align:=alClient;
 tmI2.DragMode:=dmAutomatic;
// tmI2.OnMouseDown:=TRVMLEForm.ElementMouseDown;
 if fs=0 then
  begin
   tmI2.OnDragOver:=MainForm.ElementDragOver;
   tmI2.OnEndDrag:=MainForm.ElementEndDrag;
  end;
 if fs=1 then
  begin
   tmI2.OnDragOver:=TRVMLEForm.ElementDragOver;
   tmI2.OnEndDrag:=TRVMLEForm.ElementEndDrag;
  end;
 canvas:=tmI2.Canvas;

 case K of
  1:begin
   canvas.Pen.Style := psDash;  //condition
   canvas.Pen.Width := 1;
   end;
  2:begin
   canvas.Pen.Style := psSolid; //action
   canvas.Pen.Width := 2;
   end;
 end;
 canvas.Brush.Color :=  $00B8F4FA;

 canvas.Pen.color := clMaroon;
 canvas.Rectangle(1,1,tmI2.Width,tmI2.Height);  //main contur
 canvas.Rectangle(tmI2.Width-34,1,tmI2.Width,StrToInt(tmT1.Strings[0])+4);  //cf contur

 canvas.MoveTo(1,StrToInt(tmT1.Strings[0])+3);
 canvas.LineTo(tmI2.Width-34,StrToInt(tmT1.Strings[0])+3);

  tmP2:=STDIClass.AddRzPanel(2,2,StrToInt(tmT1.Strings[0]),j1,
   tmP,0,alCustom,$00B8F4FA,bvNone,bvNone,bsNone,
    Name);
  tmP2.Font.Style:=[fsBold];
  tmP2.DragMode:=dmAutomatic;
//  tmP2.OnMouseDown:=TRVMLEForm.ElementMouseDown;
 if fs=0 then
  begin
    tmP2.OnDragOver:=MainForm.ElementDragOver;
    tmP2.OnEndDrag:=MainForm.ElementEndDrag;
  end;
 if fs=1 then
  begin
    tmP2.OnDragOver:=TRVMLEForm.ElementDragOver;
    tmP2.OnEndDrag:=TRVMLEForm.ElementEndDrag;
  end;
  tmP2.Tag:=3;

  tmP2:=STDIClass.AddRzPanel(2,j1+5,StrToInt(tmT1.Strings[0]),30,
   tmP,0,alCustom,$00B8F4FA,bvNone,bvNone,bsNone,
    cf);
  tmP2.Font.Style:=[fsBold];

  t:=3+StrToInt(tmT1.Strings[0])+1;

 for i := 0 to tmT.Count-1 do
//  if Trim(TSlot(Slots.Items[i]).Value)<>'' then
  begin
   s1:=TSlot(Slots.Items[i]).Constraint;
   if Trim(s1)='' then s1:=' = ';

    tmP2:=STDIClass.AddRzPanel(t,2+4,StrToInt(tmT1.Strings[i+1]),j11-6,
     tmP,0,alCustom,$00B8F4FA,bvNone,bvNone,bsNone,
      Trim(tmT.Names[i]+s1+tmT.ValueFromIndex[i]));
    tmP2.DragMode:=dmAutomatic;
//    tmP2.OnMouseDown:=TRVMLEForm.ElementMouseDown;
    if fs=0 then
     begin
      tmP2.OnDragOver:=MainForm.ElementDragOver;
      tmP2.OnEndDrag:=MainForm.ElementEndDrag;
     end;
    if fs=1 then
     begin
      tmP2.OnDragOver:=TRVMLEForm.ElementDragOver;
      tmP2.OnEndDrag:=TRVMLEForm.ElementEndDrag;
     end;
    tmP2.Tag:=100+i;
     tmP2.Alignment:=taLeftJustify;
    t:=t+StrToInt(tmT1.Strings[i+1]);
  end;

  //--------------------------------------------------
  //draw terms
  if ts=1 then
   begin
   y:=y+StrToInt(DrawParams.Values['h'])+35;
   x:=15;
   tmT.Clear;

    if fs=0 then tmKb:=MainForm.GetKBForNode(MainForm.TreeView1.Selected);
    if fs=1 then tmKb:=MainForm.GetKBForNode(TRVMLEForm.TreeView1.Selected);
    j1:=tmKb.IndexOfTemplateV3(Self);
    j2:=0;
    for i := 0 to Slots.Count-1 do
     begin
      if j1>-1 then
       for j3 := 0 to TTemplate(tmKb.Templates.Items[j1]).Slots.Count-1 do
        if (TSlot(TTemplate(tmKb.Templates.Items[j1]).Slots.Items[j3]).DataType='Fuzzy')
//        and
//          (TSlot(TTemplate(tmKb.Templates.Items[j1]).Slots.Items[j3]).Name=
//           TSlot(Slots.Items[i]).Name)
            then
             begin
              j4:=tmKb.IndexOfFScale(TSlot(TTemplate(tmKb.Templates.Items[j1]).Slots.Items[j3]).Value);
              if j4>-1 then
               begin
                j5:=TFScale(tmKb.FScales.Items[j4]).ListOfValues.IndexOf(TSlot(Slots.Items[i]).Value);
                if j5>-1 then
                if tmT.IndexOf(
                 TFVar(TFScale(tmKb.FScales.Items[j4]).ListOfValues.Objects[j5]).Name
                  )=-1 then
                 begin
                  if TFVar(TFScale(tmKb.FScales.Items[j4]).ListOfValues.Objects[j5]).
                   DrawParams.IndexOfName('x'+doi)=-1 then
                    TFVar(TFScale(tmKb.FScales.Items[j4]).ListOfValues.Objects[j5]).
                     DrawParams.Add('x'+doi+'='+IntToStr(x));
          //            else TFScale(tmKb.FScales.Items[j1]).DrawParams.Values[
          //             'x'+doi]:=IntToStr(x);
                  if TFVar(TFScale(tmKb.FScales.Items[j4]).ListOfValues.Objects[j5]).
                   DrawParams.IndexOfName('y'+doi)=-1 then
                    TFVar(TFScale(tmKb.FScales.Items[j4]).ListOfValues.Objects[j5]).
                     DrawParams.Add('y'+doi+'='+IntToStr(y));

                  TFVar(TFScale(tmKb.FScales.Items[j4]).ListOfValues.Objects[j5]).DrawV2(WC,fs,
                   doi);
                  x:=x+10+
                   StrToInt(TFVar(TFScale(tmKb.FScales.Items[j4]).ListOfValues.Objects[j5]).
                    DrawParams.Values['w']);
                  tmT.Add(TFVar(TFScale(tmKb.FScales.Items[j4]).ListOfValues.Objects[j5]).Name);
                  j2:=1;
                 end;
               end;
             end;
     end;
//     if needForOrder then OrderV2(tmKb);

     if j2=1 then     //draw arrows
      DrawArrowsV2(tmI3.Canvas,TScrollBox(WC).HorzScrollBar.Position,
       TScrollBox(WC).VertScrollBar.Position,tmKb);
   end;
  //--------------------------------------------------
 Result:=tmP;
except
 Result:=nil;
end;
 //---------------------------------------------------------
 //output control
 tmT1.Clear;
 for i := 0 to DrawParams.Count-1 do
  if tmT1.IndexOfName(DrawParams.Names[i])=-1 then
   tmT1.Add(DrawParams.Strings[i]);
 DrawParams.Text:=tmT1.Text;
 tmL.Free;
end;
//------------------------------------------------------------------------
Function TFVar.DrawV2(WC:TWinControl;fs:Integer;doi:string):TRzPanel;
label l1;
var
 r: TRect;
 canvas: TCanvas;
 x,y,w,h,tw,th,cfh,cfw,pw,delta_cf : Integer;
 tmI,tmI2 : TImage;
 i,j1,j11,j2,j3,j4,t : Integer;
 tmT,tmT1 : TStringList;
 cf,s1,s2 : ShortString;
 cf_f : Extended;

 tmP,tmP1,tmP2 : TRzPanel;
 tmL : TLabel;
 tmL1 : TRzLabel;
 tmKb : TKnowledgeBase;
 tmSc : TFScale;
begin
try
 if DrawParams.IndexOfName('x'+doi)=-1 then
  begin
   DrawParams.Add('x'+doi+'=15');
   DrawParams.Add('y'+doi+'=15');
  end;
 x:=StrToInt(DrawParams.Values['x'+doi]);
 y:=StrToInt(DrawParams.Values['y'+doi]);

 tmT:=TStringList.Create;
 tmT1:=TStringList.Create;

 if AnsiUpperCase(Self.FType)='TABULAR' then cf:='T' else cf:='A';
 if fs=0 then tmKb:=MainForm.GetKBForNode(MainForm.TreeView1.Selected);
 if fs=1 then tmKb:=MainForm.GetKBForNode(TRVMLEForm.TreeView1.Selected);

 tmT.Add('{'+ShowScaleAsString+'}');
 //---------------------------------------------------------
 //---------------------------------------------------------
 //preprocessing
 //calculate width
 j1:=70;
 if fs=0 then canvas:=MainForm.Canvas;
 if fs=1 then canvas:=TRVMLEForm.Canvas;
l1:
 j11:=j1+34;
 tmT1.Clear;
 canvas.Font.Style := [fsBold];
 canvas.Font.Size:=8;
 j2:=Canvas.TextWidth(Name)+8;
// j2:=Round(Length(Name)*7);
 while (j2>j1)and(j1<>250) do
  begin
   if (j1=70) then begin j1:=140; j11:=j1+34; end
    else
     if j1=140 then begin j1:=200; j11:=j1+34; end
      else
       if j1=200 then begin j1:=250; j11:=j1+34; end
  end;

 for i := 0 to tmT.Count-1 do
  begin
   j4:=-1;
   s1:=tmT.Strings[i];
   for j3 := 1 to Length(s1) do
    begin
      if (s1[j3]=';')and(j3<Length(s1)) then
       if s1[j3+1]<>' ' then
        begin
         Insert(' ',s1,j3+1);
         j4:=1;
        end;
    end;
   if j4>-1 then
    begin
//     TSlot(Slots.Items[i]).Value:=s1;
     tmT.Strings[i]:=s1;
    end;

   Canvas.Font.Style := [];
   j2:=Canvas.TextWidth(Trim(tmT.Strings[i]))+8;
//   j2:=Round(Length(Trim(tmT.Names[i]+' : '+tmT.ValueFromIndex[i]))*5.5);
   while (j2>(j11))and(j11<>250+34) do
    begin
     if (j11=70+34) then begin j11:=140+34; j1:=j11-34; end
      else
       if (j11=140+34) then begin j11:=200+34; j1:=j11-34; end
        else
         if (j11=200+34) then begin j11:=250+34; j1:=j11-34; end;
    end;
  end;

 //calculate heigth
 canvas.Font.Style := [fsBold];
 canvas.Font.Size:=8;

 if fs=0 then
  begin
   STDIClass.AddLabel(MainForm,Name,1,1,j1,clNone,clNone,[fsBold]);
   tmL:=TLabel(MainForm.Components[MainForm.ComponentCount-1]);
  end;
 if fs=1 then
  begin
   STDIClass.AddLabel(TRVMLEForm,Name,1,1,j1,clNone,clNone,[fsBold]);
   tmL:=TLabel(TRVMLEForm.Components[TRVMLEForm.ComponentCount-1]);
  end;
 tmL.WordWrap:=True;
 tmL.AutoSize:=True;
 j2:=tmL.Height+4;

 t:=j2+2;
 tmT1.Add(IntToStr(j2));

 for i := 0 to tmT.Count-1 do
  begin
   tmL.Font.Style:=[];
   tmL.AutoSize:=False;
   tmL.Caption:=Trim(tmT.Strings[i]);
   tmL.Width:=j11-8;
   tmL.AutoSize:=True;
   j2:=tmL.Height+4;

   t:=t+j2;
   tmT1.Add(IntToStr(j2));
  end;

  j4:=0;
  for i := 0 to tmT1.Count-1 do
   if StrToInt(tmT1.Strings[i])>j4 then j4:=StrToInt(tmT1.Strings[i]);
  if j4>52 then
   begin
    if j1=70 then
     begin
      j1:=140;
      goto l1;
     end;
    if j1=140 then
     begin
      j1:=200;
      goto l1;
     end;
    if j1=200 then
     begin
      j1:=250;
      goto l1;
     end;
    end;

 if DrawParams.IndexOfName('w')=-1 then DrawParams.Add('w='+IntToStr(j11+4))
  else DrawParams.Values['w']:=IntToStr(j11+4);
 if DrawParams.IndexOfName('h')=-1 then DrawParams.Add('h='+IntToStr(t+4))
  else DrawParams.Values['h']:=IntToStr(t+4);

 //main contur external
 tmP:=STDIClass.AddRzPanel(y,x,t+4,j11+4,
  WC,0,alNone,$00B8F4FA,bvNone,bvNone,bsNone,
   '');

 tmP.Tag:=1;
 tmP.DragMode:=dmAutomatic;
// tmP.OnMouseDown:=TRVMLEForm.ElementMouseDown;
 if fs=0 then
  begin
   tmP.OnDragOver:=MainForm.ElementDragOver;
   tmP.OnEndDrag:=MainForm.ElementEndDrag;
  end;
 if fs=1 then
  begin
   tmP.OnDragOver:=TRVMLEForm.ElementDragOver;
   tmP.OnEndDrag:=TRVMLEForm.ElementEndDrag;
  end;

 tmI2:=TImage.Create(tmP);
 tmI2.Parent:=tmP;
 tmI2.Top:=0;
 tmI2.Tag:=2;
 tmI2.Left:=0;
 tmI2.Width:=tmP.Width;
 tmI2.Height:=tmP.Height;

 tmI2.Align:=alClient;
 tmI2.DragMode:=dmAutomatic;
// tmI2.OnMouseDown:=TRVMLEForm.ElementMouseDown;
 if fs=0 then
  begin
   tmI2.OnDragOver:=MainForm.ElementDragOver;
   tmI2.OnEndDrag:=MainForm.ElementEndDrag;
  end;
 if fs=1 then
  begin
   tmI2.OnDragOver:=TRVMLEForm.ElementDragOver;
   tmI2.OnEndDrag:=TRVMLEForm.ElementEndDrag;
  end;
 canvas:=tmI2.Canvas;

 canvas.Pen.Style := psDot;  //condition
 canvas.Pen.Width := 1;
 canvas.Brush.Color :=  $00B8F4FA;

 canvas.Pen.color := clMaroon;
 canvas.Rectangle(1,1,tmI2.Width,tmI2.Height);  //main contur
 canvas.Rectangle(tmI2.Width-34,1,tmI2.Width,StrToInt(tmT1.Strings[0])+4);  //cf contur

 canvas.MoveTo(1,StrToInt(tmT1.Strings[0])+3);
 canvas.LineTo(tmI2.Width-34,StrToInt(tmT1.Strings[0])+3);

  tmP2:=STDIClass.AddRzPanel(2,2,StrToInt(tmT1.Strings[0]),j1,
   tmP,0,alCustom,$00B8F4FA,bvNone,bvNone,bsNone,
    Name);
  tmP2.Font.Style:=[fsBold];
  tmP2.DragMode:=dmAutomatic;
//  tmP2.OnMouseDown:=TRVMLEForm.ElementMouseDown;
 if fs=0 then
  begin
    tmP2.OnDragOver:=MainForm.ElementDragOver;
    tmP2.OnEndDrag:=MainForm.ElementEndDrag;
  end;
 if fs=1 then
  begin
    tmP2.OnDragOver:=TRVMLEForm.ElementDragOver;
    tmP2.OnEndDrag:=TRVMLEForm.ElementEndDrag;
  end;
  tmP2.Tag:=3;

  tmP2:=STDIClass.AddRzPanel(2,j1+5,StrToInt(tmT1.Strings[0]),30,
   tmP,0,alCustom,$00B8F4FA,bvNone,bvNone,bsNone,
    cf);
  tmP2.Font.Style:=[fsBold];

  t:=3+StrToInt(tmT1.Strings[0])+1;

 for i := 0 to tmT.Count-1 do
//  if Trim(TSlot(Slots.Items[i]).Value)<>'' then
  begin

    tmP2:=STDIClass.AddRzPanel(t,2+4,StrToInt(tmT1.Strings[i+1]),j11-6,
     tmP,0,alCustom,$00B8F4FA,bvNone,bvNone,bsNone,
      Trim(tmT.Strings[i]));
    tmP2.DragMode:=dmAutomatic;
//    tmP2.OnMouseDown:=TRVMLEForm.ElementMouseDown;
    if fs=0 then
     begin
      tmP2.OnDragOver:=MainForm.ElementDragOver;
      tmP2.OnEndDrag:=MainForm.ElementEndDrag;
     end;
    if fs=1 then
     begin
      tmP2.OnDragOver:=TRVMLEForm.ElementDragOver;
      tmP2.OnEndDrag:=TRVMLEForm.ElementEndDrag;
     end;
    tmP2.Tag:=100+i;
     tmP2.Alignment:=taCenter;
    t:=t+StrToInt(tmT1.Strings[i+1]);
  end;
 Result:=tmP;
except
 Result:=nil;
end;
 //---------------------------------------------------------
 //output control
 tmT1.Clear;
 for i := 0 to DrawParams.Count-1 do
  if tmT1.IndexOfName(DrawParams.Names[i])=-1 then
   tmT1.Add(DrawParams.Strings[i]);
 DrawParams.Text:=tmT1.Text;
 tmL.Free;
end;
//------------------------------------------------------------------------
Function TRule.InserRuleComponent(k,i:Integer;Op:string;T:TTemplate):Integer;
var
 tmF : TFact;
 tmLHS : TCondition;
 tmRHS : TRAction;
begin
 case k of
  0:begin  //condition
   tmF:=TFact.Create;
   tmF.Init;
   tmF.Name:=T.Name;
   tmF.ShortName:=T.ShortName;
   tmF.GetSlotsFrom(T);
   tmLHS:=TCondition.Create;
   tmLHS.Operator:=Op;
   tmLHS.Fact:=tmF;
   Conditions.Insert(i,tmLHS);
  end;
  1:begin  //action
   tmF:=TFact.Create;
   tmF.Init;
   tmF.Name:=T.Name;
   tmF.ShortName:=T.ShortName;
   tmF.GetSlotsFrom(T);
   tmRHS:=TRAction.Create;
   tmRHS.Operator:=Op;
   tmRHS.Fact:=tmF;
   Actions.Insert(i,tmRHS);
  end;
 end; //end case
end;
//------------------------------------------------------------------------
Function TRule.GetStructureFrom(G:TGRule):Integer;
var
 tmF : TFact;
 tmT : TTemplate;
 i : Integer;
 tmLHS : TCondition;
 tmRHS : TRAction;
begin
 //load rhs elements
 Conditions.Clear;
 for i := 0 to G.Conditions.Count-1 do
  begin
   InserRuleComponent(0,Conditions.Count,'and',TTemplate(G.Conditions.Items[i]));
{   tmT:=TTemplate(G.Conditions.Items[i]);
   tmF:=TFact.Create;
   tmF.Init;
   tmF.Name:=tmT.Name;
   tmF.ShortName:=tmT.ShortName;
   tmF.GetSlotsFrom(tmT);
   tmLHS:=TCondition.Create;
   tmLHS.Operator:='and';
   tmLHS.Fact:=tmF;
   Conditions.Add(tmLHS);  }
  end;

 //load lhs elements
 Actions.Clear;
 for i := 0 to G.Actions.Count-1 do
  begin
   InserRuleComponent(1,Actions.Count,'add',TTemplate(G.Actions.Items[i]));
{
   tmT:=TTemplate(G.Actions.Items[i]);
   tmF:=TFact.Create;
   tmF.Init;
   tmF.Name:=tmT.Name;
   tmF.ShortName:=tmT.ShortName;
   tmF.GetSlotsFrom(tmT);
   tmRHS:=TRAction.Create;
   tmRHS.Operator:='add';
   tmRHS.Fact:=tmF;
   Actions.Add(tmRHS);  }
  end;

end;
//------------------------------------------------------------------------
Function TKnowledgeBase.DataPreporationForCRP(ti:Integer):string;
var
 i,j : Integer;
 tmFact : TFact;
 tmSlot : TSlot;
begin
// if ti<>-1 then
//  begin
   for i := 0 to Facts.Count-1 do
    begin
     tmFact:=TFact(Facts.Items[i]);
//     j:=IndexOfTemplate(tmFact);
//     if j=ti then
//      begin
       Result:=Result+'%c%='+tmFact.ID+';';
       for j := 0 to tmFact.Slots.Count-1 do
        begin
         tmSlot:=TSlot(tmFact.Slots.Items[j]);
         if Trim(tmSlot.Value)<>'' then
//           Result:=Result+IntToStr(j)+'='+AnsiUpperCase(tmSlot.Value)+';';
           Result:=Result+AnsiUpperCase(tmSlot.ShortName)+'='+
            AnsiUpperCase(
             StringReplace(tmSlot.Value,' ','_',[rfReplaceAll])
              )+';';
        end;
//      end;
    end;
//  end;
end;
//------------------------------------------------------------------------
Function TTask.DataPreporationForCRP(K1:TKnowledgeBase):string;
var
 i,ti : Integer;
 tmSlot : TSlot;
begin
 Result:='%c%=0;';
 for i := 0 to F1.Slots.Count-1 do
  begin
   tmSlot:=TSlot(F1.Slots.Items[i]);
   if Trim(tmSlot.Value)<>'' then
//    Result:=Result+IntToStr(i)+'='+AnsiUpperCase(tmSlot.Value)+';';
    Result:=Result+AnsiUpperCase(tmSlot.ShortName)+'='+
     AnsiUpperCase(
      StringReplace(tmSlot.Value,' ','_',[rfReplaceAll])
       )+';';
  end;

// ti:=K1.IndexOfTemplate(F1);
//add facts with current template
// if ti<>-1 then
//
 Result:=Result+K1.DataPreporationForCRP(ti);

end;
//------------------------------------------------------------------------
function TKnowledgeBase.CreateCFM(FolderName:string):Integer;
var
 i : Integer;
 s : string;
 tmTs : TStringList;
begin
try
 tmTs:=TStringList.Create;
 if ShortName='' then ShortName:=Translit.Trans(Name, Translit.FL);
 if not DirectoryExists(ExtractFileDir(Application.ExeName)+'/Data/CFM/'+Name) then
  CreateDir(ExtractFileDir(Application.ExeName)+'/Data/CFM/'+Name);

 for i := 0 to Templates.Count-1 do
  begin
   tmTs.Text:=TTemplate(Templates.Items[i]).CreateCFM;
   tmTs.SaveToFile(ExtractFileDir(Application.ExeName)+'/Data/CFM/'+Name+'/'+
    ShortName+'_'+TTemplate(Templates.Items[i]).ShortName+'.cfm');
  end;

 tmTs.Clear;
 tmTs.Add('[Generalize rules]');
 tmTs.Add('#'+Name);
 for i := 0 to GRules.Count-1 do
  begin
   tmTs.Add(TGRule(GRules.Items[i]).CreateCFM);
   tmTs.SaveToFile(ExtractFileDir(Application.ExeName)+'/Data/CFM/'+Name+'/'+
    ShortName+'_rules.cfg');
  end;
  Result:=1;
 except
  Result:=-1;
 end;
end;
//------------------------------------------------------------------------
Function TKnowledgeBase.LoadCFM(fName:string):Integer;
var
 tmTs,tmVal : TStringList;
 i,sn : Integer;
 tmT : TTemplate;
 tmSlot : TSlot;
 Slots,SlotCaptions,SlotPossibleValues : TStringList;
begin
  tmTs:=TStringList.Create;
  tmVal:=TStringList.Create;
  Slots:=TStringList.Create;
  SlotCaptions:=TStringList.Create;
  SlotPossibleValues:=TStringList.Create;

  tmT:=TTemplate.Create;
  tmT.Init;
  tmTs.LoadFromFile(fName);
  sn:=0; //section number
  for i:=0 to tmTs.Count-1 do
   begin
    if tmTs.Strings[i]='[Fields]' then sn:=1;
    if tmTs.Strings[i]='[Captions]' then sn:=2;
    if tmTs.Strings[i]='[Values]' then sn:=3;
    if (tmTs.Strings[i]<>'')and
     (tmTs.Strings[i][1]<>'[')and(tmTs.Strings[i]<>';') then
     case sn of
      1: Slots.Add(tmTs.Strings[i]);
      2: SlotCaptions.Add(tmTs.Strings[i]);
      3: SlotPossibleValues.Add(
//       StringReplace(tmTs.Strings[i],' ','++',[rfReplaceAll])
       StringReplace(tmTs.Strings[i],'_',' ',[rfReplaceAll])
        );
     end; //end case
   end;

 for i := 0 to Slots.Count-1 do
  begin
   tmSlot:=TSlot.Create;
   tmSlot.ShortName:=Slots.Names[i];
   tmSlot.DataType:='String';//Slots.ValueFromIndex[i];
   tmSlot.Name:=SlotCaptions.Values[tmSlot.ShortName];
   tmSlot.Value:=SlotPossibleValues.Values[Slots.ValueFromIndex[i]];
   tmT.Slots.Add(tmSlot);
  end;

 tmT.ID:=NewID('T');
 tmT.Name:=tmTs.Values['form'];
 tmT.ShortName:=tmTs.Values['tempale_name'];
 tmT.Description:=tmTs.Values['description'];
 Templates.Add(tmT);
end;
//------------------------------------------------------------------------
Function TKnowledgeBase.LoadTemplatesFromCFM:Integer;
var
 FileAttrs: Integer;
 sr: TSearchRec;
 i: Integer;
 Path : string;
begin
 //search files in dir
  FileAttrs:=faAnyFile;
 if SysUtils.FindFirst(ExtractFileDir(Application.ExeName)+'\Config'+'\*.cfm',
                 FileAttrs,
                 sr) = 0
     then
      repeat
        //load template description
       Self.LoadCFM(ExtractFileDir(Application.ExeName)+'\Config\'+sr.Name)
      until SysUtils.FindNext(sr)<>0;
  SysUtils.FindClose(sr);
end;
//------------------------------------------------------------------------
Function TTemplate.GetSlotByName(Sn:String):Integer;
var
 i :  Integer;
begin
 Result:=-1;
 for i:=0 to Slots.Count-1 do
  if TSlot(Slots.Items[i]).ShortName=Sn then
   begin
    Result:=i;
    Break;
   end;
end;

Function TFact.GetSlotByName(Sn:String):Integer;
var
 i :  Integer;
begin
 Result:=-1;
 for i:=0 to Slots.Count-1 do
  if TSlot(Slots.Items[i]).ShortName=Sn then
   begin
    Result:=i;
    Break;
   end;
end;

Function TKnowledgeBase.SyncPackages:Integer;
var
 i,j,c : Integer;
 s1 : string;
 tmPkg : TTmObj;
begin
 for i := 0 to GRulePackageList.Count-1 do
  begin
   c:=-1;
   for j := 0 to RulePackageList.Count-1 do
    if RulePackageList.ValueFromIndex[j]=
     GRulePackageList.ValueFromIndex[i] then
      begin
       c:=j;
       Break;
      end;
   if c=-1 then
    begin
      s1:=IntToStr(SecondOfTheYear(Now)+i);
      tmPkg:=TTmObj.Create;
      tmPkg.ID:=s1;
      tmPkg.Name:=GRulePackageList.ValueFromIndex[i];
      tmPkg.ID2:=3;
      RulePackageList.AddObject(s1+'='+GRulePackageList.ValueFromIndex[i],tmPkg);


      if TTmObj(GRulePackageList.Objects[i]).ID_Root<>'' then
       begin
        //get root name for grule
        s1:=GRulePackageList.Values[TTmObj(GRulePackageList.Objects[i]).ID_Root];
       //get rule id by name
        tmPkg.ID_Root:=
         GetPkgIDByName(RulePackageList,
          s1
           );
       end;
    end;
  end;
end;

Function TKnowledgeBase.Sync(m:Integer):Integer;
var
 i,j  : Integer;
 tmF  : TFact;
begin
 try
  for i:=0 to Facts.Count-1 do
   SyncFact(TFact(Facts.Items[i]),m);

  for i:=0 to Rules.Count-1 do
   begin
    //----------------------------------------------------------------------
    //conditions
    for j:=0 to TRule(Rules.Items[i]).Conditions.Count-1 do
     begin
      tmF:=TCondition(TRule(Rules.Items[i]).Conditions.Items[j]).Fact;
      SyncFact(tmF,m);
     end;
    //----------------------------------------------------------------------
    //actions
    for j:=0 to TRule(Rules.Items[i]).Actions.Count-1 do
     begin
      tmF:=TRAction(TRule(Rules.Items[i]).Actions.Items[j]).Fact;
      SyncFact(tmF,m);
     end;
    //----------------------------------------------------------------------
   end;
 except
 end;
end;

Function TKnowledgeBase.UpdateGRFbyT(T1,T2:TTemplate;UL:TStringList):Integer;
//t1 - old taemplate, t2 - new template
//----------------------------------------------------------------------------
function SyncFactV2(tmF:TFact;T1:TTemplate):Integer;
var
 l,g : Integer;
 tmS : TSlot;
begin
 try
//   tmF.Name:=T1.Name;
   tmF.ShortName:=T1.ShortName;
        //sync fact by template (add)
        for l:=0 to T1.Slots.Count-1 do
         begin
          g:=tmF.GetSlotByName(
           TSlot(T1.Slots.Items[l]).ShortName
            );
          if g=-1 then
           begin  //create new solt in fact
            tmS:=TSlot.Create;
            CopySlot(TSlot(T1.Slots.Items[l]),
             tmS);
            tmS.Value:='';
            tmF.Slots.Add(tmS);
           end;
         end;
       //sync fact by template (rem not exist)
        for l:=tmF.Slots.Count-1 downto 0 do
         begin
          g:=T1.GetSlotByName(
           TSlot(tmF.Slots.Items[l]).ShortName
            );
          if g=-1 then
           begin  //del solt in fact
            TSlot(tmF.Slots.Items[l]).Free;
            tmF.Slots.Delete(l);
           end;
         end;
  Result:=0;       
 except
  Result:=-1;
 end;
end;
//------------------------------------------------------------------------
var
 c,i,j,g  : Integer;
 tmT  : TTemplate;
 tmS  : TSlot;
begin
 try
 for i := 0 to UL.Count-1 do
  begin
   //----------------- GRule ---------------------------
   if UL.Objects[i] is TGRule then
    begin
     for j:=0 to TGRule(UL.Objects[i]).Conditions.Count-1 do
      if T1.ShortName=TTemplate(TGRule(UL.Objects[i]).Conditions.Items[j]).ShortName then
       begin  //update as t2
        TTemplate(TGRule(UL.Objects[i]).Conditions.Items[j]).MakeACloneFrom(
         1,T2);
       end;
     for j:=0 to TGRule(UL.Objects[i]).Actions.Count-1 do
      if T1.ShortName=TTemplate(TGRule(UL.Objects[i]).Actions.Items[j]).ShortName then
       begin  //update as t2
        TTemplate(TGRule(UL.Objects[i]).Actions.Items[j]).MakeACloneFrom(
         1,T2);
       end;    
    end;
   //----------------- Rule ---------------------------
   if UL.Objects[i] is TRule then
    begin
     for j:=0 to TRule(UL.Objects[i]).Conditions.Count-1 do
      if T1.ShortName=TCondition(TRule(UL.Objects[i]).Conditions.Items[j]).Fact.ShortName then
       begin  //update as t2
        SyncFactV2(TCondition(TRule(UL.Objects[i]).Conditions.Items[j]).Fact,T2);
       end;
     for j:=0 to TRule(UL.Objects[i]).Actions.Count-1 do
      if T1.ShortName=TRAction(TRule(UL.Objects[i]).Actions.Items[j]).Fact.ShortName then
       begin  //update as t2
        SyncFactV2(TRAction(TRule(UL.Objects[i]).Actions.Items[j]).Fact,T2);
       end;       
    end;
   //----------------- Fact ---------------------------
   if UL.Objects[i] is TFact then
    if T1.ShortName=TFact(UL.Objects[i]).ShortName then
      begin  //update as t2
       SyncFactV2(TFact(UL.Objects[i]),T2);
      end;
   //---------------------------------------------------    
  end;
  Result:=0;
 except
  Result:=-1;
 end;
end;
//---------------------------------------------------------------------
Function TKnowledgeBase.UpdateIDforGRules:Integer;
var
 i,j,k : Integer;
begin
 for i := 0 to GRules.Count-1 do
  begin
   //processing conditions
   for j := 0 to TGRule(GRules.Items[i]).Conditions.Count-1 do
    if TTemplate(TGRule(GRules.Items[i]).Conditions.Items[j]).ID='' then
     begin
      //get id of the exisiting temaplate
      k:=IndexOfTemplateByShortName(
       TTemplate(TGRule(GRules.Items[i]).Conditions.Items[j]).ShortName,''
       );
      if k=-1 then
       TTemplate(TGRule(GRules.Items[i]).Conditions.Items[j]).ID:=NewID('T')
      else
       begin
        TTemplate(TGRule(GRules.Items[i]).Conditions.Items[j]).ID:=
         TTemplate(Templates.Items[k]).ID;
       end;
     end;
   //processing actions
   for j := 0 to TGRule(GRules.Items[i]).Actions.Count-1 do
    if TTemplate(TGRule(GRules.Items[i]).Actions.Items[j]).ID='' then
     begin
      //get id of the exisiting temaplate
      k:=IndexOfTemplateByShortName(
       TTemplate(TGRule(GRules.Items[i]).Actions.Items[j]).ShortName,''
       );
      if k=-1 then
       TTemplate(TGRule(GRules.Items[i]).Actions.Items[j]).ID:=NewID('T')
      else
       begin
        TTemplate(TGRule(GRules.Items[i]).Actions.Items[j]).ID:=
         TTemplate(Templates.Items[k]).ID;
       end;
     end;
  end;
end;
//---------------------------------------------------------------------
//m passive-0 active-1
Function TKnowledgeBase.SyncFact(tmF:TFact;m:Integer):Integer;
var
 c,l,g  : Integer;
 tmT  : TTemplate;
 tmS  : TSlot;
begin
 try
  c:=IndexOfTemplate(tmF);
  case m of
   0:begin
      if (c>-1) then
       //check exist template structure
       begin
        if tmF.Name='' then tmF.Name:=TTemplate(Templates.Items[c]).Name;
        //sync fact by template (add)
        for l:=0 to TTemplate(Templates.Items[c]).Slots.Count-1 do
         begin
          g:=tmF.GetSlotByName(
           TSlot(TTemplate(Templates.Items[c]).Slots.Items[l]).ShortName
            );
          if g=-1 then
           begin  //create new solt in fact
            tmS:=TSlot.Create;
            CopySlot(TSlot(TTemplate(Templates.Items[c]).Slots.Items[l]),
             tmS);
            tmS.Value:='';
            tmF.Slots.Add(tmS);
           end;
         end;
       //sync fact by template (rem not exist)
        for l:=tmF.Slots.Count-1 downto 0 do
         begin
          g:=TTemplate(Templates.Items[c]).GetSlotByName(
           TSlot(tmF.Slots.Items[l]).ShortName
            );
          if g=-1 then
           begin  //del solt in fact
            TSlot(tmF.Slots.Items[l]).Free;
            tmF.Slots.Delete(l);
           end;
         end;
       end;
   end; //end m-0
   1:begin
      if (c=-1)then
       begin  //create new template
        tmT:=TTemplate.Create;
        tmT.Init;
        tmT.ShortName:=tmF.ShortName;
        tmT.Description:=tmF.Name;
        tmT.Name:=tmT.ShortName;
        for l:=0 to tmF.Slots.Count-1 do
         begin
          tmS:=TSlot.Create;
          CopySlot(TSlot(tmF.Slots.Items[l]),tmS);
          tmT.Slots.Add(tmS);
         end;
        Templates.Add(tmT);
       end
      else
       //sync template by fact
        for l:=0 to tmF.Slots.Count-1 do
         begin
          g:=TTemplate(Templates.Items[c]).GetSlotByName(
           TSlot(tmF.Slots.Items[l]).ShortName
            );
          if g=-1 then
           begin  //create new solt in template
            tmS:=TSlot.Create;
            CopySlot(TSlot(tmF.Slots.Items[l]),tmS);
            TTemplate(Templates.Items[c]).Slots.Add(tmS);
           end;
         end;
   end; //end m-1
  end;  //end case
  Result:=0;
 except
  Result:=-1;
 end;
end;

Procedure TKnowledgeBase.Update(FL:TStringList;CL:TStringList);
var
 i,c,j  : Integer;
begin
//
 for i:=0 to FL.Count-1 do
  begin
   c:=CL.IndexOfName('tsn'+TFact(FL.Objects[i]).ShortName);
   if c>-1 then TFact(FL.Objects[i]).ShortName:=CL.ValueFromIndex[c];
   c:=CL.IndexOfName('tn'+TFact(FL.Objects[i]).Name);
   if c>-1 then TFact(FL.Objects[i]).Name:=CL.ValueFromIndex[c];

   for j:=TFact(FL.Objects[i]).Slots.Count-1 downto 0 do
    begin
     c:=CL.IndexOfName('ssn'+TSlot(TFact(FL.Objects[i]).Slots.Items[j]).ShortName);
     if c>-1 then TSlot(TFact(FL.Objects[i]).Slots.Items[j]).ShortName:=CL.ValueFromIndex[c];
     c:=CL.IndexOfName('sn'+TSlot(TFact(FL.Objects[i]).Slots.Items[j]).Name);
     if c>-1 then TSlot(TFact(FL.Objects[i]).Slots.Items[j]).Name:=CL.ValueFromIndex[c];

{     if TSlot(TFact(FL.Objects[i]).Slots.Items[j]).ShortName='' then
      begin
       TSlot(TFact(FL.Objects[i]).Slots.Items[j]).Free;
       TFact(FL.Objects[i]).Slots.Delete(j);
      end;
}
    end;
  end;
end;

Function TSlot.GetSimpleDataType:String;
begin
 if DataType='String' then Result:='??????';
 if DataType='Number' then Result:='?????';
 if DataType='Symbol' then Result:='??????';
end;

Procedure TRule.Trans(TL:TStringList);
var
 j  : Integer;
begin
  Name:=Translit.Trans(Name,TL);
  for j:=0 to Conditions.Count-1 do
   TCondition(Conditions.Items[j]).Fact.Trans(TL);
  for j:=0 to Actions.Count-1 do
   TRAction(Actions.Items[j]).Fact.Trans(TL);
end;

Procedure TFact.Trans(TL:TStringList);
var
 j  : Integer;
begin
 Name:=Translit.Trans(Name,TL);
 for j:=0 to Slots.Count-1 do
  TSlot(Slots.Items[j]).Trans(TL);
end;

Procedure TFunct.Trans(TL:TStringList);
var
 j  : Integer;
begin
 Name:=Translit.Trans(Name,TL);
 for j:=0 to Args.Count-1 do
  TArgument(Args.Items[j]).Trans(TL);
end;

Procedure TTemplate.Trans(TL:TStringList);
var
 j  : Integer;
begin
 Name:=Translit.Trans(Name,TL);
 for j:=0 to Slots.Count-1 do
  TSlot(Slots.Items[j]).Trans(TL);
end;

Procedure TArgument.Trans(TL:TStringList);
begin
 Name:=Translit.Trans(Name,TL);
end;

Procedure TSlot.Trans(TL:TStringList);
begin
 Name:=Translit.Trans(Name,TL);
end;

Procedure TKnowledgeBase.Trans(TL:TStringList);
var
 i  : Integer;
begin
try
 for i:=0 to Templates.Count-1 do
  TTemplate(Templates.Items[i]).Trans(TL);

 for i:=0 to Facts.Count-1 do
  TFact(Facts.Items[i]).Trans(TL);

 for i:=0 to Rules.Count-1 do
  TRule(Rules.Items[i]).Trans(TL);
except
end;
end;

function TCDictionary.Copy(tmDic:TObject):Integer;
begin
try
 FName:=TCDictionary(tmDic).FName;
 Name:=TCDictionary(tmDic).Name;
 Description:=TCDictionary(tmDic).Description;
 Names.Text:=TCDictionary(tmDic).Names.Text;
 Values.Text:=TCDictionary(tmDic).Values.Text;
 Result:=0;
except
 Result:=-1;
end;
end;

function TCDictionary.Save(FileName:String):Integer;
var
 i  : Integer;
 tmTs : TStringList;
begin
 try
  tmTs:=TStringList.Create;
  tmTs.Add('[name]');
  tmTs.Add(Name);
  tmTs.Add('[description]');
  tmTs.Add(Description);
  tmTs.Add('[names]');
  for i:=0 to Names.Count-1 do
   tmTs.Add(Names.Strings[i]);
  tmTs.Add('[values]');
  for i:=0 to Values.Count-1 do
   tmTs.Add(Values.Strings[i]);

  tmTs.SaveToFile(FileName); 
  Result:=0;
 except
  Result:=-1;
 end;
end;

function TCDictionary.Load(FileName:String):Integer;
var
 i,c  : Integer;
 tmTs : TStringList;
begin
 try
  FName:=FileName;
  tmTs:=TStringList.Create;
  tmTs.LoadFromFile(FileName);
  c:=0;
  for i:=0 to tmTs.Count-1 do
   begin
    if tmTs.Strings[i]='[name]' then
     if (tmTs.Strings[i+1]<>'')and(tmTs.Strings[i+1]<>'[description]') then
      Name:=tmTs.Strings[i+1];
    if tmTs.Strings[i]='[description]' then
     if (tmTs.Strings[i+1]<>'')and(tmTs.Strings[i+1]<>'[names]')
      and(tmTs.Strings[i+1]<>'[values]') then
       Description:=tmTs.Strings[i+1];
    if (tmTs.Strings[i]='[names]')or(tmTs.Strings[i]='[values]') then Inc(c);
    if (c=1)and(tmTs.Strings[i]<>'[names]') then Names.Add(tmTs.Strings[i]);
    if (c=2)and(tmTs.Strings[i]<>'[values]') then Values.Add(tmTs.Strings[i]);
   end;
  Result:=0;
 except
  Result:=-1;
 end;
end;

Function TFact.FactOrderMark(m:String):Integer;
begin
 Mode:=m;
 Result:=1;
end;

Function TRule.FactOrderMark(m:String):Integer;
var
 i  : Integer;
begin
try
 for i:=0 to Conditions.Count-1 do
  TCondition(Conditions.Items[i]).Fact.FactOrderMark(m);
 for i:=0 to Actions.Count-1 do
  TRAction(Actions.Items[i]).Fact.FactOrderMark(m);
 Result:=0;
except
 Result:=-1;
end;
end;

Function TKnowledgeBase.FactOrderMark(m:String):Integer;
var
 i  : Integer;
begin
 try
 for i:=0 to Facts.Count-1 do
  TFact(Facts.Items[i]).FactOrderMark(m);
 for i:=0 to Rules.Count-1 do
  TRule(Rules.Items[i]).FactOrderMark(m);
  Result:=0;
 except
  Result:=-1;
 end
end;

Function TCondition.GetOperator:String;
begin
 if Operator='or' then Result:=MainForm.LS('OR');
 if Operator='and' then Result:=MainForm.LS('AND');
// if Operator='not' then Result:='??';
end;

Function TRAction.GetOperator:String;
begin
 if Operator='add' then Result:=MainForm.LS('Add the fact:');
 if Operator='rem' then Result:=MainForm.LS('Delete the fact:');
end;

Function TFact.GetSlotsFrom(T:TTemplate):Integer;
var
 i  : Integer;
 tmSlot : TSlot;
begin
 try
 Slots.Clear;
 for i:=0 to T.Slots.Count-1 do
  begin
   tmSlot:=TSlot.Create;
   tmSlot.Name:=TSlot(T.Slots.Items[i]).Name;
   tmSlot.ShortName:=TSlot(T.Slots.Items[i]).ShortName;
   if pos(';',TSlot(T.Slots.Items[i]).Value)=0 then
    tmSlot.Value:=TSlot(T.Slots.Items[i]).Value
     else tmSlot.Value:='';

   tmSlot.DataType:=TSlot(T.Slots.Items[i]).DataType;
   Slots.Add(tmSlot);
  end;
  Result:=Slots.Count;
 except
  Result:=-1;
 end;
end;

Function TKnowledgeBase.IndexesOfFUT(T:TTemplate):TStringList;
{Function isEqual(T:TTemplate;F:TFact):Boolean;
var
 j,c  : Integer;
begin
 Result:=False;
 if T.Slots.Count=F.Slots.Count then
  begin
   j:=0;
   for c:=0 to F.Slots.Count-1 do
    if TSlot(F.Slots.Items[c]).ShortName=
     TSlot(T.Slots.Items[c]).ShortName
      then Inc(j);
   if j=F.Slots.Count then Result:=True;
  end;
end;
}
var
 i  : Integer;
begin
 Result:=TStringList.Create;
 for i:=0 to Facts.Count-1 do
  begin
   if T.ShortName=TFact(Facts.Items[i]).ShortName then
    Result.AddObject('['+TFact(Facts.Items[i]).ID+'] '+
     TFact(Facts.Items[i]).Name,Facts.Items[i]);
  end;
end;

Function TKnowledgeBase.IndexesOfGUT(T:TTemplate):TStringList;
var
 i,j  : Integer;
begin
 Result:=TStringList.Create;
 for i:=0 to GRules.Count-1 do
  begin
   for j:=0 to TGRule(GRules.Items[i]).Conditions.Count-1 do
    if T.ShortName=TTemplate(TGRule(GRules.Items[i]).Conditions.Items[j]).ShortName then
     begin
      Result.AddObject('['+TGRule(GRules.Items[i]).ID+'] '+'[C'+IntToStr(i)+'] '+
       TGRule(GRules.Items[i]).Name,GRules.Items[i]);
      Break;
     end;
   if Result.IndexOf('['+TGRule(GRules.Items[i]).ID+'] '+
       TGRule(GRules.Items[i]).Name)=-1 then
   for j:=0 to TGRule(GRules.Items[i]).Actions.Count-1 do
    if T.ShortName=TTemplate(TGRule(GRules.Items[i]).Actions.Items[j]).ShortName then
     begin
      Result.AddObject('['+TGRule(GRules.Items[i]).ID+'] '+'[A'+IntToStr(i)+'] '+
       TGRule(GRules.Items[i]).Name,GRules.Items[i]);
      Break;
     end;
  end;
end;

Function TKnowledgeBase.IndexesOfRUF(F:TFact):TStringList;
{Function isEqual(T:TTemplate;F:TFact):Boolean;
var
 j,c  : Integer;
begin
 Result:=False;
 if T.Slots.Count=F.Slots.Count then
  begin
   j:=0;
   for c:=0 to F.Slots.Count-1 do
    if TSlot(F.Slots.Items[c]).ShortName=
     TSlot(T.Slots.Items[c]).ShortName
      then Inc(j);
   if j=F.Slots.Count then Result:=True;
  end;
end;
}
var
 i,j  : Integer;
begin
{ Result:=TStringList.Create;
 for i:=0 to Rules.Count-1 do
  begin
   for j:=0 to TRule(Rules.Items[i]).Conditions.Count-1 do
    if T.ShortName=TCondition(TRule(Rules.Items[i]).Conditions.Items[j]).Fact.ShortName then
//    if isEqual(T,TCondition(TRule(Rules.Items[i]).Conditions.Items[j]).Fact) then
     begin
      Result.AddObject('['+TRule(Rules.Items[i]).ID+'] '+
       TRule(Rules.Items[i]).Name,Rules.Items[i]);
      Break;
     end;
   if Result.IndexOf('['+TRule(Rules.Items[i]).ID+'] '+
       TRule(Rules.Items[i]).Name)=-1 then
   for j:=0 to TRule(Rules.Items[i]).Actions.Count-1 do
    if T.ShortName=TRAction(TRule(Rules.Items[i]).Actions.Items[j]).Fact.ShortName then
//    if isEqual(T,TRAction(TRule(Rules.Items[i]).Actions.Items[j]).Fact) then
     begin
      Result.AddObject('['+TRule(Rules.Items[i]).ID+'] '+
       TRule(Rules.Items[i]).Name,Rules.Items[i]);
      Break;
     end;
  end;  }
end;

Function TKnowledgeBase.IndexesOfRUT(T:TTemplate):TStringList;
{Function isEqual(T:TTemplate;F:TFact):Boolean;
var
 j,c  : Integer;
begin
 Result:=False;
 if T.Slots.Count=F.Slots.Count then
  begin
   j:=0;
   for c:=0 to F.Slots.Count-1 do
    if TSlot(F.Slots.Items[c]).ShortName=
     TSlot(T.Slots.Items[c]).ShortName
      then Inc(j);
   if j=F.Slots.Count then Result:=True;
  end;
end;
}
var
 i,j  : Integer;
begin
 Result:=TStringList.Create;
 for i:=0 to Rules.Count-1 do
  begin
   for j:=0 to TRule(Rules.Items[i]).Conditions.Count-1 do
    if T.ShortName=TCondition(TRule(Rules.Items[i]).Conditions.Items[j]).Fact.ShortName then
//    if isEqual(T,TCondition(TRule(Rules.Items[i]).Conditions.Items[j]).Fact) then
     begin
      Result.AddObject('['+TRule(Rules.Items[i]).ID+'] '+
       TRule(Rules.Items[i]).Name,Rules.Items[i]);
      Break;
     end;
   if Result.IndexOf('['+TRule(Rules.Items[i]).ID+'] '+
       TRule(Rules.Items[i]).Name)=-1 then
   for j:=0 to TRule(Rules.Items[i]).Actions.Count-1 do
    if T.ShortName=TRAction(TRule(Rules.Items[i]).Actions.Items[j]).Fact.ShortName then
//    if isEqual(T,TRAction(TRule(Rules.Items[i]).Actions.Items[j]).Fact) then
     begin
      Result.AddObject('['+TRule(Rules.Items[i]).ID+'] '+
       TRule(Rules.Items[i]).Name,Rules.Items[i]);
      Break;
     end;
  end;
end;
//------------------------------------------------------------------
Function TKnowledgeBase.IndexOfFVar(N:string):Integer;
var
 i  : Integer;
begin
 Result:=-1;
 for i:=0 to FVars.Count-1 do
  begin
    if N=TFVar(FVars.Items[i]).Name then
       begin
        Result:=i;
        Break;
       end;
  end;
end;
//------------------------------------------------------------------
Function TKnowledgeBase.IndexOfTemplateWithFScale(fvn:string):Integer;
var
 i,j : Integer;
begin
 Result:=-1;
 for i := 0 to Templates.Count-1 do
  for j := 0 to TTemplate(Templates.Items[i]).Slots.Count-1 do
   if (TSlot(TTemplate(Templates.Items[i]).Slots.Items[j]).DataType='Fuzzy')
   and (TSlot(TTemplate(Templates.Items[i]).Slots.Items[j]).Value=fvn) then
    Result:=i;
end;
//------------------------------------------------------------------
{Function TKnowledgeBase.IndexOfFVarWithScale(fsn:string):Integer;
var
 i : Integer;
begin
 Result:=-1;
 for i := 0 to FVars.Count-1 do
  if (TFVar(FVars.Items[i]).FScaleName=fsn) then
    Result:=i;
end;  }
//------------------------------------------------------------------
Function TKnowledgeBase.IndexOfFScaleByTerm(N:string):Integer;
var
 i,j  : Integer;
begin
 Result:=-1;
 for i:=0 to FScales.Count-1 do
  for j := 0 to TFScale(FScales.Items[i]).ListOfValues.Count-1 do
    begin
      if N=TFVar(TFScale(FScales.Items[i]).ListOfValues.Objects[j]).Name then
         begin
          Result:=i;
          Break;
         end;
    end;
end;
//------------------------------------------------------------------
Function TKnowledgeBase.IndexOfFScale(N:string):Integer;
var
 i  : Integer;
begin
 Result:=-1;
 for i:=0 to FScales.Count-1 do
  begin
    if N=TFScale(FScales.Items[i]).Name then
       begin
        Result:=i;
        Break;
       end;
  end;
end;
//------------------------------------------------------------------
Function TKnowledgeBase.IndexOfFactByName(s:string):Integer;
var
 i  : Integer;
begin
 Result:=-1;
 for i:=0 to Facts.Count-1 do
  begin
    if s=TFact(Facts.Items[i]).Name then
       begin
        Result:=i;
        Break;
       end;
  end;
end;
//------------------------------------------------------------------
Function TKnowledgeBase.IndexOfFactByShortName(s:string):Integer;
var
 i  : Integer;
begin
 Result:=-1;
 for i:=0 to Facts.Count-1 do
  begin
    if Trim(TFact(Facts.Items[i]).ShortName)='' then
     TFact(Facts.Items[i]).ShortName:=
      Translit.Trans(TFact(Facts.Items[i]).Name,Translit.FL);

    if s=TFact(Facts.Items[i]).ShortName then
       begin
        Result:=i;
        Break;
       end;
  end;
end;
//------------------------------------------------------------------
Function TKnowledgeBase.IndexOfFactByID(ID:string):Integer;
var
 i  : Integer;
begin
 Result:=-1;
 for i:=0 to Facts.Count-1 do
  begin
    if ID=TFact(Facts.Items[i]).ID then
       begin
        Result:=i;
        Break;
       end;
  end;
end;
//---------------------------------------------------------------------
Function TKnowledgeBase.IndexOfTemplateByName(s,s1:string):Integer;
//s - new name, s1 - old name
var
 i  : Integer;
begin
 Result:=-1;
 if s<>s1 then
   for i:=0 to Templates.Count-1 do
    begin
      if (s=TTemplate(Templates.Items[i]).Name) then
  //      if j=F.Slots.Count then
         begin
          Result:=i;
          Break;
         end;
    end;
end;
//---------------------------------------------------------------------
Function TKnowledgeBase.IndexOfTemplateByShortName(s,s1:string):Integer;
//s - new name, s1 - old name
var
 i  : Integer;
begin
 Result:=-1;
 if s<>s1 then
   for i:=0 to Templates.Count-1 do
    begin
      if (s=TTemplate(Templates.Items[i]).ShortName) then
  //      if j=F.Slots.Count then
         begin
          Result:=i;
          Break;
         end;
    end;
end;
//---------------------------------------------------------------------
Function TKnowledgeBase.IndexOfGRuleByID(s:string):Integer;
var
 i  : Integer;
begin
 Result:=-1;
 for i:=0 to GRules.Count-1 do
  begin
    if s=TGRule(GRules.Items[i]).ID then
//      if j=F.Slots.Count then
       begin
        Result:=i;
        Break;
       end;
  end;
end;
//---------------------------------------------------------------------
Function TKnowledgeBase.IndexOfGRuleByConditionDescription(s:string):Integer;
var
 i,j  : Integer;
begin
 Result:=-1;
 for i:=0 to GRules.Count-1 do
  for j:=0 to TGRule(GRules.Items[i]).Conditions.Count-1 do
    begin
      if s=TTemplate(TGRule(GRules.Items[i]).Conditions[j]).Description then
  //      if j=F.Slots.Count then
         begin
          Result:=i;
          Break;
         end;
    end;
end;

Function TKnowledgeBase.IndexOfTemplateByID(s:string):Integer;
var
 i  : Integer;
begin
 Result:=-1;
 for i:=0 to Templates.Count-1 do
  begin
    if s=TTemplate(Templates.Items[i]).ID then
//      if j=F.Slots.Count then
       begin
        Result:=i;
        Break;
       end;
  end;
end;

Function TKnowledgeBase.IndexOfGRuleByShortName(GR:TGRule):Integer;
var
 i,c,j  : Integer;
begin
 Result:=-1;
 for i:=0 to GRules.Count-1 do
  begin
    if (GR.ShortName=TGRule(GRules.Items[i]).ShortName)and
     (GR.ID<>TGRule(GRules.Items[i]).ID) then
//      if j=F.Slots.Count then
       begin
        Result:=i;
        Break;
       end;
  end;
end;

Function TKnowledgeBase.IndexOfGRuleByTemplateShortName(s:string):Integer;
var
 i,c,j  : Integer;
begin
 Result:=-1;
 for i:=0 to GRules.Count-1 do
 for j := 0 to TGRule(GRules.Items[i]).Conditions.Count-1 do
  begin
    if (s=TTemplate(TGRule(GRules.Items[i]).Conditions.Items[j]).ShortName) then
       begin
        Result:=i;
        Break;
       end;
  end;
end;

Function TKnowledgeBase.IndexOfRuleByShortName(R:TRule):Integer;
var
 i,c,j  : Integer;
begin
 Result:=-1;
 for i:=0 to Rules.Count-1 do
  begin
    if (R.ShortName=TRule(Rules.Items[i]).ShortName)
    and (R.ID<>TRule(Rules.Items[i]).ID)
     then
//      if j=F.Slots.Count then
       begin
        Result:=i;
        Break;
       end;
  end;
end;
//-----------------------------------------------------------------
Function TKnowledgeBase.IndexOfFactByHash(s:string):Integer;
var
 i  : Integer;
begin
 Result:=-1;
 for i:=0 to Facts.Count-1 do
  begin
    if (s=TFact(Facts.Items[i]).Hash) then
       begin
        Result:=i;
        Break;
       end;
  end;
end;
//-----------------------------------------------------------------
Function TKnowledgeBase.IndexOfRuleByHash(s:string):Integer;
var
 i  : Integer;
begin
 Result:=-1;
 for i:=0 to Rules.Count-1 do
  begin
    if (s=TRule(Rules.Items[i]).Hash) then
       begin
        Result:=i;
        Break;
       end;
  end;
end;
//-----------------------------------------------------------------
Function TKnowledgeBase.IndexOfRuleByID(s:string):Integer;
var
 i  : Integer;
begin
 Result:=-1;
 for i:=0 to Rules.Count-1 do
  begin
    if (s=TRule(Rules.Items[i]).ID) then
//      if j=F.Slots.Count then
       begin
        Result:=i;
        Break;
       end;
  end;
end;
//-----------------------------------------------------------------
Function TKnowledgeBase.IndexOfRuleByNameV2(s:string):Integer;
var
 i : Integer;
begin
 Result:=-1;
 for i := 0 to Rules.Count-1 do
  if TRule(Rules.Items[i]).Name=s then
   begin
    Result:=i;
    Break;
   end;
end;
//-----------------------------------------------------------------
Function TKnowledgeBase.IndexOfRuleByName(s:string):Integer;
var
 i : Integer;
begin
 Result:=-1;
 for i := 0 to Rules.Count-1 do
  if TRule(Rules.Items[i]).ShortName=s then
   begin
    Result:=i;
    Break;
   end;
end;
//----------------------------------------------------------------
Function TKnowledgeBase.IndexOfGRuleByName(s:string):Integer;
var
 i : Integer;
begin
 Result:=-1;
 for i := 0 to GRules.Count-1 do
  if TGRule(GRules.Items[i]).ShortName=s then
   begin
    Result:=i;
    Break;
   end;
end;
//----------------------------------------------------------------
Function TKnowledgeBase.IndexOfTemplateV3(F:TFact):Integer;
//search by structure
var
 i,c,j  : Integer;
 s : string;
 tmTs : TStringList;
begin
 Result:=-1;
 for i:=0 to Templates.Count-1 do
  begin
   j:=0;
   if TTemplate(Templates.Items[i]).Slots.Count=
    F.Slots.Count then
     begin
      for c:=0 to F.Slots.Count-1 do
       if TTemplate(Templates.Items[i]).IndexOf(
        TSlot(F.Slots.Items[c]).ShortName,-1)>-1
         then Inc(j);
      if j=F.Slots.Count then
       begin
        Result:=i;
        Break;
       end;
     end;
  end;
end;
//----------------------------------------------------------------
Function TKnowledgeBase.IndexOfTemplateV2(F:TFact):Integer;
var
 i,c,j  : Integer;
 s : string;
 tmTs : TStringList;
begin
 Result:=-1;

 tmTs:=TStringList.Create;
 tmTs.Delimiter:='-';
 tmTs.DelimitedText:=F.ShortName;
 s:='';
 if tmTs.Count>1 then tmTs.Delete(tmTs.Count-1);
 for i := 0 to tmTs.Count-1 do
  begin
   if i>0 then s:=s+'-';
   s:=s+tmTs.Strings[i];
  end;

 for i:=0 to Templates.Count-1 do
  begin
//   if TTemplate(Templates.Items[i]).Slots.Count=
//    F.Slots.Count then
//     begin
//      j:=0;
//      for c:=0 to F.Slots.Count-1 do
//       if TSlot(F.Slots.Items[c]).ShortName=
//        TSlot(TTemplate(Templates.Items[i]).Slots.Items[c]).ShortName
//         then Inc(j);
    if pos(s,TTemplate(Templates.Items[i]).ShortName)>0 then
//    if pos(F.ShortName,TTemplate(Templates.Items[i]).ShortName)>0 then
//      if j=F.Slots.Count then
       begin
        Result:=i;
        Break;
       end;
//     end;
  end;
end;
//----------------------------------------------------------------
Function TKnowledgeBase.IndexOfTemplate(F:TFact):Integer;
var
 i,c,j  : Integer;
begin
 Result:=-1;
 for i:=0 to Templates.Count-1 do
  begin
//   if TTemplate(Templates.Items[i]).Slots.Count=
//    F.Slots.Count then
//     begin
//      j:=0;
//      for c:=0 to F.Slots.Count-1 do
//       if TSlot(F.Slots.Items[c]).ShortName=
//        TSlot(TTemplate(Templates.Items[i]).Slots.Items[c]).ShortName
//         then Inc(j);
    if F.ShortName=TTemplate(Templates.Items[i]).ShortName then
//      if j=F.Slots.Count then
       begin
        Result:=i;
        Break;
       end;
//     end;
  end;
end;
//---------------------------------------------------------------------------
function TRule.ClearStructure:Integer;  //delete empty conditions and actions
var
 i,j,k : Integer;
begin
 for i := Conditions.Count-1 downto 0 do
  begin
   k:=0;
   for j:=0 to TCondition(Conditions.Items[i]).Fact.Slots.Count-1 do
    if Trim(TSlot(
     TCondition(Conditions.Items[i]).Fact.Slots.Items[j]
      ).Value)='' then Inc(k);
    if k=TCondition(Conditions.Items[i]).Fact.Slots.Count then
     Conditions.Delete(i);
  end;

 for i := Actions.Count-1 downto 0 do
  begin
   k:=0;
   for j:=0 to TRAction(Actions.Items[i]).Fact.Slots.Count-1 do
    if Trim(TSlot(
     TRAction(Actions.Items[i]).Fact.Slots.Items[j]
      ).Value)='' then Inc(k);
    if k=TRAction(Actions.Items[i]).Fact.Slots.Count then
     Actions.Delete(i);
  end;

 if (Conditions.Count=0)or(Actions.Count=0) then Result:=-1
  else Result:=0;
end;
//---------------------------------------------------------------------------
function TRule.NewID(s:String):String;
var
 i,c,j  : Integer;
 tmID : String;
begin
 c:=0;
 j:=0;
 while j<>-1 do
  begin
   Inc(c);
   tmID:=IntToStr(c);
   while Length(tmID)<3 do tmID:='0'+tmID;
   Result:=s+tmID;

  j:=-1;
  case s[1] of
   'A':begin
      for i:=0 to Actions.Count-1 do
       if TRAction(Actions.Items[i]).Fact.ID=Result then
        begin
         j:=i;
         Break;
        end;
   end; //end A
   'C':begin
      for i:=0 to Conditions.Count-1 do
       if TCondition(Conditions.Items[i]).Fact.ID=Result then
        begin
         j:=i;
         Break;
        end;
   end; //end C
  end; //end case
 end;
end;


//c=0 without operator, c=1 with operator
//f=0 without formating, c=1 in line
Function TRAction.GetInfo(c,f:Integer; tKB:TKnowledgeBase):String;
var
 i  : Integer;
 j  : Integer;
 tmTs : TStringList;
 cs,constr : String;
 ts : String;
begin
 cs:='';
 if c=1 then cs:=GetOperator;

 tmTs:=TStringList.Create;

 for i:=0 to Fact.Slots.Count-1 do
  begin
   constr:=TSlot(Fact.Slots.Items[i]).Constraint;
   if constr='' then constr:='=';

   if (tmTs.Count=0) then ts:=''
    else ts:=MainForm.LS('AND')+' ';
   if TSlot(Fact.Slots.Items[i]).Value<>'' then
   tmTs.Add(ts+TSlot(Fact.Slots.Items[i]).Name+' '+
    constr+' '+
     TSlot(Fact.Slots.Items[i]).Value);
  end;

 j:=tKB.IndexOfTemplate(Fact);
 if j>-1 then
  begin
   tmTs.Insert(0,
    TTemplate(tKB.Templates.Items[j]).Name+' ( '
     );
   tmTs.Strings[tmTs.Count-1]:=tmTs.Strings[tmTs.Count-1]+' )';
//   tmTs.Add(' )');
  end;

 if c=1 then tmTs.Insert(0,cs);
 Result:=Trim(tmTs.Text);
 if f=1 then Result:=StringReplace(Result,#$D#$A,' ',[rfReplaceAll]);
end;

//c=0 without operator, c=1 with operator
//f=0 without formating, c=1 in line
Function TCondition.GetInfo(c,f:Integer; tKB:TKnowledgeBase):String;
var
 i  : Integer;
 j  : Integer;
 tmTs : TStringList;
 cs, constr : String;
 ts : String;
begin
 cs:='';
 if c=1 then cs:=GetOperator;

 tmTs:=TStringList.Create;

 for i:=0 to Fact.Slots.Count-1 do
  begin
   constr:=TSlot(Fact.Slots.Items[i]).Constraint;
   if constr='' then constr:='=';

   if (tmTs.Count=0) then ts:=''
    else ts:='AND ';
   if TSlot(Fact.Slots.Items[i]).Value<>'' then
   tmTs.Add(ts+TSlot(Fact.Slots.Items[i]).Name+' '+
    constr+' '+
     TSlot(Fact.Slots.Items[i]).Value);
  end;

 j:=tKB.IndexOfTemplate(Fact);
 if j>-1 then
  begin
   tmTs.Insert(0,
    TTemplate(tKB.Templates.Items[j]).Name+' ( '
     );
   tmTs.Strings[tmTs.Count-1]:=tmTs.Strings[tmTs.Count-1]+' )';
//   tmTs.Add(' )');
  end;

 if c=1 then tmTs.Insert(0,cs);
 Result:=Trim(tmTs.Text);
 if f=1 then Result:=StringReplace(Result,#$D#$A,' ',[rfReplaceAll]);
end;

Function TCondition.AddToTreeView(Tree:TTreeView;pN:TTreeNode):TTreeNode;
var
 nN : TTreeNode;
begin
 try
  nN:=Tree.Items.AddChildObject(pN,GetOperator+' '+Fact.Name,Self);
  Result:=nN;
 except
  Result:=pN;
 end;
end;


Function TRAction.AddToTreeView(Tree:TTreeView;pN:TTreeNode):TTreeNode;
var
 nN : TTreeNode;
begin
 try
  nN:=Tree.Items.AddChildObject(pN,GetOperator+' '+Fact.Name,Self);
  Result:=nN;
 except
  Result:=pN;
 end;
end;

Function TFunct.AddToTreeView(Tree:TTreeView;pN:TTreeNode):TTreeNode;
var
 i  : Integer;
 nN : TTreeNode;
 s  : String;
begin
 try
  s:='';
  if Description<>'' then s:=' ('+Description+')';
  nN:=Tree.Items.AddChildObject(pN,'['+ID+'] '+Name+
   s,Self);
  for i:=0 to Args.Count-1 do
   TArgument(Args.Items[i]).AddToTreeView(Tree,nN);
  Result:=nN;
 except
  Result:=pN;
 end;
end;
//----------------------------------------------------------------------
Function TFVar.AddToTreeView(Tree:TTreeView;pN:TTreeNode):TTreeNode;
var
 i  : Integer;
 nN : TTreeNode;
 s  : String;
begin
 try
  s:='';
  if Description<>'' then s:=' ('+Description+')';

  nN:=Tree.Items.AddChildObject(pN,Name+
   s,Self);
  Result:=nN;
 except
  Result:=pN;
 end;
end;
//----------------------------------------------------------------------
Function TFScale.AddToTreeView(Tree:TTreeView;pN:TTreeNode):TTreeNode;
var
 i  : Integer;
 nN : TTreeNode;
 s  : String;
begin
 try
  s:='';
  if Description<>'' then s:=' ('+Description+')';

  nN:=Tree.Items.AddChildObject(pN,'['+ID+'] '+Name+
   s,Self);
  for i:=0 to ListOfValues.Count-1 do
   TFVar(ListOfValues.Objects[i]).AddToTreeView(Tree,nN);

  Result:=nN;
 except
  Result:=pN;
 end;
end;
//----------------------------------------------------------------------
Function TTemplate.AddToTreeView(Tree:TTreeView;pN:TTreeNode):TTreeNode;
var
 i  : Integer;
 nN : TTreeNode;
 s  : String;
begin
 try
  s:='';
  if Description<>'' then s:=' ('+Description+')';

  nN:=Tree.Items.AddChildObject(pN,'['+ID+'] '+Name+
   s,Self);
  for i:=0 to Slots.Count-1 do
   TSlot(Slots.Items[i]).AddToTreeView(Tree,nN);
  Result:=nN;
 except
  Result:=pN;
 end;
end;
//---------------------------------------------------------------------------
Function TRule.AddToListView(List:TRzListView;position,clF,imIndex,tabCnt:Integer):Integer;
var
 i,j  : Integer;
 s  : String;
 tLI : TListItem;
begin
 try
  if clF=1 then List.Clear;
  for i := 0 to tabCnt do s:=s+' ';

  Inc(position);
  tLI:=List.Items.Insert(position);
  tLI.Caption:=s+'ID';
  tLI.SubItems.Add(ID);
  if imIndex=1 then
   begin
    tLI.ImageIndex:=1;
    tLI.Data:=Self;
   end
  else
   tLI.ImageIndex:=-1;

  Inc(position);
  tLI:=List.Items.Insert(position);
  tLI.Caption:=s+'Name';
  tLI.SubItems.Add(Name);
  tLI.ImageIndex:=-1;

  Inc(position);
  tLI:=List.Items.Insert(position);
  tLI.Caption:=s+'Description';
  tLI.SubItems.Add(Description);
  tLI.ImageIndex:=-1;

  Inc(position);
  tLI:=List.Items.Insert(position);
  tLI.Caption:=s+'Salience';
  tLI.SubItems.Add(Salience);
  tLI.ImageIndex:=-1;

  Inc(position);
  tLI:=List.Items.Insert(position);
  tLI.Caption:=s+'CF';
  tLI.SubItems.Add(CF);
  tLI.ImageIndex:=-1;

  for i := 0 to Conditions.Count-1 do
   begin
    Inc(position);
    tLI:=List.Items.Insert(position);
    tLI.Caption:=s+' IF : ['+TCondition(Conditions.Items[i]).&Operator+']';
    tLI.SubItems.Add(TCondition(Conditions.Items[i]).Fact.Name);
    tLI.Data:=TCondition(Conditions.Items[i]);
    tLI.ImageIndex:=1;
   end;

  for i := 0 to Actions.Count-1 do
   begin
    Inc(position);
    tLI:=List.Items.Insert(position);
    tLI.Caption:=s+' THEN : ['+TRAction(Actions.Items[i]).&Operator+']';
    tLI.SubItems.Add(TRAction(Actions.Items[i]).Fact.Name);
    tLI.Data:=TRAction(Actions.Items[i]);
    tLI.ImageIndex:=1;
   end;

  Result:=0;
 except
  Result:=-1;
 end;
end;
//---------------------------------------------------------------------------
Function TGRule.AddToListView(List:TRzListView;position,clF,imIndex,tabCnt:Integer):Integer;
var
 i,j  : Integer;
 s  : String;
 tLI : TListItem;
begin
 try
  if clF=1 then List.Clear;
  for i := 0 to tabCnt do s:=s+' ';

  Inc(position);
  tLI:=List.Items.Insert(position);
  tLI.Caption:=s+'ID';
  tLI.SubItems.Add(ID);
  if imIndex=1 then
   begin
    tLI.ImageIndex:=1;
    tLI.Data:=Self;
   end
  else
   tLI.ImageIndex:=-1;

  Inc(position);
  tLI:=List.Items.Insert(position);
  tLI.Caption:=s+'Name';
  tLI.SubItems.Add(Name);
  tLI.ImageIndex:=-1;

  Inc(position);
  tLI:=List.Items.Insert(position);
  tLI.Caption:=s+'Description';
  tLI.SubItems.Add(Description);
  tLI.ImageIndex:=-1;

  for i := 0 to Conditions.Count-1 do
   begin
    Inc(position);
    tLI:=List.Items.Insert(position);
    tLI.Caption:=s+' '+'IF :';
    tLI.SubItems.Add(TTemplate(Conditions.Items[i]).Name);
    tLI.Data:=TTemplate(Conditions.Items[i]);
    tLI.ImageIndex:=1;
   end;

  for i := 0 to Actions.Count-1 do
   begin
    Inc(position);
    tLI:=List.Items.Insert(position);
    tLI.Caption:=s+' '+'THEN :';
    tLI.SubItems.Add(TTemplate(Actions.Items[i]).Name);
    tLI.Data:=TTemplate(Actions.Items[i]);
    tLI.ImageIndex:=1;
   end;

  Result:=0;
 except
  Result:=-1;
 end;
end;
//---------------------------------------------------------------------------
Function TFact.AddToListView(List:TRzListView;position,clF,imIndex,tabCnt:Integer;
 SelectedObject:TObject):Integer;
var
 i,j  : Integer;
 s  : String;
 tLI : TListItem;
begin
 try
  if clF=1 then List.Clear;
  for i := 0 to tabCnt do s:=s+' ';

  if SelectedObject is TFact then
   begin
    tLI:=List.Items.Insert(position);
    tLI.Caption:=s+'ID';
    tLI.SubItems.Add(ID);
    if imIndex=1 then
     begin
      tLI.ImageIndex:=1;
      tLI.Data:=Self;
     end
    else
     tLI.ImageIndex:=-1;
   end;

  Inc(position);
  tLI:=List.Items.Insert(position);
  tLI.Caption:=s+'Name';
  tLI.SubItems.Add(Name);
  tLI.ImageIndex:=-1;

  Inc(position);
  tLI:=List.Items.Insert(position);
  tLI.Caption:=s+'Description';
  tLI.SubItems.Add(Description);
  tLI.ImageIndex:=-1;

{  Inc(position);
  tLI:=List.Items.Insert(position);
  tLI.Caption:=s+'Description';
  tLI.SubItems.Add(cfDescription);
  tLI.ImageIndex:=-1; }

  for i := 0 to Slots.Count-1 do
   begin
    Inc(position);
    tLI:=List.Items.Insert(position);
    tLI.Caption:=s+' '+Tslot(Slots.Items[i]).Name;
    tLI.SubItems.Add(Tslot(Slots.Items[i]).Value);
    tLI.Data:=Tslot(Slots.Items[i]);
    tLI.ImageIndex:=1;
   end;

  Result:=0;
 except
  Result:=-1;
 end;
end;
//---------------------------------------------------------------------------
Function TCondition.AddToListView(List:TRzListView;position,clF,imIndex,tabCnt:Integer;
 SelectedObject:TObject):Integer;
var
 i,j  : Integer;
 s  : String;
 tLI : TListItem;
begin
 try
  if clF=1 then List.Clear;
  for i := 0 to tabCnt do s:=s+' ';

  Inc(position);
  tLI:=List.Items.Insert(position);
  tLI.Caption:=s+'Name';
  tLI.SubItems.Add(Fact.Name);
  tLI.ImageIndex:=-1;

  Inc(position);
  tLI:=List.Items.Insert(position);
  tLI.Caption:=s+'Description';
  tLI.SubItems.Add(Fact.Description);
  tLI.ImageIndex:=-1;

  for i := 0 to Fact.Slots.Count-1 do
   begin
    Inc(position);
    tLI:=List.Items.Insert(position);
    tLI.Caption:=s+' '+Tslot(Fact.Slots.Items[i]).Name;
    tLI.SubItems.Add(Tslot(Fact.Slots.Items[i]).Value);
    tLI.Data:=Tslot(Fact.Slots.Items[i]);
    tLI.ImageIndex:=1;
   end;

  Result:=0;
 except
  Result:=-1;
 end;
end;
//---------------------------------------------------------------------------
Function TRAction.AddToListView(List:TRzListView;position,clF,imIndex,tabCnt:Integer;
 SelectedObject:TObject):Integer;
var
 i,j  : Integer;
 s  : String;
 tLI : TListItem;
begin
 try
  if clF=1 then List.Clear;
  for i := 0 to tabCnt do s:=s+' ';

  Inc(position);
  tLI:=List.Items.Insert(position);
  tLI.Caption:=s+'Name';
  tLI.SubItems.Add(Fact.Name);
  tLI.ImageIndex:=-1;

  Inc(position);
  tLI:=List.Items.Insert(position);
  tLI.Caption:=s+'Description';
  tLI.SubItems.Add(Fact.Description);
  tLI.ImageIndex:=-1;

  for i := 0 to Fact.Slots.Count-1 do
   begin
    Inc(position);
    tLI:=List.Items.Insert(position);
    tLI.Caption:=s+' '+Tslot(Fact.Slots.Items[i]).Name;
    tLI.SubItems.Add(Tslot(Fact.Slots.Items[i]).Value);
    tLI.Data:=Tslot(Fact.Slots.Items[i]);
    tLI.ImageIndex:=1;
   end;

  Result:=0;
 except
  Result:=-1;
 end;
end;
//---------------------------------------------------------------------------
Function TFScale.AddToListView(List:TRzListView;position,clF,imIndex,tabCnt:Integer;
 SelectedObject:TObject):Integer;
var
 i,j  : Integer;
 s  : String;
 tLI : TListItem;
begin
 try
  if clF=1 then List.Clear;
  for i := 0 to tabCnt do s:=s+' ';

  if SelectedObject is TFScale then
   begin
    Inc(position);
    tLI:=List.Items.Insert(position);
    tLI.Caption:=s+'ID';
    tLI.SubItems.Add(ID);
    if imIndex=1 then
     begin
      tLI.ImageIndex:=1;
      tLI.Data:=Self;
     end
    else
     tLI.ImageIndex:=-1;

    Inc(position);
    tLI:=List.Items.Insert(position);
    tLI.Caption:=s+'Name';
    tLI.SubItems.Add(Name);
    tLI.ImageIndex:=-1;
   end;

  Inc(position);
  tLI:=List.Items.Insert(position);
  tLI.Caption:=s+'Description';
  tLI.SubItems.Add(Description);
  tLI.ImageIndex:=-1;

  Inc(position);
  tLI:=List.Items.Insert(position);
  tLI.Caption:=s+'UnitsName';
  tLI.SubItems.Add(UnitsName);
  tLI.ImageIndex:=-1;

  Inc(position);
  tLI:=List.Items.Insert(position);
  tLI.Caption:=s+'TermCount';
  tLI.SubItems.Add(IntToStr(ListOfValues.Count));
  tLI.ImageIndex:=-1;

  for i := 0 to ListOfValues.Count-1 do
   begin
    Inc(position);
    tLI:=List.Items.Insert(position);
    tLI.Caption:=s+' '+'term:';
    tLI.SubItems.Add(TFVar(ListOfValues.Objects[i]).Name);
    tLI.Data:=TFVar(ListOfValues.Objects[i]);
    tLI.ImageIndex:=1;
   end;

  Result:=0;
 except
  Result:=-1;
 end;
end;
//---------------------------------------------------------------------------
Function TTemplate.AddToListView(List:TRzListView;position,clF,imIndex,tabCnt:Integer;
 SelectedObject:TObject):Integer;
var
 i,j  : Integer;
 s  : String;
 tLI : TListItem;
begin
 try
  if clF=1 then List.Clear;
  for i := 0 to tabCnt do s:=s+' ';

  if SelectedObject is TTemplate then
   begin
    tLI:=List.Items.Insert(position);
    tLI.Caption:=s+'ID';
    tLI.SubItems.Add(ID);
    if imIndex=1 then
     begin
      tLI.ImageIndex:=1;
      tLI.Data:=Self;
     end
    else
     tLI.ImageIndex:=-1;
   end;

  Inc(position);
  tLI:=List.Items.Insert(position);
  tLI.Caption:=s+'Name';
  tLI.SubItems.Add(Name);
  tLI.ImageIndex:=-1;

  Inc(position);
  tLI:=List.Items.Insert(position);
  tLI.Caption:=s+'Description';
  tLI.SubItems.Add(Description);
  tLI.ImageIndex:=-1;

  for i := 0 to Slots.Count-1 do
   begin
    Inc(position);
    tLI:=List.Items.Insert(position);
    tLI.Caption:=s+' '+'slot :';
    tLI.SubItems.Add(Tslot(Slots.Items[i]).Name);
    tLI.Data:=Tslot(Slots.Items[i]);
    tLI.ImageIndex:=1;
   end;

  Result:=0;
 except
  Result:=-1;
 end;
end;
//---------------------------------------------------------------------------
Function TFVar.AddToListView(List:TRzListView;position,clF,imIndex,tabCnt:Integer;
 K18,SelectedObject:TObject):Integer;
var
 i,j,c  : Integer;
 s  : String;
 tLI : TListItem;
 tmFScale : TFScale;
begin
 try
  if clF=1 then List.Clear;
  for i := 0 to tabCnt do s:=s+' ';
  c:=TKnowledgeBase(K18).IndexOfFScaleByTerm(Name);
  if c>-1 then tmFScale:=TFScale(TKnowledgeBase(K18).FScales.Items[c]);

  if (SelectedObject is TFVar) then
   begin
    Inc(position);
    tLI:=List.Items.Insert(position);
    tLI.Caption:=s+'FzVar';
    tLI.SubItems.Add(tmFScale.Name);

    if imIndex=1 then
     begin
      tLI.ImageIndex:=1;
      tLI.Data:=Self;
     end
    else
     tLI.ImageIndex:=-1;
   end;

  Inc(position);
  tLI:=List.Items.Insert(position);
  tLI.Caption:=s+'Description';
  tLI.SubItems.Add(Description);
  tLI.ImageIndex:=-1;

  if (SelectedObject is TFVar) then
   begin
    Inc(position);
    tLI:=List.Items.Insert(position);
    tLI.Caption:=s+'UnitsName';
    tLI.SubItems.Add(tmFScale.UnitsName);
    tLI.ImageIndex:=-1;
   end;

  Inc(position);
  tLI:=List.Items.Insert(position);
  tLI.Caption:=s+'FuncType';
  tLI.SubItems.Add(FType);
  tLI.ImageIndex:=-1;

  Inc(position);
  tLI:=List.Items.Insert(position);
  tLI.Caption:=s+'Val/Prob';
  tLI.SubItems.Add(ShowScaleAsString);
  tLI.ImageIndex:=-1;
  Result:=0;
 except
  Result:=-1;
 end;
end;
//---------------------------------------------------------------------------
Function TSlot.AddToListView(List:TRzListView;position,clF,imIndex,tabCnt:Integer;
 KB17,SelectedObject:TObject):Integer;
var
 i,j,c,j1  : Integer;
 s,s1  : String;
 tLI : TListItem;
begin
 try
  if clF=1 then List.Clear;
  for i := 0 to tabCnt do s:=s+' ';
  j:=List.Items.Count;

  if (SelectedObject is TTemplate)
   or(SelectedObject is TGRule) then
   begin
    Inc(position);
    tLI:=List.Items.Insert(position);
    tLI.Caption:=s+'DefaultValue';
    tLI.SubItems.Add(Value);
    tLI.ImageIndex:=-1;
   end;

  if (SelectedObject is TFact)
   or(SelectedObject is TRule) then
   begin
    Inc(position);
    tLI:=List.Items.Insert(position);
    tLI.Caption:=s+'Value';
    tLI.SubItems.Add(Value);
    tLI.ImageIndex:=-1;

    Inc(position);
    tLI:=List.Items.Insert(position);
    tLI.Caption:=s+'Constraint';
    s1:=Constraint; if Trim(s1)='' then s1:='=';
    tLI.SubItems.Add(s1);
    tLI.ImageIndex:=-1;
   end;

  Inc(position);
  tLI:=List.Items.Insert(position);
  tLI.Caption:=s+'DataType';
  tLI.SubItems.Add(DataType);
  if DataType='Fuzzy' then
   begin
    tLI.ImageIndex:=1;
    //get related scale of vfar
    c:=TKnowledgeBase(KB17).IndexOfFScale(Value);
    if c=-1 then
     begin //search for fvar
      c:=TKnowledgeBase(KB17).IndexOfFScaleByTerm(Value);
      if c>-1 then
       begin
       for j1 := 0 to TFScale(TKnowledgeBase(KB17).FScales.Items[c]).ListOfValues.Count-1 do
        if TFVar(TFScale(TKnowledgeBase(KB17).FScales.Items[c]).ListOfValues.Objects[j1]).Name=
         Value then
          begin
           tLI.Data:=TFVar(TFScale(TKnowledgeBase(KB17).FScales.Items[c]).ListOfValues.Objects[j1]);
           Break;
          end;
       end;
     end
    else
     begin
      tLI.Data:=TFScale(TKnowledgeBase(KB17).FScales.Items[c]);
     end;
   end
  else
   tLI.ImageIndex:=-1;
{
  if imIndex=1 then
   begin
    tLI.ImageIndex:=1;
    tLI.Data:=Self;
   end
  else
   tLI.ImageIndex:=-1;     }

  Inc(position);
  tLI:=List.Items.Insert(position);
  tLI.Caption:=s+'Description';
  tLI.SubItems.Add(Description);
  tLI.ImageIndex:=-1;

  Result:=j-List.Items.Count;
 except
  Result:=-1;
 end;
end;
//---------------------------------------------------------------------------
Function TFunct.AddToRzCheckTree(Tree:TRzCheckTree;pN:TTreeNode):TTreeNode;
var
 nN : TTreeNode;
 s  : String;
begin
 try
  s:='';
  if Description<>'' then s:=' ('+Description+')';
  nN:=Tree.Items.AddChildObject(pN,'['+ID+'] '+Name+
   s,Self);
//  for i:=0 to Slots.Count-1 do
//   TSlot(Slots.Items[i]).AddToTreeView(Tree,nN);
  Result:=nN;
 except
  Result:=pN;
 end;
end;
//---------------------------------------------------------------------------
Function TFVar.AddToRzCheckTree(Tree:TRzCheckTree;pN:TTreeNode):TTreeNode;
var
 nN : TTreeNode;
 s  : String;
begin
 try
  s:='';
  if Description<>'' then s:=' ('+Description+')';
  nN:=Tree.Items.AddChildObject(pN,'['+ID+'] '+Name+
   s,Self);
//  for i:=0 to Slots.Count-1 do
//   TSlot(Slots.Items[i]).AddToTreeView(Tree,nN);
  Result:=nN;
 except
  Result:=pN;
 end;
end;
//---------------------------------------------------------------------------
Function TFVar.CopyFrom(Source:TObject):Integer;
var
 i : Integer;
begin
// Self:=TFVar.Create;
// Self.Init;
 Self.Name:=TFVar(Source).Name;
 Self.Description:=TFVar(Source).Description;
 Self.ListOfValues.Text:=TFVar(Source).ListOfValues.Text;
 Self.FScaleName:=TFVar(Source).FScaleName;
 Self.FType:=TFVar(Source).FType;
 Self.UnitsName:=TFVar(Source).UnitsName;
end;
//---------------------------------------------------------------------------
Function TFScale.CopyFrom(Source:TObject):Integer;
var
 i : Integer;
begin
// Self:=TFScale.Create;
// Self.Init;
 Self.Name:=TFScale(Source).Name;
 Self.Description:=TFScale(Source).Description;
 Self.ListOfValues.Text:=TFScale(Source).ListOfValues.Text;
// Self.ListOfNames.Text:=TFScale(Source).ListOfNames.Text;
 Self.Min:=TFScale(Source).Min;
 Self.Max:=TFScale(Source).Max;
 Self.Len:=TFScale(Source).Len;
end;
//---------------------------------------------------------------------------
Function TFVar.ShowScaleAsString:string;
var
 i : Integer;
begin
 Result:='';
 for i := 0 to ListOfValues.Count-2 do
  Result:=Result+ListOfValues.Names[i]+'/'+ListOfValues.ValueFromIndex[i]+'; ';
 Result:=Result+ListOfValues.Names[ListOfValues.Count-1]+'/'+
  ListOfValues.ValueFromIndex[ListOfValues.Count-1];
end;
//---------------------------------------------------------------------------
Function TFScale.ShowScaleAsString:string;
var
 i : Integer;
begin
 Result:='';
 for i := 0 to ListOfValues.Count-2 do
  Result:=Result+ListOfValues.Strings[i]+'; ';
 Result:=Result+ListOfValues.Strings[ListOfValues.Count-1];
end;
//---------------------------------------------------------------------------
Function TFScale.AddToRzCheckTree(Tree:TRzCheckTree;pN:TTreeNode):TTreeNode;
var
 nN : TTreeNode;
 s  : String;
begin
 try
  s:='';
  if Description<>'' then s:=' ('+Description+')';
  nN:=Tree.Items.AddChildObject(pN,'['+ID+'] '+Name+
   s,Self);
//  for i:=0 to Slots.Count-1 do
//   TSlot(Slots.Items[i]).AddToTreeView(Tree,nN);
  Result:=nN;
 except
  Result:=pN;
 end;
end;
//---------------------------------------------------------------------------
Function TTemplate.AddToRzCheckTree(Tree:TRzCheckTree;pN:TTreeNode):TTreeNode;
var
 nN : TTreeNode;
 s  : String;
begin
 try
  s:='';
  if Description<>'' then s:=' ('+Description+')';
  nN:=Tree.Items.AddChildObject(pN,'['+ID+'] '+Name+
   s,Self);
//  for i:=0 to Slots.Count-1 do
//   TSlot(Slots.Items[i]).AddToTreeView(Tree,nN);
  Result:=nN;
 except
  Result:=pN;
 end;
end;

Function TRule.AddToTreeView(Tree:TTreeView;pN:TTreeNode):TTreeNode;
var
 i  : Integer;
 nN,nN1 : TTreeNode;
 s  : String;
begin
 try
  s:='';
  if Description<>'' then s:=' ('+Description+')';
  nN:=Tree.Items.AddChildObject(pN,'['+ID+'] '+Name+
   s,Self);

  nN1:=Tree.Items.AddChildObject(nN,
   MainForm.LS('Conditions1')+' ['+IntToStr(Conditions.Count)+']',nil);
  for i:=0 to Conditions.Count-1 do
   TCondition(Conditions.Items[i]).AddToTreeView(Tree,nN1);
  nN1:=Tree.Items.AddChildObject(nN,
   MainForm.LS('Actions')+' ['+IntToStr(Actions.Count)+']',nil);
  for i:=0 to Actions.Count-1 do
   TRAction(Actions.Items[i]).AddToTreeView(Tree,nN1);
  Result:=nN;
 except
  Result:=pN;
 end;
end;


Function TGRule.AddToTreeView(Tree:TTreeView;pN:TTreeNode):TTreeNode;
var
 i  : Integer;
 nN,nN1 : TTreeNode;
 s  : String;
begin
 try
  s:='';
  if Description<>'' then s:=' ('+Description+')';
  nN:=Tree.Items.AddChildObject(pN,'['+ID+'] '+Name+
   s,Self);

  nN1:=Tree.Items.AddChildObject(nN,
   MainForm.LS('Conditions1')+' ['+IntToStr(Conditions.Count)+']',nil);
  for i:=0 to Conditions.Count-1 do
   TTemplate(Conditions.Items[i]).AddToTreeView(Tree,nN1);
  nN1:=Tree.Items.AddChildObject(nN,
   MainForm.LS('Actions')+' ['+IntToStr(Actions.Count)+']',nil);
  for i:=0 to Actions.Count-1 do
   TTemplate(Actions.Items[i]).AddToTreeView(Tree,nN1);
  Result:=nN;
 except
  Result:=pN;
 end;
end;

Function TGRule.AddToRzCheckTree(Tree:TRzCheckTree;pN:TTreeNode):TTreeNode;
var
 nN : TTreeNode;
 s  : String;
begin
 try
  s:='';
  if Description<>'' then s:=' ('+Description+')';
  nN:=Tree.Items.AddChildObject(pN,'['+ID+'] '+Name+
   s,Self);
{  nN1:=Tree.Items.AddChildObject(nN,
   '??????? ('+IntToStr(Conditions.Count)+')',nil);
  for i:=0 to Conditions.Count-1 do
   TCondition(Conditions.Items[i]).AddToTreeView(Tree,nN1);
  nN1:=Tree.Items.AddChildObject(nN,
   '???????? ('+IntToStr(Actions.Count)+')',nil);
  for i:=0 to Actions.Count-1 do
   TRAction(Actions.Items[i]).AddToTreeView(Tree,nN1);
 }
  Result:=nN;
 except
  Result:=pN;
 end;
end;

Function TRule.AddToRzCheckTree(Tree:TRzCheckTree;pN:TTreeNode):TTreeNode;
var
 nN : TTreeNode;
 s  : String;
begin
 try
  s:='';
  if Description<>'' then s:=' ('+Description+')';
  nN:=Tree.Items.AddChildObject(pN,'['+ID+'] '+Name+
   s,Self);
{  nN1:=Tree.Items.AddChildObject(nN,
   '??????? ('+IntToStr(Conditions.Count)+')',nil);
  for i:=0 to Conditions.Count-1 do
   TCondition(Conditions.Items[i]).AddToTreeView(Tree,nN1);
  nN1:=Tree.Items.AddChildObject(nN,
   '???????? ('+IntToStr(Actions.Count)+')',nil);
  for i:=0 to Actions.Count-1 do
   TRAction(Actions.Items[i]).AddToTreeView(Tree,nN1);
 }
  Result:=nN;
 except
  Result:=pN;
 end;
end;

Function TArgument.AddToTreeView(Tree:TTreeView;pN:TTreeNode):TTreeNode;
var
 nN : TTreeNode;
 s  : String;
begin
 try
  s:='';
  if Description<>'' then s:=' ('+Description+')';
  nN:=Tree.Items.AddChildObject(pN,Name+s,Self);
//  AddChildObject(pN,S.Description,nil);
//  AddChildObject(pN,S.DataType,nil);
//  AddChildObject(pN,'('+S.Constraint+') '+S.Value,nil);
  Result:=nN;
 except
  Result:=pN;
//  Tree.Items.AddChildObject(pN,'Error: slot',nil);
 end;
end;

Function TSlot.AddToTreeView(Tree:TTreeView;pN:TTreeNode):TTreeNode;
var
 nN : TTreeNode;
 s  : String;
begin
 try
  s:='';
  if Description<>'' then s:=' ('+Description+')';
  nN:=Tree.Items.AddChildObject(pN,Name+s,Self);

//  AddChildObject(pN,S.Description,nil);
//  AddChildObject(pN,S.DataType,nil);
//  AddChildObject(pN,'('+S.Constraint+') '+S.Value,nil);
  Result:=nN;
 except
  Result:=pN;
//  Tree.Items.AddChildObject(pN,'Error: slot',nil);
 end;
end;

Function TFact.AddToRzCheckTree(Tree:TRzCheckTree;pN:TTreeNode):TTreeNode;
var
 nN : TTreeNode;
begin
 try
  nN:=Tree.Items.AddChildObject(pN,'['+ID+'] '+Name,Self);
//  for i:=0 to Slots.Count-1 do
//   TSlot(Slots.Items[i]).AddToTreeView(Tree,nN);
  Result:=nN;
 except
  Result:=pN;
 end;
end;

Function TFact.AddToTreeView(Tree:TTreeView;pN:TTreeNode):TTreeNode;
var
 nN : TTreeNode;
begin
 try
  nN:=Tree.Items.AddChildObject(pN,'['+ID+'] '+Name,Self);
  nN.ImageIndex:=13;
//  for i:=0 to Slots.Count-1 do
//   TSlot(Slots.Items[i]).AddToTreeView(Tree,nN);
  Result:=nN;
 except
  Result:=pN;
 end;
end;

Procedure TGlobalVar.Trans(TL:TStringList);
begin
 Name:=Translit.Trans(Name,TL);
end;

Function TGlobalVar.AddToRzCheckTree(Tree:TRzCheckTree;pN:TTreeNode):TTreeNode;
var
 nN : TTreeNode;
 s  : String;
begin
 try
  s:='';
  if Description<>'' then s:=' ('+Description+')';
  nN:=Tree.Items.AddChildObject(pN,Name+s,Self);

//  for i:=0 to Slots.Count-1 do
//   TSlot(Slots.Items[i]).AddToTreeView(Tree,nN);
  Result:=nN;
 except
  Result:=pN;
 end;
end;

Function TGlobalVar.AddToTreeView(Tree:TTreeView;pN:TTreeNode):TTreeNode;
var
 nN : TTreeNode;
 s  : String;
begin
 try
  s:='';
  if Description<>'' then s:=' ('+Description+')';
  nN:=Tree.Items.AddChildObject(pN,Name+s,Self);
//  for i:=0 to Slots.Count-1 do
//   TSlot(Slots.Items[i]).AddToTreeView(Tree,nN);
  Result:=nN;
 except
  Result:=pN;
 end;
end;

Function TTask.AddToTreeView(Tree:TTreeView;pN:TTreeNode):TTreeNode;
var
 nN : TTreeNode;
 s  : String;
begin
 try
  s:='';
  if Description<>'' then s:=' ('+Description+')';
  nN:=Tree.Items.AddChildObject(pN,ID+s,Self);
//  for i:=0 to Slots.Count-1 do
//   TSlot(Slots.Items[i]).AddToTreeView(Tree,nN);
  Result:=nN;
 except
  Result:=pN;
 end;
end;

Function TTask.AddToRzCheckTree(Tree:TRzCheckTree;pN:TTreeNode):TTreeNode;
var
 nN : TTreeNode;
 s  : String;
begin
 try
  s:='';
  if Description<>'' then s:=' ('+Description+')';
  nN:=Tree.Items.AddChildObject(pN,ID+s,Self);

//  for i:=0 to Slots.Count-1 do
//   TSlot(Slots.Items[i]).AddToTreeView(Tree,nN);
  Result:=nN;
 except
  Result:=pN;
 end;
end;

Function TCDictionary.AddToTreeView(Tree:TTreeView;pN:TTreeNode):TTreeNode;
begin
 try
  pN:=Tree.Items.AddChildObject(pN,Name,Self);
  Result:=pN;
 except
  Result:=pN;
 end;
end;
//-----------------------------------------------------------------------------
Function TKnowledgeBase.AddToTreeView(Tree:TTreeView;pN:TTreeNode):TTreeNode;
function GetChildObjects(Lst:TStringList;ID_R:string):TList;
var
 i : Integer;
begin
 Result:=TList.Create;
 for i := 0 to Lst.Count-1 do
  if TTmObj(Lst.Objects[i]).ID_Root=ID_R then
   Result.Add(Lst.Objects[i]);
end;

var
 i,j,k:Integer;
 tmO : TTmObj;
 tN,nN, nN1,nN2 : TTreeNode;
 tmTs : TList;
begin
 try
  pN:=Tree.Items.AddChildObject(pN,Name,Self);

 // if Templates.Count>0 then
  begin
  if Self.Kind=0 then
   tN:=Tree.Items.AddChildObject(pN,
    MainForm.LS('Templates2')+' ['+IntToStr(Templates.Count)+']',nil)
     else
      tN:=Tree.Items.AddChildObject(pN,
       MainForm.LS('Templates3')+' ['+IntToStr(Templates.Count)+']',nil);
   tN.ImageIndex:=2;

     if TempPackageList.Count>0 then
      begin
      for i:=0 to TempPackageList.Count-1 do
       if TTmObj(TempPackageList.Objects[i]).ID_Root='' then
         begin
          tmO:=TTmObj(TempPackageList.Objects[i]);

           nN:=Tree.Items.AddChildObject(tN,TempPackageList.ValueFromIndex[i],tmO);
           nN.ImageIndex:=17;
           //-- add templates --
           for k:=0 to Templates.Count-1 do
            if TTemplate(Templates.Items[k]).PackageName=tmO.ID then
             begin
              nN1:=TTemplate(Templates.Items[k]).AddToTreeView(Tree,nN);
              nN1.ImageIndex:=12;
             end;
           //-------------------

           tmTs:=GetChildObjects(TempPackageList,tmO.ID);
           if tmTs.Count>0 then
            for j := 0 to tmTs.Count-1 do
              begin
               tmO:=TTmObj(tmTs.Items[j]);
               nN2:=Tree.Items.AddChildObject(nN,tmO.Name,tmO);
               nN2.ImageIndex:=17;
               //-- add templates --
               for k:=0 to Templates.Count-1 do
                if TTemplate(Templates.Items[k]).PackageName=tmO.ID then
                 begin
                  nN1:=TTemplate(Templates.Items[k]).AddToTreeView(Tree,nN2);
                  nN1.ImageIndex:=12;
                 end;
               //-------------------
              end;
         end;
       end
      else
       begin
         for k:=0 to Templates.Count-1 do
           begin
            nN1:=TTemplate(Templates.Items[k]).AddToTreeView(Tree,tN);
            nN1.ImageIndex:=12;
           end;
       end;
      if Templates.Count>0 then
       begin
        tN.Expand(False);
        pN.Expand(False);
       end;

  if Self.Kind=0 then
   tN:=Tree.Items.AddChildObject(pN,
    MainForm.LS('Initial facts')+' ['+IntToStr(Facts.Count)+']',nil)
    else
     tN:=Tree.Items.AddChildObject(pN,
      MainForm.LS('Cases')+' ['+IntToStr(Facts.Count)+']',nil);
   tN.ImageIndex:=4;

     if FactPackageList.Count>0 then
      begin
      for i:=0 to FactPackageList.Count-1 do
       if TTmObj(FactPackageList.Objects[i]).ID_Root='' then
         begin
          tmO:=TTmObj(FactPackageList.Objects[i]);

           nN:=Tree.Items.AddChildObject(tN,FactPackageList.ValueFromIndex[i],tmO);
           nN.ImageIndex:=17;
           //-- add facts --
           for k:=0 to Facts.Count-1 do
            if TFact(Facts.Items[k]).PackageName=tmO.ID then
             begin
              nN1:=TFact(Facts.Items[k]).AddToTreeView(Tree,nN);
              nN1.ImageIndex:=13;
             end;
           //-------------------

           tmTs:=GetChildObjects(FactPackageList,tmO.ID);
           if tmTs.Count>0 then
            for j := 0 to tmTs.Count-1 do
              begin
               tmO:=TTmObj(tmTs.Items[j]);
               nN2:=Tree.Items.AddChildObject(nN,tmO.Name,tmO);
               nN2.ImageIndex:=17;
               //-- add facts --
               for k:=0 to Facts.Count-1 do
                if TFact(Facts.Items[k]).PackageName=tmO.ID then
                 begin
                  nN1:=TFact(Facts.Items[k]).AddToTreeView(Tree,nN2);
                  nN1.ImageIndex:=13;
                 end;
               //-------------------
              end;
         end;
      end
      else
       begin
         for k:=0 to Facts.Count-1 do
           begin
            nN1:=TFact(Facts.Items[k]).AddToTreeView(Tree,tN);
            nN1.ImageIndex:=13;
           end;
       end;
      if Facts.Count>0 then
       begin
        tN.Expand(False);
        pN.Expand(False);
       end;
     end;
 //Tasks
// if Templates.Count>0 then
//  begin
{
   tN:=Tree.Items.AddChildObject(pN,
    '?????? ['+IntToStr(Tasks.Count)+']',nil);

  for i:=0 to Tasks.Count-1 do
   TTask(Tasks.Items[i]).AddToTreeView(Tree,tN);
  if Tasks.Count>0 then
   begin
    tN.Expand(False);
    pN.Expand(False);
   end;
}
//  end;


 //???????/??????? ??? ??????
  if Self.Kind=0 then
  begin
   tN:=Tree.Items.AddChildObject(pN,
    MainForm.LS('Generalized rules')+' ['+IntToStr(GRules.Count)+']',nil);
     if GRulePackageList.Count>0 then
      begin

       for k:=0 to GRules.Count-1 do
        if TGRule(GRules.Items[k]).PackageName='' then
         begin
          nN1:=TGRule(GRules.Items[k]).AddToTreeView(Tree,tN);
          nN1.ImageIndex:=16;
         end;

      for i:=0 to GRulePackageList.Count-1 do
       if TTmObj(GRulePackageList.Objects[i]).ID_Root='' then
         begin
          tmO:=TTmObj(GRulePackageList.Objects[i]);

           nN:=Tree.Items.AddChildObject(tN,GRulePackageList.ValueFromIndex[i],tmO);
           nN.ImageIndex:=17;
           //-- add grules --
           for k:=0 to GRules.Count-1 do
            if TGRule(GRules.Items[k]).PackageName=tmO.ID then
             begin
              nN1:=TGRule(GRules.Items[k]).AddToTreeView(Tree,nN);
              nN1.ImageIndex:=16;
             end;
           //-------------------

           tmTs:=GetChildObjects(GRulePackageList,tmO.ID);
           if tmTs.Count>0 then
            for j := 0 to tmTs.Count-1 do
              begin
               tmO:=TTmObj(tmTs.Items[j]);
               nN2:=Tree.Items.AddChildObject(nN,tmO.Name,tmO);
               nN2.ImageIndex:=17;
               //-- add grules --
               for k:=0 to GRules.Count-1 do
                if TGRule(GRules.Items[k]).PackageName=tmO.ID then
                 begin
                  nN1:=TGRule(GRules.Items[k]).AddToTreeView(Tree,nN2);
                  nN1.ImageIndex:=16;
                 end;
               //-------------------
              end;
         end
       end
      else
       begin
         for k:=0 to GRules.Count-1 do
           begin
            nN1:=TGRule(GRules.Items[k]).AddToTreeView(Tree,tN);
            nN1.ImageIndex:=16;
           end;
       end;
      if GRules.Count>0 then
       begin
        tN.Expand(False);
        pN.Expand(False);
       end;
    end;

      //  if Rules.Count>0 then
//   begin
   //rules
   if Self.Kind=0 then
   begin
    tN:=Tree.Items.AddChildObject(pN,
     MainForm.LS('Rules1')+' ['+IntToStr(Rules.Count)+']',nil);
     if RulePackageList.Count>0 then
      begin
      for i:=0 to RulePackageList.Count-1 do
       if TTmObj(RulePackageList.Objects[i]).ID_Root='' then
         begin
          tmO:=TTmObj(RulePackageList.Objects[i]);

           nN:=Tree.Items.AddChildObject(tN,RulePackageList.ValueFromIndex[i],tmO);
           nN.ImageIndex:=17;
           //-- add rules --
           for k:=0 to Rules.Count-1 do
            if TRule(Rules.Items[k]).PackageName=tmO.ID then
             begin
              nN1:=TRule(Rules.Items[k]).AddToTreeView(Tree,nN);
              nN1.ImageIndex:=tN.ImageIndex;
             end;
           //-------------------

           tmTs:=GetChildObjects(RulePackageList,tmO.ID);
           if tmTs.Count>0 then
            for j := 0 to tmTs.Count-1 do
              begin
//               tmO:=TTmObj.Create;
               tmO:=TTmObj(tmTs.Items[j]);
               nN2:=Tree.Items.AddChildObject(nN,tmO.Name,tmO);
               nN2.ImageIndex:=17;
               //-- add rules --
               for k:=0 to Rules.Count-1 do
                if TRule(Rules.Items[k]).PackageName=tmO.ID then
                 begin
                  nN1:=TRule(Rules.Items[k]).AddToTreeView(Tree,nN2);
                  nN1.ImageIndex:=tN.ImageIndex;
                 end;
               //-------------------
              end;
         end
       end
      else
       begin
         for k:=0 to Rules.Count-1 do
           begin
            nN1:=TRule(Rules.Items[k]).AddToTreeView(Tree,tN);
            nN1.ImageIndex:=tN.ImageIndex;
           end;
       end;
    if Rules.Count>0 then
     begin
      tN.Expand(False);
      pN.Expand(False);
     end;
  end;
  {
  // if Functions.Count>0 then
  begin
//  if Self.Kind=0 then
   tN:=Tree.Items.AddChildObject(pN,
    '??????? ('+IntToStr(Functions.Count)+')',nil);

  for i:=0 to Functions.Count-1 do
   TFunct(Functions.Items[i]).AddToTreeView(Tree,tN);
  if Functions.Count>0 then
   begin
    tN.Expand(False);
    pN.Expand(False);
   end;
  end;
  }

 //Tasks
// if Templates.Count>0 then
//  begin
   tN:=Tree.Items.AddChildObject(pN,
    MainForm.LS('Tasks')+' ['+IntToStr(Tasks.Count)+']',nil);

  for i:=0 to Tasks.Count-1 do
   TTask(Tasks.Items[i]).AddToTreeView(Tree,tN);
  if Tasks.Count>0 then
   begin
    tN.Expand(False);
    pN.Expand(False);
   end;

   tN:=Tree.Items.AddChildObject(pN,
    MainForm.LS('Scales')+' ['+IntToStr(FScales.Count)+']',nil);

  for i:=0 to FScales.Count-1 do
   begin
    nN1:=TFScale(FScales.Items[i]).AddToTreeView(Tree,tN);
{    for j:=0 to FVars.Count-1 do
     if TFVar(FVars.Items[j]).FScaleName=TFScale(FScales.Items[i]).Name then
      TFVar(FVars.Items[j]).AddToTreeView(Tree,nN1);  }
   end;
  if FScales.Count>0 then
   begin
    tN.Expand(False);
    pN.Expand(False);
   end;

{  tN:=Tree.Items.AddChildObject(pN,
    MainForm.LS('Terms')+' ['+IntToStr(FVars.Count)+']',nil);

  for i:=0 to FVars.Count-1 do
   TFVar(FVars.Items[i]).AddToTreeView(Tree,tN);
  if FVars.Count>0 then
   begin
    tN.Expand(False);
    pN.Expand(False);
   end;   }

  Result:=pN;
 except
  Result:=pN;
 end;
end;
 //-----------------------------------------------------------------------------
Function TKnowledgeBase.AddToTreeViewV2(Tree:TTreeView;pN:TTreeNode;dF:Integer):TTreeNode;
function GetChildObjects(Lst:TStringList;ID_R:string):TList;
var
 i : Integer;
begin
 Result:=TList.Create;
 for i := 0 to Lst.Count-1 do
  if TTmObj(Lst.Objects[i]).ID_Root=ID_R then
   Result.Add(Lst.Objects[i]);
end;

var
 i,j,k:Integer;
 tmO : TTmObj;
 tN,nN, nN1,nN2 : TTreeNode;
 tmTs : TList;
 s : string;
begin
 try
  pN:=Tree.Items.AddChildObject(pN,Name,Self);

 // if Templates.Count>0 then
  begin
  if Self.Kind=0 then
   tN:=Tree.Items.AddChildObject(pN,
    MainForm.LS('Templates2')+' ['+IntToStr(Templates.Count)+']',nil)
     else
      tN:=Tree.Items.AddChildObject(pN,
       MainForm.LS('Templates3')+' ['+IntToStr(Templates.Count)+']',nil);
   tN.ImageIndex:=2;

     if TempPackageList.Count>0 then
      begin
      for i:=0 to TempPackageList.Count-1 do
       if TTmObj(TempPackageList.Objects[i]).ID_Root='' then
         begin
          tmO:=TTmObj(TempPackageList.Objects[i]);

           nN:=Tree.Items.AddChildObject(tN,TempPackageList.ValueFromIndex[i],tmO);
           nN.ImageIndex:=17;
           //-- add templates --
           for k:=0 to Templates.Count-1 do
            if TTemplate(Templates.Items[k]).PackageName=tmO.ID then
             begin
              s:='';
              if TTemplate(Templates.Items[k]).Description<>''
               then s:=' ('+TTemplate(Templates.Items[k]).Description+')';

              nN1:=Tree.Items.AddChildObject(nN,'['+TTemplate(Templates.Items[k]).ID+'] '+
               TTemplate(Templates.Items[k]).Name+
                s,TTemplate(Templates.Items[k]));
              nN1.ImageIndex:=12;
             end;
           //-------------------

           tmTs:=GetChildObjects(TempPackageList,tmO.ID);
           if tmTs.Count>0 then
            for j := 0 to tmTs.Count-1 do
              begin
               tmO:=TTmObj(tmTs.Items[j]);
               nN2:=Tree.Items.AddChildObject(nN,tmO.Name,tmO);
               nN2.ImageIndex:=17;
               //-- add templates --
               for k:=0 to Templates.Count-1 do
                if TTemplate(Templates.Items[k]).PackageName=tmO.ID then
                 begin
                  s:='';
                  if TTemplate(Templates.Items[k]).Description<>''
                   then s:=' ('+TTemplate(Templates.Items[k]).Description+')';

                  nN1:=Tree.Items.AddChildObject(nN2,'['+TTemplate(Templates.Items[k]).ID+'] '+
                   TTemplate(Templates.Items[k]).Name+
                    s,TTemplate(Templates.Items[k]));
                  nN1.ImageIndex:=12;
                 end;
               //-------------------
              end;
         end;
       end
      else
       begin
         for k:=0 to Templates.Count-1 do
           begin
            s:='';
            if TTemplate(Templates.Items[k]).Description<>''
             then s:=' ('+TTemplate(Templates.Items[k]).Description+')';

            nN1:=Tree.Items.AddChildObject(tN,'['+TTemplate(Templates.Items[k]).ID+'] '+
             TTemplate(Templates.Items[k]).Name+
              s,TTemplate(Templates.Items[k]));
            nN1.ImageIndex:=12;
           end;
       end;
      if Templates.Count>0 then
       begin
        tN.Expand(False);
        pN.Expand(False);
       end;

  if Self.Kind=0 then
   tN:=Tree.Items.AddChildObject(pN,
    MainForm.LS('Initial facts')+' ['+IntToStr(Facts.Count)+']',nil)
    else
     tN:=Tree.Items.AddChildObject(pN,
      MainForm.LS('Cases')+' ['+IntToStr(Facts.Count)+']',nil);
   tN.ImageIndex:=4;

     if FactPackageList.Count>0 then
      begin
      for i:=0 to FactPackageList.Count-1 do
       if TTmObj(FactPackageList.Objects[i]).ID_Root='' then
         begin
          tmO:=TTmObj(FactPackageList.Objects[i]);

           nN:=Tree.Items.AddChildObject(tN,FactPackageList.ValueFromIndex[i],tmO);
           nN.ImageIndex:=17;
           //-- add facts --
           for k:=0 to Facts.Count-1 do
            if TFact(Facts.Items[k]).PackageName=tmO.ID then
             begin
              nN1:=TFact(Facts.Items[k]).AddToTreeView(Tree,nN);
              nN1.ImageIndex:=13;
             end;
           //-------------------

           tmTs:=GetChildObjects(FactPackageList,tmO.ID);
           if tmTs.Count>0 then
            for j := 0 to tmTs.Count-1 do
              begin
               tmO:=TTmObj(tmTs.Items[j]);
               nN2:=Tree.Items.AddChildObject(nN,tmO.Name,tmO);
               nN2.ImageIndex:=17;
               //-- add facts --
               for k:=0 to Facts.Count-1 do
                if TFact(Facts.Items[k]).PackageName=tmO.ID then
                 begin
                  nN1:=TFact(Facts.Items[k]).AddToTreeView(Tree,nN2);
                  nN1.ImageIndex:=13;
                 end;
               //-------------------
              end;
         end;
      end
      else
       begin
         for k:=0 to Facts.Count-1 do
           begin
            nN1:=TFact(Facts.Items[k]).AddToTreeView(Tree,tN);
            nN1.ImageIndex:=13;
           end;
       end;
      if Facts.Count>0 then
       begin
        tN.Expand(False);
        pN.Expand(False);
       end;
     end;

 //???????/??????? ??? ??????
  if Self.Kind=0 then
  begin
   tN:=Tree.Items.AddChildObject(pN,
    MainForm.LS('Generalized rules')+' ['+IntToStr(GRules.Count)+']',nil);
     if GRulePackageList.Count>0 then
      begin

       for k:=0 to GRules.Count-1 do
        if TGRule(GRules.Items[k]).PackageName='' then
         begin
          s:='';
          if TGRule(GRules.Items[k]).Description<>''
           then s:=' ('+TGRule(GRules.Items[k]).Description+')';

          nN1:=Tree.Items.AddChildObject(tN,'['+TGRule(GRules.Items[k]).ID+'] '+
           TGRule(GRules.Items[k]).Name+
            s,TGRule(GRules.Items[k]));
          nN1.ImageIndex:=16;
         end;

      for i:=0 to GRulePackageList.Count-1 do
       if TTmObj(GRulePackageList.Objects[i]).ID_Root='' then
         begin
          tmO:=TTmObj(GRulePackageList.Objects[i]);

           nN:=Tree.Items.AddChildObject(tN,GRulePackageList.ValueFromIndex[i],tmO);
           nN.ImageIndex:=17;
           //-- add grules --
           for k:=0 to GRules.Count-1 do
            if TGRule(GRules.Items[k]).PackageName=tmO.ID then
             begin
              s:='';
              if TGRule(GRules.Items[k]).Description<>''
               then s:=' ('+TGRule(GRules.Items[k]).Description+')';

              nN1:=Tree.Items.AddChildObject(nN,'['+TGRule(GRules.Items[k]).ID+'] '+
               TGRule(GRules.Items[k]).Name+
                s,TGRule(GRules.Items[k]));
              nN1.ImageIndex:=16;
             end;
           //-------------------

           tmTs:=GetChildObjects(GRulePackageList,tmO.ID);
           if tmTs.Count>0 then
            for j := 0 to tmTs.Count-1 do
              begin
               tmO:=TTmObj(tmTs.Items[j]);
               nN2:=Tree.Items.AddChildObject(nN,tmO.Name,tmO);
               nN2.ImageIndex:=17;
               //-- add grules --
               for k:=0 to GRules.Count-1 do
                if TGRule(GRules.Items[k]).PackageName=tmO.ID then
                 begin
                  s:='';
                  if TGRule(GRules.Items[k]).Description<>''
                   then s:=' ('+TGRule(GRules.Items[k]).Description+')';

                  nN1:=Tree.Items.AddChildObject(nN2,'['+TGRule(GRules.Items[k]).ID+'] '+
                   TGRule(GRules.Items[k]).Name+
                    s,TGRule(GRules.Items[k]));
                  nN1.ImageIndex:=16;
                 end;
               //-------------------
              end;
         end
       end
      else
       begin
         for k:=0 to GRules.Count-1 do
           begin
            s:='';
            if TGRule(GRules.Items[k]).Description<>''
             then s:=' ('+TGRule(GRules.Items[k]).Description+')';

            nN1:=Tree.Items.AddChildObject(tN,'['+TGRule(GRules.Items[k]).ID+'] '+
             TGRule(GRules.Items[k]).Name+
              s,TGRule(GRules.Items[k]));
            nN1.ImageIndex:=16;
           end;
       end;
      if GRules.Count>0 then
       begin
        tN.Expand(False);
        pN.Expand(False);
       end;
    end;

      //  if Rules.Count>0 then
//   begin
   //rules
   if Self.Kind=0 then
   begin
    tN:=Tree.Items.AddChildObject(pN,
     MainForm.LS('Rules1')+' ['+IntToStr(Rules.Count)+']',nil);
     if RulePackageList.Count>0 then
      begin
      for i:=0 to RulePackageList.Count-1 do
       if TTmObj(RulePackageList.Objects[i]).ID_Root='' then
         begin
          tmO:=TTmObj(RulePackageList.Objects[i]);

           nN:=Tree.Items.AddChildObject(tN,RulePackageList.ValueFromIndex[i],tmO);
           nN.ImageIndex:=17;
           //-- add rules --
           for k:=0 to Rules.Count-1 do
            if TRule(Rules.Items[k]).PackageName=tmO.ID then
             begin
              s:='';
              if TRule(Rules.Items[k]).Description<>''
               then s:=' ('+TRule(Rules.Items[k]).Description+')';

              nN1:=Tree.Items.AddChildObject(nN,'['+TRule(Rules.Items[k]).ID+'] '+
               TRule(Rules.Items[k]).Name+
                s,TRule(Rules.Items[k]));
              nN1.ImageIndex:=tN.ImageIndex;
             end;
           //-------------------

           tmTs:=GetChildObjects(RulePackageList,tmO.ID);
           if tmTs.Count>0 then
            for j := 0 to tmTs.Count-1 do
              begin
//               tmO:=TTmObj.Create;
               tmO:=TTmObj(tmTs.Items[j]);
               nN2:=Tree.Items.AddChildObject(nN,tmO.Name,tmO);
               nN2.ImageIndex:=17;
               //-- add rules --
               for k:=0 to Rules.Count-1 do
                if TRule(Rules.Items[k]).PackageName=tmO.ID then
                 begin
                  s:='';
                  if TRule(Rules.Items[k]).Description<>''
                   then s:=' ('+TRule(Rules.Items[k]).Description+')';

                  nN1:=Tree.Items.AddChildObject(nN2,'['+TRule(Rules.Items[k]).ID+'] '+
                   TRule(Rules.Items[k]).Name+
                    s,TRule(Rules.Items[k]));
                  nN1.ImageIndex:=tN.ImageIndex;
                 end;
               //-------------------
              end;
         end
       end
      else
       begin
         for k:=0 to Rules.Count-1 do
           begin
            s:='';
            if TRule(Rules.Items[k]).Description<>''
             then s:=' ('+TRule(Rules.Items[k]).Description+')';

            nN1:=Tree.Items.AddChildObject(tN,'['+TRule(Rules.Items[k]).ID+'] '+
             TRule(Rules.Items[k]).Name+
              s,TRule(Rules.Items[k]));
            nN1.ImageIndex:=tN.ImageIndex;
           end;
       end;
    if Rules.Count>0 then
     begin
      tN.Expand(False);
      pN.Expand(False);
     end;
  end;
  //---------------------------------------------------------------------------
    tN:=Tree.Items.AddChildObject(pN,
     MainForm.LS('Scales')+' ['+IntToStr(FScales.Count)+']',nil);

     for k:=0 to FScales.Count-1 do
       begin
        s:='';
        if TFScale(FScales.Items[k]).Description<>''
         then s:=' ('+TFScale(FScales.Items[k]).Description+')';

        nN1:=Tree.Items.AddChildObject(tN,'['+TFScale(FScales.Items[k]).ID+'] '+
         TFScale(FScales.Items[k]).Name+
          s,TFScale(FScales.Items[k]));
        nN1.ImageIndex:=tN.ImageIndex;
       end;

    if FScales.Count>0 then
     begin
      tN.Expand(False);
      pN.Expand(False);
     end;
  //---------------------------------------------------------------------------
{    tN:=Tree.Items.AddChildObject(pN,
     MainForm.LS('FyzzyVars')+' ['+IntToStr(FVars.Count)+']',nil);

     for k:=0 to FVars.Count-1 do
       begin
        s:='';
        if TFVar(FVars.Items[k]).Description<>''
         then s:=' ('+TFVar(FScales.Items[k]).Description+')';

        nN1:=Tree.Items.AddChildObject(tN,'['+TFVar(FVars.Items[k]).ID+'] '+
         TFVar(FVars.Items[k]).Name+
          s,TFVar(FVars.Items[k]));
        nN1.ImageIndex:=tN.ImageIndex;
       end;

    if FVars.Count>0 then
     begin
      tN.Expand(False);
      pN.Expand(False);
     end;   }
  //---------------------------------------------------------------------------
  Result:=pN;
 except
  Result:=pN;
 end;
end;
//-----------------------------------------------------------------------------
Function TKnowledgeBase.AddToRzCheckTree(Tree:TRzCheckTree;pN:TTreeNode):TTreeNode;
function GetChildObjects(Lst:TStringList;ID_R:string):TList;
var
 i : Integer;
begin
 Result:=TList.Create;
 for i := 0 to Lst.Count-1 do
  if TTmObj(Lst.Objects[i]).ID_Root=ID_R then
   Result.Add(Lst.Objects[i]);
end;
var
 i,j,k:Integer;

 tN : TTreeNode;
 nN,nN1,nN2 : TTreeNode;
 tmO : TTmObj;
 tmTs : TList;
begin
 try
  pN:=Tree.Items.AddChildObject(pN,MainForm.LS('Knowledge base')+': '+Name,Self);
  pN.ImageIndex:=1;
 {
  if Vars.Count>0 then
   begin
    tN:=Tree.Items.AddChildObject(pN,
     '?????????? ?????????? ('+IntToStr(Vars.Count)+')',nil);
    tN.ImageIndex:=5;

    for i:=0 to Vars.Count-1 do
     begin
      nN:=TGlobalVar(Vars.Items[i]).AddToRzCheckTree(Tree,tN);
      nN.ImageIndex:=9;
     end;

    if Vars.Count>0 then
     begin
      tN.Expand(False);
      pN.Expand(False);
     end;
   end;    }

 if Templates.Count>0 then
 begin
  if Self.Kind=0 then
   tN:=Tree.Items.AddChildObject(pN,
    MainForm.LS('Templates2')+' ['+IntToStr(Templates.Count)+']',nil)
     else
      tN:=Tree.Items.AddChildObject(pN,
       MainForm.LS('Templates3')+' ['+IntToStr(Templates.Count)+']',nil);
  tN.ImageIndex:=2;

 if TempPackageList.Count>0 then
 begin
   if TTmObj(TempPackageList.Objects[i]).ID_Root='' then
     begin
      tmO:=TTmObj(TempPackageList.Objects[i]);

       nN:=Tree.Items.AddChildObject(tN,TempPackageList.ValueFromIndex[i],tmO);
       nN.ImageIndex:=17;
       //-- add templates --
       for k:=0 to Templates.Count-1 do
        if TTemplate(Templates.Items[k]).PackageName=tmO.ID then
         begin
          nN1:=TTemplate(Templates.Items[k]).AddToRzCheckTree(Tree,nN);
          nN1.ImageIndex:=12;
         end;
       //-------------------

       tmTs:=GetChildObjects(TempPackageList,tmO.ID);
       if tmTs.Count>0 then
        for j := 0 to tmTs.Count-1 do
          begin
           tmO:=TTmObj(tmTs.Items[j]);
           nN2:=Tree.Items.AddChildObject(nN,tmO.Name,tmO);
           nN2.ImageIndex:=17;
           //-- add templates --
           for k:=0 to Templates.Count-1 do
            if TTemplate(Templates.Items[k]).PackageName=tmO.ID then
             begin
              nN1:=TTemplate(Templates.Items[k]).AddToRzCheckTree(Tree,nN2);
              nN1.ImageIndex:=12;
             end;
           //-------------------
          end;
     end;
 end
  else
   begin
    for k:=0 to Templates.Count-1 do
     begin
      nN:=TTemplate(Templates.Items[k]).AddToRzCheckTree(Tree,tN);
      nN.ImageIndex:=12;
     end;
   end;

  if Templates.Count>0 then
   begin
    tN.Expand(False);
    pN.Expand(False);
   end;
 end;

 if Facts.Count>0 then
  begin
  if Self.Kind=0 then
   tN:=Tree.Items.AddChildObject(pN,
    MainForm.LS('Initial facts')+' ['+IntToStr(Facts.Count)+']',nil)
    else
     tN:=Tree.Items.AddChildObject(pN,
      MainForm.LS('Cases')+' ['+IntToStr(Facts.Count)+']',nil);
   tN.ImageIndex:=4;

  if FactPackageList.Count>0 then
  begin
   if TTmObj(FactPackageList.Objects[i]).ID_Root='' then
     begin
      tmO:=TTmObj(FactPackageList.Objects[i]);

       nN:=Tree.Items.AddChildObject(tN,FactPackageList.ValueFromIndex[i],tmO);
       nN.ImageIndex:=17;
       //-- add templates --
       for k:=0 to Facts.Count-1 do
        if TFact(Facts.Items[k]).PackageName=tmO.ID then
         begin
          nN1:=TFact(Facts.Items[k]).AddToRzCheckTree(Tree,nN);
          nN1.ImageIndex:=13;
         end;
       //-------------------

       tmTs:=GetChildObjects(FactPackageList,tmO.ID);
       if tmTs.Count>0 then
        for j := 0 to tmTs.Count-1 do
          begin
           tmO:=TTmObj(tmTs.Items[j]);
           nN2:=Tree.Items.AddChildObject(nN,tmO.Name,tmO);
           nN2.ImageIndex:=17;
           //-- add templates --
           for k:=0 to Facts.Count-1 do
            if TFact(Facts.Items[k]).PackageName=tmO.ID then
             begin
              nN1:=TFact(Facts.Items[k]).AddToRzCheckTree(Tree,nN2);
              nN1.ImageIndex:=13;
             end;
           //-------------------
          end;
     end;
 end
  else
   begin
    for k:=0 to Facts.Count-1 do
     begin
      nN:=TFact(Facts.Items[k]).AddToRzCheckTree(Tree,tN);
      nN.ImageIndex:=13;
     end;
   end;
 end;

  if Facts.Count>0 then
   begin
    tN.Expand(False);
    pN.Expand(False);
   end;
// end;

 if GRules.Count>0 then
  begin
   tN:=Tree.Items.AddChildObject(pN,
    MainForm.LS('Generalized rules')+' ['+IntToStr(GRules.Count)+']',nil);
   tN.ImageIndex:=16;
  if GRulePackageList.Count>0 then
  begin
   if TTmObj(GRulePackageList.Objects[i]).ID_Root='' then
     begin
      tmO:=TTmObj(GRulePackageList.Objects[i]);

       nN:=Tree.Items.AddChildObject(tN,GRulePackageList.ValueFromIndex[i],tmO);
       nN.ImageIndex:=17;
       //-- add templates --
       for k:=0 to GRules.Count-1 do
        if TGRule(GRules.Items[k]).PackageName=tmO.ID then
         begin
          nN1:=TGRule(GRules.Items[k]).AddToRzCheckTree(Tree,nN);
          nN1.ImageIndex:=16;
         end;
       //-------------------

       tmTs:=GetChildObjects(GRulePackageList,tmO.ID);
       if tmTs.Count>0 then
        for j := 0 to tmTs.Count-1 do
          begin
           tmO:=TTmObj(tmTs.Items[j]);
           nN2:=Tree.Items.AddChildObject(nN,tmO.Name,tmO);
           nN2.ImageIndex:=17;
           //-- add templates --
           for k:=0 to GRules.Count-1 do
            if TGRule(GRules.Items[k]).PackageName=tmO.ID then
             begin
              nN1:=TGRule(GRules.Items[k]).AddToRzCheckTree(Tree,nN2);
              nN1.ImageIndex:=16;
             end;
           //-------------------
          end;
     end;
 end
  else
   begin
    for k:=0 to GRules.Count-1 do
     begin
      nN:=TGRule(GRules.Items[k]).AddToRzCheckTree(Tree,tN);
      nN.ImageIndex:=16;
     end;
   end;
 end;

  if GRules.Count>0 then
   begin
    tN.Expand(False);
    pN.Expand(False);
   end;
//  end;

 if Rules.Count>0 then
 begin
  if Self.Kind=0 then
  begin
   tN:=Tree.Items.AddChildObject(pN,
    MainForm.LS('Rules1')+' ['+IntToStr(Rules.Count)+']',nil);
   tN.ImageIndex:=3;
  if RulePackageList.Count>0 then
  begin
   if TTmObj(RulePackageList.Objects[i]).ID_Root='' then
     begin
      tmO:=TTmObj(RulePackageList.Objects[i]);

       nN:=Tree.Items.AddChildObject(tN,RulePackageList.ValueFromIndex[i],tmO);
       nN.ImageIndex:=17;
       //-- add templates --
       for k:=0 to Rules.Count-1 do
        if TRule(Rules.Items[k]).PackageName=tmO.ID then
         begin
          nN1:=TRule(Rules.Items[k]).AddToRzCheckTree(Tree,nN);
          nN1.ImageIndex:=tN.ImageIndex;
         end;
       //-------------------

       tmTs:=GetChildObjects(RulePackageList,tmO.ID);
       if tmTs.Count>0 then
        for j := 0 to tmTs.Count-1 do
          begin
           tmO:=TTmObj(tmTs.Items[j]);
           nN2:=Tree.Items.AddChildObject(nN,tmO.Name,tmO);
           nN2.ImageIndex:=17;
           //-- add templates --
           for k:=0 to Rules.Count-1 do
            if TRule(Rules.Items[k]).PackageName=tmO.ID then
             begin
              nN1:=TRule(Rules.Items[k]).AddToRzCheckTree(Tree,nN2);
              nN1.ImageIndex:=tN.ImageIndex;
             end;
           //-------------------
          end;
     end;
 end
  else
   begin
    for k:=0 to Rules.Count-1 do
     begin
      nN:=TRule(Rules.Items[k]).AddToRzCheckTree(Tree,tN);
      nN.ImageIndex:=tN.ImageIndex;
     end;
   end;
 end;

   if Rules.Count>0 then
    begin
     tN.Expand(False);
     pN.Expand(False);
    end;
  end;
// end;

  if Tasks.Count>0 then
   begin
    tN:=Tree.Items.AddChildObject(pN,
     MainForm.LS('Tasks')+' ['+IntToStr(Functions.Count)+']',nil);
    tN.ImageIndex:=14;

    for i:=0 to Tasks.Count-1 do
     begin
      nN:=TTask(Tasks.Items[i]).AddToRzCheckTree(Tree,tN);
      nN.ImageIndex:=15;
     end;

    if Tasks.Count>0 then
     begin
      tN.Expand(False);
      pN.Expand(False);
     end;
   end;
 {
  if FScales.Count>0 then
   begin
    tN:=Tree.Items.AddChildObject(pN,
     MainForm.LS('Scales')+' ['+IntToStr(FScales.Count)+']',nil);
    tN.ImageIndex:=5;

    for i:=0 to FScales.Count-1 do
     begin
      nN:=TFScale(FScales.Items[i]).AddToRzCheckTree(Tree,tN);
      nN.ImageIndex:=9;
     end;

    if FScales.Count>0 then
     begin
      tN.Expand(False);
      pN.Expand(False);
     end;
   end;

  if FVars.Count>0 then
   begin
    tN:=Tree.Items.AddChildObject(pN,
     MainForm.LS('FuzzyVars')+' ['+IntToStr(FVars.Count)+']',nil);
    tN.ImageIndex:=10;

    for i:=0 to FVars.Count-1 do
     begin
      nN:=TFVar(FVars.Items[i]).AddToRzCheckTree(Tree,tN);
      nN.ImageIndex:=11;
     end;

    if FVars.Count>0 then
     begin
      tN.Expand(False);
      pN.Expand(False);
     end;
   end; }
{  if Functions.Count>0 then
   begin
    tN:=Tree.Items.AddChildObject(pN,
     '??????? ('+IntToStr(Functions.Count)+')',nil);
    tN.ImageIndex:=10;

    for i:=0 to Functions.Count-1 do
     begin
      nN:=TFunct(Functions.Items[i]).AddToRzCheckTree(Tree,tN);
      nN.ImageIndex:=11;
     end;

    if Functions.Count>0 then
     begin
      tN.Expand(False);
      pN.Expand(False);
     end;
   end;  }
  Result:=pN;
 except
  Result:=pN;
 end;
end;
//-----------------------------------------------------------------------------
Function TKnowledgeBase.AddToRzCheckTreeForRules(Tree:TRzCheckTree;pN:TTreeNode):TTreeNode;
function GetChildObjects(Lst:TStringList;ID_R:string):TList;
var
 i : Integer;
begin
 Result:=TList.Create;
 for i := 0 to Lst.Count-1 do
  if TTmObj(Lst.Objects[i]).ID_Root=ID_R then
   Result.Add(Lst.Objects[i]);
end;
var
 i,j,k:Integer;

 tN : TTreeNode;
 nN,nN1,nN2 : TTreeNode;
 tmO : TTmObj;
 tmTs : TList;
begin
 try
  pN:=Tree.Items.AddChildObject(pN,MainForm.LS('Knowledge base')+': '+Name,Self);
  pN.ImageIndex:=1;

 if GRules.Count>0 then
  begin
   tN:=Tree.Items.AddChildObject(pN,
    MainForm.LS('Generalized rules')+' ['+IntToStr(GRules.Count)+']',nil);
   tN.ImageIndex:=16;
  if GRulePackageList.Count>0 then
  begin
   if TTmObj(GRulePackageList.Objects[i]).ID_Root='' then
     begin
      tmO:=TTmObj(GRulePackageList.Objects[i]);

       nN:=Tree.Items.AddChildObject(tN,GRulePackageList.ValueFromIndex[i],tmO);
       nN.ImageIndex:=17;
       //-- add templates --
       for k:=0 to GRules.Count-1 do
        if TGRule(GRules.Items[k]).PackageName=tmO.ID then
         begin
          nN1:=TGRule(GRules.Items[k]).AddToRzCheckTree(Tree,nN);
          nN1.ImageIndex:=16;
         end;
       //-------------------

       tmTs:=GetChildObjects(GRulePackageList,tmO.ID);
       if tmTs.Count>0 then
        for j := 0 to tmTs.Count-1 do
          begin
           tmO:=TTmObj(tmTs.Items[j]);
           nN2:=Tree.Items.AddChildObject(nN,tmO.Name,tmO);
           nN2.ImageIndex:=17;
           //-- add templates --
           for k:=0 to GRules.Count-1 do
            if TGRule(GRules.Items[k]).PackageName=tmO.ID then
             begin
              nN1:=TGRule(GRules.Items[k]).AddToRzCheckTree(Tree,nN2);
              nN1.ImageIndex:=16;
             end;
           //-------------------
          end;
     end;
 end
  else
   begin
    for k:=0 to GRules.Count-1 do
     begin
      nN:=TGRule(GRules.Items[k]).AddToRzCheckTree(Tree,tN);
      nN.ImageIndex:=16;
     end;
   end;
 end;

  if GRules.Count>0 then
   begin
    tN.Expand(False);
    pN.Expand(False);
   end;
//  end;

 if Rules.Count>0 then
 begin
  if Self.Kind=0 then
  begin
   tN:=Tree.Items.AddChildObject(pN,
    MainForm.LS('Rules1')+' ['+IntToStr(Rules.Count)+']',nil);
   tN.ImageIndex:=3;
  if RulePackageList.Count>0 then
  begin
   if TTmObj(RulePackageList.Objects[i]).ID_Root='' then
     begin
      tmO:=TTmObj(RulePackageList.Objects[i]);

       nN:=Tree.Items.AddChildObject(tN,RulePackageList.ValueFromIndex[i],tmO);
       nN.ImageIndex:=17;
       //-- add templates --
       for k:=0 to Rules.Count-1 do
        if TRule(Rules.Items[k]).PackageName=tmO.ID then
         begin
          nN1:=TRule(Rules.Items[k]).AddToRzCheckTree(Tree,nN);
          nN1.ImageIndex:=tN.ImageIndex;
         end;
       //-------------------

       tmTs:=GetChildObjects(RulePackageList,tmO.ID);
       if tmTs.Count>0 then
        for j := 0 to tmTs.Count-1 do
          begin
           tmO:=TTmObj(tmTs.Items[j]);
           nN2:=Tree.Items.AddChildObject(nN,tmO.Name,tmO);
           nN2.ImageIndex:=17;
           //-- add templates --
           for k:=0 to Rules.Count-1 do
            if TRule(Rules.Items[k]).PackageName=tmO.ID then
             begin
              nN1:=TRule(Rules.Items[k]).AddToRzCheckTree(Tree,nN2);
              nN1.ImageIndex:=tN.ImageIndex;
             end;
           //-------------------
          end;
     end;
 end
  else
   begin
    for k:=0 to Rules.Count-1 do
     begin
      nN:=TRule(Rules.Items[k]).AddToRzCheckTree(Tree,tN);
      nN.ImageIndex:=tN.ImageIndex;
     end;
   end;
 end;

   if Rules.Count>0 then
    begin
     tN.Expand(False);
     pN.Expand(False);
    end;
  end;

  if Tasks.Count>0 then
   begin
    tN:=Tree.Items.AddChildObject(pN,
     MainForm.LS('Tasks')+' ['+IntToStr(Functions.Count)+']',nil);
    tN.ImageIndex:=14;

    for i:=0 to Tasks.Count-1 do
     begin
      nN:=TTask(Tasks.Items[i]).AddToRzCheckTree(Tree,tN);
      nN.ImageIndex:=15;
     end;

    if Tasks.Count>0 then
     begin
      tN.Expand(False);
      pN.Expand(False);
     end;
   end;
  Result:=pN;
 except
  Result:=pN;
 end;
end;
//-----------------------------------------------------------------------------
function TKnowledgeBase.IndexOf(KBList:TList):Integer;
var
 i  : Integer;
begin
 Result:=-1;
 for i:=0 to KBList.Count-1 do
  if TKnowledgeBase(KBList.Items[i]).ShortName=ShortName then
   begin
    Result:=i;
    Break;
   end;
end;

function TTemplate.IndexOf(S:String; c:Integer):Integer;
var
 i  : Integer;
begin
 Result:=-1;
 for i:=0 to Slots.Count-1 do
  if (TSlot(Slots.Items[i]).ShortName=S)and(i<>c) then
   begin
    Result:=i;
    Break;
   end;
end;

procedure TTemplate.Delete(i:Integer);
begin
 TSlot(Slots.Items[i]).Destroy;
 Slots.Delete(i);
end;

procedure TKnowledgeBase.Delete(s:String;i:Integer);
begin
 case s[1] of
  'T': begin
    TTemplate(Templates.Items[i]).Destroy;
    Templates.Delete(i);
   end;
  'G': begin
    TGRule(GRules.Items[i]).Destroy;
    GRules.Delete(i);
   end;
  'P': begin
    TTask(Tasks.Items[i]).Destroy;
    Tasks.Delete(i);
   end;
  'R': begin
    TRule(Rules.Items[i]).Destroy;
    Rules.Delete(i);
   end;
  'F': begin
    TFact(Facts.Items[i]).Destroy;
    Facts.Delete(i);
   end;
  'V': begin
    TFVar(FVars.Items[i]).Destroy;
    FVars.Delete(i);
   end;
  'S': begin
    TFScale(FScales.Items[i]).Destroy;
    FScales.Delete(i);
   end;
 end; //end case
end;
//--------------------------------------------------------------
procedure TSlot.PurifyName;
begin
  Name:=StringReplace(Name,'(','_',[rfReplaceAll]);
  Name:=StringReplace(Name,')','_',[rfReplaceAll]);
end;
//-----------------------------------------------------------------
function TSlot.GetDescriptionOnKBLanguage(L,M:String):String;
type
 TMethod = Function (Mode:WideString;Slot:TObject):WideString; stdcall;
var
 i: integer;
 LMethod:TMethod;
 s  : String;
begin
 s:=L;
// s:=ExtractFileDir(Application.ExeName);
// if L='CLIPS' then s:=s+'/Dll/CLIPSS.Dll';
 try
  i:=LoadLibrary(PChar(s));
  if i<>0 then
   begin
    LMethod:=Windows.GetProcAddress(i,PChar('GetSlotInfo'));
    if Assigned(LMethod)then
     Result:=StringReplace(LMethod(M,Self),'_',' ',[rfReplaceAll])
   end;
 except
  Result:='[Error]';
 end;
end;

function TGlobalVar.GetDescriptionOnKBLanguage(L:String):String;
type
 TMethod = Function (V:TObject):WideString; stdcall;
var
 i: integer;
 LMethod:TMethod;
 s  : String;
begin
 s:=L;
// s:=ExtractFileDir(Application.ExeName);
// if L='CLIPS' then s:=s+'/Dll/CLIPSS.Dll';
 try
  i:=LoadLibrary(PChar(s));
  if i<>0 then
   begin
    LMethod:=Windows.GetProcAddress(i,PChar('GetGlobalVarInfo'));
    if Assigned(LMethod)then
     Result:=StringReplace(LMethod(Self),'_',' ',[rfReplaceAll])
   end;
 except
  Result:='[Error]';
 end;
end;
//-----------------------------------------------------------------------------
function TFact.GetBriefTextualDescription:string;
var
 i : Integer;
begin
// Result:=ShortName+': ';
 Result:='';
 for i := 0 to Slots.Count-1 do
  if Trim(TSlot(Slots.Items[i]).Value)<>'' then
   try
    Result:=Result+Trim(TSlot(Slots.Items[i]).Value)+';';
   except
   end;
end;
//-----------------------------------------------------------------------------
function TFact.GetDescriptionOnKBLanguage(L:String):String;
type
 TMethod = Function (Fact: TObject):WideString; stdcall;
var
 i: integer;
 LMethod:TMethod;
 s  : String;
begin
 s:=L;
// s:=ExtractFileDir(Application.ExeName);
// if L='CLIPS' then s:=s+'/Dll/CLIPSS.Dll';
 try
  i:=LoadLibrary(PChar(s));
  if i<>0 then
   begin
    LMethod:=Windows.GetProcAddress(i,PChar('GetFactInfo'));
    if Assigned(LMethod)then
     Result:=StringReplace(LMethod(Self),'_',' ',[rfReplaceAll])
   end;
 except
  Result:='[Error]';
 end;
end;

function TFunct.GetDescriptionOnKBLanguage(L:String):String;
type
 TMethod = Function (KB: TObject):WideString; stdcall;
var
 i: integer;
 LMethod:TMethod;
 s  : String;
begin
 s:=L;
// s:=ExtractFileDir(Application.ExeName);
// if L='CLIPS' then s:=s+'/Dll/CLIPSS.Dll';
 try
  i:=LoadLibrary(PChar(s));
  if i<>0 then
   begin
    LMethod:=Windows.GetProcAddress(i,PChar('GetFunctionInfo'));
    if Assigned(LMethod)then
     Result:=StringReplace(LMethod(Self),'_',' ',[rfReplaceAll])
   end;
 except
  Result:='[Error]';
 end;
end;

function TTemplate.GetDescriptionOnKBLanguage(L:String;KB5:TObject):String;
type
 TMethod = Function (Template,KB: TObject):WideString; stdcall;
var
 i: integer;
 LMethod:TMethod;
 s  : String;
begin
 s:=L;
//  s:=ExtractFileDir(Application.ExeName);
// if L='CLIPS' then s:=s+'/Dll/CLIPSS.Dll';
 try
  i:=LoadLibrary(PChar(s));
  if i<>0 then
   begin
    LMethod:=Windows.GetProcAddress(i,PChar('GetTemplateInfo'));
    if Assigned(LMethod)then
     Result:=StringReplace(LMethod(Self,KB5),'_',' ',[rfReplaceAll])
   end;
 except
  Result:='[Error]';
 end;
end;
//--------------------------------------------------------------
procedure TRule.PurifyName;
begin
  Name:=StringReplace(Name,'(','_',[rfReplaceAll]);
  Name:=StringReplace(Name,')','_',[rfReplaceAll]);
end;
//-----------------------------------------------------------------
function TRule.GetDescriptionOnKBLanguage(L:String):String;
type
 TMethod = Function (Rule: TObject):WideString; stdcall;
var
 i: integer;
 LMethod:TMethod;
 s  : String;
begin
 s:=L;
// s:=ExtractFileDir(Application.ExeName);
// if L='CLIPS' then s:=s+'/Dll/CLIPSS.Dll';
 try
  i:=LoadLibrary(PChar(s));
  if i<>0 then
   begin
    LMethod:=Windows.GetProcAddress(i,PChar('GetRuleInfo'));
    if Assigned(LMethod)then
     Result:=StringReplace(LMethod(Self),'_',' ',[rfReplaceAll]);
   end;
 except
  Result:='[Error]';
 end;
end;

function TKnowledgeBase.GetDescriptionOnKBLanguage(L:String):String;
type
 TMethod = Function (KB: TObject):WideString; stdcall;
var
 i: integer;
 LMethod:TMethod;
 s  : String;
begin
 s:=L;
// s:=ExtractFileDir(Application.ExeName);
// if L='CLIPS' then s:=s+'/Dll/CLIPSS.Dll';
 try
  i:=LoadLibrary(PChar(s));
  if i<>0 then
   begin
    LMethod:=Windows.GetProcAddress(i,PChar('GetKnowledgeBaseInfo'));
    if Assigned(LMethod)then
     Result:=StringReplace(LMethod(Self),'_',' ',[rfReplaceAll])
   end;
 except
  Result:='[Error]';
 end;
end;

function TKnowledgeBase.NewID(s:String):String;
var
 i,c,j,c1  : Integer;
 tmID,s1 : String;
begin
 c:=0;
 j:=0;
 s1:='';
  case s[1] of
   'R':begin
      for i:=0 to Rules.Count-1 do
        begin
         s1:=TRule(Rules.Items[i]).ID;
         if s1<>'' then s1:=Copy(s1,2,3) else s1:='0';
         c1:=StrToInt(s1);
         if c1>c then c:=c1;
        end;
   end; //end R
   'F':begin
      for i:=0 to Facts.Count-1 do
        begin
         s1:=TFact(Facts.Items[i]).ID;
         if s1<>'' then s1:=Copy(s1,2,3) else s1:='0';
         c1:=StrToInt(s1);
         if c1>c then c:=c1;
        end;
   end; //end F
   'T':begin
      for i:=0 to Templates.Count-1 do
        begin
         s1:=TTemplate(Templates.Items[i]).ID;
         if s1<>'' then s1:=Copy(s1,2,3) else s1:='0';
         c1:=StrToInt(s1);
         if c1>c then c:=c1;
        end;
   end; //end T
   'U':begin
      for i:=0 to Functions.Count-1 do
        begin
         s1:=TFunct(Functions.Items[i]).ID;
         if s1<>'' then s1:=Copy(s1,2,3) else s1:='0';
         c1:=StrToInt(s1);
         if c1>c then c:=c1;
        end;
   end; //end U
   'G':begin
      for i:=0 to GRules.Count-1 do
        begin
         s1:=TGRule(GRules.Items[i]).ID;
         if s1<>'' then s1:=Copy(s1,2,3) else s1:='0';
         c1:=StrToInt(s1);
         if c1>c then c:=c1;
        end;
   end; //end G
   'P':begin
      for i:=0 to Tasks.Count-1 do
        begin
         s1:=TTask(Tasks.Items[i]).ID;
         if s1<>'' then s1:=Copy(s1,2,3) else s1:='0';
         c1:=StrToInt(s1);
         if c1>c then c:=c1;
        end;
   end; //end P
   'S':begin
      for i:=0 to FScales.Count-1 do
        begin
         s1:=TFScale(FScales.Items[i]).ID;
         if s1<>'' then s1:=Copy(s1,2,3) else s1:='0';
         c1:=StrToInt(s1);
         if c1>c then c:=c1;
        end;
   end; //end S
   'V':begin
      for i := 0 to FScales.Count-1 do
       for j := 0 to TFScale(FScales.Items[i]).ListOfValues.Count-1 do
         begin
          s1:=TFVar(TFScale(FScales.Items[i]).ListOfValues.Objects[j]).ID;
          if s1<>'' then s1:=Copy(s1,2,3) else s1:='0';
          c1:=StrToInt(s1);
          if c1>c then c:=c1;
         end;
   end; //end V
  end; //end case

  Inc(c);
  tmID:=IntToStr(c);
  while Length(tmID)<3 do tmID:='0'+tmID;
  Result:=s+tmID;
end;

function TKnowledgeBase.CopyArgument(S1:TArgument; var S2:TArgument):Integer;
begin
try
 S2.Name:=S1.Name;
 S2.ShortName:=S1.ShortName;
 S2.Description:=S1.Description;
 S2.Value:=S1.Value;
 S2.DataType:=S1.DataType;
 S2.Constraint:=S1.Constraint;
 Result:=0;
except
 S2.Name:='Error';
 Result:=-1;
end;
end;

function TKnowledgeBase.CopySlot(S1:TSlot; var S2:TSlot):Integer;
begin
try
 S2.Name:=S1.Name;
 S2.ShortName:=S1.ShortName;
 S2.Description:=S1.Description;
 S2.Value:=S1.Value;
 S2.DataType:=S1.DataType;
 if S2.DataType='' then S2.DataType:='String';

 S2.Constraint:=S1.Constraint;
 Result:=0;
except
 S2.Name:='Error';
 Result:=-1;
end;
end;

function TKnowledgeBase.CopyGRule(M:Integer; GR1:TGRule; var GR2:TGRule):Integer;
var
 c,c1 : Integer;
 tmTemplate : TTemplate;
 tmSlot : TSlot;
begin
try
  GR2:=TGRule.Create;
  GR2.Init;
  GR2.Name:=GR1.Name;
  GR2.PackageName:=GR1.PackageName;
  GR2.RootPackageName:=GR1.RootPackageName;
  GR2.ShortName:=GR1.ShortName;

  if M=1 then GR2.ID:=GR1.ID
   else GR2.ID:=NewID('G');
  if GR2.ID='' then GR2.ID:=NewID('G');

  GR2.Description:=GR1.Description;
   for c:=0 to GR1.Actions.Count-1 do
    begin
     tmTemplate:=TTemplate.Create;
     //copy template
     tmTemplate.Init;
     tmTemplate.Name:=TTemplate(GR1.Actions.Items[c]).Name;
     tmTemplate.ShortName:=TTemplate(GR1.Actions.Items[c]).ShortName;
     tmTemplate.Description:=TTemplate(GR1.Actions.Items[c]).Description;
     for c1:=0 to TTemplate(GR1.Actions.Items[c]).Slots.Count-1 do
      begin
       tmSlot:=TSlot.Create;
       Self.CopySlot(TSlot(TTemplate(GR1.Actions.Items[c]).Slots.Items[c1]),
        tmSlot);
       tmTemplate.Slots.Add(tmSlot);
      end;
     GR2.Actions.Add(tmTemplate);
    end;
   for c:=0 to GR1.Conditions.Count-1 do
    begin
     tmTemplate:=TTemplate.Create;
     //copy template
     tmTemplate.Init;
     tmTemplate.Name:=TTemplate(GR1.Conditions.Items[c]).Name;
     tmTemplate.ShortName:=TTemplate(GR1.Conditions.Items[c]).ShortName;
     tmTemplate.Description:=TTemplate(GR1.Conditions.Items[c]).Description;
     for c1:=0 to TTemplate(GR1.Conditions.Items[c]).Slots.Count-1 do
      begin
       tmSlot:=TSlot.Create;
       Self.CopySlot(TSlot(TTemplate(GR1.Conditions.Items[c]).Slots.Items[c1]),
        tmSlot);
       tmTemplate.Slots.Add(tmSlot);
      end;
     GR2.Conditions.Add(tmTemplate);
    end;
  Result:=0;
 except
  Result:=-1;
 end;
end;

Function TFact.MakeACloneFrom(F2:TObject):Integer;
var
 c : Integer;
 tmSlot : TSlot;
 F1 : TFact;
begin
 try
   F1:=TFact(F2);
   Name:=F1.Name;
   ShortName:=F1.ShortName;
//   PackageName:=T1.PackageName;
//   RootPackageName:=T1.RootPackageName;
   Mode:=F1.Mode;
   Slots.Clear;
   for c:=0 to F1.Slots.Count-1 do
    begin
     tmSlot:=TSlot.Create;
     KB.CopySlot(TSlot(F1.Slots.Items[c]),
      tmSlot);
     Slots.Add(tmSlot);
    end;
  Result:=0;
 except
  Result:=-1;
 end;
end;

Function TTemplate.MakeACloneFrom(m:Integer; T2:TObject):Integer;
//m=0 - without name and description
//m=1 - with name and description
var
 c : Integer;
 tmSlot : TSlot;
 T1 : TTemplate;
begin
 try
   T1:=TTemplate(T2);
   if m=1 then
    begin
     Name:=T1.Name;
     Description:=T1.Description;
    end;
   ShortName:=T1.ShortName;
   DrawParams.Text:=T1.DrawParams.Text;
//   PackageName:=T1.PackageName;
//   RootPackageName:=T1.RootPackageName;
   Slots.Clear;
   for c:=0 to T1.Slots.Count-1 do
    begin
     tmSlot:=TSlot.Create;
     KB.CopySlot(TSlot(T1.Slots.Items[c]),
      tmSlot);
     Slots.Add(tmSlot);
    end;
  Result:=0;
 except
  Result:=-1;
 end;
end;

function TKnowledgeBase.CopyTemplate(M:Integer; T1:TTemplate; var T2:TTemplate):Integer;
//mode 0 - new id; mode 1 - old id
var
 c : Integer;
 tmSlot : TSlot;
begin
 try
   T2:=TTemplate.Create;
   T2.Init;
   if M=1 then T2.ID:=T1.ID
    else T2.ID:=NewID('T');
   if T2.ID='' then T2.ID:=NewID('T');
    
   T2.Name:=T1.Name;
   T2.ShortName:=T1.ShortName;
   T2.PackageName:=T1.PackageName;
   T2.RootPackageName:=T1.RootPackageName;
   T2.Description:=T1.Description;
   for c:=0 to T1.Slots.Count-1 do
    begin
     tmSlot:=TSlot.Create;
     Self.CopySlot(TSlot(T1.Slots.Items[c]),
      tmSlot);
     T2.Slots.Add(tmSlot);
    end;
  Result:=0;
 except
  Result:=-1;
 end;
end;

Function TGRule.IndexOfConditionByID(s:string):Integer;
var
 i  : Integer;
begin
 Result:=-1;
 for i:=0 to Conditions.Count-1 do
  begin
    if s=TTemplate(Conditions.Items[i]).ID then
//      if j=F.Slots.Count then
       begin
        Result:=i;
        Break;
       end;
  end;
end;

Function TGRule.IndexOfActionByID(s:string):Integer;
var
 i  : Integer;
begin
 Result:=-1;
 for i:=0 to Actions.Count-1 do
  begin
    if s=TTemplate(Actions.Items[i]).ID then
//      if j=F.Slots.Count then
       begin
        Result:=i;
        Break;
       end;
  end;
end;

function TGRule.MakeACloneFrom(KB6,G2:TObject):Integer;
//mode 0 - new id; mode 1 - old id
var
 c,c1 : Integer;
 tmTemplate : TTemplate;
 tmSlot : TSlot;
 G1 : TGRule;
begin
try
  G1:=TGRule(G2);

  Name:=G1.Name;
  PackageName:=G1.PackageName;
  RootPackageName:=G1.RootPackageName;
  ShortName:=G1.ShortName;

  Description:=G1.Description;
  Actions.Clear;
   for c:=0 to G1.Actions.Count-1 do
    begin
     tmTemplate:=TTemplate.Create;
     //copy template
     tmTemplate.Init;
     tmTemplate.Name:=TTemplate(G1.Actions.Items[c]).Name;
     tmTemplate.ShortName:=TTemplate(G1.Actions.Items[c]).ShortName;
     tmTemplate.Description:=TTemplate(G1.Actions.Items[c]).Description;
     for c1:=0 to TTemplate(G1.Actions.Items[c]).Slots.Count-1 do
      begin
       tmSlot:=TSlot.Create;
       TKnowledgeBase(KB6).CopySlot(TSlot(TTemplate(G1.Actions.Items[c]).Slots.Items[c1]),
        tmSlot);
       tmTemplate.Slots.Add(tmSlot);
      end;
     Actions.Add(tmTemplate);
    end;
   Conditions.Clear;
   for c:=0 to G1.Conditions.Count-1 do
    begin
     tmTemplate:=TTemplate.Create;
     //copy template
     tmTemplate.Init;
     tmTemplate.Name:=TTemplate(G1.Conditions.Items[c]).Name;
     tmTemplate.ShortName:=TTemplate(G1.Conditions.Items[c]).ShortName;
     tmTemplate.Description:=TTemplate(G1.Conditions.Items[c]).Description;
     for c1:=0 to TTemplate(G1.Conditions.Items[c]).Slots.Count-1 do
      begin
       tmSlot:=TSlot.Create;
       TKnowledgeBase(KB6).CopySlot(TSlot(TTemplate(G1.Conditions.Items[c]).Slots.Items[c1]),
        tmSlot);
       tmTemplate.Slots.Add(tmSlot);
      end;
     Conditions.Add(tmTemplate);
    end;
  Result:=0;
 except
  Result:=-1;
 end;
end;

function TRule.MakeACloneFrom(KB6,R2:TObject):Integer;
var
 c : Integer;
 tmAction : TRAction;
 tmCondition : TCondition;
 R1 : TRule;
begin
 try
   R1:=TRule(R2);

   Name:=R1.Name;
   ShortName:=R1.ShortName;
//   PackageName:=R1.PackageName;
//   RootPackageName:=R1.RootPackageName;

   Description:=R1.Description;
   Salience:=R1.Salience;
   CF:=R1.CF;
   Actions.Clear;

   for c:=0 to R1.Actions.Count-1 do
    begin
     tmAction:=TRAction.Create;
     tmAction.Operator:=TRAction(R1.Actions.Items[c]).Operator;
     //copy fact
     tmAction.Fact:=TFact.Create;
     tmAction.Fact.Init;
     TKnowledgeBase(KB6).CopyFact(0,TRAction(R1.Actions.Items[c]).Fact,
      tmAction.Fact);
     Actions.Add(tmAction);
    end;
   Conditions.Clear;
   for c:=0 to R1.Conditions.Count-1 do
    begin
     tmCondition:=TCondition.Create;
     tmCondition.Operator:=TCondition(R1.Conditions.Items[c]).Operator;
     //copy fact
     tmCondition.Fact:=TFact.Create;
     tmCondition.Fact.Init;
     TKnowledgeBase(KB6).CopyFact(0,TCondition(R1.Conditions.Items[c]).Fact,
      tmCondition.Fact);
     Conditions.Add(tmCondition);
    end;
  Result:=0;
 except
  Result:=-1;
 end;
end;

function TKnowledgeBase.CopyRule(M:Integer; R1:TRule; var R2:TRule):Integer;
var
 c : Integer;
 tmAction : TRAction;
 tmCondition : TCondition;
begin
 try
   R2:=TRule.Create;
   R2.Init;
   if M=1 then R2.ID:=R1.ID
    else R2.ID:=NewID('R');
   if R2.ID='' then R2.ID:=NewID('R');

   R2.Name:=R1.Name;
   R2.ShortName:=R1.ShortName;
   R2.PackageName:=R1.PackageName;
   R2.RootPackageName:=R1.RootPackageName;
   R2.Description:=R1.Description;
   R2.CF:=R1.CF;
   R2.Salience:=R1.Salience;
   for c:=0 to R1.Actions.Count-1 do
    begin
     tmAction:=TRAction.Create;
     tmAction.Operator:=TRAction(R1.Actions.Items[c]).Operator;
     //copy fact
     tmAction.Fact:=TFact.Create;
     tmAction.Fact.Init;
     Self.CopyFact(0,TRAction(R1.Actions.Items[c]).Fact,
      tmAction.Fact);
     R2.Actions.Add(tmAction);
    end;
   for c:=0 to R1.Conditions.Count-1 do
    begin
     tmCondition:=TCondition.Create;
     tmCondition.Operator:=TCondition(R1.Conditions.Items[c]).Operator;
     //copy fact
     tmCondition.Fact:=TFact.Create;
     tmCondition.Fact.Init;
     CopyFact(0,TCondition(R1.Conditions.Items[c]).Fact,
      tmCondition.Fact);
     R2.Conditions.Add(tmCondition);
    end;
  Result:=0;
 except
  Result:=-1;
 end;
end;

function TKnowledgeBase.CopyTask(M:Integer; T1:TObject; var T2:TObject):Integer;
var
// c  : Integer;
 tmT1,tmT2 : TTask;
begin
try
 tmT2:=TTask.Create;
 tmT2.Init;

 tmT1:=TTask(T1);

 if M=1 then tmT2.ID:=tmT1.ID
  else tmT2.ID:=NewID('P');
 if tmT2.ID='' then tmT2.ID:=NewID('P');

 tmT2.Name:=tmT1.Name;
 tmT2.Description:=tmT1.Description;
 tmT2.PackageName:=tmT1.PackageName;
 tmT2.RootPackageName:=tmT1.RootPackageName;
 tmT2.Authors:=tmT1.Authors;
 tmT2.Creation_date:=tmT1.Creation_date;
 tmT2.Modification_date:=tmT1.Modification_date;
 tmT2.Logo_file:=tmT1.Logo_file;
 tmT2.task_Ver:=tmT1.task_Ver;
 tmT2.CBRPResults.Text:=tmT1.CBRPResults.Text;
 CopyFact(1,tmT1.F1,tmT2.F1);

 //!!!!!
 tmT2.K1:=tmT1.K1;
 tmT2.K2:=tmT1.K2;
 tmT2.DSST:=tmT1.DSST;
 Result:=0;

except
 tmT2.Name:='Error';
 Result:=-1;
end;
 T2:=tmT2;
end;

function TKnowledgeBase.CopyFact(M:Integer; F1:TFact; var F2:TFact):Integer;
var
 c  : Integer;
 tmSlot : TSlot;
begin
try
 F2:=TFact.Create;
 F2.Init;
 if M=1 then F2.ID:=F1.ID
  else F2.ID:=NewID('F');
 if F2.ID='' then F2.ID:=NewID('F');

 F2.Name:=F1.Name;
 F2.ShortName:=F1.ShortName;
 F2.PackageName:=F1.PackageName;
 F2.RootPackageName:=F1.RootPackageName;
 F2.Mode:=F1.Mode;
 for c:=0 to F1.Slots.Count-1 do
  begin
   tmSlot:=TSlot.Create;
   CopySlot(TSlot(F1.Slots.Items[c]),tmSlot);
   F2.Slots.Add(tmSlot);
  end;
 Result:=0;
except
 F2.Name:='Error';
 Result:=-1;
end;
end;
//--------------------------------------------------------------
function TKnowledgeBase.ReversingRules(LV:TRzCheckTree):Integer;
function ReversingRuleFromNode(K:TKnowledgeBase; Node:TTreeNode;
 i:Integer):Integer;
var
  tmR  : TRule;
  tmGR : TGRule;
begin
     if (TObject(Node.Data) is TGRule)then
      begin
        tmGR:=TGRule(Node.Data).Reverse;
        GRules.Insert(i,tmGR);
        GRules.Delete(i+1);
      end;
     if (TObject(Node.Data) is TRule)then
        begin
          tmR:=TRule(Node.Data).Reverse;
          Rules.Insert(i,tmR);
          Rules.Delete(i+1);
        end;
end;

var
  i,j,c,k : Integer;
  tmTs : TStringList;
begin
try
 tmTs:=TStringList.Create;
 for j:=0 to LV.Items.Item[0].Count-1 do
  for c:=0 to LV.Items.Item[0].Item[j].Count-1 do
   begin
   if LV.Items.Item[0].Item[j].Item[c].StateIndex=2 then
    begin
     ReversingRuleFromNode(Self,LV.Items.Item[0].Item[j].Item[c],c);
     //-------------------------------------------------------------------------
      for i:=0 to LV.Items.Item[0].Item[j].Item[c].Count-1 do
       begin
        if LV.Items.Item[0].Item[j].Item[c].Item[i].StateIndex=2 then
         begin
          ReversingRuleFromNode(Self,LV.Items.Item[0].Item[j].Item[c].Item[i],i);
         end;
        for k:=0 to LV.Items.Item[0].Item[j].Item[c].Item[i].Count-1 do
         if  LV.Items.Item[0].Item[j].Item[c].Item[i].Item[k].StateIndex=2 then
          begin
           ReversingRuleFromNode(Self,LV.Items.Item[0].Item[j].Item[c].Item[i].Item[k],k);
          end;
      end;
     //-------------------------------------------------------------------------
    end;
   end;
//  UpdateIDforGRules;
  Result:=0;
 except
  Result:=-1;
 end;
end;
//--------------------------------------------------------------
function TKnowledgeBase.CopyRFT_V2(LV:TRzCheckTree):Integer;
function CopyNode(K:TKnowledgeBase; Node:TTreeNode):Integer;
var
  tmRule  : TRule;
  tmFact  : TFact;
  tmTemplate  : TTemplate;
  tmGRule : TGRule;
  tmPkg : TTmObj;
  tmTask : TTask;
begin
     if (TObject(Node.Data) is TGRule)then
      begin
        K.CopyGRule(0,TGRule(Node.Data),tmGRule);
        K.GRules.Add(tmGRule);
      end;
     if (TObject(Node.Data) is TRule)then
      begin
        K.CopyRule(0,TRule(Node.Data),tmRule);
        K.Rules.Add(tmRule);
      end;
     if (TObject(Node.Data) is TFact)then
      begin
        K.CopyFact(0,TFact(Node.Data),tmFact);
        K.Facts.Add(tmFact);
      end;
     if (TObject(Node.Data) is TTask)then
      begin
        K.CopyTask(0,TObject(Node.Data),TObject(tmTask));
        K.Tasks.Add(tmTask);
      end;
     if (TObject(Node.Data) is TTemplate)then
      begin
        K.CopyTemplate(0,TTemplate(Node.Data),tmTemplate);
        K.Templates.Add(tmTemplate);
      end;
     if (TObject(Node.Data) is TTmObj)then
      case TTmObj(Node.Data).ID2 of
       0: begin
         K.CopyPkg(TTmObj(Node.Data),tmPkg);
         K.TempPackageList.AddObject(
          TTmObj(Node.Data).ID+'='+
           Node.Text,tmPkg
            );
        end;
       1: begin
         K.CopyPkg(TTmObj(Node.Data),tmPkg);
         K.FactPackageList.AddObject(
          TTmObj(Node.Data).ID+'='+
           Node.Text,tmPkg
            );
        end;
       2: begin
         K.CopyPkg(TTmObj(Node.Data),tmPkg);
         K.GRulePackageList.AddObject(
          TTmObj(Node.Data).ID+'='+
           Node.Text,tmPkg
            );
        end;
       3: begin
         K.CopyPkg(TTmObj(Node.Data),tmPkg);
         K.RulePackageList.AddObject(
          TTmObj(Node.Data).ID+'='+
           Node.Text,tmPkg
            );
        end;
      end;
end;

var
  i,j,c,k : Integer;
  tmTs : TStringList;
begin
try
 tmTs:=TStringList.Create;

 for j:=0 to LV.Items.Item[0].Count-1 do
  for c:=0 to LV.Items.Item[0].Item[j].Count-1 do
   begin
   if LV.Items.Item[0].Item[j].Item[c].StateIndex=2 then
    begin
     CopyNode(Self,LV.Items.Item[0].Item[j].Item[c]);
//     if (TObject(RzCheckTree1.Items.Item[0].Item[j].Item[c].Data) is TFunct)then
//      if(RzCheckTree1.Items.Item[0].Item[j].Item[c].StateIndex=2) then L5:=L5+'1' else L5:=L5+'0';
//     if (TObject(RzCheckTree1.Items.Item[0].Item[j].Item[c].Data) is TTask)then
//      if(RzCheckTree1.Items.Item[0].Item[j].Item[c].StateIndex=2) then L5:=L5+'1' else L5:=L5+'0';

     //-------------------------------------------------------------------------
      for i:=0 to LV.Items.Item[0].Item[j].Item[c].Count-1 do
       begin
        if LV.Items.Item[0].Item[j].Item[c].Item[i].StateIndex=2 then
         begin
          CopyNode(Self,LV.Items.Item[0].Item[j].Item[c].Item[i]);
         end;
        for k:=0 to LV.Items.Item[0].Item[j].Item[c].Item[i].Count-1 do
         if  LV.Items.Item[0].Item[j].Item[c].Item[i].Item[k].StateIndex=2 then
          begin
           CopyNode(Self,LV.Items.Item[0].Item[j].Item[c].Item[i].Item[k]);
          end;
      end;
     //-------------------------------------------------------------------------
    end;
   end;
  UpdateIDforGRules;
  Result:=0;
 except
  Result:=-1;

 end;
end;
//------------------------------------------------------------------------------
Function TFact.Print(Wrd:variant;F:Integer):Integer;
var
 myRange,WordTable : variant;
 j : integer;
begin
//    Facts:=KB.Facts[i];
    Wrd.ActiveDocument.Range(Wrd.ActiveDocument.Range.end-1,Wrd.ActiveDocument.Range.end-1).Select;
    Wrd.Selection.TypeText(#13#10);
//  Word.ActiveDocument.Range.insertAfter('eer');
//    Word.Selection.ParagraphFormat.Alignment := 1;


    Wrd.Selection.Font.Size:=12;
    Wrd.Selection.Font.Bold := True;
    Wrd.Selection.TypeText('Name: ');
    Wrd.Selection.Font.Bold := False;
    Wrd.Selection.TypeText(Name+#13);

    //============================????????? ????? ????? ? ?????===============
//    Wrd.Selection.Font.Bold:=True;
//    Wrd.Selection.TypeText('Slots:'+#13);
//    Wrd.Selection.Font.Bold:=False;
//    Wrd.Selection.ParagraphFormat.LeftIndent := '15';
//    Slots:=TSlot.Create;

    myRange:=Wrd.ActiveDocument.Range(Wrd.ActiveDocument.Range.end-1,Wrd.ActiveDocument.Range.end-1);
    if Slots.Count>0 then
    begin
      Wrd.ActiveDocument.Tables.Add(myRange, Slots.Count+1, 2);
      WordTable:=Wrd.ActiveDocument.Tables.Item(Wrd.ActiveDocument.Tables.Count);
      WordTable.Style:='????? ???????'; // ????? ????????? ????? ?????, ????????? ? Word
      WordTable.Cell(1, 1).Range.Text:='Slot name';
      WordTable.Cell(1, 2).Range.Text:='Value';
    end;
    for j:=0 to Slots.Count-1 do
    begin
     TSlot(Slots.Items[j]).Print(WordTable,j,F);
//      Slots:=Facts.Slots[j];
//      WordTable.Cell(j+2, 1).Range.Text:=Slots.Name;
//      WordTable.Cell(j+2, 2).Range.Text:=Slots.Description;
    end;
end;
//------------------------------------------------------------------------------
Function TFact.PrintV2(Wrd:variant;lineNum:Integer):Integer;
var
 j : integer;
begin
   Wrd.Cell(lineNum,1).Range.Font.Bold:=False;
   Wrd.Cell(lineNum,1).Range.Text:=ID;
   for j:=0 to Slots.Count-1 do
    begin
     Wrd.Cell(lineNum,j+2).Range.Font.Bold:=False;
     Wrd.Cell(lineNum,j+2).Range.Text:=TSlot(Slots.Items[j]).Value;
    end;
end;
//------------------------------------------------------------------------------
Function TSlot.Print(WordTable:Variant;j:Integer;F:integer):Integer;
begin
 try
  WordTable.Cell(1, 1).Range.Font.Bold:=True;
  WordTable.Cell(1, 2).Range.Font.Bold:=True;
  WordTable.Cell(j+2, 1).Range.Text:=Name;
  WordTable.Cell(j+2, 2).Range.Text:=Value;
  if F=1 then
   begin
    WordTable.Cell(1, 3).Range.Font.Bold:=True;
    WordTable.Cell(j+2, 3).Range.Text:=Description;
   end;
 except
 end;
end;
//------------------------------------------------------------------------------
Function TTemplate.Print(Wrd:Variant):Integer;
var
 myRange,WordTable : Variant;
 j : Integer;
begin
 try
//    Template:=KB.Templates[i];
    Wrd.ActiveDocument.Range(Wrd.ActiveDocument.Range.end-1,Wrd.ActiveDocument.Range.end-1).Select;
    Wrd.Selection.TypeText(#13#10);

    Wrd.Selection.Font.Size := 12;
    Wrd.Selection.Font.Bold := True;
    Wrd.Selection.TypeText('ID: ');
    Wrd.Selection.Font.Bold := False;
    Wrd.Selection.TypeText(ID+#13#10);
    Wrd.Selection.Font.Bold := True;
    Wrd.Selection.TypeText('Name: ');
    Wrd.Selection.Font.Bold := False;
    Wrd.Selection.TypeText(Name+#13#10);
    Wrd.Selection.Font.Bold := True;
    Wrd.Selection.TypeText('Description: ');
    Wrd.Selection.Font.Bold := False;
    Wrd.Selection.TypeText(Description+#13#10);
    //============================????????? ????? ??????? ? ?????===============
//    Wrd.Selection.Font.Bold := True;
//    Wrd.Selection.TypeText('Slots:'+#13);
//    Wrd.Selection.Font.Bold := False;

    myRange:=Wrd.ActiveDocument.Range(Wrd.ActiveDocument.Range.end-1,Wrd.ActiveDocument.Range.end-1);
    if Slots.Count>0 then
    begin
      Wrd.ActiveDocument.Tables.Add(myRange, Slots.Count+1, 3);
      WordTable:=Wrd.ActiveDocument.Tables.Item(Wrd.ActiveDocument.Tables.Count);
      WordTable.Style:='????? ???????'; // ????? ????????? ????? ?????, ????????? ? Word
      WordTable.Cell(1, 1).Range.Text:='Slot name';
      WordTable.Cell(1, 2).Range.Text:='Possible value';
      WordTable.Cell(1, 3).Range.Text:='Description';
    end;
    for j:=0 to Slots.Count-1 do
    begin
     TSlot(Slots[j]).Print(WordTable,j,1);
    end;
 except

 end;
end;
//------------------------------------------------------------------------------
Function TKnowledgeBase.CreateReportV4(Vis : Boolean; FileName: WideString):WideString;
Function GetFactCntForTemplate(tmTs:TstringList;tID:String):integer;
var
 i : Integer;
begin
 Result:=0;
 for i := 0 to tmTs.Count-1 do
  if tmTs.Names[i]=tID then Inc(Result);
end;

var
 i, j, j1, j2: integer;
 WordTable, myRange, Wrd: Variant;
 tmTs : TStringlist;
 s : String;

begin
 try
  Wrd:=CreateOleObject('Word.Application');
  Wrd.Visible:=Vis;

  Wrd.Documents.Add;
  Wrd.Documents.Item(1).Activate;

  Wrd.Selection.ParagraphFormat.LineUnitAfter := 0.01;
  Wrd.Selection.ParagraphFormat.LineUnitBefore := 0.01;

  Wrd.Selection.Font.Size := 13;
  Wrd.Selection.Font.Bold:=True;
  Wrd.Selection.ParagraphFormat.Alignment := 1;
  Wrd.Selection.TypeText('Knowledge base: '#13#10);

  Wrd.Selection.Font.Size := 12;
  Wrd.Selection.Font.Bold := True;
  Wrd.Selection.ParagraphFormat.Alignment := 0;
  Wrd.Selection.TypeText('Name: ');
  Wrd.Selection.Font.Bold := False;
  Wrd.Selection.TypeText(Name+#13#10);
  Wrd.Selection.Font.Bold := True;
  Wrd.Selection.TypeText('Description: ');
  Wrd.Selection.Font.Bold := False;
  Wrd.Selection.TypeText(Description+#13#10);

  //====================================????????? ??????? ? ?????===============
  Wrd.Selection.ParagraphFormat.Alignment := 1;
  Wrd.Selection.TypeText(#13#10);
  Wrd.Selection.Font.Size := 13;
  Wrd.Selection.Font.Bold:=True;
  Wrd.Selection.TypeText('Fact templates:'#13#10);
  Wrd.Selection.Font.Bold := False;

  Wrd.Selection.ParagraphFormat.Alignment:=0;
  for i:=0 to Templates.Count-1 do
  begin
   TTemplate(Templates[i]).Print(Wrd);

   prP.Caption:='Processing: Templates'+' ('+
     IntToStr(Round(100*i/Templates.Count))
     +'%)';
   Application.ProcessMessages;
  end;

  if Templates.Count=0 then
   begin
    Wrd.Selection.TypeText('No data'#13);
   end;
  //====================================????????? ????? ? ?????=================
  Wrd.ActiveDocument.Range(Wrd.ActiveDocument.Range.end-1,Wrd.ActiveDocument.Range.end-1).Select;
  Wrd.Selection.ParagraphFormat.Alignment := 1;

  Wrd.Selection.TypeText(#13#10);
  Wrd.Selection.Font.Size:=13;
  Wrd.Selection.Font.Bold:=True;
  Wrd.Selection.TypeText('Facts:'#13);
  Wrd.Selection.Font.Bold:=False;

  Wrd.Selection.ParagraphFormat.Alignment := 0;
  tmTs:=TstringList.Create;

  for i:=0 to Facts.Count-1 do
   tmTs.Add(IntToStr(IndexOfTemplateV3(TFact(Facts.Items[i])))+
    '='+IntToStr(i));
  tmTs.Sort;

  s:='';
  for i:=0 to tmTs.Count-1 do
  begin
    j2:=StrtoInt(tmTs.ValueFromIndex[i]);
    if s<>tmTs.Names[i] then
     begin
      //create table
      s:=tmTs.Names[i];
      j:=GetFactCntForTemplate(tmTs,s);
      j1:=0;

      Wrd.ActiveDocument.Range(Wrd.ActiveDocument.Range.end-1,Wrd.ActiveDocument.Range.end-1).Select;
      Wrd.Selection.Font.Size := 12;
      Wrd.Selection.Font.Bold := True;
      Wrd.Selection.ParagraphFormat.Alignment := 0;
      Wrd.Selection.TypeText('Facts based on template: ');
      Wrd.Selection.Font.Bold := False;
      Wrd.Selection.TypeText(TTemplate(Templates.Items[StrtoInt(s)]).ID+#13#10);

      myRange:=Wrd.ActiveDocument.Range(Wrd.ActiveDocument.Range.end-1,Wrd.ActiveDocument.Range.end-1);

      Wrd.ActiveDocument.Tables.Add(myRange,j+1,
        TFact(Facts.Items[j2]).Slots.Count+1);
      WordTable:=Wrd.ActiveDocument.Tables.Item(Wrd.ActiveDocument.Tables.Count);
      WordTable.Style:='????? ???????'; // ????? ????????? ????? ?????, ????????? ? Word

      WordTable.Cell(1, 1).Range.Font.Bold := True;
      WordTable.Cell(1, 1).Range.Text:='ID';
      for j:=0 to TFact(Facts.Items[j2]).Slots.Count-1 do
       begin
        WordTable.Cell(1, j+2).Range.Font.Bold := True;
        WordTable.Cell(1, j+2).Range.Text:=
         TSlot(TFact(Facts.Items[j2]).Slots.Items[j]).Name;
       end;
     end;
   inc(j1);
   TFact(Facts.Items[j2]).PrintV2(WordTable,j1+1);
   prP.Caption:='Processing: Facts'+' ('+
     IntToStr(Round(100*i/Facts.Count))
     +'%)';
   Application.ProcessMessages;
  end;

  if Facts.Count=0 then
   begin
    Wrd.Selection.TypeText('No data'#13);
   end;

  //====================================????????? ?????????? ??????? ? ?????===============
  Wrd.ActiveDocument.Range(Wrd.ActiveDocument.Range.end-1,Wrd.ActiveDocument.Range.end-1).Select;
  Wrd.Selection.TypeText(#13#10);
  Wrd.Selection.ParagraphFormat.Alignment := 1;
  Wrd.Selection.Font.Size:=13;
  Wrd.Selection.Font.Bold:=True;
  Wrd.Selection.TypeText('Rule templates: '+#13#10);
  Wrd.Selection.Font.Bold:=False;

  for i:=0 to GRules.Count-1 do
  begin
    Wrd.ActiveDocument.Range(Wrd.ActiveDocument.Range.end-1,Wrd.ActiveDocument.Range.end-1).Select;
    Wrd.Selection.ParagraphFormat.Alignment := 0;
//   Wrd.Selection.ParagraphFormat.LeftIndent := '0';

    Wrd.Selection.TypeText(#13#10);
    Wrd.Selection.Font.Size:=12;
    Wrd.Selection.Font.Bold := True;
    Wrd.Selection.TypeText('ID: ');
    Wrd.Selection.Font.Bold := False;
    Wrd.Selection.TypeText(TGRule(GRules.Items[i]).ID+#13#10);
    Wrd.Selection.Font.Bold:=True;
    Wrd.Selection.TypeText('Name: ');
    Wrd.Selection.Font.Bold:=False;
    Wrd.Selection.TypeText(TGRule(GRules.Items[i]).Name+#13#10);
    Wrd.Selection.Font.Bold:=True;
    Wrd.Selection.TypeText('Description: ');
    Wrd.Selection.Font.Bold:=False;
    Wrd.Selection.TypeText(TGRule(GRules.Items[i]).Description+#13#10);

    myRange:=Wrd.ActiveDocument.Range(Wrd.ActiveDocument.Range.end-1,Wrd.ActiveDocument.Range.end-1);

    Wrd.ActiveDocument.Tables.Add(myRange,2,2);
    WordTable:=Wrd.ActiveDocument.Tables.Item(Wrd.ActiveDocument.Tables.Count);
    WordTable.Style:='????? ???????'; // ????? ????????? ????? ?????, ????????? ? Word

    WordTable.Cell(1, 1).Range.Font.Bold := True;
    WordTable.Cell(1, 1).Range.Text:='Conditions:';
    WordTable.Cell(1, 2).Range.Font.Bold := True;
    WordTable.Cell(1, 2).Range.Text:='Actions:';

    //============================????????? ??????? ??????? ? ?????=============
//    Wrd.Selection.Font.Bold:=True;
//    Wrd.Selection.TypeText('Conditions:'+#13#10);
//    Wrd.Selection.Font.Bold:=False;
//    Wrd.Selection.ParagraphFormat.LeftIndent := '15';
    tmTs.Clear;
    for j:=0 to TGRule(GRules.Items[i]).Conditions.Count-1 do
    begin
//      Wrd.Selection.Font.Bold:=True;
//      Wrd.Selection.TypeText('Fact template: ');
//      Wrd.Selection.Font.Bold:=False;
      tmTs.add(TTemplate(TGRule(GRules.Items[i]).Conditions.Items[j]).Name+' (ID:'+
       TTemplate(TGRule(GRules.Items[i]).Conditions.Items[j]).ID+')');
//      Wrd.Selection.TypeText(TTemplate(TGRule(GRules.Items[i]).Conditions.Items[j]).Name+#13#10);
    end;

    WordTable.Cell(2, 1).Range.Font.Bold := False;
    WordTable.Cell(2, 1).Range.Text:=Trim(tmTs.Text);
//     TSlot(TFact(Facts.Items[j2]).Slots.Items[j]).Name;

//    Wrd.Selection.ParagraphFormat.LeftIndent := '0';
    //===========================????????? ???????? ??????? ? ?????=============
//    Wrd.Selection.Font.Bold:=True;
//    Wrd.Selection.TypeText('Actions: '+#13#10);
//    Wrd.Selection.Font.Bold:=False;
//    Wrd.Selection.ParagraphFormat.LeftIndent := '15';
    tmTs.Clear;
    for j:=0 to TGRule(GRules.Items[i]).Actions.Count-1 do
    begin
//      Wrd.Selection.ParagraphFormat.LeftIndent := '15';

//      Wrd.Selection.Font.Bold:=True;
//      Wrd.Selection.TypeText('Fact template: ');
//      Wrd.Selection.Font.Bold:=False;
      tmTs.add(TTemplate(TGRule(GRules.Items[i]).Actions.Items[j]).Name+' (ID:'+
       TTemplate(TGRule(GRules.Items[i]).Actions.Items[j]).ID+')');
//      Wrd.Selection.TypeText(TTemplate(TGRule(GRules.Items[i]).Actions.Items[j]).Name+#13#10);
    end;
//    Wrd.Selection.ParagraphFormat.LeftIndent := '0';
    WordTable.Cell(2, 2).Range.Font.Bold := False;
    WordTable.Cell(2, 2).Range.Text:=Trim(tmTs.Text);

   prP.Caption:='Processing: Rule templates'+' ('+
     IntToStr(Round(100*i/GRules.Count))
     +'%)';
   Application.ProcessMessages;
  end;
  if GRules.Count=0 then
   begin
    Wrd.Selection.TypeText('No data'#13);
   end;

  //====================================????????? ??????? ? ?????===============
  Wrd.ActiveDocument.Range(Wrd.ActiveDocument.Range.end-1,Wrd.ActiveDocument.Range.end-1).Select;
  Wrd.Selection.TypeText(#13#10);
  Wrd.Selection.ParagraphFormat.Alignment := 1;
  Wrd.Selection.Font.Size:=13;
  Wrd.Selection.Font.Bold:=True;
  Wrd.Selection.TypeText('Rules: '+#13#10);
  Wrd.Selection.Font.Bold:=False;

  for i:=0 to Rules.Count-1 do
  begin
    Wrd.Selection.ParagraphFormat.Alignment := 0;

    Wrd.Selection.TypeText(#13#10);
    Wrd.Selection.Font.Size:=12;
     Wrd.Selection.Font.Bold := True;
    Wrd.Selection.TypeText('ID: ');
    Wrd.Selection.Font.Bold := False;
    Wrd.Selection.TypeText(TRule(Rules.Items[i]).ID+#13#10);
    Wrd.Selection.Font.Bold:=True;
    Wrd.Selection.TypeText('Name: ');
    Wrd.Selection.Font.Bold:=False;
    Wrd.Selection.TypeText(TRule(Rules.Items[i]).Name+#13#10);
    Wrd.Selection.Font.Bold:=True;
    Wrd.Selection.TypeText('Description: ');
    Wrd.Selection.Font.Bold:=False;
    Wrd.Selection.TypeText(TRule(Rules.Items[i]).Description+#13#10);

    //============================????????? ??????? ??????? ? ?????=============
    Wrd.Selection.Font.Bold:=True;
    Wrd.Selection.TypeText(#13+'Conditions:'+#13#10);
    Wrd.Selection.Font.Bold:=False;
//    Wrd.Selection.ParagraphFormat.LeftIndent := '15';
    for j:=0 to TRule(Rules.Items[i]).Conditions.Count-1 do
    begin
      Wrd.Selection.TypeText('Operation: '+TCondition(TRule(Rules.Items[i]).Conditions.Items[j]).Operator);
      Wrd.ActiveDocument.Range(Wrd.ActiveDocument.Range.end-1,Wrd.ActiveDocument.Range.end-1).Select;

      TCondition(TRule(Rules.Items[i]).Conditions.Items[j]).Fact.Print(Wrd,1);
      Wrd.ActiveDocument.Range(Wrd.ActiveDocument.Range.end-1,Wrd.ActiveDocument.Range.end-1).Select;
    end;
//    Wrd.Selection.ParagraphFormat.LeftIndent := '0';
    //===========================????????? ???????? ??????? ? ?????=============
    Wrd.Selection.Font.Bold:=True;
    Wrd.Selection.TypeText(#13+'Actions: '+#13#10);
    Wrd.Selection.Font.Bold:=False;
//    Wrd.Selection.ParagraphFormat.LeftIndent := '15';
    for j:=0 to TRule(Rules.Items[i]).Actions.Count-1 do
    begin
      Wrd.Selection.TypeText('Operation: '+TRAction(TRule(Rules.Items[i]).Actions.Items[j]).Operator);
      Wrd.ActiveDocument.Range(Wrd.ActiveDocument.Range.end-1,Wrd.ActiveDocument.Range.end-1).Select;
      TRAction(TRule(Rules.Items[i]).Actions.Items[j]).Fact.Print(Wrd,1);
      Wrd.ActiveDocument.Range(Wrd.ActiveDocument.Range.end-1,Wrd.ActiveDocument.Range.end-1).Select;
    end;
//    Wrd.Selection.ParagraphFormat.LeftIndent := '0';

   prP.Caption:='Processing: Rules'+' ('+
     IntToStr(Round(100*i/Rules.Count))
     +'%)';
   Application.ProcessMessages;
  end;
  if Rules.Count=0 then
   begin
    Wrd.Selection.TypeText('No data'#13);
   end;

  Result:='';
 except
  Result:='-1';
 end;
 if Vis=False then Wrd.Visible:=True;
 if FileName<>'' then
  Wrd.Activedocument.SaveAs(FileName);
  MainForm.MMessageBox(0,0,'0=Report is created');
end;
//------------------------------------------------------------------------------
function TKnowledgeBase.CopyRFT_V3(K1:TKnowledgeBase):Integer;
function CopyNode(K:TKnowledgeBase; Obj:TObject):Integer;
var
  tmRule  : TRule;
  tmFact  : TFact;
  tmTemplate  : TTemplate;
  tmGRule : TGRule;
  tmPkg : TTmObj;
begin
     if (TObject(Obj) is TGRule)then
      begin
        K.CopyGRule(0,TGRule(Obj),tmGRule);
        K.GRules.Add(tmGRule);
      end;
     if (TObject(Obj) is TRule)then
      begin
        K.CopyRule(0,TRule(Obj),tmRule);
        K.Rules.Add(tmRule);
      end;
     if (TObject(Obj) is TFact)then
      begin
        K.CopyFact(0,TFact(Obj),tmFact);
        K.Facts.Add(tmFact);
      end;
     if (TObject(Obj) is TTemplate)then
      begin
        K.CopyTemplate(0,TTemplate(Obj),tmTemplate);
        K.Templates.Add(tmTemplate);
      end;
     if (TObject(Obj) is TTmObj)then
      case TTmObj(Obj).ID2 of
       0: begin
         K.CopyPkg(TTmObj(Obj),tmPkg);
         K.TempPackageList.AddObject(
          TTmObj(Obj).ID+'='+
           TTmObj(Obj).Name,tmPkg
            );
        end;
       1: begin
         K.CopyPkg(TTmObj(Obj),tmPkg);
         K.FactPackageList.AddObject(
          TTmObj(Obj).ID+'='+
           TTmObj(Obj).Name,tmPkg
            );
        end;
       2: begin
         K.CopyPkg(TTmObj(Obj),tmPkg);
         K.GRulePackageList.AddObject(
          TTmObj(Obj).ID+'='+
           TTmObj(Obj).Name,tmPkg
            );
        end;
       3: begin
         K.CopyPkg(TTmObj(Obj),tmPkg);
         K.RulePackageList.AddObject(
          TTmObj(Obj).ID+'='+
           TTmObj(Obj).Name,tmPkg
            );
        end;
      end;
end;

var
  i : Integer;
begin
try
 for i := 0 to K1.Templates.Count-1 do
  CopyNode(Self,TTemplate(K1.Templates.Items[i]));
 for i := 0 to K1.Facts.Count-1 do
  CopyNode(Self,TFact(K1.Facts.Items[i]));
 for i := 0 to K1.Rules.Count-1 do
  CopyNode(Self,TRule(K1.Rules.Items[i]));
 for i := 0 to K1.GRules.Count-1 do
  CopyNode(Self,TGRule(K1.GRules.Items[i]));

 //pkg
 for i := 0 to K1.TempPackageList.Count-1 do
  CopyNode(Self,TTmObj(K1.TempPackageList.Objects[i]));
 for i := 0 to K1.FactPackageList.Count-1 do
  CopyNode(Self,TTmObj(K1.FactPackageList.Objects[i]));
 for i := 0 to K1.GRulePackageList.Count-1 do
  CopyNode(Self,TTmObj(K1.GRulePackageList.Objects[i]));
 for i := 0 to K1.RulePackageList.Count-1 do
  CopyNode(Self,TTmObj(K1.RulePackageList.Objects[i]));

  Result:=0;
 except
  Result:=-1;
 end;
end;
//--------------------------------------------------------------------------------
function TKnowledgeBase.GetHashForFacts:Integer;
var
 i : Integer;
begin
 for i := 0 to Facts.Count-1 do
  TFact(Facts.Items[i]).GetHash;
end;
//--------------------------------------------------------------------------------
function TKnowledgeBase.GetHashForRules:Integer;
var
 i : Integer;
begin
 for i := 0 to Rules.Count-1 do
  TRule(Rules.Items[i]).GetHash(1);
end;
//--------------------------------------------------------------------------------
//clear duplicatedRules
function TKnowledgeBase.ClearDuplicatedRules:Integer;
var
 i,j : Integer;
begin
  for i := 0 to Rules.Count-1 do
   for j := Rules.Count-1 downto i+1 do
    if TRule(Rules.Items[i]).Hash = TRule(Rules.Items[j]).Hash then
     Rules.Delete(j);
end;
//--------------------------------------------------------------------------------
function TKnowledgeBase.CopyRFT(KB1:TKnowledgeBase; RL,FL,TL,VL,FuL:String):Integer;
var
  i: integer;
//  c,c1 : Integer;
  tmRule  : TRule;
  tmFact  : TFact;
  tmTemplate  : TTemplate;
//  tmSlot  : TSlot;
 // tmAction  : TRAction;
//  tmCondition : TCondition;
//  tmGV  : TGlobalVar;
//  tmFunct : TFunct;
//  tmAr  : TArgument;
  tmTask : TTask;
  tmGRule : TGRule;
begin
if (RL<>'')or(FL<>'')or(TL<>'')or(VL<>'')or(FuL<>'')then
 try
{  for i:=0 to KB1.Vars.Count-1 do
   if (VL[i+1]='1') then
   begin
    tmGV:=TGlobalVar.Create;
    tmGV.Name:=TGlobalVar(KB1.Vars.Items[i]).Name;
    tmGV.ShortName:=TGlobalVar(KB1.Vars.Items[i]).ShortName;
    tmGV.ID:=TGlobalVar(KB1.Vars.Items[i]).ID;
    tmGV.Description:=TGlobalVar(KB1.Vars.Items[i]).Description;
    tmGV.DataType:=TGlobalVar(KB1.Vars.Items[i]).DataType;
    tmGV.Value:=TGlobalVar(KB1.Vars.Items[i]).Value;
    Self.Vars.Add(tmGV);
   end;
}
  for i:=0 to KB1.GRules.Count-1 do
   if (VL[i+1]='1') then
   begin
    Self.CopyGRule(0,TGRule(KB1.GRules.Items[i]),tmGRule);
    Self.GRules.Add(tmGRule);
   end;

  for i:=0 to KB1.Rules.Count-1 do
   if (RL[i+1]='1') then
    begin
     Self.CopyRule(0,TRule(KB1.Rules.Items[i]),tmRule);
     Self.Rules.Add(tmRule);
    end;
  //load facts
  for i:=0 to KB1.Facts.Count-1 do
   if (FL[i+1]='1') then
    begin
     Self.CopyFact(0,TFact(KB1.Facts.Items[i]),tmFact);
     Self.Facts.Add(tmFact);
    end;
  //load templates
  for i:=0 to KB1.Templates.Count-1 do
   if (TL[i+1]='1') then
    begin
     Self.CopyTemplate(0,TTemplate(KB1.Templates.Items[i]),tmTemplate);
     Self.Templates.Add(tmTemplate);
    end;
  {
  //load functions
  for i:=0 to KB1.Functions.Count-1 do
   if (FuL[i+1]='1') then
    begin
     tmFunct:=TFunct.Create;
     tmFunct.Init;
     tmFunct.ID:=NewID('U');
     tmFunct.Name:=TFunct(KB1.Functions.Items[i]).Name;
     tmFunct.ShortName:=TFunct(KB1.Functions.Items[i]).ShortName;
     tmFunct.Description:=TFunct(KB1.Functions.Items[i]).Description;
     tmFunct.DataType:=TFunct(KB1.Functions.Items[i]).DataType;
     tmFunct.Body:=TFunct(KB1.Functions.Items[i]).Body;
     for c:=0 to TFunct(KB1.Functions.Items[i]).Args.Count-1 do
      begin
       tmAr:=TArgument.Create;
       Self.CopyArgument(TArgument(TFunct(KB1.Functions.Items[i]).Args.Items[c]),
        tmAr);
       tmFunct.Args.Add(tmAr);
      end;
     Self.Functions.Add(tmFunct);
    end;
  }
  //load tasks
  for i:=0 to KB1.Tasks.Count-1 do
   if (FuL[i+1]='1') then
    begin
     tmTask:=TTask.Create;
     tmTask.Init;
     tmTask.ID:=NewID('P');
     tmTask.Name:=TTask(KB1.Tasks.Items[i]).Name;

     tmTask.Description:=TTask(KB1.Tasks.Items[i]).Description;
     tmTask.CBRPResults.Text:=TTask(KB1.Tasks.Items[i]).CBRPResults.Text;
     tmTask.F1:=TTask(KB1.Tasks.Items[i]).F1;
     tmTask.K1:=TTask(KB1.Tasks.Items[i]).K1;

     Self.Tasks.Add(tmTask);
    end;

  Result:=0;
 except
  Self.Name:=Self.Name+' [Error]';
  Result:=-1;
 end
else
 begin
  Result:=-2;
 end;
end;

function TKnowledgeBase.SaveAs(dllName,fName:String):Integer;
type
 TMethod = Function (KB: TObject):WideString; stdcall;
var
 i: integer;
 LMethod:TMethod;
 s  : String;
 kodeKB: TStringList;
begin
 kodeKB:=TStringList.Create;
 s:=dllName;
// s:=ExtractFileDir(Application.ExeName);
// if dllName='CLIPS' then s:=s+'/Dll/CLIPSS.Dll';
 try
  i:=LoadLibrary(PChar(s));
  if i<>0 then
   begin
    LMethod:=Windows.GetProcAddress(i,PChar('GetKnowledgeBaseInfo'));
    if Assigned(LMethod)then
     kodeKB.Text:=LMethod(Self);
   end;
  Result:=0;
 except
  kodeKB.Text:='[Error]';
  Result:=-1;
 end;
  kodeKB.SaveToFile(fName);
end;
//--------------------------------------------------------------------------
function TKnowledgeBase.LoadFromCXLFile(dllName,fName:String):Integer;
type
 TMethod = Function (FN:ShortString;gF:Integer):TObject; stdcall;
var
 i: integer;
 LMethod:TMethod;
 s  : String;
 tmKB : TKnowledgeBase;
 L1,L2,L3,L4,L5 : String;
begin
 Vars.Clear;
 Rules.Clear;
 GRules.Clear;
 Facts.Clear;
 Templates.Clear;
 Functions.Clear;
 L1:='';L2:='';L3:='';L4:='';L5:='';
 s:=dllName;
 try
  i:=LoadLibrary(PChar(s));
  if i<>0 then
   begin
    LMethod:=Windows.GetProcAddress(i,PChar('Execute'));
    if Assigned(LMethod)then
     begin
      tmKB:=TKnowledgeBase(LMethod(fName,3));

      tmKb.GetGRules;
      for i:=0 to tmKb.Rules.Count-1 do
       L1:=L1+'1';
      for i:=0 to tmKb.Facts.Count-1 do
       L2:=L2+'1';
      for i:=0 to tmKb.Templates.Count-1 do
       L3:=L3+'1';
  //    for i:=0 to tmKb.Vars.Count-1 do
      for i:=0 to tmKb.GRules.Count-1 do
       L4:=L4+'1';
      for i:=0 to tmKb.Functions.Count-1 do
       L5:=L5+'1';
      Self.CopyRFT(tmKb,L1,L2,L3,L4,L5);
     end;
   end;
  Result:=0;
 except
  Result:=-1;
 end;
end;
//--------------------------------------------------------------------------
function TKnowledgeBase.SaveToCmapTools(dllName,fName:String):Integer;
type
 TMethod = Function (EKB_file,XML_file: WideString):WideString; stdcall;
var
 i: integer;
 LMethod:TMethod;
 s  : String;
 kodeKB: TStringList;
{
  i, j: integer;//????????? ?????
  countCl,countAttr,countAss: integer; //??????? ??????? ??? ??????? ? ????????
  XMLDocument1: TXMLDocument;  }
begin
 kodeKB:=TStringList.Create;
 s:=dllName;

 try
  i:=LoadLibrary(PChar(s));
  if i<>0 then
   begin
    LMethod:=Windows.GetProcAddress(i,PChar('Execute'));
    if Assigned(LMethod)then
     begin
      XmlSave.GXMLStrSF(ExtractFileDir(Application.ExeName)+'/Data/dll_ekb.tmp',Self);
      kodeKB.Text:=LMethod(
       ExtractFileDir(Application.ExeName)+'/Data/dll_ekb.tmp',
        fName);
     end;
   end;
  Result:=0;
 except
//  kodeKB.Text:='[Error]';
  Result:=-1;
 end;
//  kodeKB.SaveToFile(fName);
end;
//--------------------------------------------------------------------------
function TKnowledgeBase.SaveToStarUml(fName:String):Integer;
var
 tKB : TKnowledgeBase;
 XMLDocument2 : TXMLDocument;
 XmlRoot:array[0..20]of IXMLNode;
 i,j,k,k1,k2 : Integer;
 tmT : TTemplate;
// tmGR : TGRule;
 s,s1 : ShortString;
begin
 tKB:=Self;
 XMLDocument2:=TXMLDocument.Create(nil);

  with XMLDocument2 do begin
    Active:=true;
    Version:='1.0';
    Encoding:='UTF-8';
    DocumentElement:=AddChild('XMI');
  end;

  i:=1;
  XmlRoot[0]:=XMLDocument2.ChildNodes['XMI'];
  with XmlRoot[0] do begin
    Attributes['xmi.version']:='1.1';
    Attributes['xmlns:UML']:='href://org.omg/UML/1.3';
    XmlRoot[1]:=XmlRoot[0].ChildNodes['XMI.header'];
    with XmlRoot[1] do begin
      XmlRoot[2]:=XmlRoot[1].ChildNodes['XMI.documentation'];
      with XmlRoot[2] do begin
        AddChild('XMI.owner');
        ChildValues['XMI.owner']:='';
        AddChild('XMI.contact');
        ChildValues['XMI.contact']:='';
        AddChild('XMI.exporter');
        ChildValues['XMI.exporter']:='StarUML.XMI-Addin';
        AddChild('XMI.exporterVersion');
        ChildValues['XMI.exporterVersion']:='1.0';
        AddChild('XMI.notice');
        ChildValues['XMI.notice']:='';
      end;
      XmlRoot[2]:=XmlRoot[1].ChildNodes['XMI.metamodel'];
      with XmlRoot[2] do begin
        Attributes['xmi.name']:='UML';
        Attributes['xmi.version']:='1.3';
      end;
    end;
    XmlRoot[1]:=XmlRoot[0].ChildNodes['XMI.content'];
    with XmlRoot[1] do begin
      XmlRoot[2]:=XmlRoot[1].ChildNodes['UML:Model'];
      with XmlRoot[2] do begin
        Attributes['xmi.id']:='UMLProject.'+inttostr(i);
        inc(i);
        XmlRoot[3]:=XmlRoot[2].ChildNodes['UML:Namespace.ownedElement'];
        with XmlRoot[3] do begin
          XmlRoot[4]:=XmlRoot[3].AddChild('UML:Model');
          with XmlRoot[4] do begin
            Attributes['xmi.id']:='UMLModel.'+inttostr(i);
            inc(i);
            Attributes['name']:='Use Case View';
            Attributes['visibility']:='public';
            Attributes['isSpecification']:='false';
            Attributes['namespace']:='UMLProject.1';
            Attributes['isRoot']:='false';
            Attributes['isLeaf']:='false';
            Attributes ['isAbstract']:='false';
          end;
          XmlRoot[4]:=XmlRoot[3].AddChild('UML:Model');
          with XmlRoot[4] do begin
            Attributes['xmi.id']:='UMLModel.'+inttostr(i);
            inc(i);
            Attributes['name']:='Logical View';
            Attributes['visibility']:='public';
            Attributes['isSpecification']:='false';
            Attributes['namespace']:='UMLProject.1';
            Attributes['isRoot']:='false';
            Attributes['isLeaf']:='false';
            Attributes['isAbstract']:='false';
            if tKB.Templates.Count>0 then
             begin
              XmlRoot[5]:=XmlRoot[4].AddChild('UML:Namespace.ownedElement');
              with XmlRoot[5] do begin
                for j:=0 to tKB.Templates.Count-1 do begin
                  XmlRoot[6]:=XmlRoot[5].AddChild('UML:Class');
                  with XmlRoot[6] do begin
                    Attributes['xmi.id']:='UMLClass.'+inttostr(i);
                    tmT:=TTemplate(tKB.Templates.Items[j]);
                    tmT.ID:='UMLClass.'+inttostr(i);
                //    idclass[j]:=i;
                    inc(i);
                    Attributes['name']:=tmT.Name;
                    Attributes['visibility']:='public';
                    Attributes['isSpecification']:='false';
                    Attributes['namespace']:='UMLModel.3';
                    Attributes['isRoot']:='false';
                    Attributes['isLeaf']:='false';
                    Attributes['isAbstract']:='false';
                    Attributes['isActive']:='false';
                    if tmT.Slots.Count>0 then begin
                      XmlRoot[7]:=XmlRoot[6].AddChild('UML:Classifier.feature');
                      for k:=0 to tmT.Slots.Count-1 do
                        with XmlRoot[7].AddChild('UML:Attribute') do begin
                          Attributes['xmi.id']:='UMLAttribute.'+inttostr(i);
                          inc(i);
                          Attributes['name']:=TSlot(tmT.Slots.Items[k]).Name;
                          Attributes['visibility']:='public';
                          Attributes['isSpecification']:='false';
                          Attributes['ownerScope']:='instance';
                          Attributes['changeability']:='changeable';
                          Attributes['targetScope']:='instance';
                          Attributes['type']:='';
                          Attributes['owner']:=tmT.ID;
                   //       vatr:=vatr+1;
                   //       idatr[vatr]:=i-1;
                        end;
                    end;
                  end;
                end;

                if tKB.GRules.Count>0 then
                  for j:=0 to tKB.GRules.Count-1 do begin
                     //for each action
                     for k := 0 to TGRule(tKB.GRules.Items[j]).Actions.Count-1 do
                      begin
                        for k1 := 0 to TGRule(tKB.GRules.Items[j]).Conditions.Count-1 do
                         begin
                          XmlRoot[6]:=XmlRoot[5].AddChild('UML:Association');
                          with XmlRoot[6] do begin
                            s:='UMLAssociation.'+inttostr(i);
                            Attributes['xmi.id']:=s;
                            inc(i);
                            Attributes['name']:=TGRule(tKB.GRules.Items[j]).Name;
                            Attributes['visibility']:='public';
                            Attributes['isSpecification']:='false';
                            Attributes['namespace']:='UMLModel.3';
                            XmlRoot[7]:=XmlRoot[6].AddChild('UML:Association.connection');
                            with XmlRoot[7].AddChild('UML:AssociationEnd') do begin
                              Attributes['xmi.id']:='UMLAssociationEnd.'+inttostr(i);
                              inc(i);
                              Attributes['name']:='';
                              Attributes['visibility']:='public';
                              Attributes['isSpecification']:='false';
                              Attributes['isNavigable']:='false';
                              Attributes['ordering']:='unordered';
                              Attributes['aggregation']:='none';
                              Attributes['targetScope']:='instance';
                              Attributes['changeability']:='changeable';
                              Attributes['association']:=s;
                              s1:='';
                              k2:=tKB.IndexOfTemplateByShortName(TTemplate(TGRule(tKB.GRules.Items[j]).Conditions.Items[k1]).ShortName,'');
                              if k2>-1 then s1:=TTemplate(tKB.Templates.Items[k2]).ID;
                              Attributes['type']:=s1;
                            end;
                            with XmlRoot[7].AddChild('UML:AssociationEnd') do begin
                              Attributes['xmi.id']:='UMLAssociationEnd.'+inttostr(i);
                              inc(i);
                              Attributes['name']:='';
                              Attributes['visibility']:='public';
                              Attributes['isSpecification']:='false';
                              Attributes['isNavigable']:='true';
                              Attributes['ordering']:='unordered';
                              Attributes['aggregation']:='none';
                              Attributes['targetScope']:='instance';
                              Attributes['changeability']:='changeable';
                              Attributes['association']:=s;
                              s1:='';
                              k2:=tKB.IndexOfTemplateByShortName(TTemplate(TGRule(tKB.GRules.Items[j]).Actions.Items[k]).ShortName,'');
                              if k2>-1 then s1:=TTemplate(tKB.Templates.Items[k2]).ID;
                              Attributes['type']:=s1;
                            end;
                          end;
                        end;
                   end;

                  end;
              end;
            end;
          end;
          XmlRoot[4]:=XmlRoot[3].AddChild('UML:Model');
          with XmlRoot[4] do begin
            Attributes['xmi.id']:='UMLModel.'+inttostr(i);
            inc(i);
            Attributes['name']:='Component View';
            Attributes['visibility']:='public';
            Attributes['isSpecification']:='false';
            Attributes['namespace']:='UMLProject.1';
            Attributes['isRoot']:='false';
            Attributes['isLeaf']:='false';
            Attributes['isAbstract']:='false';
          end;
          XmlRoot[4]:=XmlRoot[3].AddChild('UML:Model');
          with XmlRoot[4] do begin
            Attributes['xmi.id']:='UMLModel.'+inttostr(i);
            inc(i);
            Attributes['name']:='Deployment View';
            Attributes['visibility']:='public';
            Attributes['isSpecification']:='false';
            Attributes['namespace']:='UMLProject.1';
            Attributes['isRoot']:='false';
            Attributes['isLeaf']:='false';
            Attributes['isAbstract']:='false';
          end;
        end;
      end;
  {    for j:=1 to vatr do
        with XmlRoot[1].AddChild('UML:TaggedValue') do begin
          Attributes['xmi.id']:='X.'+inttostr(i);
          inc(i);
          Attributes['tag']:='ordering';
          Attributes['value']:='unordered';
          Attributes['modelElement']:='UMLAttribute.'+IntToStr(idatr[j]);
        end;  }
    end;
  end;
 XMLDocument2.SaveToFile(fName);
end;
//--------------------------------------------------------------------------
function TKnowledgeBase.SaveToPHP(fName:String):Integer;
var
 i,j,k : Integer;
 tmTs,tmTs1 : TStringList;
 s,s1 : string;
begin
 tmTs:=TStringList.Create;
 tmTs1:=TStringList.Create;
 //templates
 tmTs.Add('<?php');
 tmTs.Add('//************** exported from PKBD ****************');
 tmTs.Add('// version: '+Ver);
 tmTs.Add('// knowledge base:'+ShortName);
 tmTs.Add('// info:'+Description);
 tmTs.Add('');
 tmTs.Add('//****************** classes ***********************');
 for i := 0 to Templates.Count-1 do
  begin
   tmTs.Add('class '+
    StringReplace(
     TTemplate(Templates.Items[i]).ShortName,'-','_',[rfReplaceAll])
      +'{');
   tmTs1.Clear;
    for j := 0 to TTemplate(Templates.Items[i]).Slots.Count-1  do
     begin
      s:=StringReplace(
       TSlot(TTemplate(Templates.Items[i]).Slots.Items[j]).ShortName
        ,'-','_',[rfReplaceAll]);
      tmTs.Add(' var $'+s+';');
      tmTs1.Add('  $this->'+s+
       ' = "'+TSlot(TTemplate(Templates.Items[i]).Slots.Items[j]).Value+'";')
     end;
   if tmTs1.Count>0 then
    begin
     tmTs.Add(' function Init(){');
     tmTs.AddStrings(tmTs1);
     tmTs.Add(' }');
    end;
   tmTs.Add('}');
  end;

 //facts
 tmTs.Add('//******** Initialization (facts) ******************');
 for i := 0 to Templates.Count-1 do
  begin
    s:=StringReplace(
     TTemplate(Templates.Items[i]).ShortName
      ,'-','_',[rfReplaceAll]);
   tmTs.Add('$'+s+'_ = new '+s+';');
   tmTs.Add('$'+s+'_->Init();');
  end;

 //rules
 tmTs.Add('');
 tmTs.Add('//**************** rules ***************************');
 for i := 0 to Rules.Count-1 do
  begin
   tmTs.Add('//'+TRule(Rules.Items[i]).Name);
   tmTs.Add('if (');
   tmTs1.Clear;
   s:='';
   for j := 0 to TRule(Rules.Items[i]).Conditions.Count-1  do
    begin
     if tmTs1.Count>0 then
      begin
       s:=TCondition(TRule(Rules.Items[i]).Conditions.Items[j]).&Operator;
       tmTs1.Add(' '+s);
      end;
     s1:='';
      for k := 0 to TCondition(TRule(Rules.Items[i]).Conditions.Items[j]).Fact.Slots.Count-1  do
       if Trim(TSlot(TCondition(TRule(Rules.Items[i]).Conditions.Items[j]).Fact.Slots.Items[k]).
        Value)<>'' then
         begin
          if s1<>'' then s1:=s1+' and ';

          s1:=s1+'($'+
           StringReplace(
            TCondition(TRule(Rules.Items[i]).Conditions.Items[j]).Fact.ShortName
             ,'-','_',[rfReplaceAll])
            +'_->'+
           StringReplace(
            TSlot(TCondition(TRule(Rules.Items[i]).Conditions.Items[j]).Fact.Slots.Items[k]).
             ShortName
             ,'-','_',[rfReplaceAll])
              +' == "'+TSlot(TCondition(TRule(Rules.Items[i]).Conditions.Items[j]).Fact.Slots.Items[k]).
               Value+'")';
          end;
     s1:='('+s1+')';
     tmTs1.Add(s1);
    end;
    tmTs.AddStrings(tmTs1);
    tmTs.Add('){');
    tmTs1.Clear;

    for j := 0 to TRule(Rules.Items[i]).Actions.Count-1  do
    begin
     if tmTs1.Count>0 then
      begin
       s:=TRAction(TRule(Rules.Items[i]).Actions.Items[j]).&Operator;
      end;

//     if s='add' then
      begin
       s1:=StringReplace(TRAction(TRule(Rules.Items[i]).Actions.Items[j]).Fact.ShortName
        ,'-','_',[rfReplaceAll]);
{       tmTs1.Add(' $'+s1+
        '_ = new '+s1+';');
       tmTs1.Add(' $'+s1+
        '_->Init();');  }
        for k := 0 to TRAction(TRule(Rules.Items[i]).Actions.Items[j]).Fact.Slots.Count-1  do
         begin
          tmTs1.Add(' $'+s1+
           '_->'+
            StringReplace(
             TSlot(TRAction(TRule(Rules.Items[i]).Actions.Items[j]).Fact.Slots.Items[k]).
             ShortName,'-','_',[rfReplaceAll])+' = "'+TSlot(TRAction(TRule(Rules.Items[i]).Actions.Items[j]).
              Fact.Slots.Items[k]).Value+'";');
          end;
      end;
    end;

    tmTs.AddStrings(tmTs1);
    tmTs.Add('}');
  end;
 tmTs.Add('?>');
 tmTs.SaveToFile(fName);
 tmTs.Free;
 tmTs1.Free;
end;
//--------------------------------------------------------------------------
function TKnowledgeBase.SaveToPHP_V2(fName:String):Integer;
var
 i,j,k : Integer;
 tmTs,tmTs1 : TStringList;
 s,s1 : string;
begin
 tmTs:=TStringList.Create;
 tmTs1:=TStringList.Create;
 //templates
 tmTs.Add('<?php');
 tmTs.Add('//************** exported from PKBD ****************');
 tmTs.Add('// version: '+Ver);
 tmTs.Add('// knowledge base: '+ShortName);
 tmTs.Add('// info: '+Description);
 tmTs.Add('');
 tmTs.Add('//****************** classes ***********************');
 for i := 0 to Templates.Count-1 do
  begin
   tmTs.Add('class '+
    StringReplace(
     TTemplate(Templates.Items[i]).ShortName,'-','_',[rfReplaceAll])
      +'{');
   tmTs1.Clear;
    for j := 0 to TTemplate(Templates.Items[i]).Slots.Count-1  do
     begin
      s:=StringReplace(
       TSlot(TTemplate(Templates.Items[i]).Slots.Items[j]).ShortName
        ,'-','_',[rfReplaceAll]);
      tmTs.Add(' var $'+s+';');
      tmTs1.Add('  $this->'+s+
       ' = "'+TSlot(TTemplate(Templates.Items[i]).Slots.Items[j]).Value+'";')
     end;
   if tmTs1.Count>0 then
    begin
     tmTs.Add(' function Init(){');
     tmTs.AddStrings(tmTs1);
     tmTs.Add(' }');
    end;
   tmTs.Add('}');
  end;

 //facts
 tmTs.Add('//******** Initialization (facts) ******************');
 for i := 0 to Templates.Count-1 do
  begin
    s:=StringReplace(
     TTemplate(Templates.Items[i]).ShortName
      ,'-','_',[rfReplaceAll]);
   tmTs.Add('$'+s+'_ = new '+s+';');
   tmTs.Add('$'+s+'_->Init();');
  end;
 {
 tmTs.Add('//*************** facts ****************************');
 for i := 0 to Facts.Count-1 do
  begin
    s:=StringReplace(
     TFact(Facts.Items[i]).ShortName
      ,'-','_',[rfReplaceAll]);
   tmTs.Add('$'+s+'_ = new '+s+';');
   tmTs.Add('$'+s+'_->Init();');
  end;
 }
 //rules
 tmTs.Add('');
 tmTs.Add('//**************** rules ***************************');
 for i := 0 to Rules.Count-1 do
  begin
   tmTs.Add('//'+TRule(Rules.Items[i]).Name);
   tmTs.Add('if (');
   tmTs1.Clear;
   s:='';
   for j := 0 to TRule(Rules.Items[i]).Conditions.Count-1  do
    begin
     if tmTs1.Count>0 then
      begin
       s:=TCondition(TRule(Rules.Items[i]).Conditions.Items[j]).&Operator;
       tmTs1.Add(' '+s);
      end;
     s1:='';
      for k := 0 to TCondition(TRule(Rules.Items[i]).Conditions.Items[j]).Fact.Slots.Count-1  do
       begin
        if s1<>'' then s1:=s1+' and ';

        s1:=s1+'(strpos($'+
         StringReplace(
          TCondition(TRule(Rules.Items[i]).Conditions.Items[j]).Fact.ShortName
           ,'-','_',[rfReplaceAll])
          +'_->'+
         StringReplace(
          TSlot(TCondition(TRule(Rules.Items[i]).Conditions.Items[j]).Fact.Slots.Items[k]).
           ShortName
           ,'-','_',[rfReplaceAll])
            +', "'+TSlot(TCondition(TRule(Rules.Items[i]).Conditions.Items[j]).Fact.Slots.Items[k]).
             Value+'") !== false)';
        end;
     s1:='('+s1+')';
     tmTs1.Add(s1);
    end;
    tmTs.AddStrings(tmTs1);
    tmTs.Add('){');
    tmTs1.Clear;

    for j := 0 to TRule(Rules.Items[i]).Actions.Count-1  do
    begin
     if tmTs1.Count>0 then
      begin
       s:=TRAction(TRule(Rules.Items[i]).Actions.Items[j]).&Operator;
      end;

//     if s='add' then
      begin
       s1:=StringReplace(TRAction(TRule(Rules.Items[i]).Actions.Items[j]).Fact.ShortName
        ,'-','_',[rfReplaceAll]);
{       tmTs1.Add(' $'+s1+
        '_ = new '+s1+';');
       tmTs1.Add(' $'+s1+
        '_->Init();');  }
        for k := 0 to TRAction(TRule(Rules.Items[i]).Actions.Items[j]).Fact.Slots.Count-1  do
         begin
          tmTs1.Add(' $'+s1+
           '_->'+
            StringReplace(
             TSlot(TRAction(TRule(Rules.Items[i]).Actions.Items[j]).Fact.Slots.Items[k]).
             ShortName,'-','_',[rfReplaceAll])+' = "'+TSlot(TRAction(TRule(Rules.Items[i]).Actions.Items[j]).
              Fact.Slots.Items[k]).Value+'";');
          end;
      end;
    end;

    tmTs.AddStrings(tmTs1);
    tmTs.Add('}');
  end;
 tmTs.Add('?>');
 tmTs.SaveToFile(fName);
 tmTs.Free;
 tmTs1.Free;
end;
//--------------------------------------------------------------------------
function TKnowledgeBase.SaveToJSON(fName:String):Integer;
var
 i,j,k,k1 : Integer;
 tmTs : TStringList;
 s3 : string;
begin
 tmTs:=TStringList.Create;

 for i := 0 to Rules.Count-1 do
  begin
   s3:='{"ID": "';
   s3:=s3+TRule(Rules.Items[i]).Name+'", "frames":{"0":{';
   for j := 0 to TRule(Rules.Items[i]).Conditions.Count-1  do
    begin
     if j<>0 then s3:=s3+', ';
     s3:=s3+'"'+
       StringReplace(
        TCondition(TRule(Rules.Items[i]).Conditions.Items[j]).Fact.ShortName
         ,'-','_',[rfReplaceAll])
        +'":{';
      k1:=0;
      for k := 0 to TCondition(TRule(Rules.Items[i]).Conditions.Items[j]).Fact.Slots.Count-1  do
       begin
        if Trim(TSlot(TCondition(TRule(Rules.Items[i]).Conditions.Items[j]).Fact.Slots.Items[k]).
          Value)<>'' then
           begin
            if k1>0 then s3:=s3+', ';
            Inc(k1);
             s3:=s3+'"'+   //add fact property
             StringReplace(
              TSlot(TCondition(TRule(Rules.Items[i]).Conditions.Items[j]).Fact.Slots.Items[k]).
               ShortName
               ,'-','_',[rfReplaceAll])
                +'":{"val":"'+TSlot(TCondition(TRule(Rules.Items[i]).Conditions.Items[j]).Fact.Slots.Items[k]).
                 Value+'"}';
            end;
        end;
      s3:=s3+'}';
    end;
   s3:=s3+'}}}';
   tmTs.Text:=StringReplace(s3,'_1','',[rfReplaceAll]);
   tmTs.SaveToFile(fName+'_'+TRule(Rules.Items[i]).Name+'.json');
  end;
 tmTs.Free;
end;
//--------------------------------------------------------------------------
function TKnowledgeBase.SaveToCSV(fName:String; b:Boolean):Integer;
function ClearStrNum(s:string;d:char):string;
var
 i : Integer;
 tmTs : TStringList;
 v : Integer;
begin
 Result:='';
 tmTs:=TStringList.Create;
 tmTs.Delimiter:=d;
 tmTs.DelimitedText:=s;
 for i := 0 to tmTs.Count-1 do
  begin
   if not TryStrToInt(tmTs.Strings[i],v) then
    begin
     if Result<>'' then Result:=Result+d;
     Result:=Result+tmTs.Strings[i];
    end;
  end;
 tmTs.Free;
end;
var
 i,j,k : Integer;
 tmTs,tmTs1 : TStringList;
 s,s1,s2 : string;
 tmSlot : TSlot;
 tmCond : TCondition;
 tmAct : TRAction;
begin
 tmTs:=TStringList.Create; //list of templates for facts
 tmTs1:=TStringList.Create;  //facts for certain template
 //--------------------------------------------------------------
 //processing facts
 //create fact descriptions
 tmSlot:=TSlot.Create;
 tmSlot.DataType:='String';
 for i := 0 to Facts.Count-1 do
  begin
   s1:=''; s2:='';
   //get template
   k:=IndexOfTemplateV3(TFact(Facts.Items[i]));
   if k>-1 then
    begin
      s:=ClearStrNum(TTemplate(Templates.Items[k]).Name,'-');

      s1:=s1+s+'::Name';
      s2:=s2+TFact(Facts.Items[i]).Name;

      for j := 0 to TFact(Facts.Items[i]).Slots.Count-1 do
       begin
        tmSlot:=TSlot(TFact(Facts.Items[i]).Slots.Items[j]);
        //add headers
        if s1<>'' then s1:=s1+';';
        s1:=s1+s+'::'+tmSlot.Name;
        //add data
        if s2<>'' then s2:=s2+';';
        s2:=s2+tmSlot.Value;
       end;
      tmTs.AddObject(s1,TStringList.Create);
      TStringList(tmTs.Objects[tmTs.Count-1]).Add(s2);
    end;
  end;

 //aggrigate facts
 for i := 0 to tmTs.Count-1 do
  for j := tmTs.Count-1 downto i+1 do
   if tmTs.Strings[i]=tmTs.Strings[j] then
    begin
     TStringList(tmTs.Objects[i]).Add(
      TStringList(tmTs.Objects[j]).Strings[0]
     );
     tmTs.Delete(j);
    end;

 //save facts
 for i := 0 to tmTs.Count-1 do
  begin
   if TStringList(tmTs.Objects[i]).Count<>0 then
    begin
     TStringList(tmTs.Objects[i]).Insert(0,tmTs.Strings[i]);
     TStringList(tmTs.Objects[i]).SaveToFile(
      StringReplace(fName,'.csv','-facts-'+IntToStr(i)+'.csv',[rfReplaceAll])
      );
     end;
  end;

 tmTs.Clear;
 tmTs1.Clear;
 //------------------------------------------------------------------
 //precessing rules
 //create rules description
 //rules
// tmSlot:=TSlot.Create;
 for i := 0 to Rules.Count-1 do
  begin
//    s1:=''; s2:='';
  s1:='RuleName';
  s2:=TRule(Rules.Items[i]).Name;

    for k := 0 to TRule(Rules.Items[i]).Conditions.Count-1 do
     begin
      tmCond:=TCondition(TRule(Rules.Items[i]).Conditions.Items[k]);
      s:=ClearStrNum(tmCond.Fact.Name,'-');
        for j := 0 to tmCond.Fact.Slots.Count-1 do
         begin
          tmSlot:=TSlot(tmCond.Fact.Slots.Items[j]);
          if ((b)and(Trim(tmSlot.Value)<>''))or
           (not b) then
             begin
                //add headers
              if s1<>'' then s1:=s1+';';
              s1:=s1+s+'::'+tmSlot.Name;
                //add data
              if s2<>'' then s2:=s2+';';
              s2:=s2+tmSlot.Value;
             end;
         end;
     end;

    for k := 0 to TRule(Rules.Items[i]).Actions.Count-1 do
     begin
      tmAct:=TRAction(TRule(Rules.Items[i]).Actions.Items[k]);
      s:=//StringReplace(
       tmAct.Fact.Name
//        ,'-','_',[rfReplaceAll])
        ;
        for j := 0 to tmAct.Fact.Slots.Count-1 do
         begin
          tmSlot:=TSlot(tmAct.Fact.Slots.Items[j]);
          if ((b)and(Trim(tmSlot.Value)<>''))or
           (not b) then
             begin
              //add headers
              if s1<>'' then s1:=s1+';';
               s1:=s1+'#'+s+'::'+tmSlot.Name;
              //add data
              if s2<>'' then s2:=s2+';';
              s2:=s2+tmSlot.Value;
             end;
         end;
     end;

    tmTs.AddObject(s1,TStringList.Create);
    TStringList(tmTs.Objects[tmTs.Count-1]).Add(s2);
  end;

 //aggrigate rules
 for i := 0 to tmTs.Count-1 do
  for j := tmTs.Count-1 downto i+1 do
   if tmTs.Strings[i]=tmTs.Strings[j] then
    begin
     TStringList(tmTs.Objects[i]).Add(
      TStringList(tmTs.Objects[j]).Strings[0]
     );
     tmTs.Delete(j);
    end;

 //save rules
 for i := 0 to tmTs.Count-1 do
  begin
   if TStringList(tmTs.Objects[i]).Count<>0 then
    begin
     TStringList(tmTs.Objects[i]).Insert(0,tmTs.Strings[i]);
     TStringList(tmTs.Objects[i]).SaveToFile(
      StringReplace(fName,'.csv','-rules-'+IntToStr(i)+'.csv',[rfReplaceAll])
      );
    end;
  end;

 tmTs.Free;
 tmTs1.Free;
end;
//--------------------------------------------------------------------------
function TKnowledgeBase.SaveToTxt(fName:String):Integer;
var
 i,j,k : Integer;
 tmTs : TStringList;
 s : string;
begin
 tmTs:=TStringList.Create;
 for i := 0 to Templates.Count-1 do
  begin
   if tmTs.IndexOf('c: '+TTemplate(Templates.Items[i]).Name)=-1 then
    tmTs.Add('c: '+TTemplate(Templates.Items[i]).Name);
   for j := 0 to TTemplate(Templates.Items[i]).Slots.Count-1  do
     if tmTs.IndexOf('  p: '+TSlot(TTemplate(Templates.Items[i]).Slots.Items[j]).Name)=-1 then
      tmTs.Add('  p: '+TSlot(TTemplate(Templates.Items[i]).Slots.Items[j]).Name);
  end;
 for i := 0 to GRules.Count-1 do
  for j := 0 to TGRule(GRules.Items[i]).Conditions.Count-1 do
   for k := 0 to TGRule(GRules.Items[i]).Actions.Count-1 do
    begin
     s:='r: '+TTemplate(TGRule(GRules.Items[i]).Conditions.Items[j]).Name+'-'+
      TTemplate(TGRule(GRules.Items[i]).Actions.Items[k]).Name;
     if tmTs.IndexOf(s)=-1 then
      begin
       tmTs.Add(s);
      end;
    end;
// for i := 0 to tmTs.Count-1 do
//  for j := 0 to tmTs.Count-1 do
//   if tmTs.Strings[i]< tmTs.Strings[j] then tmTs.Exchange(i,j);

 j:=0; k:=0;
 for i := 0 to tmTs.Count-1 do
  begin
   if pos('c: ',tmTs.Strings[i])=1 then Inc(j);
   if pos('r: ',tmTs.Strings[i])=1 then Inc(k);
  end;

 tmTs.Add(IntToStr(tmTs.Count));
 tmTs.Add('c: '+IntToStr(j));
 tmTs.Add('r: '+IntToStr(k));
 tmTs.Add('p: '+IntToStr(tmTs.Count-k-j-3));
 tmTs.SaveToFile(fName);
 tmTs.Free;
end;
//--------------------------------------------------------------------------
function TKnowledgeBase.SaveToRDF(fName:String):Integer;
Function ONm(s:ShortString):ShortString;
begin
 Result:=StringReplace(s,' ','_',[rfReplaceAll]);
end;

var
 tKB : TKnowledgeBase;
// XMLDocument2 : TXMLDocument;
// XmlRoot:array[0..20]of IXMLNode;
// N,N1,tN,tN1 : IXMLNode;
 i,j,k,k1 : Integer;
 tmT,tmT1 : TTemplate;
// tmGR : TGRule;
 s,s1,s2 : ShortString;

 tmTs : TStringList;
begin
 tKB:=Self;
 tmTs:=TStringList.Create;

// XMLDocument2:=TXMLDocument.Create(nil);

{  with XMLDocument2 do begin
    Active:=true;
    Version:='1.0';
    Encoding:='UTF-8';
//    N:=AddChild('xml');
  end;
 }
//  i:=1;
//  N:=XMLDocument2.ChildNodes['xml'];
//  with N do begin
 //   Attributes['xmi.version']:='1.1';
 //   Attributes['xmlns:UML']:='href://org.omg/UML/1.3';
   { N1:=XMLDocument2.AddChild('rdf:RDF');
    with N1 do
     begin
      Attributes['xmlns:rdf']:='http://www.w3.org/1999/02/22-rdf-syntax-ns#';
      Attributes['xmlns']:='http://www.owl-ontologies.com/Ontology1477923492.owl#';
      Attributes['xmlns:xsd']:='http://www.w3.org/2001/XMLSchema#';
      Attributes['xmlns:rdfs']:='http://www.w3.org/2000/01/rdf-schema#';
      Attributes['xmlns:owl']:='http://www.w3.org/2002/07/owl#';
      Attributes['xml:base']:='http://www.owl-ontologies.com/Ontology1477923492.owl';
     end;
      tN:=N1.AddChild('owl:Ontology');
      tN.Attributes['rdf:about']:='';
   }
      //add classes
//      for j:=0 to tKB.Templates.Count-1 do
//       begin
//        tmTs.Add(
//         ':'+TTemplate(tKB.Templates.Items[j].ShortName+' a :template'
//         );
        //tN:=N1.AddChild('owl:Class');
       // with tN do
       //  begin
       {   tmT:=TTemplate(tKB.Templates.Items[j]);
          s:=ONm(tmT.Name);
          tmT.ID:=s;
          Attributes['rdf:ID']:=tmT.ID;
         end; }
//        end;

      tmTs.Add('@prefix owl: <http://www.w3.org/2002/07/owl#> .');
      tmTs.Add('@prefix xsd: <http://www.w3.org/2001/XMLSchema#> .');
      tmTs.Add('@prefix rdfs: <http://www.w3.org/2000/01/rdf-schema#> .');
       //calss properties
      for j:=0 to tKB.Templates.Count-1 do
       begin
        tmT:=TTemplate(tKB.Templates.Items[j]);
        s:=ONm(tmT.ShortName);
        s2:=':'+s+' a owl:Class .';
        if tmTs.IndexOf(s2)=-1 then tmTs.Add(s2);

        for i := 0 to tmT.Slots.Count-1 do
         begin
          s1:=ONm(TSlot(tmT.Slots.Items[i]).ShortName);
          s2:=':'+s+' :hasProperty :'+ s1+' .';
          if tmTs.IndexOf(s2)=-1 then tmTs.Add(s2);

          s2:=':'+s1+' a owl:Property .';
          if tmTs.IndexOf(s2)=-1 then tmTs.Add(s2);

          if Trim(TSlot(tmT.Slots.Items[i]).DataType)<>'' then
           begin
            s2:=':'+s1+' :hasDatatype xsd:'+TSlot(tmT.Slots.Items[i]).DataType+' .';
            if tmTs.IndexOf(s2)=-1 then tmTs.Add(s2);
           end;

          if Trim(TSlot(tmT.Slots.Items[i]).Value)<>'' then
           begin
            s2:=':'+s1+' :hasValue :'+TSlot(tmT.Slots.Items[i]).Value+' .';
            if tmTs.IndexOf(s2)=-1 then tmTs.Add(s2);
           end;
         end;
        end;

      //add grules
        if tKB.GRules.Count>0 then
          for j:=0 to tKB.GRules.Count-1 do
           begin
             for k := 0 to TGRule(tKB.GRules.Items[j]).Actions.Count-1 do
              begin
                for k1 := 0 to TGRule(tKB.GRules.Items[j]).Conditions.Count-1 do
                 begin
                  tmT:=TTemplate(TGRule(tKB.GRules.Items[j]).Actions.Items[k]);
                  s:=ONm(tmT.ShortName);

                  tmT1:=TTemplate(TGRule(tKB.GRules.Items[j]).Conditions.Items[k1]);
                  s1:=ONm(tmT1.ShortName);
                  s2:=':'+s+' :hasRelationship :'+ s1+' .';
                  if tmTs.IndexOf(s2)=-1 then tmTs.Add(s2);
                 end;
              end;
    end;

 tmTs.SaveToFile(fName);
end;
//--------------------------------------------------------------------------
function TKnowledgeBase.SaveToOwl(fName:String):Integer;
Function ONm(s:ShortString):ShortString;
var
 s1,s2,s3 : ShortString;
 i,j : Integer;
begin
 s1:='abcdefghijklmnopqrstuvwxyz???????????????????????????????0123456789';
 s2:=AnsiLowerCase(s);
 s3:='';
 j:=1;
 for i := 1 to Length(s2) do
  begin
   if pos(s2[i],s1)>0 then
    begin
     if j=1 then
      s3:=s3+AnsiUpperCase(s2[i])
       else s3:=s3+s2[i];
     j:=0;
    end
    else j:=1;
  end;

 Result:=s3;
// Result:=StringReplace(s,'_','',[rfReplaceAll]);
end;
var
 tKB : TKnowledgeBase;
 XMLDocument2 : TXMLDocument;
// XmlRoot:array[0..20]of IXMLNode;
 N1,tN,tN1,tN2 : IXMLNode;
 i,j,k,k1,k2,k3 : Integer;
 tmT : TTemplate;
 tmF : TFact;
// tmGR : TGRule;
 s,s1 : ShortString;
 tmTs : TStringList;
begin
 tKB:=Self;
 XMLDocument2:=TXMLDocument.Create(nil);

  with XMLDocument2 do begin
    Active:=true;
    Version:='1.0';
    Encoding:='UTF-8';
//    N:=AddChild('xml');
  end;

//  i:=1;
//  N:=XMLDocument2.ChildNodes['xml'];
//  with N do begin
 //   Attributes['xmi.version']:='1.1';
 //   Attributes['xmlns:UML']:='href://org.omg/UML/1.3';
    N1:=XMLDocument2.AddChild('rdf:RDF');
    with N1 do
     begin
      Attributes['xmlns:rdf']:='http://www.w3.org/1999/02/22-rdf-syntax-ns#';
      Attributes['xmlns']:='http://www.owl-ontologies.com/Ontology1477923492.owl#';
      Attributes['xmlns:xsd']:='http://www.w3.org/2001/XMLSchema#';
      Attributes['xmlns:rdfs']:='http://www.w3.org/2000/01/rdf-schema#';
      Attributes['xmlns:owl']:='http://www.w3.org/2002/07/owl#';
      Attributes['xml:base']:='http://www.owl-ontologies.com/Ontology1477923492.owl';
     end;
      tN:=N1.AddChild('owl:Ontology');
      tN.Attributes['rdf:about']:='';

      //add classes
      for j:=0 to tKB.Templates.Count-1 do
       begin
        tN:=N1.AddChild('owl:Class');
        with tN do
         begin
          tmT:=TTemplate(tKB.Templates.Items[j]);
          s:=ONm(tmT.ShortName);
//          tmT.ID:=s;
          Attributes['rdf:ID']:=s;
         end;
        end;
       //calss properties
      for j:=0 to tKB.Templates.Count-1 do
       begin
        tmT:=TTemplate(tKB.Templates.Items[j]);
        for i := 0 to tmT.Slots.Count-1 do
         begin
           s:=ONm(tmT.ShortName);
           tN:=N1.AddChild('owl:DatatypeProperty');

           s1:=ONm(TSlot(tmT.Slots.Items[i]).ShortName);
           s1:=AnsiLowerCase(s1[1])+copy(s1,2,Length(s1)-1);
//           tN.Attributes['rdf:ID']:=s1+'_'+s;
           tN.Attributes['rdf:about']:=s1;

           tN1:=tN.AddChild('rdfs:domain');
           tN1.Attributes['rdf:resource']:='#'+s;
           tN1:=tN.AddChild('rdfs:range');
           tN1.Attributes['rdf:resource']:='http://www.w3.org/2001/XMLSchema#string';
           tN1:=tN.AddChild('rdfs:comment');
           tN1.Attributes['rdf:datatype']:='http://www.w3.org/2001/XMLSchema#string';
           tN1.Text:=TSlot(tmT.Slots.Items[i]).Value;
          end;
        end;
      //add grules
        k2:=0;
        if tKB.GRules.Count>0 then
          for j:=0 to tKB.GRules.Count-1 do
           begin
             //for each action
             for k := 0 to TGRule(tKB.GRules.Items[j]).Actions.Count-1 do
              begin
                for k1 := 0 to TGRule(tKB.GRules.Items[j]).Conditions.Count-1 do
                 begin
                 tN:=N1.AddChild('owl:ObjectProperty');
                  with tN do
                   begin
                    //!!!
                    Attributes['rdf:ID']:='has'+
                    ONm(TTemplate(TGRule(tKB.GRules.Items[j]).Actions.Items[k]).ShortName+' '+
                     TGRule(tKB.GRules.Items[j]).ID+'n'+IntToStr(k));
//                    ONm(TTemplate(TGRule(tKB.GRules.Items[j]).Actions.Items[k]).ShortName)+
//                     'n'+IntToStr(k2);
                    Inc(k2);
                    tN1:=tN.AddChild('rdfs:domain');
                    tN1.Attributes['rdf:resource']:='#'+
                     ONm(TTemplate(TGRule(tKB.GRules.Items[j]).Conditions.Items[k1]).ShortName);
                    tN1:=tN.AddChild('rdfs:range');
                    tN1.Attributes['rdf:resource']:='#'+//ONm(TGRule(tKB.GRules.Items[j]).Name);
                     ONm(TTemplate(TGRule(tKB.GRules.Items[j]).Actions.Items[k]).ShortName);
                  end;
                end;
              end;
//           end;
    end;

       //facts
      for j:=0 to tKB.Facts.Count-1 do
       begin
        tmF:=TFact(tKB.Facts.Items[j]);
        k1:=tKB.IndexOfTemplateV3(tmF);
        if k1>-1 then
         begin
          tmT:=TTemplate(tKB.Templates.Items[k1]);
          s:=ONm(tmT.ShortName);
//          tN:=N1.AddChild(s);
          tN2 := XMLDocument2.CreateElement(s, '');
          tN2.Attributes['rdf:ID']:=ONm(tmF.ShortName+' '+s);
          for i := 0 to tmF.Slots.Count-1 do
           begin
             s1:=ONm(TSlot(tmF.Slots.Items[i]).ShortName);
             s1:=AnsiLowerCase(s1[1])+copy(s1,2,Length(s1)-1);
             tN1:=tN2.AddChild(s1);
             tN1.Attributes['rdf:datatype']:='http://www.w3.org/2001/XMLSchema#string';
             tN1.Text:=TSlot(tmF.Slots.Items[i]).Value;
            end;

          N1.ChildNodes.Add(tN2);
{          tN.Attributes['rdf:ID']:=ONm(tmF.ShortName)+s;
          for i := 0 to tmF.Slots.Count-1 do
           begin
             s1:=ONm(TSlot(tmF.Slots.Items[i]).ShortName);
             s1:=AnsiLowerCase(s1[1])+copy(s1,2,Length(s1)-1);
             tN1:=tN.AddChild(s1);
             tN1.Attributes['rdf:datatype']:='http://www.w3.org/2001/XMLSchema#string';
             tN1.Text:=TSlot(tmF.Slots.Items[i]).Value;
            end;  }
          end;
        end;
//  end;
      //----------------------------------------------------
      //add rules
       tmTs:=TStringList.Create;
        if tKB.Rules.Count>0 then
          for j:=0 to tKB.Rules.Count-1 do
           begin
             tmTs.Clear;
             //for each action
             for k := 0 to TRule(tKB.Rules.Items[j]).Actions.Count-1 do
              begin
               k2:=IndexOfTemplateV3(
                TRAction(TRule(tKB.Rules.Items[j]).Actions.Items[k]).Fact
                 );
                k3:=IndexOfGRuleV2(TRule(tKB.Rules.Items[j]));
               if (k2>-1)and(k3>-1) then
                begin
                 tN:=N1.AddChild(ONm(TTemplate(Templates.Items[k2]).ShortName));
                 tN.Attributes['rdf:ID']:=ONm(TTemplate(Templates.Items[k2]).ShortName+' '+
                  TRule(tKB.Rules.Items[j]).ID);
                 //save actions IDs for conditions
                tmTs.Add(ONm(TTemplate(Templates.Items[k2]).ShortName+' '+
                  TRule(tKB.Rules.Items[j]).ID)+'=has'+
                   ONm(TTemplate(Templates.Items[k2]).ShortName+' '+
                     TGRule(tKB.GRules.Items[k3]).ID +'n'+IntToStr(k))
                  );
                 //!!name
//                 tN1:=tN.AddChild('name');
//                tN1.Attributes['rdf:datatype']:='http://www.w3.org/2001/XMLSchema#string';
//                 tN1.Text:='-';
                 //------
                 for k1 := 0 to TRAction(TRule(tKB.Rules.Items[j]).Actions.Items[k]).Fact.
                  Slots.Count-1 do
                   begin
                    s1:=ONm(TSlot(TRAction(TRule(tKB.Rules.Items[j]).Actions.Items[k]).Fact.
                      Slots.Items[k1]).ShortName);
                    s1:=AnsiLowerCase(s1[1])+copy(s1,2,Length(s1)-1);
                    tN1:=tN.AddChild(s1);
                     tN1.Attributes['rdf:datatype']:='http://www.w3.org/2001/XMLSchema#string';
                     tN1.Text:=TSlot(TRAction(TRule(tKB.Rules.Items[j]).Actions.Items[k]).Fact.
                      Slots.Items[k1]).Value;
                   end;
                end;
              end;

              for k := 0 to TRule(tKB.Rules.Items[j]).Conditions.Count-1 do
               begin
               k2:=IndexOfTemplateV3(
                TRAction(TRule(tKB.Rules.Items[j]).Conditions.Items[k]).Fact
                 );
                k3:=IndexOfGRuleV2(TRule(tKB.Rules.Items[j]));
               if (k2>-1)and(k3>-1) then
                begin
                 tN:=N1.AddChild(ONm(TTemplate(Templates.Items[k2]).ShortName));
                 tN.Attributes['rdf:ID']:=ONm(TTemplate(Templates.Items[k2]).ShortName+' '+
                  TRule(tKB.Rules.Items[j]).ID);
                 //!!name
//                 tN1:=tN.AddChild('name');
//                 tN1.Attributes['rdf:datatype']:='http://www.w3.org/2001/XMLSchema#string';
//                 tN1.Text:='-';
                 //------
                 for k1 := 0 to TCondition(TRule(tKB.Rules.Items[j]).Conditions.Items[k]).Fact.
                  Slots.Count-1 do
                   begin
                    s1:=ONm(TSlot(TCondition(TRule(tKB.Rules.Items[j]).Conditions.Items[k]).Fact.
                     Slots.Items[k1]).ShortName);
                    s1:=AnsiLowerCase(s1[1])+copy(s1,2,Length(s1)-1);
                    tN1:=tN.AddChild(s1);
                     tN1.Attributes['rdf:datatype']:='http://www.w3.org/2001/XMLSchema#string';
                     tN1.Text:=TSlot(TCondition(TRule(tKB.Rules.Items[j]).Conditions.Items[k]).Fact.
                      Slots.Items[k1]).Value;
                   end;
                 for k1 := 0 to tmTs.Count-1 do
                  begin
                    tN2:=tN.AddChild(tmTs.ValueFromIndex[k1]);
                    tN2.Attributes['rdf:resource']:='#'+tmTs.Names[k1];
                  end;
                end;
               end;
           end;
    //--------------------------------------------------------

 XMLDocument2.SaveToFile(fName);
end;
//---------------------------------------------------------------
function TGRule.Load(s:string;KB:TObject):Integer;
var
 tmTs : TStringList;
 i,j,c1 : Integer;

 tmTs1 : TStringList;
 tmTs2 : TStringList;

 tmTemplate : TTemplate;
 tmSlot : TSlot;
begin
 try
  tmTs:=TStringList.Create;
  tmTs1:=TStringList.Create;
  tmTs2:=TStringList.Create;

  s:=StringReplace(s,' ','_',[rfReplaceAll]);

  tmTs.Delimiter:=':';
  tmTs.DelimitedText:=s;
  Self.ShortName:=tmTs.Names[0];
  Self.Name:=tmTs.ValueFromIndex[0];

  tmTs1.Delimiter:=',';
  tmTs1.DelimitedText:=tmTs.Strings[1];  //load conditions
  for i := 0 to tmTs1.Count-1 do
   begin
    j:=TKnowledgeBase(KB).IndexOfTemplateByShortName(tmTs1.Strings[i],'');
    if j>-1 then
     begin
       tmTemplate:=TTemplate.Create;
       //copy template
       tmTemplate.Init;
       tmTemplate.Name:=TTemplate(TKnowledgeBase(KB).Templates.Items[j]).Name;
       tmTemplate.ShortName:=TTemplate(TKnowledgeBase(KB).Templates.Items[j]).ShortName;
       tmTemplate.Description:=TTemplate(TKnowledgeBase(KB).Templates.Items[j]).Description;
       for c1:=0 to TTemplate(TKnowledgeBase(KB).Templates.Items[j]).Slots.Count-1 do
        begin
         tmSlot:=TSlot.Create;
         TKnowledgeBase(KB).CopySlot(TSlot(TTemplate(TKnowledgeBase(KB).Templates.Items[j]).Slots.Items[c1]),
          tmSlot);
         tmTemplate.Slots.Add(tmSlot);
        end;

      Self.Conditions.Add(
        tmTemplate
       );
     end;
   end;

  tmTs2.Delimiter:=',';
  tmTs2.DelimitedText:=tmTs.Strings[2]; //load actions
  for i := 0 to tmTs2.Count-1 do
   begin
    j:=TKnowledgeBase(KB).IndexOfTemplateByShortName(tmTs2.Strings[i],'');
    if j>-1 then
     begin
       tmTemplate:=TTemplate.Create;
       //copy template
       tmTemplate.Init;
       tmTemplate.Name:=TTemplate(TKnowledgeBase(KB).Templates.Items[j]).Name;
       tmTemplate.ShortName:=TTemplate(TKnowledgeBase(KB).Templates.Items[j]).ShortName;
       tmTemplate.Description:=TTemplate(TKnowledgeBase(KB).Templates.Items[j]).Description;
       for c1:=0 to TTemplate(TKnowledgeBase(KB).Templates.Items[j]).Slots.Count-1 do
        begin
         tmSlot:=TSlot.Create;
         TKnowledgeBase(KB).CopySlot(TSlot(TTemplate(TKnowledgeBase(KB).Templates.Items[j]).Slots.Items[c1]),
          tmSlot);
         tmTemplate.Slots.Add(tmSlot);
        end;

      Self.Actions.Add(
       tmTemplate
      );
     end;
   end;
 except
  Self.ShortName:='[Error]';
  Self.Name:=MainForm.LS('Loading rule error');
 end;
end;

Function TKnowledgeBase.LoadScalesToControl(WC:TWinControl;Sc:string):Integer;
var
 i,j,k : Integer;
 s : string;
begin
 TComboBox(WC).Items.Clear;
try
 j:=0;
 for i := 0 to FScales.Count-1 do
//  if ((n<>0)and(n=TFScale(FScales.Items[i]).ListOfNames.Count))
//   or(n=0) then
  begin
  s:='';
   for k := 0 to TFScale(FScales.Items[i]).ListOfValues.Count-1 do
    if k>0 then s:=s+';'+TFScale(FScales.Items[i]).ListOfValues.Strings[k]
     else s:=s+TFScale(FScales.Items[i]).ListOfValues.Strings[k];


   TComboBox(WC).Items.AddObject(
    '['+TFScale(FScales.Items[i]).ID+'] '+TFScale(FScales.Items[i]).Name+' {'+
     s+'} ['+TFScale(FScales.Items[i]).Min+';'+TFScale(FScales.Items[i]).Max+']',
     FScales.Items[i]
      );
   if Sc=TFScale(FScales.Items[i]).Name then j:=i;
  end;

except
end;
// TComboBox(WC).Text:='';
 if TComboBox(WC).Items.Count>0 then
  TComboBox(WC).ItemIndex:=j
   else
    TComboBox(WC).ItemIndex:=-1;
end;

function TKnowledgeBase.LoadScalesFromFile(fName:String):Integer;
var
 i,j : Integer;
 tmTs,tmTs1 : TStringList;
 tmFS : TFScale;
begin
 if FileExists(fName) then
 try
  FScales.Clear;
  tmTs:=TStringList.Create;
  tmTs.LoadFromFile(fName);
  tmTs1:=TStringList.Create;
  for i := 0 to tmTs.Count-1 do
   if ((Trim(tmTs.Strings[i])<>'') and
    (Trim(tmTs.Strings[i][1])<>';')and
    (Trim(tmTs.Strings[i][1])<>'[')) then
   begin
    tmFS:=TFScale.Create;
    tmFS.Init;
    tmFS.Name:=tmTs.Names[i]; //scale name
    tmTs1.Delimiter:=';';
    tmTs1.DelimitedText:=tmTs.ValueFromIndex[i];
    //load scale values
//    for j := 0 to tmTs1.Count-1 do
//     tmFS.ListOfVlues.AddObject(tmTs1.Strings[j],nil);

    FScales.add(tmFS);
   end;
 except
 end;
end;

function TKnowledgeBase.LoadGRules(fName:String):Integer;
var
 i : Integer;
 tmTs : TStringList;
 tmGR : TGRule;
 tmPkg : TTmObj;
 s,s1,ID_R : string;
begin
 if FileExists(fName) then
 try
  s:='';
  tmTs:=TStringList.Create;
  tmTs.LoadFromFile(fName);
  for i := 0 to tmTs.Count-1 do
   begin
    if (Trim(tmTs.Strings[i])<>'')and(tmTs.Strings[i][1]='#') then
     begin
      s:=StringReplace(tmTs.Strings[i],'#','',[rfReplaceAll]); //package name
      s1:=IntToStr(SecondOfTheYear(Now)+i);
      tmPkg:=TTmObj.Create;
      tmPkg.Name:=s;
      tmPkg.ID:=s1;
      tmPkg.ID2:=2; //grules
      if tmTs.Strings[i][2]='#' then  tmPkg.ID_Root:=ID_R
       else ID_R:=s1;

      GRulePackageList.AddObject(s1+'='+s,tmPkg);
     end;

    if (Trim(tmTs.Strings[i])<>'')
     and(tmTs.Strings[i][1]<>';')
      and(tmTs.Strings[i][1]<>'[')
       and(tmTs.Strings[i][1]<>'#') then
       begin
        tmGR:=TGRule.Create;
        tmGR.Init;
        tmGR.PackageName:=ID_R;
        tmGR.Load(tmTs.Strings[i],Self);
        if tmGR.ShortName<>'[Error]' then
         begin
          tmGR.ID:=NewID('G');
          GRules.Add(tmGR);
         end;
       end;
   end;
 except
  Result:=-1;
 end;
end;

function TKnowledgeBase.LoadFromFileAs(dllName,fName:String):Integer;
type
 TMethod = Function (FileName: WideString):TObject; stdcall;
var
 i: integer;
 LMethod:TMethod;
 s  : String;
 tmKb : TKnowledgeBase;
 L1,L2,L3,L4,L5 : String;
begin
 Vars.Clear;
 Rules.Clear;
 GRules.Clear;
 Facts.Clear;
 Templates.Clear;
 Functions.Clear;
 L1:='';L2:='';L3:='';L4:='';L5:='';
 s:=dllName;
// s:=ExtractFileDir(Application.ExeName);
// if dllName='CLIPS' then s:=s+'/Dll/CLIPSS.Dll';
 try
  i:=LoadLibrary(PChar(s));
  if i<>0 then
   begin
    LMethod:=Windows.GetProcAddress(i,
     PChar('LoadKnowledgeBase'));
    if Assigned(LMethod)then
     tmKb:=TKnowledgeBase(LMethod(fName));

    tmKb.GetGRules;
    for i:=0 to tmKb.Rules.Count-1 do
     L1:=L1+'1';
    for i:=0 to tmKb.Facts.Count-1 do
     L2:=L2+'1';
    for i:=0 to tmKb.Templates.Count-1 do
     L3:=L3+'1';
//    for i:=0 to tmKb.Vars.Count-1 do
    for i:=0 to tmKb.GRules.Count-1 do
     L4:=L4+'1';
    for i:=0 to tmKb.Functions.Count-1 do
     L5:=L5+'1';
    Self.CopyRFT(tmKb,L1,L2,L3,L4,L5);
   end;
  Result:=0;
 except
  Result:=-1;
 end;
end;

Procedure TTask.Init;
begin
// TempProblPart:=TStringList.Create;
// TempDecisPart:=TStringList.Create;
// ID:=IntToStr(MilliSecondOfTheYear(Now));
 K2:=nil;
 CBRPResults:=TStringList.Create;
end;

Destructor TTask.Destroy;
begin
// TempProblPart.Free;
// TempDecisPart.Free;
 CBRPResults.Free;

 inherited;
end;

Procedure TKnowledgeBase.Init;
begin
 ID:=IntToStr(MilliSecondOfTheYear(Now));

 Vars:=TList.Create;
 Rules:=TList.Create;
 GRules:=TList.Create;
 Facts:=TList.Create;
 Templates:=TList.Create;
 Functions:=TList.Create;
 Tasks:=TList.Create;
 FScales:=TList.Create;
 FVars:=TList.Create;

 TempPackageList:=TStringList.Create;
 RulePackageList:=TStringList.Create;
 GRulePackageList:=TStringList.Create;
 FactPackageList:=TStringList.Create;

 CErrors:=TStringList.Create;
 {
 if FileExists(ExtractFileDir(Application.ExeName)+'/Config/scales.cfg') then
   try
    LoadScalesFromFile(ExtractFileDir(Application.ExeName)+'/Config/scales.cfg');
   except
   end; }
// LoadTemplatesFromCFM;
// LoadGRules(ExtractFileDir(Application.ExeName)+'/Config/rules.cfg');
end;

Destructor TKnowledgeBase.Destroy;
var
 i	:	Integer;
begin
 for i:=0 to Functions.Count-1 do
  TObject(Functions.Items[i]).Free;
 Functions.Free;

 for i:=0 to Vars.Count-1 do
  TObject(Vars.Items[i]).Free;
 Vars.Free;

 for i:=0 to Rules.Count-1 do
  TObject(Rules.Items[i]).Free;
 Rules.Free;

 for i:=0 to GRules.Count-1 do
  TObject(GRules.Items[i]).Free;
 GRules.Free;

 for i:=0 to Facts.Count-1 do
  TObject(Facts.Items[i]).Free;
 Facts.Free;

 for i:=0 to Templates.Count-1 do
  TObject(Templates.Items[i]).Free;
 Templates.Free;

 for i:=0 to Tasks.Count-1 do
  TObject(Tasks.Items[i]).Free;
 Tasks.Free;

 TempPackageList.Free;
 FactPackageList.Free;
 RulePackageList.Free;
 GRulePackageList.Free;
 CErrors.Free;

 for i:=0 to FScales.Count-1 do
  TObject(FScales.Items[i]).Free;
 FScales.Free;

 for i:=0 to FVars.Count-1 do
  TObject(FVars.Items[i]).Free;
 FVars.Free;

 inherited;
end;

Procedure TTemplate.Init;
begin
// ID:=IntToStr(MilliSecondOfTheYear(Now));

 Slots:=TList.Create;
 DrawParams:=TStringList.Create;
end;

Destructor TTemplate.Destroy;
var
 i	:	Integer;
begin
 for i:=0 to Slots.Count-1 do
  TObject(Slots.Items[i]).Free;
 Slots.Free;
 DrawParams.Free;
 inherited;
end;
//----------------------------------------------------------------------------
Procedure TFVar.Init;
begin
 Len:=0;
 ListOfValues:=TStringList.Create;
 DrawParams:=TStringList.Create;
end;
//----------------------------------------------------------------------------
Procedure TFScale.Init;
begin
 ListOfValues:=TStringList.Create;
// ListOfNames:=TStringList.Create;
 DrawParams:=TStringList.Create;
end;
//----------------------------------------------------------------------------
Destructor TFScale.Destroy;
begin
 ListOfValues.Free;
 DrawParams.Free;
 inherited;
end;
//----------------------------------------------------------------------------
Destructor TFVar.Destroy;
begin
 ListOfValues.Free;
 DrawParams.Free;
// ListOfNames.Free;
 inherited;
end;

Procedure TCDictionary.Init;
begin
 Names:=TStringList.Create;
 Values:=TStringList.Create;
end;

Destructor TCDictionary.Destroy;
begin
 Names.Free;
 Values.Free;

 inherited;
end;

Procedure TFunct.Init;
begin
// ID:=IntToStr(MilliSecondOfTheYear(Now));

 Args:=TList.Create;
end;

Destructor TFunct.Destroy;
var
 i	:	Integer;
begin
 for i:=0 to Args.Count-1 do
  TObject(Args.Items[i]).Free;
 Args.Free;

 inherited;
end;

Procedure TFact.Init;
begin
// ID:=IntToStr(MilliSecondOfTheYear(Now));
 Slots:=TList.Create;
 DrawParams:=TStringList.Create;
end;

Destructor TFact.Destroy;
var
 i	:	Integer;
begin
 for i:=0 to Slots.Count-1 do
  TObject(Slots.Items[i]).Free;
 Slots.Free;
 DrawParams.Free;
 inherited;
end;

Procedure TActionItem.Init;
begin
 KBs:=TList.Create;
end;

Destructor TActionItem.Destroy;
var
 i	:	Integer;
begin
 for i:=0 to KBs.Count-1 do
  TObject(KBs.Items[i]).Free;
 KBs.Free;
 inherited;
end;

Procedure TRule.Init;
begin
// ID:=IntToStr(MilliSecondOfTheYear(Now));

 Conditions:=TList.Create;
 Actions:=TList.Create;
 DrawnObjects:=TList.Create;
 DrawParams:=TStringList.Create;
end;

Procedure TGRule.Init;
begin
// ID:=IntToStr(MilliSecondOfTheYear(Now));

 Conditions:=TList.Create;
 Actions:=TList.Create;
 DrawnObjects:=TList.Create;
 DrawParams:=TStringList.Create;
end;

Destructor TRule.Destroy;
var
 i	:	Integer;
begin
 for i:=0 to Conditions.Count-1 do
  TObject(Conditions.Items[i]).Free;
 Conditions.Free;

 for i:=0 to Actions.Count-1 do
  TObject(Actions.Items[i]).Free;
 Actions.Free;

 for i:=0 to DrawnObjects.Count-1 do
  TObject(DrawnObjects.Items[i]).Free;
 DrawnObjects.Free;
 DrawParams.Free;
 inherited;
end;

Destructor TGRule.Destroy;
var
 i	:	Integer;
begin
 for i:=0 to Conditions.Count-1 do
  TObject(Conditions.Items[i]).Free;
 Conditions.Free;

 for i:=0 to Actions.Count-1 do
  TObject(Actions.Items[i]).Free;
 Actions.Free;

 for i:=0 to DrawnObjects.Count-1 do
  TObject(DrawnObjects.Items[i]).Free;
 DrawnObjects.Free;
 DrawParams.Free;

 inherited;
end;

function TActionItem.CopyKBs(KBL,KBs:TList):Integer;
{function MakeStr(j:Integer):String;
var
 i  : Integer;
begin
 for i:=0 to j do
  Result:=Result+'1';
end;
}
var
 tmKb : TKnowledgeBase;
 i  : Integer;
// R,F,T,V,U  : String;
begin
 try
  KBs.Clear;
  for i:=0 to KBL.Count-1 do
   begin
    tmKb:=TKnowledgeBase.Create;
    tmKb.Init;
    tmKb.Name:=TKnowledgeBase(KBL.Items[i]).Name;
//    tmKb.TempPackageList.Text:=TKnowledgeBase(KBL.Items[i]).TempPackageList.Text;
//    tmKb.FactPackageList.Text:=TKnowledgeBase(KBL.Items[i]).FactPackageList.Text;
//    tmKb.GRulePackageList.Text:=TKnowledgeBase(KBL.Items[i]).GRulePackageList.Text;
//    tmKb.RulePackageList.Text:=TKnowledgeBase(KBL.Items[i]).RulePackageList.Text;

    tmKb.ShortName:=TKnowledgeBase(KBL.Items[i]).ShortName;
    tmKb.Kind:=TKnowledgeBase(KBL.Items[i]).Kind;
    tmKb.Description:=TKnowledgeBase(KBL.Items[i]).Description;

//    R:=MakeStr(TKnowledgeBase(KBL.Items[i]).Rules.Count-1);
//    F:=MakeStr(TKnowledgeBase(KBL.Items[i]).Facts.Count-1);
//    T:=MakeStr(TKnowledgeBase(KBL.Items[i]).Templates.Count-1);
//    V:=MakeStr(TKnowledgeBase(KBL.Items[i]).Vars.Count-1);
//    V:=MakeStr(TKnowledgeBase(KBL.Items[i]).GRules.Count-1);
//    U:=MakeStr(TKnowledgeBase(KBL.Items[i]).Functions.Count-1);
//    U:=MakeStr(TKnowledgeBase(KBL.Items[i]).Tasks.Count-1);
    tmKb.CopyRFT_V3(TKnowledgeBase(KBL.Items[i]));

//    tmKb.CopyRFT(TKnowledgeBase(KBL.Items[i]),R,F,T,V,U);
    KBs.Add(tmKb);
   end;
//  KBs:=KBL;
  Result:=0;
 except
  on E:Exception do
   begin
    ShowMessage(e.Message);
    Result:=-1;
   end;
 end
end;

end.


