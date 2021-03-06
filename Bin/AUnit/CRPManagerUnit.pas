{------------------------------------------------------------------------------}
{                                                                              }
{  Personal Knowledge Base Designer                                            }
{  by A.Yu. Yurin, N.O. Dorodnykh                                              }
{                                                                              }
{  iskander@icc.ru                                                             }
{  http://knowledge-core.ru/                                                   }
{                                                                              }
{------------------------------------------------------------------------------}

unit CRPManagerUnit;

interface

uses SysUtils, Classes, Dialogs, StdCtrls, Variants,
     Forms, Windows, ExtCtrls, Buttons, Controls, Graphics,
     ComCtrls, RzTreeVw, RzLabel, RzPanel, UPKBClass;

type
 TCRPResults = class (TObject)  //?????????? ??????????
  CaseList : TList;     //?????? ?????????? ???????????
  procedure Init;
  destructor Destroy; override;
  Function SortCaseList:Integer;
  Function IndexOf(ID:string):Integer;
 end;

 TCRPResult = class (TObject) //?????????? ??????????
  CaseID : String;          //?????????
  StepResults : TStringList;        //<step_id=sim;uncer>
  SumSimilarity :  Double;    //????????
  SumUncertainly:  Double;    //????????????????
  procedure Init;
  destructor Destroy; override;
 end;
{
 //??????: ?????????? ?????????? ? ? ?? ??? ???, ????????
 //?????????? ???? ??????????? ???????? ??? ???
 TEventTreeNode = class (TObject)
  Name	:	String;         //???????????? ????
  FCase : Variant;  //?????????, ????????? ? ?????? ?????
//  Equipment : String;     //equipment

  Equipment : Variant;     //equipment
  EquipmentForStore : String;

  Cases : TStringList;    //cases connected with current node
  CasesForStore : TStringList;

  ImageIndex  : Integer;  //???????????, ????????? ? ?????? ?????
  AbsIndex  : Integer;    //?????????? ?????? ???? ? ??????
  procedure Init;
  destructor Destroy; override;
 end;
 }
 TCRPManager = class (TObject)
 private
//  LHandle  : HMODULE;
 public
  Function GetTextualDscriptionForCase(tmID:String;sF:Integer;List:TStringList):TStrings;
//  procedure AfterConstruction;  override;
//  destructor Destroy; override;
 published

// function GC_Execute(SC:Double):String;

//  Function DataPreporationForEquipmentTree:TStrings;
//  Function DataPreporationForFIETree(SF,TT:Integer;
//   tCRPResults:TCRPResults; var NodeLst:TStringList):TStringList;
//  Function DataLoadForEquipmentTree:Integer;

//  Function DataPublicationForEquipmentTree(tmWC:TWinControl;tmNodeLst:TStrings):Integer;
//  Function DataPublicationForFIETree(tmWC:TWinControl;tmNodeLst:TStrings):Integer;

  Function GetColorForOutputResultsPublication(Val:String;OCount:Integer):TColor;
  Function GetColorForUResultsPublication(Val:Double;OCount:Integer):TColor;

//  Function GetNodeDescription(tmF:Variant;sFlag:Integer;
//   var NodeLst,NodeNameLst:TStringList;dFlag,TT:Integer):String;

  Function CaseRetrieveProcedure(T1:TTask;K1:TKnowledgeBase):Integer;
  Function CRP_PrepCaseDescriptions(
 var Cases,Weigths,Constraints:String;T1:TTask;K1:TKnowledgeBase):Integer;

  Function GetTextualDscriptionForCases(sF:Integer;List:TStringList):TStrings;
  Function get_EC(s:String):TStringList;
//  Function ReloadCaseDescriptors:Integer;
 end;

var
 CRPManager	:	TCRPManager;
 CRPResults :  TCRPResults;

// NodeLst1   : TStringList; //browser
// NodeLst2   : TStringList; //failure,event

implementation

uses USTDIClass;
//------------------------------------------------------------------------
Function TCRPResults.IndexOf(ID:string):Integer;
var
 i : Integer;
begin
 Result:=0;
 for i := 0 to CaseList.Count do
  begin
   if TCRPResult(CaseList.Items[i]).CaseID=ID then
    begin
     Result:=i;
     Break;
    end;
  end;
end;

//------------------------------------------------------------------------

Function TCRPManager.GetColorForOutputResultsPublication(Val:String;OCount:Integer):TColor;
var
 iVal : Integer;
 Range: Double;
begin
 Result:=clCream;
 try
  iVal:=Round(StrToFloat(Val)*100);
 except
  iVal:=0;
 end;
  Range:=100/OCount;
 if (iVal>={90} Round(Range*(90/100)+(100-Range))) then Result:=clLime;
// if (v1<85)and(v1>=75) then Result:=clOlive;
 if (iVal<{90}Round(Range*(90/100)+(100-Range)))
  and(iVal>{75}Round(Range*(75/100)+(100-Range))) then Result:=clMoneyGreen;
 if (iVal<={75}Round(Range*(75/100)+(100-Range)))
  and(iVal>{50}Round(Range*(50/100)+(100-Range))) then Result:=clSkyBlue;
 if (iVal<={50}Round(Range*(50/100)+(100-Range)))
  and(iVal>{20}Round(Range*(20/100)+(100-Range))) then Result:=clYellow;
 if (iVal<={20}Round(Range*(20/100)+(100-Range))) then Result:=13160432//clRed;
end;

Function TCRPManager.GetColorForUResultsPublication(Val:Double;OCount:Integer):TColor;
var
 iVal : Integer;
 Range: Double;
begin
 Result:=clCream;
 try
  iVal:=Round(Val*100);
 except
  iVal:=0;
 end;
  Range:=100/OCount;
//  ShowMessage(IntToStr(iVal)+' / '+FloatToStr(Range));
 if (iVal>=Round(Range*(80/100){+(100-Range)})) then Result:=13160432;
// if (v1<85)and(v1>=75) then Result:=clOlive;
 if (iVal<Round(Range*(80/100){+(100-Range)}))
  and(iVal>Round(Range*(50/100){+(100-Range)})) then Result:=clYellow;
 if (iVal<=Round(Range*(50/100){+(100-Range)}))
  and(iVal>Round(Range*(25/100){+(100-Range)})) then Result:=clSkyBlue;
 if (iVal<=Round(Range*(25/100){+(100-Range)}))
  and(iVal>Round(Range*(10/100){+(100-Range)})) then Result:=clMoneyGreen;
 if (iVal<Round(Range*(10/100){+(100-Range)}))
  then Result:=clLime
end;

Procedure TCRPResults.Init;
begin
 CaseList:=TList.Create;
// inherited;
end;

Destructor TCRPResults.Destroy;
var
 i	:	Integer;
begin
 for i:=0 to CaseList.Count-1 do
  TObject(CaseList.Items[i]).Free;
 CaseList.Free;
 inherited;
end;

Procedure TCRPResult.Init;
begin
 StepResults:=TStringList.Create;
end;

Destructor TCRPResult.Destroy;
var
 i	:	Integer;
begin
// for i:=0 to StepResults.Count-1 do
//  TObject(StepResults.Items[i]).Free;
// CaseVar.Free;
 StepResults.Free;
 inherited;
end;

//?????????? ???????? ? ???????????? ?? ?????????? sim ? uncer
Function TCRPResults.SortCaseList:Integer;
var
 i  : Integer;
 j  : Integer;
begin
 try
 for i:=0 to CaseList.Count-2 do
 for j:=0 to CaseList.Count-2 do
  if (TCRPResult(CaseList.Items[j]).SumSimilarity<
   TCRPResult(CaseList.Items[j+1]).SumSimilarity)or
    ((TCRPResult(CaseList.Items[j]).SumSimilarity=
     TCRPResult(CaseList.Items[j+1]).SumSimilarity)
      and (TCRPResult(CaseList.Items[j]).SumUncertainly>
       TCRPResult(CaseList.Items[j+1]).SumUncertainly)){or
        ((TCRPResult(CaseList.Items[j]).CaseVar.FailureDate<
         TCRPResult(CaseList.Items[j+1]).CaseVar.FailureDate)and
         (TCRPResult(CaseList.Items[j]).SumSimilarity=
          TCRPResult(CaseList.Items[j+1]).SumSimilarity)
           and (TCRPResult(CaseList.Items[j]).SumUncertainly=
            TCRPResult(CaseList.Items[j+1]).SumUncertainly)) }
        then
   CaseList.Exchange(j,j+1);
   Result:=0;
 finally
   Result:=-1;
 end;
end;

Function TCRPManager.CaseRetrieveProcedure(T1:TTask;K1:TKnowledgeBase):Integer;
type
 TCRP_GetCasesForTriplesValueWeigthConstraint=
  Function(Cases,Weigths,Constraints,Ids:WideString):WideString; stdcall; //external ExtractFileDir(Application.ExeName)+'./crpdll.dll';
var
 v,w,c,dllr  : String;
 i  : Integer;
 tsRes : TStrings;
 CRP: TCRP_GetCasesForTriplesValueWeigthConstraint;
 LHandle  : HMODULE;

 tmCase : TCRPResult;
// tmPf   : String;
begin
 CRPResults:=TCRPResults.Create;
 CRPResults.Init;
 tsRes:=TStringList.Create;

 //???????????? ????? ??????????
 LHandle:=LoadLibrary(PWideChar(ExtractFileDir(Application.ExeName)+'./Dll/002.dll'));
 if LHandle<>0 then  //?????????? ???????, ????? ???????
 try
// Result:=-1;
 //?????????? ??????? ?????? ??? ??????? ?????????
 //???? ????????? ?????? ???????, ?? ????????? ? ???????? ?????????? ????????
// ShowMessage('1');
  if CRP_PrepCaseDescriptions(v,w,c,T1,K1)=0 then
   begin
//     begin
      //?????????? ???????? ??? ?????? ??????? ?????????
      CRP:=GetProcAddress(LHandle,'CRP_GetCasesForTriplesValueWeigthConstraint');
      if Assigned(CRP) then //? ?????????? ?????????? ????? ?????????
       try
        dllr:=CRP(v,w,c,'');
       except
        dllr:='';
       end;
//             ShowMessage('v :: '+v);

//      wPauseForm.ShowProgress(900);
      tsRes.Clear;
      try
       tsRes.Text:=Copy(dllr,1,Length(dllr));
      except end;

      if LHandle<>0 then FreeLibrary(LHandle);  //???????? dll


    //------------------------------------------------------
    //add the current
       tmCase:=TCRPResult.Create;
       tmCase.Init;
       //!!!!
       tmCase.CaseID:='0';
       tmCase.SumSimilarity:=100;
       tmCase.SumUncertainly:=0;
       tmCase.StepResults.Clear;
       tmCase.StepResults.Add('0=100;0');
       CRPResults.CaseList.Add(tmCase);
    //------------------------------------------------------

     for i:=0 to tsRes.Count-1 do
//     if tsRes.ValueFromIndex[i]<>'0' then
      begin
       tmCase:=TCRPResult.Create;
       tmCase.Init;

       //!!!!
       tmCase.CaseID:=
        tsRes.Names[i];
 //       Copy(tsRes.Names[i],3,Length(tsRes.Names[i])-2);

       tmCase.SumSimilarity:=StrToFloat(tsRes.ValueFromIndex[i])*100;
       tmCase.SumUncertainly:=0;
       tmCase.StepResults.Clear;
       tmCase.StepResults.Add('1='+tsRes.ValueFromIndex[i]+';0');
       CRPResults.CaseList.Add(tmCase);

       Application.ProcessMessages;
      end;
//     wPauseForm.ShowProgress(1000);

     end
    else
     begin
//    Application.MessageBox(
//     PAnsiChar(LL.LoadSingleString('e_10',LFileName)),
//      PAnsiChar(LL.LoadSingleString('m_00',LFileName)),MB_OK);
     end;
//   end;
  T1.CBRPResults.Text:=tsRes.Text;
  Result:=0;
 except
  Result:=-1;
 end; //end try
end;

//--------------------------------------------------------------------------
Function TCRPManager.CRP_PrepCaseDescriptions(
 var Cases,Weigths,Constraints:String;T1:TTask;K1:TKnowledgeBase):Integer;

Function RemoveFirstSign(s:String):String;
var
 c  : Integer;
begin
 c:=pos('_',s);
 if c<>0 then RemoveFirstSign:=Copy(s,c+1,Length(s)-c)
  else RemoveFirstSign:=s;
end;

Function GetWeight(t:TStringList):TStringList;
var
 i  : Integer;
 j  : Integer;
// tmTs : TStringList;
 tmTs1 : TStringList;
begin
 Result:=TStringList.Create;
 tmTs1:=TStringList.Create;
 for i:=0 to t.Count-1 do
  begin
   tmTs1:=get_EC(t.Names[i]);
   for j:=0 to tmTs1.Count-1 do
    Result.Add(tmTs1.Strings[j]+'='+t.ValueFromIndex[i]);
  end;
//   Result:=tmTs.Text;
end;

//type
// TMethod = function (ProxyParams,InStr,URL:WideString):WideString; stdcall;

var
 i  : Integer;
 j  : Integer;
 tsCases:TStringList;
 tsWeigths:TStringList;
 tsConstraints:TStringList;
 tsIds:TStrings;

 tms  : String;
 CCnt : Integer;
 tmSlot : TSlot;

// tmTs : TStringList;

 s : String;
begin

// tmTs:=TStringList.Create;
 try
 tsCases:=TStringList.Create;
 tsWeigths:=TStringList.Create;     //?????? ??????? ????????
 tsConstraints:=TStringList.Create; //?????? ???????????

 tsWeigths.Clear;
 tsConstraints.Clear;

 //?????? ?? ?????? ??? ????????? ????????????
 //????????? ? ???? ?????????????????? %c%=ID;p1=v1 ...
//   tmTs:=TStringList.Create;
   try
    s:=T1.DataPreporationForCRP(K1);
   except
   end;

 //???????? ????????? ? tsCases
 tsCases.Delimiter:=';';
 tsCases.DelimitedText:=s;

  tsCases.SaveToFile('test_tsCases.log');
 Cases:=tsCases.Text;

 tsWeigths.Clear;
 for i := 0 to T1.F1.Slots.Count-1 do
  begin
   tmSlot:=TSlot(T1.F1.Slots.Items[i]);
   tms:=Trim(tmSlot.Constraint);
   if tms='' then tms:='0';

//   tsWeigths.Add(IntToStr(i)+'='+tms);
   tsWeigths.Add(AnsiUpperCase(tmSlot.ShortName)+'='+tms);
  end;
  tsWeigths.SaveToFile('test_tsWeigths.log');

 Weigths:=tsWeigths.Text;
 Constraints:=tsConstraints.Text;
 Result:=0;
except
 Result:=-1;
end;
end;

Function TCRPManager.GetTextualDscriptionForCase(tmID:String;sF:Integer;List:TStringList):TStrings;
//var
// i  : Integer;
// j  : Integer;
// c  : Integer;
// s  : String;
begin
 Result:=TStrings.Create;
try
{
 Result:=TStringList.Create;
 Result.Add('%c%='+IntToStr(sF)+'_'+tmF.Sys_Id);

 case sF of
 0,1,2,4: Result.AddStrings(get_EC(tmF.FObject.AName));
 3:Result.AddStrings(get_EC(tmF.FObject.Name));
 end;

 for i:=0 to List.Count-1 do
  begin

 case sF of
 0:begin  //det
   if List.Strings[i]='AIS.Machinery.Det.KindOfDet' then
    try
     if (not VarIsNull(tmF.FObject))and
      (not VarIsClear(tmF.FObject))then
        Result.AddStrings(get_EC(tmF.FObject.AAKindOfDet.Name));
    except
    end;
   if List.Strings[i]='User.FBase.Destruction' then
    try
     if (not VarIsNull(tmF.FailureDestruction))and
      (not VarIsClear(tmF.FailureDestruction))then
        Result.AddStrings(get_EC(tmF.FailureDestruction.Name));

     for j:=1 to tmF.FailureDesProp.Count do
      begin
       Result.Add(tmF.FailureDestruction.Name+
        '/'+tmF.FailureDesProp.GetAt(j).DesProp.Name+
         '/'+tmF.FailureDesProp.GetAt(j).DesPropValue
          );
      end;
    except
    end;
   if List.Strings[i]='User.FBase.Defect' then
    begin
     for j:=1 to tmF.FailureDefects.Count do
      Result.AddStrings(get_EC(tmF.FailureDefects.GetAt(j).Name));
     s:='';
     for j:=1 to tmF.FailureDefProp.Count do
      begin
       if s<>tmF.FailureDefProp.GetAt(j).Defect.Name then
         s:=tmF.FailureDefProp.GetAt(j).Defect.Name;
       Result.Add(s+'/'+tmF.FailureDefProp.GetAt(j).Property.Name+
        '/'+tmF.FailureDefProp.GetAt(j).PropValue
         );
      end;
    end;
   if List.Strings[i]='User.FBase.Damage' then
    begin
     for j:=1 to tmF.FailureDamages.Count do
      Result.AddStrings(get_EC(tmF.FailureDamages.GetAt(j).Name));
     s:='';
     for j:=1 to tmF.FailureDamProp.Count do
      begin
       if s<>tmF.FailureDamProp.GetAt(j).Damage.Name then
        s:=tmF.FailureDamProp.GetAt(j).Damage.Name;
       Result.Add(s+'/'+tmF.FailureDamProp.GetAt(j).DamProp.Name+
        '/'+tmF.FailureDamProp.GetAt(j).DamPropValue
         );
      end;
    end;
   if List.Strings[i]='User.FBase.DP' then
    begin
     for j:=1 to tmF.FailureDamDP.Count do
      Result.AddStrings(get_EC(tmF.FailureDamDP.GetAt(j).Name));
    end;

   end; //det
   1:begin  //se
   if List.Strings[i]='AIS.Machinery.SE.KindOfSE' then
    try
     if (not VarIsNull(tmF.FObject))and
      (not VarIsClear(tmF.FObject))then
        Result.AddStrings(get_EC(tmF.FObject.AAKindOfSe.Name));
    except
    end;

   end; //se
   2:begin  //ms
   if List.Strings[i]='AIS.Machinery.Complex.KindOfComplex' then
    try
     if (not VarIsNull(tmF.FObject))and
      (not VarIsClear(tmF.FObject))then
        Result.AddStrings(get_EC(tmF.FObject.AAKindOfComplex.Name));
    except
    end;

   end; //ms
   3:begin  //ts
   if List.Strings[i]='User.FBase.ExtSign' then
    begin
     for j:=1 to tmF.FailureExtSigns.Count do
      Result.AddStrings(get_EC(tmF.FailureExtSigns.GetAt(j).Name));

     s:='';
     for j:=1 to tmF.FailureExtSignProp.Count do
      begin
       if s<>tmF.FailureExtSignProp.GetAt(j).ExtSign.Name then
         s:=tmF.FailureExtSignProp.GetAt(j).ExtSign.Name;
       Result.Add(s+'/'+tmF.FailureExtSignProp.GetAt(j).Property.Name+
        '/'+tmF.FailureExtSignProp.GetAt(j).PropValue
         );
      end;
    end;
   if List.Strings[i]='User.FBase.Event' then
    begin
     for j:=1 to tmF.EEvents.Count do
      if Result.IndexOf(tmF.EEvents.GetAt(j).Event.Name)=-1 then
       Result.Add(tmF.EEvents.GetAt(j).Event.Name);
     for j:=1 to tmF.AEvents.Count do
      if Result.IndexOf(tmF.AEvents.GetAt(j).Event.Name)=-1 then
       Result.Add(tmF.AEvents.GetAt(j).Event.Name);
     for j:=1 to tmF.TCEvents.Count do
      if Result.IndexOf(tmF.TCEvents.GetAt(j).Event.Name)=-1 then
       Result.Add(tmF.TCEvents.GetAt(j).Event.Name);
    end;
   if List.Strings[i]='User.FBase.Scenario' then
    begin
     for j:=1 to tmF.EScenario.Count do
      if Result.IndexOf(tmF.EScenario.GetAt(j).Name)=-1 then
       Result.Add(tmF.EScenario.GetAt(j).Name);
     for j:=1 to tmF.AScenario.Count do
      if Result.IndexOf(tmF.AScenario.GetAt(j).Name)=-1 then
       Result.Add(tmF.AScenario.GetAt(j).Name);
     for j:=1 to tmF.TCScenario.Count do
      if Result.IndexOf(tmF.TCScenario.GetAt(j).Name)=-1 then
       Result.Add(tmF.TCScenario.GetAt(j).Name);
    end;
   end; //ts
   end; //end case

   if List.Strings[i]='User.FBase.ExtDisplay' then
    begin
     for j:=1 to tmF.FailureExtDisplay.Count do
      Result.AddStrings(get_EC(tmF.FailureExtDisplay.GetAt(j).Name));
    end;

   end;
}
except
end;
end;

Function TCRPManager.GetTextualDscriptionForCases(sF:Integer;List:TStringList):TStrings;
//var
// i  : Integer;
// j  : Integer;
// c  : Integer;
// tms  : TStrings;
// RS  : Variant;
// tmF  : Variant;

// tmPf : String;
// s  : String;
begin
 Result:=TStringList.Create;
try
// tms:=TStringList.Create;
if List.Count>0 then
begin
{ tmPf:='';
 case sF of
  1:tmPf:='SE';
  2:tmPf:='MS';
  3:tmPf:='TS';
 end;

 RS:=Factory.ResultSet('User.FBase.Failure'+tmPf,'Extent');
 RS.Execute();
 while RS.Next do
  try
   Application.ProcessMessages;
   wPauseForm.RzProgressBar1.IncPartsByOne;

   tmF:=Factory.OpenId('User.FBase.Failure'+tmPf,RS.GetData(1));
   Result.AddStrings(GetTextualDscriptionForCase(tmF,sF,List));
  except
  end;
  }
// Result:=0;
end;
except
// Result:=-1;
end;
// ShowMessage(Result.Text);
end;


//???????? ??????
Function TCRPManager.get_EC(s:String):TStringList;
var
 i  : Integer;
 tmTs : TStringList;
begin
try
 tmTs:=TStringList.Create;
 tmTs.DelimitedText:=s;
 Result:=TStringList.Create;
 for i:=0 to tmTs.Count-1 do
  Result.Add(tmTs.Strings[i]);
except
 on e:Exception do
  begin
   ShowMessage(e.Message);
   Result:=TStringList.Create;
  end;
end
end;
{
function TCRPManager.GC_Execute(SC:Double):String;
var
 i  : Integer;
 c  : Integer;
// RS : Variant;
 tmF  : Variant;
 TableName  : String;

 a_list : TStringList;
 m_list : String;
begin
 try
  GCManager:=TGCManager.Create;
  GCManager.Init;

//  TableName:='User.FBase.Failure'+
//   SysManager.FailureHLevels.ValueFromIndex[
//    TSysState(SysManager.SysStates.Items[SysManager.SysStates.Count-1]).FPostfix
//     ];

  a_list:=TStringList.Create;

  for c:=0 to ResultListForPublication.Count-1 do
    //????? ???????
    if TCRPResult(ResultListForPublication.Objects[c]
      ).SumSimilarity>SC then
    begin
     m_list:='';

     tmF:=TCRPResult(ResultListForPublication.Objects[c]
      ).CaseVar;
     for i:=1 to tmF.RecActions.Count do
      begin
       if i>1 then m_list:=m_list+'-';
       m_list:=m_list+'m'+tmF.RecActions.GetObjectIdAt(i);
       //???????? !!! ??????? m ????? ????????????????
      end;
     a_list.Add(m_list+'='+
      FloatToStr(TCRPResult(ResultListForPublication.Objects[c]
       ).SumSimilarity));
    end;

   GCManager.LoadMethods;
   //???????????? ?????? ??? ?????????? ??????? ?????????? ??????
   if GCManager.CreateRankSets(a_list)=0 then
    c:=GCManager.Execute;

//   if c=0 then
   Result:=GCManager.GetInfo.Text;

 except
  on E:Exception do
   begin
    ShowMessage('GC_Execute: '+E.Message);
    Result:='';
   end;
 end;
end;
}

end.
