{------------------------------------------------------------------------------}
{                                                                              }
{  Personal Knowledge Base Designer                                            }
{  by A.Yu. Yurin, N.O. Dorodnykh                                              }
{                                                                              }
{  iskander@icc.ru                                                             }
{  http://knowledge-core.ru/                                                   }
{                                                                              }
{------------------------------------------------------------------------------}

unit USEClass;

interface

uses SysUtils, Classes, Dialogs, StdCtrls, Variants,
     Forms, Windows, ExtCtrls;

type
 TSEClass = class (TObject)
 private
 public
  procedure Init;
  function e12_v01(a,b:String):String;  //from e12
  function e12_v78(a,b:String):String;  //to e12
 published
  function Load(F1:TStringList;FN,AppTitle: String):Integer;

 end;

var
 SEClass	:	TSEClass;
 F  : TStringList;

implementation

Procedure TSEClass.Init;
begin
 F:=TStringList.Create;
end;

//from e12
function TSEClass.e12_v01(a,b:String):String;
var
 i  : Integer;
 tmTs : TStringList;
 c  : Integer;  //code
begin
 try
  tmTs:=TStringList.Create;
  tmTs.DelimitedText:=a;

  c:=0;
  if tmTs.Count>0 then
   for i:=1 to Length(tmTs.Strings[0]) do
    c:=c+Ord(tmTs.Strings[0][i]);
  c:= c mod 34;

  Result:='';
//  b:=StringReplace(b,'%k',#0,[rfReplaceAll]);
  b:=StringReplace(b,'E12','',[rfReplaceAll]);
  for i:=1 to Length(b) do
   Result:=Result+Chr(Ord(b[i])+c);
  Result:=StringReplace(Result,'%k',#$D#$A,[rfReplaceAll]);
  Result:=StringReplace(Result,'^7','=',[rfReplaceAll]);
  Result:=Trim(Result);
 except
  Result:='Error';
 end;
end;

//to e12
function TSEClass.e12_v78(a,b:String):String;
var
 i  : Integer;
 tmTs : TStringList;
 c  : Integer;  //code
begin
 try
  tmTs:=TStringList.Create;
  tmTs.DelimitedText:=a;

  c:=0;
  if tmTs.Count>0 then
   for i:=1 to Length(tmTs.Strings[0]) do
    c:=c+Ord(tmTs.Strings[0][i]);
  c:=c mod 34;

  Result:='';
  b:=StringReplace(b,#$D#$A,'%k',[rfReplaceAll]);
  b:=StringReplace(b,'=','^7',[rfReplaceAll]);
  for i:=1 to Length(b) do
   Result:=Result+Chr(Ord(b[i])-c);

  Result:='E12'+Result;
  Result:=Trim(Result);  
 except
  Result:='Error';
 end;
end;

Function TSEClass.Load(F1:TStringList;FN,AppTitle: String):Integer;
begin
 try
  F1.LoadFromFile(FN);
  Result:=0;  //not e12 file
  if F1.Count>0 then
   if (F1.Text[1]='E')and(F1.Text[2]='1')and
    (F1.Text[3]='2') then
     begin
      F1.Text:=e12_v01(AppTitle,F1.Text);
      Result:=1; //e12 file
     end;
 except
  F1:=TStringList.Create;
  F1.Text:='Error';
  Result:=-1;
 end;
end;
end.
 