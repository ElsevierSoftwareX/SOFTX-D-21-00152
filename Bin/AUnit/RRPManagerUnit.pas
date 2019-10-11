{------------------------------------------------------------------------------}
{                                                                              }
{  Personal Knowledge Base Designer                                            }
{  by A.Yu. Yurin, N.O. Dorodnykh                                              }
{                                                                              }
{  iskander@icc.ru                                                             }
{  http://knowledge-core.ru/                                                   }
{                                                                              }
{------------------------------------------------------------------------------}

unit RRPManagerUnit;

interface
uses SysUtils, Classes, Dialogs, StdCtrls, Variants,
     Forms, Windows, ExtCtrls, Buttons, Controls, Graphics, ComCtrls, USTDIClass,
     RzLabel, RzPanel, RzButton, RzCommon, RzRadChk,
     RzListVw;
type
  TRRPKnowledgeBase = class (TObject)
   Rules : TList;
   Facts	: TList;  // ? необходимость в фактах
   FiredRules : TStringList;
   DFileName  : PChar;
   procedure Init;
   destructor Destroy; override;
   Function LoadRules(RFileNames:TStrings):Integer;

   Function LoadFacts(FactsFormPath:string):Integer; //load facts from dir with description of fact forms

   Function GetRuleName(KBString:String):String;
//   Function GetFragmentOfRule(KBString,FD:String):String;//
   Function GetRuleDescription(KBString:String):String;
   Function GetRuleDescriptionV2(KBString:String):String;

   Function LoadKnowledgeBaseViaDll(Bases:TStringList;m:Integer):Integer;
   Function RunCLIPSViaDll(s:string):Integer;
   Function ShowRules:Integer;
   Function GetRRPFactsInfo:string;

   Function GetFiredRuleName(ResFileString:String):String;
   Function GetFiredRuleAssertedFacts(RuleName,FactName:String):String;
   Function GetFiredRuleAssertedFactsV2(RuleName,
    FactName:String;StID:Integer):String;
   Function GetFiredRuleAssertedFactsV3(FactNames:TStringList;StID:Integer):String;

   Function IndexOfFactByName(s:string):Integer;
   Function GetFactSlotCaption(FactName,SlotName:string):string;
  end;

  TRRPManager = class (TObject)
   KB : TRRPKnowledgeBase;
   CaseId : String;
   StateID: Integer;
   States : TList;
//   StateProcesses : TStrings; //процессы (деградационные), наблюдаемые в  данном состо€нии
//   StateProperties  : TStrings;//параметры, наблюдаемые в  данном состо€нии
   procedure Init;
   destructor Destroy; override;
   function ClearFactSlotValues:Integer;
  Private
  end;

  TRRPRule = class (TObject)
   Name : String;
   Body	: TStrings;   // ? необходимость в теле правила
   Description    : TStrings;
   procedure Init;
   destructor Destroy; override;
  end;

  TRRPFact = class (TObject)
   Name : String;
   ID : Integer;
   EditedByUser : Boolean;

   Caption : string;
   FormName : string; //!!!
   Body	: TStrings;

   Slots : TStringList;
   SlotValues : TStringList;    //!!!
   SlotCaptions : TStringList;  //!!!
   SlotPossibleValues : TStringList;

   Description    : TStrings;
   procedure Init;
   destructor Destroy; override;

   Function LoadFact(FactFormPath:string):Integer; //load fact from dir with description of fact forms
//   Function ShowPreviewArea(WC:TWinControl):Integer;
   Function UpdatePreviewArea(WC:TWinControl):Integer;

   Function GetAsCLIPS:string;
  end;

  TREvent = class (TObject)
   Name : String;
   CF	  : String;
   DP	  : String;
   Dam  : String;
   Des  : String;
   Fai  : String;

   REProperties  : TStringList;
   procedure Init;
   destructor Destroy; override;
   function SortREProperties:Integer;
   function CopyREProperties(px,s:string):Integer;
  end;

  TRMState = class (TObject)
//   StateProcesses : TStrings; //процессы (деградационные), наблюдаемые в  данном состо€нии
//   StateProperties  : TStrings;//параметры, наблюдаемые в  данном состо€нии
   REvents : TList;
   InitialConditions: TStrings;
   procedure Init;
   destructor Destroy; override;
   Function DelClones:integer;
   function IndexOfREProperties(ts:TStringList;ii:Integer):Integer;
   function MeargeREvents:Integer;
//   Function GroupResultsOnProcessSign:Integer;
//   Function SortResultsAndRemoveDubles:Integer;

  end;
var
  RRPManager: TRRPManager;
//  CurrentKB : TRRPKnowledgeBase;

implementation

uses //USpecInfot,
 CLIPSHeader,
 Math;//, UMainForm;
//------------------------------------------------------------------------------
Function TRMState.MeargeREvents:Integer;
Function isEqual(s:string;s1,s2:TStringList):Boolean;
var
 v1,v2 : string;
begin
 v1:=s1.Values[s];
 v2:=s2.Values[s];
 if (v1=v2)and(Trim(v1)<>'') then Result:=True
  else Result:=False;
end;

var
 i,j,c : Integer;
 tmTs : TStringList;
begin
 //sort
 for j := 0 to REvents.Count-1 do
  TREvent(REvents.Items[j]).SortREProperties;

 tmTs:=TStringList.Create;
 tmTs.Add('caption-meh=meh-');
 tmTs.Add('id-def=def-');
 tmTs.Add('id-des=des-');
 tmTs.Add('id-dam=dam-');

 for i := 0 to REvents.Count-1 do
 for j := 0 to REvents.Count-1 do
  begin
   //check for equivalents of dp
    for c := 0 to tmTs.Count-1 do
     begin
       if (isEqual(tmTs.Names[c],
        TREvent(REvents.Items[i]).REProperties,
         TREvent(REvents.Items[j]).REProperties))
         then //mearge description
          TREvent(REvents.Items[i]).CopyREProperties(
           tmTs.ValueFromIndex[c],
            TREvent(REvents.Items[j]).REProperties.Text
             );
      end;
  end;
 DelClones;
end;
//------------------------------------------------------------------------------
Function TRRPKnowledgeBase.GetFactSlotCaption(FactName,SlotName:string):string;
var
 i : Integer;
begin
 Result:='';
 i:=IndexOfFactByName(FactName);
 if i>-1 then
  Result:=TRRPFact(Facts.Items[i]).SlotCaptions.Values[SlotName];
 if Result='' then
  Result:=SlotName;
end;
 //------------------------------------------------------------------------------
Function TRRPManager.ClearFactSlotValues:Integer;
var
 i : Integer;
 tmRState : TRMState;
begin
 for i := 0 to KB.Facts.Count-1 do
  begin
   TRRPFact(KB.Facts.Items[i]).SlotValues.Clear;
  end;

 //!!!! last state
 if States.Count>0 then
  begin
   tmRState:=TRMState(States.Items[States.Count-1]);
   for i := 0 to tmRState.REvents.Count-1 do
    begin
     TREvent(tmRState.REvents.Items[i]).REProperties.Clear;
    end;
  end;

 KB.FiredRules.Clear;
end;
//------------------------------------------------------------------------------
Function TRMState.IndexOfREProperties(ts:TStringList;ii:Integer):Integer;
var
 i,j,c : Integer;
 tmEvent : TREvent;
begin
 Result:=-1;
 for i := REvents.Count-1 downto 0 do
  begin
   tmEvent:=TREvent(REvents.Items[i]);
   if i<>ii then
    begin
     c:=0;
      for j := 0 to ts.Count-1 do
       begin
        if tmEvent.REProperties.IndexOf(ts.Strings[j])<>-1 then
         Inc(c);
       end;
     if c=ts.Count then
      begin
       Result:=i;
       Break;
      end;
    end;
  end;
end;
//------------------------------------------------------------------------------
Function TREvent.CopyREProperties(px,s:string):Integer;
var
 i,j : Integer;
 tmTs : TStringList;
begin
 tmTs:=TStringList.Create;
 tmTs.Text:=s;
 for i := 0 to tmTs.Count-1 do
  begin
   if pos(px,tmTs.Names[i])>0 then
    begin
     j:=REProperties.IndexOf(tmTs.Strings[i]);
     if j=-1 then REProperties.Add(tmTs.Strings[i]);
    end;
  end;
end;
//------------------------------------------------------------------------------
Function TREvent.SortREProperties:Integer;
var
 i,j : Integer;
begin
 //sort
 for i := 0 to REProperties.Count-2 do
 for j := 0 to REProperties.Count-2 do
  if REProperties.Names[j]>
   REProperties.Names[j+1]
    then
     REProperties.Exchange(j,j+1);
end;
//------------------------------------------------------------------------------
Function TRMState.DelClones:Integer;
var
 i,j : Integer;
begin
try
 //sort
 for j := 0 to REvents.Count-1 do
  TREvent(REvents.Items[j]).SortREProperties;

 for i := 0 to REvents.Count-2 do
 for j := 0 to REvents.Count-2 do
  if TREvent(REvents.Items[j]).REProperties.Count<
   TREvent(REvents.Items[j+1]).REProperties.Count then
    REvents.Exchange(j,j+1);

 for i := REvents.Count-1 downto 0 do
  begin
   j:=IndexOfREProperties(TREvent(REvents.Items[i]).REProperties,i);
   if (j<>-1)and(j<>i) then
    REvents.Delete(i);
  end;
 Result:=0;
except
 Result:=-1;
end;
end;
//------------------------------------------------------------------------------
Function TRRPKnowledgeBase.IndexOfFactByName(s:string):Integer;
var
 i : Integer;
begin
 Result:=-1;
 for i := 0 to Facts.Count-1 do
  if TRRPFact(Facts.Items[i]).Name=s then
   begin
    Result:=i;
    Break;
   end;
end;
//------------------------------------------------------------------------------
Function TRRPKnowledgeBase.GeTRRPFactsInfo:string;
var
 i : Integer;
 tmF : TRRPFact;
begin
 Result:='';
 for i := 0 to Facts.Count-1 do
  begin
   tmF:=TRRPFact(Facts.Items[i]);
   Result:=Result+
    tmF.Caption+' : '+tmF.Name+' : '+#10+tmF.Slots.Text+
     #10+tmF.SlotValues.Text+#10;
  end;
end;
//------------------------------------------------------------------------------
Function TRRPFact.GetAsCLIPS:string;
var
 i : Integer;
 sv : string;
begin
 Result:='';
 if SlotValues.Count>0 then
  begin
   Result:='('+Name+' ';
   for i := 0 to Slots.Count-1 do
    begin
     sv:=Trim(StringReplace(
       SlotValues.Values[Slots.Names[i]],'_',' ',[rfReplaceAll]
        ));
     if sv<>'' then
      begin
       Result:=Result+'('+Slots.Names[i]+' "'+sv+'")';
      end;
    end;
   Result:=Result+')';
  end;
end;
//------------------------------------------------------------------------------
Function TRRPFact.UpdatePreviewArea(WC:TWinControl):Integer;
var
 tmGB : TRzGroupBox;
 i,j : Integer;
 s,s1 : string;
 tmC : TColor;
begin
  for j := 0 to WC.ComponentCount-1 do
   if Self.ID=TRzGroupBox(WC.Components[j]).Tag then
    begin
     tmGB:=TRzGroupBox(WC.Components[j]);
     //update info label
      s:='';
      tmC:=clNavy;
      for i := 0 to Slots.Count-1 do
       begin
        s1:='';
        s1:=SlotValues.Values[Slots.Names[i]];
        if s1<>'' then
    //     s1:='нет данных';
         s:=s+SlotCaptions.Values[Slots.Names[i]]+' : '+
          s1+'; ';
       end;

      s:=StringReplace(s,'_',' ',[rfReplaceAll]);
      if s='' then
       begin
        s:='нет данных';
        tmC:=clRed;
       end;

     TRzLabel(tmGB.Controls[0]).Caption:=s;
     TRzLabel(tmGB.Controls[0]).Font.Color:=tmC;
    end;
end;
//------------------------------------------------------------------------------
{Function TRRPFact.ShowPreviewArea(WC:TWinControl):Integer;
var
 tmGB : TRzGroupBox;
 tmBtn : TRzBitBtn;
 i : Integer;
 s,s1 : string;
 tmC : TColor;
begin
{
if EditedByUser then
 begin
  //create groupbox
  tmGB:=STDIClass.AddRzGB(WC,Caption,1,1,1);
  tmGB.Tag:=Self.ID;
  //create info label
  s:='';
  tmC:=clNavy;
  for i := 0 to Slots.Count-1 do
   begin
    s1:='';
    s1:=SlotValues.Values[Slots.Names[i]];
    if s1<>'' then
//     s1:='нет данных';
     s:=s+SlotCaptions.Values[Slots.Names[i]]+' : '+
      s1+'; ';
   end;

  s:=StringReplace(s,'_',' ',[rfReplaceAll]);
  if s='' then
   begin
    s:='нет данных';
    tmC:=clRed;
   end;

  STDIClass.AddRzLabel(tmGB,s,1,1,1,tmC,clCream,[fsBold]);
  if tmGB.Controls[tmGB.ControlCount-1] is TRzLabel then
   TRzLabel(tmGB.Controls[tmGB.ControlCount-1]).Align:=alClient;

  tmBtn:=STDIClass.AddRzBtn(tmGB,'+',1,1,20);
  tmBtn.Align:=alRight;
  tmBtn.Tag:=Self.ID;
  //!!!
  tmBtn.OnClick:=MainForm.CallEdiTRRPFactForm;
 end;
end;   }
//------------------------------------------------------------------------------
Function TRRPFact.LoadFact(FactFormPath:string):Integer; //load facts from dir with description of fact forms
var
 tmTs,tmVal : TStringList;
 i,sn : Integer;

begin
  tmTs:=TStringList.Create;
  tmVal:=TStringList.Create;

  tmTs.LoadFromFile(FactFormPath);
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
       StringReplace(tmTs.Strings[i],' ','++',[rfReplaceAll])
        );
     end; //end case
   end;
 Caption:=SlotCaptions.Values['form'];
 Name:=tmTs.Values['tempale_name'];
 if tmTs.Values['edited_by_user']='Yes' then
  EditedByUser:=True
   else
    EditedByUser:=False;

end;
//------------------------------------------------------------------------------
Function TRRPKnowledgeBase.LoadFacts(FactsFormPath:string):Integer; //load facts from dir with description of fact forms
var
 FileAttrs: Integer;
 sr: TSearchRec;
 i: Integer;

 tmFact : TRRPFact;
begin
 //search files in dir
  FileAttrs:=faAnyFile;
 if SysUtils.FindFirst(FactsFormPath+'\*.cfm',
                 FileAttrs,
                 sr) = 0
     then
      repeat
        //load facts description
       tmFact:=TRRPFact.Create;
       tmFact.Init;
       Facts.Add(tmFact);
       tmFact.ID:=Facts.Count-1;
       tmFact.LoadFact(FactsFormPath+sr.Name);
      until SysUtils.FindNext(sr)<>0;
  SysUtils.FindClose(sr);
end;
//------------------------------------------------------------------------------

Procedure TRRPManager.Init;
begin
 States:=TList.Create;
 KB:=TRRPKnowledgeBase.Create;
 KB.Init;
// KB.DFileName:=
//  PAnsiChar(ExtractFileDir(Application.ExeName)+'\TestInfo\clipsdll_oudata.txt');

// StateProcesses:=TStringList.Create;
// StateProperties:=TStringList.Create;
end;

Destructor TRRPManager.Destroy;
var
 i	:	Integer;
begin
 for i:=0 to States.Count-1 do
  TObject(States.Items[i]).Free;
 States.Free;
// StateProcesses.Free;
// StateProperties.Free;
 KB.Free;
 inherited;
end;

Procedure TRRPFact.Init;
begin
 Body:=TStringList.Create;
 Description:=TStringList.Create;

 Slots:=TStringList.Create;
 SlotValues:=TStringList.Create;
 SlotCaptions:=TStringList.Create;
 SlotPossibleValues:=TStringList.Create;
end;

Destructor TRRPFact.Destroy;
begin
 Body.Free;
 Description.Free;
 Slots.Free;

 SlotValues.Free;
 SlotPossibleValues.Free;
 SlotCaptions.Free;
 inherited;
end;

Procedure TRRPRule.Init;
begin
 Body:=TStringList.Create;
 Description:=TStringList.Create;
end;

Destructor TRRPRule.Destroy;
begin
 Body.Free;
 Description.Free;
 inherited;
end;

Procedure TREvent.Init;
begin
 REProperties:=TStringList.Create;
end;

Destructor TREvent.Destroy;
begin
 REProperties.Free;
 inherited;
end;

Destructor TRRPKnowledgeBase.Destroy;
var
 i	:	Integer;
begin
 for i:=0 to Rules.Count-1 do
  TObject(Rules.Items[i]).Free;
 Rules.Free;

 for i:=0 to Facts.Count-1 do
  TObject(Facts.Items[i]).Free;
 Facts.Free;

 FiredRules.Free;
 inherited;
end;

Procedure TRRPKnowledgeBase.Init;
begin
 Rules:=TList.Create;
 Facts:=TList.Create;
 FiredRules:=TStringList.Create;

// DFileName:=PAnsiChar(ExtractFileDir(Application.ExeName)+'\TestInfo\clipsdll_oudata.txt');
end;

Destructor TRMState.Destroy;
var
 i  : Integer;
begin
// StateProcesses.Free;
// StateProperties.Free;
 for i:=0 to Self.REvents.Count-1 do
  TObject(Self.REvents.Items[i]).Free;
 Self.REvents.Free;
 InitialConditions.Free;
 inherited;
end;

Procedure TRMState.Init;
begin
// StateProcesses:=TStringList.Create;
// StateProperties:=TStringList.Create;
 REvents:=TList.Create;
 InitialConditions:=TStringList.Create;
end;

Function TRRPKnowledgeBase.LoadRules(RFileNames:TStrings):Integer;
var
 i  : Integer;
 j  : Integer;
 tmKB   : TStrings;   //описание базы знаний
 tmRule : TRRPRule;
 tms  : String;
begin
 try
  Self.Rules.Clear;

  tmKB:=TStringList.Create;
  for i:=0 to RFileNames.Count-1 do
   begin
    tmKB.LoadFromFile(RFileNames.Strings[i]);

//    ShowMessage(tmKB.Text);

    for j:=0 to tmKB.Count-1 do
     if Trim(tmKB.Strings[j])<>'' then  //если строка не пуста€
      begin
       if (pos('defrule ',tmKB.Strings[j])>0) then  //если обнаружено правило
       //запись названи€ правила и его описани€
        begin
         tmRule:=TRRPRule.Create;
         tmRule.Init;
         Self.Rules.Add(tmRule);
         tmRule.Name:=GetRuleName(tmKB.Strings[j]);
         tmRule.Description.Text:=GetRuleDescriptionV2(tmKB.Strings[j]);
//         if tms<>'' then tmRule.Description.Add(tms);
         if tmRule.Name='' then
          begin
//           Application.MessageBox(
//            PAnsiChar(SIClass.LoadSingleString('e_01',ExtractFileDir(Application.ExeName)+'./Lang/msgs_02.lan')),
//             PAnsiChar(SIClass.LoadSingleString('m_00',ExtractFileDir(Application.ExeName)+'./Lang/msgs_01.lan')),MB_OK);
           Exit;
          end;
        end;
       if (Self.Rules.Count>0)and
         (pos('*',tmKB.Strings[j])=0)then
        begin
//         tms:=GeTRRPRuleDescription(tmKB.Strings[j]);
//         if tms<>'' then tmRule.Description.Add(tms);
         tmRule.Body.Add(tmKB.Strings[j]);
        end;
      end;
   end;
  Result:=0;
 except
  Result:=-1;
 end;
end;

Function TRRPKnowledgeBase.GetRuleName(KBString:String):String;
var
 tms  : String;
 i  : Integer;
begin
 try
  tms:=Copy(KBString,
   pos('defrule ',KBString)+Length('defrule '),
     Length(KBString)-pos('defrule ',KBString)-Length('defrule '));
  for i:=1 to Length(tms) do
   if tms[i]=' ' then Break;
  Result:=Copy(tms,1,i-1);
//  ShowMessage(tms+' / '+Result+' / '+IntToStr(i));
 except
  Result:='';
 end;
end;

Function TRRPKnowledgeBase.GetRuleDescriptionV2(KBString:String):String;
var
 i : Integer;
begin
 try
  Result:='';
  i:=pos('"',KBString); //open breaket
  if i>0 then
   Result:=Copy(KBString,i+1,Length(KBString)-i);

  i:=pos('"',Result); //close breaket
  if i>0 then
   Result:=Copy(Result,1,i-1);

  Result:=StringReplace(Result,':',':'+#10,[rfReplaceAll]);
  Result:=StringReplace(Result,' » ',' » '+#10,[rfReplaceAll]);
  Result:=StringReplace(Result,' ≈—Ћ» ',' ≈—Ћ» '+#10,[rfReplaceAll]);
  Result:=StringReplace(Result,' “ќ ',#10+' “ќ '+#10,[rfReplaceAll]);
 except
  Result:='';
 end;
end;

Function TRRPKnowledgeBase.GetRuleDescription(KBString:String):String;
begin
 try
  Result:='';
  if pos(';',KBString)>0 then
   Result:=Copy(KBString,
    pos(';',KBString)+1,
     Length(KBString)-pos(';',KBString));
 except
  Result:='';
 end;
end;

Function TRRPKnowledgeBase.ShowRules:Integer;
var
 i  : Integer;
begin
 for i:=0 to Self.Rules.Count-1 do
  ShowMessage('Rule '+IntToStr(i)+' : '+
   TRRPRule(Self.Rules.Items[i]).Description.Text
    );
end;

Function TRRPKnowledgeBase.LoadKnowledgeBaseViaDll(Bases:TStringList;m:Integer):Integer;
type
  TMethod = function (s:WideString;i:Integer):Integer; stdcall;
var
  i,c : Integer;
  ModuleID   : Cardinal;
  EntryPoint : Pointer;
  LMethod:TMethod;
begin
  Result:=0;
      //-------------------------------------------------------------------------
      ModuleID:=Windows.LoadLibrary(PChar(
       ExtractFileDir(Application.ExeName)+'\Dll\004.dll'
      ));

//    ShowMessage(GetModuleFileName(ModuleID));

      STDIClass.InternalGetMethodEntryPoint(ModuleID,'LoadKnowledgeBase',EntryPoint);
       if System.Assigned(EntryPoint) then
       for i:=0 to Bases.Count-1 do
         try
          LMethod:=Windows.GetProcAddress(ModuleID,
           PChar('LoadKnowledgeBase'));
          if Assigned(LMethod)then
           begin
            c:=0;
            if ((m=3)or(m=1))and(i=0) then c:=1;
            if ((m=2)or(m=3))and(i=Bases.Count-1) then c:=m;

            Result:=LMethod(Bases.Strings[i],c);
            if Result<>1 then
             Application.MessageBox(PChar('Error loading: '+Bases.Strings[i]),
              PChar(Application.Title),MB_OK);
           end;
         except
         end;
      //-------------------------------------------------------------------------
 Self.LoadRules(Bases);
end;

Function TRRPKnowledgeBase.RunCLIPSViaDll(s:string):Integer;
type
  TMethod = function (s,sf:WideString):Integer; stdcall;
var
  i : Integer;
  ModuleID   : Cardinal;
  EntryPoint : Pointer;
  LMethod:TMethod;
  tmTs : TStringList;
begin
 DFileName:=PChar(s);
      //-------------------------------------------------------------------------
      ModuleID:=Windows.LoadLibrary(PChar(
       ExtractFileDir(Application.ExeName)+'\Dll\004.dll'
      ));

      STDIClass.InternalGetMethodEntryPoint(ModuleID,'RunCLIPS',EntryPoint);
       if System.Assigned(EntryPoint) then
         try
          LMethod:=Windows.GetProcAddress(ModuleID,
           PChar('RunCLIPS'));
          if Assigned(LMethod)then
           begin
            Result:=LMethod(s,s+'f');
            if Result=-1 then
             Application.MessageBox(PChar('Error RunCLIPS)'),
              PChar(Application.Title),MB_OK);
           end;
         except
         end;
      //-------------------------------------------------------------------------
   //get facts in the work memory
   tmTs:=TStringList.Create;
   tmTs.Add('exist-meh');
   tmTs.Add('exist-def');
   tmTs.Add('exist-dam');
   tmTs.Add('exist-des');

   GetFiredRuleAssertedFactsV3(tmTs,RRPManager.States.Count-1);

   tmTs.LoadFromFile(RRPManager.KB.DFileName); //load description

   //get fired rules
   FiredRules.Clear;
    for i:=0 to tmTs.Count-1 do
     if pos('FIRE',tmTs.Strings[i])>0 then
      begin
       FiredRules.Add(GetFiredRuleName(tmTs.Strings[i]));
      end;
end;

//получение наименовани€ сработавшего правила
Function TRRPKnowledgeBase.GetFiredRuleName(ResFileString:String):String;
begin
 if pos('FIRE',ResFileString)>0 then
   Result:=Copy(ResFileString,11,pos(': f',ResFileString)-11)
    else Result:='';
end;

//дл€ сложных - упор€доченных фактов
Function TRRPKnowledgeBase.GetFiredRuleAssertedFactsV3(FactNames:TStringList;StID:Integer):String;
Function GroupAndOrderFacts(tStID:Integer):String;
var
 i  : Integer;
 j  : Integer;
 tmS  : String;
begin
 for i:=0 to TRMState(RRPManager.States.Items[tStID]).REvents.Count-2 do
  for j:=0 to TRMState(RRPManager.States.Items[tStID]).REvents.Count-2 do
   if (TREvent(TRMState(RRPManager.States.Items[tStID]).REvents.Items[j]).REProperties.Values['ex-dp']<
    TREvent(TRMState(RRPManager.States.Items[tStID]).REvents.Items[j+1]).REProperties.Values['ex-dp'])or
     ((TREvent(TRMState(RRPManager.States.Items[tStID]).REvents.Items[j]).REProperties.Values['ex-dp']=
      TREvent(TRMState(RRPManager.States.Items[tStID]).REvents.Items[j+1]).REProperties.Values['ex-dp'])and
       (TREvent(TRMState(RRPManager.States.Items[tStID]).REvents.Items[j]).REProperties.Values['cf']<
        TREvent(TRMState(RRPManager.States.Items[tStID]).REvents.Items[j+1]).REProperties.Values['cf']))
     then
    begin
     tmS:=TREvent(TRMState(RRPManager.States.Items[tStID]).REvents.Items[j]).REProperties.Text;
     TREvent(TRMState(RRPManager.States.Items[tStID]).REvents.Items[j]).REProperties.Text:=
      TREvent(TRMState(RRPManager.States.Items[tStID]).REvents.Items[j+1]).REProperties.Text;
     TREvent(TRMState(RRPManager.States.Items[tStID]).REvents.Items[j+1]).REProperties.Text:=tmS;
    end;
end;

Function GeTRRPFactSlotStructuredDescription(S:String):String;
var
 N,V  : String;
begin
 V:=Copy(S,pos('"',S)+1,pos('")',s)-pos('"',s)-1);
 N:=Copy(S,1,pos('"',s)-2);
 GeTRRPFactSlotStructuredDescription:=N+'='+V;
end;

Function GeTRRPFactSlots(S:String):String;
var
 ts1  : TStrings;
 b,e  : Integer;
begin
 ts1:=TStringList.Create;
 s:=StringReplace(s,'nil','""',[rfReplaceAll]);
 S[1]:='_';
 while 1=1 do
  begin
   if //(i=10)or
   (pos('"',S)=0) then Break;
   b:=pos('(',S); //поиск открывающей скобки слота
   e:=pos('")',S); //поиск закрывающей скобки слота
   if (b>0)and(e>0)then
    begin
     ts1.Add(GeTRRPFactSlotStructuredDescription(Copy(S,b+1,e-b+1)));
     S:=Copy(S,e+1,Length(S)+b-e);  //удал€ем извлеченный фрагмент
    end;
  end;
 GeTRRPFactSlots:=ts1.Text;
end;

var
  i,j,k   :       Integer;
  tmTs  :       TStrings;
  tmTs1  :       TStrings;

  sF    : Integer;
  tmEvent  : TREvent;
  tmS   : String;
  tmS1   : String;
begin
 tmTs:=TStringList.Create;
 tmTs1:=TStringList.Create;
 try
//  SaveFacts(PAnsiChar(ExtractFileDir(Application.ExeName)+'./TestInfo/clipsdll_facts.txt'),0,nil);
  tmTs.LoadFromFile(DFileName+'f');

  for k := 0 to FactNames.Count-1 do
  begin
  for i:=0 to tmTs.Count-1 do
   try
    //search for fact
    if (pos(FactNames.Strings[k],tmTs.Strings[i])>0) then
      begin
       //создать запись в случае нахождени€ факта
//       if True then

       tmEvent:=TREvent.Create;
       tmEvent.Init;
       TRMState(
        RRPManager.States.Items[StID]
         ).REvents.Add(tmEvent);

       tmS1:=tmTs.Strings[i];  //строка, содержаща€ описание факта

       //обработка строки,с целью извлечени€ слотов
       tmTs1.Text:=GeTRRPFactSlots(tmS1);
//       ShowMessage(tmTs1.Text);
       for j:=0 to tmTs1.Count-1 do
        if tmTs1.ValueFromIndex[j]<>'' then
         begin
          tmEvent.REProperties.Add(
          // FactNames.Strings[k]+'-'+
            tmTs1.Strings[j]
             );
//          ShowMessage(tmTs1.ValueFromIndex[j]);
         end;
//!!!!
//       tmEvent.SortREProperties;
      end;
    except
    end;

   end;
   TRMState(
    RRPManager.States.Items[StID]
     ).MeargeREvents;

   Result:='0';
  except
   Result:='-1';
  end;
end;

//дл€ сложных - упор€доченных фактов
Function TRRPKnowledgeBase.GetFiredRuleAssertedFactsV2(RuleName,
 FactName:String;StID:Integer):String;
var
  i,j   :       Integer;
  tmTs  :       TStrings;

  sF    : Integer;
  tmEvent  : TREvent;
  tmS   : String;
begin
  tmTs:=TStringList.Create;
 try
  SaveFacts(PAnsiChar(ExtractFileDir(Application.ExeName)+'./TestInfo/clipsdll_facts.txt'),0,nil);
  tmTs.LoadFromFile(ExtractFileDir(Application.ExeName)+'./TestInfo/clipsdll_facts.txt');

  for i:=0 to Rules.Count-1 do
   if TRRPRule(Rules.Items[i]).Name=RuleName then        //look for rules
    begin
     sF:=-1;
     for j:=0 to TRRPRule(Rules.Items[i]).Body.Count-1 do  //look for assert line
      try
      if (pos('assert',TRRPRule(Rules.Items[i]).Body.Strings[j])>0) then sF:=0;
//      and
      if (sF=0)and (pos(FactName,TRRPRule(Rules.Items[i]).Body.Strings[j])>0) then
       begin
        //создать запись в случае нахождени€ факта
        tmEvent:=TREvent.Create;
        tmEvent.Init;
        TRMState(
         RRPManager.States.Items[StID]
          ).REvents.Add(tmEvent);
        Inc(sF);
       end;
      if (sF=1)and (pos('"',TRRPRule(Rules.Items[i]).Body.Strings[j])>0)then
       begin
        tmS:='';
        //значение
        tmS:=Copy(TRRPRule(Rules.Items[i]).Body.Strings[j],
         pos('"',TRRPRule(Rules.Items[i]).Body.Strings[j])+1,
          pos('")',TRRPRule(Rules.Items[i]).Body.Strings[j])-
           pos('"',TRRPRule(Rules.Items[i]).Body.Strings[j])-1);
//        ShowMessage(tmS);
        //поиск значени€
        if (tmS<>'')and(pos('name',TRRPRule(Rules.Items[i]).Body.Strings[j])>0) then
         tmEvent.Name:=tmS else
          if (tmS<>'')and(pos('ex-dp',TRRPRule(Rules.Items[i]).Body.Strings[j])>0) then
           tmEvent.DP:=tmS else
            if (tmS<>'')and(pos('ex-dam',TRRPRule(Rules.Items[i]).Body.Strings[j])>0) then
             tmEvent.Dam:=tmS else
              if (tmS<>'')and(pos('ex-des',TRRPRule(Rules.Items[i]).Body.Strings[j])>0) then
               tmEvent.Des:=tmS else
                if (tmS<>'')and(pos('cf',TRRPRule(Rules.Items[i]).Body.Strings[j])>0) then
                 tmEvent.CF:=tmS else
                 if (tmS<>'') then
                  tmEvent.REProperties.Add(
                   Copy(TRRPRule(Rules.Items[i]).Body.Strings[j],
                     pos('(',TRRPRule(Rules.Items[i]).Body.Strings[j])+1,
                      pos('"',TRRPRule(Rules.Items[i]).Body.Strings[j])-2-
                       pos('(',TRRPRule(Rules.Items[i]).Body.Strings[j]))

                   );
       end;
      except
      end;
    end;
   Result:=tmS;
  except
   Result:='';
  end;
end;

//дл€ простых - неупор€доченных фактов
Function TRRPKnowledgeBase.GetFiredRuleAssertedFacts(RuleName,FactName:String):String;
var
  i,j   :       Integer;
  tmTs  :       TStrings;
begin
  tmTs:=TStringList.Create;
 try
  tmTs.Clear;
  for i:=0 to Rules.Count-1 do
   if TRRPRule(Rules.Items[i]).Name=RuleName then        //look for rules
    begin
     for j:=0 to TRRPRule(Rules.Items[i]).Body.Count-1 do  //look for assert line
      if (pos('assert',TRRPRule(Rules.Items[i]).Body.Strings[j])>0)and
         (pos(FactName,TRRPRule(Rules.Items[i]).Body.Strings[j])>0)then
        //строка добавлени€ именно этого факта найдена
        begin //вычлен€ем добавл€емый факт - между " "
         tmTs.Add(Copy(TRRPRule(Rules.Items[i]).Body.Strings[j],
           pos('"',TRRPRule(Rules.Items[i]).Body.Strings[j])+1,
            pos('")',TRRPRule(Rules.Items[i]).Body.Strings[j])-
             pos('"',TRRPRule(Rules.Items[i]).Body.Strings[j])-1));
        end;
     Break;
    end;
   Result:=tmTs.Text;
  except
   Result:='';
  end;
end;

//------------------------------------------------------------------------------
//подготовка данных дл€ публикации дерева событий


Function GeTRRPFactSlotStructuredDescription(S:String):String;
var
 N,V  : String;
begin
 V:=Copy(S,pos('"',S)+1,pos('")',s)-pos('"',s)-1);
 N:=Copy(S,1,pos('"',s)-2);
 //перевод в нижний регистр
 if V<>'' then V:=V[1]+AnsiLowerCase(Copy(V,2,Length(V)-1));
 GeTRRPFactSlotStructuredDescription:=N+'='+V;
end;

Function GeTRRPFactSlots(S:String):String;
var
 ts1  : TStrings;
 b,e  : Integer;
begin
 ts1:=TStringList.Create;
 S[1]:='_';
 while 1=1 do
  begin
   if //(i=10)or
   (pos('"',S)=0) then Break;
   b:=pos('(',S); //поиск открывающей скобки слота
   e:=pos('")',S); //поиск закрывающей скобки слота
   if (b>0)and(e>0)then
    begin
     ts1.Add(GeTRRPFactSlotStructuredDescription(Copy(S,b+1,e-b+1)));
     S:=Copy(S,e+1,Length(S)+b-e);  //удал€ем извлеченный фрагмент
    end;
  end;
 GeTRRPFactSlots:=ts1.Text;
end;


end.
