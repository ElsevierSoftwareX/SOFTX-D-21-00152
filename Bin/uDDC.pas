{------------------------------------------------------------------------------}
{                                                                              }
{  Personal Knowledge Base Designer                                            }
{  by A.Yu. Yurin, N.O. Dorodnykh                                              }
{                                                                              }
{  iskander@icc.ru                                                             }
{  http://knowledge-core.ru/                                                   }
{                                                                              }
{------------------------------------------------------------------------------}

unit uDDC;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, RzButton, ExtCtrls, RzPanel, RzLstBox, UPKBClass;

type
  TDirectory = class
    public
      procedure getDirectory(f: String; var names: TStringList);
      procedure getDesc(n: String; var desc: string);
      procedure addString(Name: String; Desc: String);
  end;

var
  directory: TDirectory;
  DirectFile: TStringList;
  WayFile: string;

implementation

procedure TDirectory.getDirectory(f: String; var names: TStringList);
var i: Integer;
    //fileND: TStringList;
begin
try
 WayFile:=f;
 DirectFile:=TStringList.Create;
 DirectFile.LoadFromFile(f);
 names:=TStringList.Create;
 for i:=0 to DirectFile.Count-1 do
  begin
    names.Add(DirectFile.Names[i]);
  end;
except
end;
end;

procedure TDirectory.getDesc(n: string; var desc: string);
var
  i: Integer;
begin
 try
  for i:=0 to DirectFile.Count-1 do
    begin
      if n=DirectFile.Names[i] then
        begin
          desc:=DirectFile.ValueFromIndex[i];
          Break;
        end;
    end;
 except
 end;
end;

procedure TDirectory.addString(Name: String; Desc: String);
var
  i: Integer;
  j: Boolean;
begin
 try
  for i:=0 to DirectFile.Count-1 do
    if Name=DirectFile.Names[i] then
      begin
        j:=True;
        Break;
      end;
  if j<>True then
    begin
      j:=False;
      DirectFile.Add(Name+'='+Desc);
      DirectFile.SaveToFile(WayFile);
    end;
 except
 end;
end;

end.
