{------------------------------------------------------------------------------}
{                                                                              }
{  Personal Knowledge Base Designer                                            }
{  by A.Yu. Yurin, N.O. Dorodnykh                                              }
{                                                                              }
{  iskander@icc.ru                                                             }
{  http://knowledge-core.ru/                                                   }
{                                                                              }
{------------------------------------------------------------------------------}

unit uTrans;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, RzButton, ExtCtrls, RzPanel, RzLstBox, UPKBClass;

type
  TTranslit = class
    public
     FL:TStringList;
     BL:TStringList;
//     procedure getNewStrT(S: String; var STr: String);
     procedure Init;
     function Trans(S:String;TL:TStringList):String;
  end;

var
  Translit: TTranslit;

implementation

function TTranslit.Trans(S:String;TL:TStringList):String;
var
 i  : Integer;
begin
 Result:=S;
 for i:=0 to TL.Count-1 do
  Result:=StringReplace(Result,TL.Names[i],TL.ValueFromIndex[i],[rfReplaceAll]);
end;

procedure TTranslit.Init;
begin
 FL:=TStringList.Create; //forward translation - rus-end
 FL.Add('�=a');FL.Add('�=A');
 FL.Add('�=b');FL.Add('�=B');
 FL.Add('�=v');FL.Add('�=V');
 FL.Add('�=g');FL.Add('�=G');
 FL.Add('�=d');FL.Add('�=D');
 FL.Add('�=e');FL.Add('�=E');
 FL.Add('�=e');FL.Add('�=E');
 FL.Add('�=zh');FL.Add('�=Zh');
 FL.Add('�=z');FL.Add('�=Z');
 FL.Add('�=i');FL.Add('�=I');
 FL.Add('�=y');FL.Add('�=Y');
 FL.Add('�=k');FL.Add('�=K');
 FL.Add('�=l');FL.Add('�=L');
 FL.Add('�=m');FL.Add('�=M');
 FL.Add('�=n');FL.Add('�=N');
 FL.Add('�=o');FL.Add('�=O');
 FL.Add('�=p');FL.Add('�=P');
 FL.Add('�=r');FL.Add('�=R');
 FL.Add('�=s');FL.Add('�=S');
 FL.Add('�=t');FL.Add('�=T');
 FL.Add('�=u');FL.Add('�=U');
 FL.Add('�=f');FL.Add('�=F');
 FL.Add('�=kh');FL.Add('�=Kh');
 FL.Add('�=ts');FL.Add('�=Ts');
 FL.Add('�=ch');FL.Add('�=Ch');
 FL.Add('�=sh');FL.Add('�=Sh');
 FL.Add('�=shch');FL.Add('�=Shch');
 FL.Add('�=');FL.Add('�=');
 FL.Add('�=y');FL.Add('�=Y');
 FL.Add('�=');FL.Add('�=');
 FL.Add('�=e');FL.Add('�=E');
 FL.Add('�=yu');FL.Add('�=Yu');
 FL.Add('�=ya');FL.Add('�=Ya');
 FL.Add(' =-'); FL.Add('_=-');

 BL:=TStringList.Create; //back translation - eng-rus
 BL.Add('zh=�');BL.Add('Zh=�');
 BL.Add('shch=�');BL.Add('Shch=�');
 BL.Add('sh=�');BL.Add('Sh=�');
 BL.Add('yu=�');BL.Add('Yu=�');
 BL.Add('ya=�');BL.Add('Ya=�');
 BL.Add('kh=�');BL.Add('Kh=�');
 BL.Add('ts=�');BL.Add('Ts=�');
 BL.Add('ch=�');BL.Add('Ch=�');
 BL.Add('a=�');BL.Add('A=�');
 BL.Add('b=�');BL.Add('B=�');
 BL.Add('c=�');BL.Add('C=�');
 BL.Add('d=�');BL.Add('D=�');
 BL.Add('e=�');BL.Add('E=�');
 BL.Add('f=�');BL.Add('F=�');
 BL.Add('g=�');BL.Add('G=�');
 BL.Add('h=�');BL.Add('H=�');
 BL.Add('i=�');BL.Add('I=�');
 BL.Add('j=�');BL.Add('J=�');
 BL.Add('k=�');BL.Add('K=�');
 BL.Add('l=�');BL.Add('L=�');
 BL.Add('m=�');BL.Add('M=�');
 BL.Add('n=�');BL.Add('N=�');
 BL.Add('o=�');BL.Add('O=�');
 BL.Add('p=�');BL.Add('P=�');
// BL.Add('q=�');BL.Add('Q=�');
 BL.Add('r=�');BL.Add('R=�');
 BL.Add('s=�');BL.Add('S=�');
 BL.Add('t=�');BL.Add('T=�');
 BL.Add('u=�');BL.Add('U=�');
 BL.Add('v=�');BL.Add('V=�');
// BL.Add('w=�');BL.Add('W=�');
 BL.Add('x=�');BL.Add('X=�');
 BL.Add('y=�');BL.Add('Y=�');
 BL.Add('z=�');BL.Add('Z=�');
 BL.Add('-= ');
end;
end.
