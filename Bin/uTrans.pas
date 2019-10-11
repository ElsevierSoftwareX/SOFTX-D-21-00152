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
 FL.Add('à=a');FL.Add('À=A');
 FL.Add('á=b');FL.Add('Á=B');
 FL.Add('â=v');FL.Add('Â=V');
 FL.Add('ã=g');FL.Add('Ã=G');
 FL.Add('ä=d');FL.Add('Ä=D');
 FL.Add('å=e');FL.Add('Å=E');
 FL.Add('¸=e');FL.Add('¨=E');
 FL.Add('æ=zh');FL.Add('Æ=Zh');
 FL.Add('ç=z');FL.Add('Ç=Z');
 FL.Add('è=i');FL.Add('È=I');
 FL.Add('é=y');FL.Add('É=Y');
 FL.Add('ê=k');FL.Add('Ê=K');
 FL.Add('ë=l');FL.Add('Ë=L');
 FL.Add('ì=m');FL.Add('Ì=M');
 FL.Add('í=n');FL.Add('Í=N');
 FL.Add('î=o');FL.Add('Î=O');
 FL.Add('ï=p');FL.Add('Ï=P');
 FL.Add('ð=r');FL.Add('Ð=R');
 FL.Add('ñ=s');FL.Add('Ñ=S');
 FL.Add('ò=t');FL.Add('Ò=T');
 FL.Add('ó=u');FL.Add('Ó=U');
 FL.Add('ô=f');FL.Add('Ô=F');
 FL.Add('õ=kh');FL.Add('Õ=Kh');
 FL.Add('ö=ts');FL.Add('Ö=Ts');
 FL.Add('÷=ch');FL.Add('×=Ch');
 FL.Add('ø=sh');FL.Add('Ø=Sh');
 FL.Add('ù=shch');FL.Add('Ù=Shch');
 FL.Add('ú=');FL.Add('Ú=');
 FL.Add('û=y');FL.Add('Û=Y');
 FL.Add('ü=');FL.Add('Ü=');
 FL.Add('ý=e');FL.Add('Ý=E');
 FL.Add('þ=yu');FL.Add('Þ=Yu');
 FL.Add('ÿ=ya');FL.Add('ß=Ya');
 FL.Add(' =-'); FL.Add('_=-');

 BL:=TStringList.Create; //back translation - eng-rus
 BL.Add('zh=æ');BL.Add('Zh=Æ');
 BL.Add('shch=ù');BL.Add('Shch=Ù');
 BL.Add('sh=ø');BL.Add('Sh=Ø');
 BL.Add('yu=þ');BL.Add('Yu=Þ');
 BL.Add('ya=ÿ');BL.Add('Ya=ß');
 BL.Add('kh=õ');BL.Add('Kh=Õ');
 BL.Add('ts=ö');BL.Add('Ts=Ö');
 BL.Add('ch=÷');BL.Add('Ch=×');
 BL.Add('a=à');BL.Add('A=À');
 BL.Add('b=á');BL.Add('B=Á');
 BL.Add('c=ñ');BL.Add('C=Ñ');
 BL.Add('d=ä');BL.Add('D=Ä');
 BL.Add('e=å');BL.Add('E=Å');
 BL.Add('f=ô');BL.Add('F=Ô');
 BL.Add('g=ã');BL.Add('G=Ã');
 BL.Add('h=õ');BL.Add('H=Õ');
 BL.Add('i=è');BL.Add('I=È');
 BL.Add('j=é');BL.Add('J=É');
 BL.Add('k=ê');BL.Add('K=Ê');
 BL.Add('l=ë');BL.Add('L=Ë');
 BL.Add('m=ì');BL.Add('M=Ì');
 BL.Add('n=í');BL.Add('N=Í');
 BL.Add('o=î');BL.Add('O=Î');
 BL.Add('p=ï');BL.Add('P=Ï');
// BL.Add('q=ì');BL.Add('Q=Ì');
 BL.Add('r=ð');BL.Add('R=Ð');
 BL.Add('s=ñ');BL.Add('S=Ñ');
 BL.Add('t=ò');BL.Add('T=Ò');
 BL.Add('u=þ');BL.Add('U=Þ');
 BL.Add('v=â');BL.Add('V=Â');
// BL.Add('w=ñ');BL.Add('W=Ñ');
 BL.Add('x=õ');BL.Add('X=Õ');
 BL.Add('y=é');BL.Add('Y=É');
 BL.Add('z=ç');BL.Add('Z=Ç');
 BL.Add('-= ');
end;
end.
