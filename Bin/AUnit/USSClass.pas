{------------------------------------------------------------------------------}
{                                                                              }
{  Personal Knowledge Base Designer                                            }
{  by A.Yu. Yurin, N.O. Dorodnykh                                              }
{                                                                              }
{  iskander@icc.ru                                                             }
{  http://knowledge-core.ru/                                                   }
{                                                                              }
{------------------------------------------------------------------------------}

unit USSClass;

interface

uses SysUtils, Classes, Dialogs, StdCtrls, Variants,
     Forms, Windows, ExtCtrls;

type

 TSSClass = class (TObject)
 private
  Function FormStrC(a,b:String):String;
  function HexToBin1(Hexadecimal: string): string;
  function StrToInt1(s:String):Integer;
 public
  function GetC03(var sn:String):String;
  Function GetData(s:String; o,c:Integer):String;
  Function PutData(s,p:String; o:Integer):String;
  Function GetCN:String;
  Procedure AppDestruction(msg:String);
  //  procedure AfterConstruction;  override;
//  destructor Destroy; override;
 published

 end;

 var
  SSClass	:	TSSClass;
  sn1 : Word;
  sn2 : Word;
  AppTitle  : String;
  KF  :  string;

implementation
Procedure TSSClass.AppDestruction(msg:String);
begin
 Application.Terminate;
end;

Function TSSClass.GetCN:String;
var
 VolumeSerialNumber : DWORD;
 MaximumComponentLength : DWORD;
 FileSystemFlags : DWORD;
 ssn1,ssn2  : String;
begin
 GetVolumeInformation('C:\',  nil, 0, @VolumeSerialNumber,
  MaximumComponentLength, FileSystemFlags,  nil,  0);
 sn1:=HiWord(VolumeSerialNumber);
 ssn1:=IntToStr(sn1);
 while Length(ssn1)<5 do ssn1:=ssn1+'0';
 ssn1:=Copy(ssn1,1,5);
 sn2:=LoWord(VolumeSerialNumber);
 ssn2:=IntToStr(sn2);
 while Length(ssn2)<5 do ssn2:=ssn2+'0';
 ssn2:=Copy(ssn2,1,5);
 Result:=ssn1+'-'+ssn2;
end;

function TSSClass.GetC03(var sn:String):String;
var
 a,b  : String;
 tmTs : TStringList;
// log  : TStringList;
begin
// log:=TStringList.Create;
 try
  AppTitle:=Application.Title;

  tmTs:=TStringList.Create;
  tmTs.Text:=SSClass.GetCN;

  tmTs.Text:=
   StringReplace(tmTs.Text,'-','=',[rfReplaceAll]);
// if (sn1=0)and(sn2=0) then GetCN;

  sn:=tmTs.Text;
  sn1:=StrToInt(tmTs.Names[0]);
  sn2:=StrToInt(tmTs.ValueFromIndex[0]);
//  sn := IntToStr(sn1)+'-'+IntToStr(sn2);

  a:=SSClass.HexToBin1(IntToHex(sn1, 4))+
   SSClass.HexToBin1(IntToHex(sn2, 4));

  b:=SSClass.HexToBin1(IntToHex(SSClass.StrToInt1(
   AnsiUpperCase(AppTitle)
  //   Application.Title
    ),8));
  Result:=SSClass.FormStrC(a,b);
{  log.Add('sn '+sn);
  log.Add('a '+a);
  log.Add('AppTitle '+AppTitle);
  log.Add('b '+b);
  log.Add('c '+Result);
  log.SaveToFile('log.txt');
}
 except
  Result:='';
 end;
end;

function TSSClass.StrToInt1(s:String):Integer;
var
 i  : Integer;
begin
 Result:=0;
 for i:=1 to Length(s) do
  Result:=Result+Ord(s[i]);
end;

function TSSClass.HexToBin1(Hexadecimal: string): string;
const
  BCD: array [0..15] of string =
    ('0000', '0001', '0010', '0011', '0100', '0101', '0110', '0111',
    '1000', '1001', '1010', '1011', '1100', '1101', '1110', '1111');
var
  i: integer;
begin
  Result:='';
  for i := Length(Hexadecimal) downto 1 do
    Result := BCD[StrToInt('$' + Hexadecimal[i])] + Result;
end;

Function TSSClass.FormStrC(a,b:String):String;
var
 i  : Integer;
 c  : Integer;
begin
 Result:='';
 for i:=1 to Length(a) do
  begin
   c:=StrToInt(a[i]) xor StrToInt(b[i]);
   Result:=Result+IntToStr(c);
  end;
end;

Function TSSClass.GetData(s:String; o,c:Integer):String;
var
 i  : Integer;
 co :  Integer;
begin
 Result:='';
 co:=0;
 for i:=1 to c do
  begin
   if (co+o)<=Length(s) then co:=co+o
    else co:=co+o-Length(s);
    try
     Result:=Result+s[co]
    except
    end;
  end;
end;

Function TSSClass.PutData(s,p:String; o:Integer):String;
var
 i  : Integer;
 co :  Integer;
begin
 co:=0;
 Result:=s;
 for i:=1 to Length(p) do
  begin
   if (co+o)<=Length(s) then co:=co+o
    else co:=co+o-Length(s);
    try
     Result[co]:=p[i];
    except
    end;
  end;
end;


end.
