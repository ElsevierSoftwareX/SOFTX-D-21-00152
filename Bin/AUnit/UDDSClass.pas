{------------------------------------------------------------------------------}
{                                                                              }
{  Personal Knowledge Base Designer                                            }
{  by A.Yu. Yurin, N.O. Dorodnykh                                              }
{                                                                              }
{  iskander@icc.ru                                                             }
{  http://knowledge-core.ru/                                                   }
{                                                                              }
{------------------------------------------------------------------------------}

unit UDDSClass;

interface
uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls, OleServer, ComCtrls, Menus, ComObj, RzChkLst,
  RzTreeVw, RzPanel, DateUtils;

type
  TMCTask = class(TObject)
   ID : string;
   A : TStringList; //alternatives
   C : TStringList; //criteria
   E : TStringList; //experts
   S : TStringList; //scales for eache criterio
   Marks : TStringList; //marks of alternatives  - âëîæåííûé ñïèñîê
   Results : TStringList;  //eache object is a result of some method
   procedure Init;
   destructor Destroy; override;
   function InitialLoading:Integer;   //load initial test data
   function MakeADecision(Mi:integer):Integer;
  end;

implementation

uses USTDIClass, CRPManagerUnit;
//--------------------------------------------------------------
Procedure TMCTask.Init;
begin
 ID:=IntToStr(MilliSecondOfTheYear(Now));
 A:=TStringList.Create;
 C:=TStringList.Create;
 E:=TStringList.Create;
 S:=TStringList.Create;
 Marks:=TStringList.Create;
 Results:=TStringList.Create;
end;

Destructor TMCTask.Destroy;
begin
 A.Free;
 C.Free;
 E.Free;
 S.Free;
 Marks.Free;
 Results.Free;
 inherited Destroy;
end;

function TMCTask.InitialLoading:Integer;
var
  tmTs : TStringList;
  i : Integer;
begin
 //load alternatives
 A.Clear;
 A.Add('a1');A.Add('a2');A.Add('a3');A.Add('a4');
 //load criteria
 C.Clear;
 C.Add('p1');C.Add('p2');C.Add('p3');C.Add('p4');C.Add('p5');
 //load experts
 E.Clear;
 E.Add('e1');
 //make a scale
 tmTs:=TStringList.Create;
 tmTs.Add('5');tmTs.Add('4');tmTs.Add('3');tmTs.Add('2');tmTs.Add('1');
 //load sclae (in this case the scales are the same for all critaria)
 S.Clear;
 S.AddObject('p1s',tmTs);S.AddObject('p2s',tmTs);S.AddObject('p3s',tmTs);
 S.AddObject('p4s',tmTs);S.AddObject('p5s',tmTs);
 //make user marks
 Marks.Clear;
 tmTs:=TStringList.Create;
 tmTs.Add('p1=1');tmTs.Add('p2=1');tmTs.Add('p3=4');tmTs.Add('p4=1');tmTs.Add('p5=1');
 Marks.AddObject('a1m',tmTs);
 tmTs:=TStringList.Create;
 tmTs.Add('p1=3');tmTs.Add('p2=1');tmTs.Add('p3=1');tmTs.Add('p4=1');tmTs.Add('p5=2');
 Marks.AddObject('a2m',tmTs);
 tmTs:=TStringList.Create;
 tmTs.Add('p1=1');tmTs.Add('p2=2');tmTs.Add('p3=1');tmTs.Add('p4=4');tmTs.Add('p5=1');
 Marks.AddObject('a3m',tmTs);
 tmTs:=TStringList.Create;
 tmTs.Add('p1=1');tmTs.Add('p2=4');tmTs.Add('p3=1');tmTs.Add('p4=3');tmTs.Add('p5=1');
 Marks.AddObject('a4m',tmTs);
end;

function TMCTask.MakeADecision(Mi:integer):Integer;
var
 n : Integer; //÷èñëî àëüòåðíàòèâ
 m : Integer; //÷èñëî êðèòåðèåâ
 t : Integer; //÷èñëî ýêñïåðòîâ

  i,j,l,sum_S,x,z:integer;
//  Scale: array[0..m-1,0..ms-1] of integer; //ìàññèâ øêàë êðèòåðèåâ
//  S: array[0..m-1] of integer; //÷èñëî ãðàäàöèé ïî êàæäîìó êðèòåðèþ
  A_plus: array of integer; //èäåàëüíàÿ àëüòåðíàòèâà
  A_minus: array of integer; //õóäøàÿ àëüòåðíàòèâà
  A1: array of array of integer; //ìàññèâ ìóëüòèìíîæåñòâ
  Ocenka: array of array of real; //ìàññèâ îöåíîê
  d_plus: array of integer; //ðàññòîÿíèå äî èäåàëüíîé àëüòåðíàòèâû
  d_minus: array of integer; //ðàññòîÿíèå äî õóäøåé àëüòåðíàòèâû
  R: array of real; //ìåðà áëèçîñòè
  min_i: array of real;
  min, temp: real;
  tmTs : TStringList;
begin
try
 //clear marks
// Task.Marks.Clear;
//ôîðìèðîâàíèå À+ è À-

 sum_S:=0;  //ñóììèðîâàíèå äëèí âñåõ øêàë
 for i:=0 to S.Count-1 do
  sum_S:=sum_S+TStringList(S.Objects[i]).Count;

//StringGrid4.ColCount:=sum_S;
 SetLength(A_plus,sum_S);
 SetLength(A_minus,sum_S);
 for i:=0 to sum_S-1 do
 begin
  A_plus[i]:=0;
  A_minus[i]:=0;
 end;

 t:=E.Count; //expert count
 x:=0;
 for i:=0 to S.Count-1 do
  begin
    A_plus[x]:=t;
    x:=x+TStringList(S.Objects[i]).Count;
    A_minus[x-1]:=t;
  end;

 //çàïîëíåíèå ìàññèâà îöåíîê
 //load marks
  tmTs:=TStringList.Create;
  SetLength(Ocenka,Marks.Count);
  for i:=0 to Marks.Count-1 do
   begin
    tmTs:=TStringList(Marks.Objects[i]);
    SetLength(Ocenka[i],tmTs.Count);
    for j:=0 to tmTs.Count-1 do
     begin
      Ocenka[i][j]:=StrToFloat(tmTs.ValueFromIndex[j]);
     end;
   end;

//áóäåì ñ÷èòàòü, ÷òî âñå êðèòåðèè ðàâíîçíà÷íû, èíà÷å òðåáóåòñÿ çàäàâàòü èõ âàæíîñòü
//ïîñòðîåíèå ìóëüòèìíîæåñòâ äëÿ àëüòåðíàòèâ
 n:=A.Count;
 m:=C.Count;

 SetLength(A1,n);
 for i:=0 to n-1 do
  SetLength(A1[i], sum_S);
 for i:=0 to n-1 do
  for j:=0 to sum_S-1 do
    A1[i][j]:=0;

 z:=0;
 for i:=0 to n-1 do
  begin
    for j:=0 to m-1 do
      for l:=0 to TStringList(S.Objects[j]).Count-1 do
        begin
          if Ocenka[i][j]=StrToFloat(
           TStringList(S.Objects[j]).Strings[l])
            then A1[i][z]:=A1[i][z]+1;
          z:=z+1;
        end;
    z:=0;
  end;

if Mi=1 then //aramis
begin

 SetLength(d_plus,n);
 SetLength(d_minus,n);
 SetLength(R,n);

 for i:=0 to n-1 do
  begin
    d_plus[i]:=0;
    d_minus[i]:=0;
    R[i]:=0;
  end;

 //ñóòü ìåòîäà
 for i:=0 to n-1 do
  begin
    for j:=0 to sum_S-1 do
      begin
        d_plus[i]:=d_plus[i]+abs(A_plus[j]-A1[i][j]);
        d_minus[i]:=d_minus[i]+abs(A_minus[j]-A1[i][j]);
      end;
    R[i]:=d_plus[i]/abs(d_plus[i]+d_minus[i]);
  end;
//!!!!  SetLength(min_i,n-1);

 SetLength(min_i,n);
 for i:=0 to n-1 do
   min_i[i]:=i+1;

 //sort results
 for i:=0 to n-1 do
  begin
    min:=R[i];
    for j:=i+1 to n-1 do
      if R[j]<min then
        begin
          min:=R[j];
          temp:=min_i[j];
          R[j]:=R[i];
          R[i]:=min;
          min_i[j]:=min_i[i];
          min_i[i]:=temp;
        end;
  end;
end;

 Results.Clear;
 tmTs:=TStringList.Create;

 for i:=Low(R) to High(R) do
  tmTs.Add(
   A.Strings[i]+'='+FloatToStrF(R[i],ffFixed,8,10)
   );

 for i := 0 to tmTs.Count-2 do
 for j := 0 to tmTs.Count-2 do
  if tmTs.ValueFromIndex[j]>
   tmTs.ValueFromIndex[j+1] then
   begin
    tmTs.Exchange(j,j+1);
   end;

 if Mi=1 then //aramis
  begin
   Results.AddObject('АРАМИС',tmTs);
  end;

 Result:=0;
except
 Result:=-1;
end;
{
 //sort results
 for i:=0 to n-1 do
  begin
    min:=R[i];
    for j:=i+1 to n-1 do
      if R[j]<min then
        begin
          min:=R[j];
          temp1:=min_i[j];
          R[j]:=R[i];
          R[i]:=min;
          min_i[j]:=min_i[i];
          min_i[i]:=temp1;
        end;
  end;
 }

 {
//îòîáðàæåíèå îêîí÷àòåëüíîãî ðåçóëüòàòà
 tmTs.Clear;
 for i:=0 to n-1 do
  begin
   tmTs.Add(FloatToStrF(R[i],ffFixed,8,10));

//    StringGrid5.Cells[i,0]:=IntToStr(i+1);
//    StringGrid5.Cells[i,1]:=IntToStr(min_i[i]);
 //   StringGrid5.Cells[i,2]:=FloatToStrF(R[i],ffFixed,8,10);
  end;     }
// SetLength (A_plus,0);
// SetLength (A_minus,0);
// SetLength (A,0,0);
end;

end.
