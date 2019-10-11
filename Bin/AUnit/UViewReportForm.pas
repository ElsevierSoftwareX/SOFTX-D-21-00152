{------------------------------------------------------------------------------}
{                                                                              }
{  Personal Knowledge Base Designer                                            }
{  by A.Yu. Yurin, N.O. Dorodnykh                                              }
{                                                                              }
{  iskander@icc.ru                                                             }
{  http://knowledge-core.ru/                                                   }
{                                                                              }
{------------------------------------------------------------------------------}

unit UViewReportForm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, RzButton, StdCtrls, RzLabel, RzPanel, ExtCtrls, RzEdit,RzListVw,
  UPKBClass, RzCommon;

type
  TVRItemForm = class(TForm)
    RzPanel14: TRzPanel;
    RzPanel1: TRzPanel;
    RzGroupBox1: TRzGroupBox;
    RzLabel1: TRzLabel;
    RzButton1: TRzButton;
    RzButton2: TRzButton;
    RzButton3: TRzButton;
    RzPanel4: TRzPanel;
    RzLabel4: TRzLabel;
    RzLabel2: TRzLabel;
    RzPanel2: TRzPanel;
    RzLabel3: TRzLabel;
    ScrollBox2: TScrollBox;
    RzLabel5: TRzLabel;
    procedure RzButton1Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure RzButton2Click(Sender: TObject);
    procedure RzButton3Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
   LV : TRzListView;
   FA : TFact;
   T3 : TTask;
   ai : Integer;
  end;

var
  VRItemForm: TVRItemForm;

implementation

uses USTDIClass, MAIN, AddFactForm2Unit;

{$R *.dfm}

procedure TVRItemForm.FormCreate(Sender: TObject);
begin
 Top:=Top-400;
 Left:=Left+400;
 STDIClass.LoadLocalLang(Self,LangLocaleDir+LangPrefix+'016.lan');
end;

procedure TVRItemForm.FormShow(Sender: TObject);
var
 i,T,L,T12 : Integer;
 WC : TWinControl;
// tmCB : TCheckBox;
// tmLabel  :TRzLabel;
 tmP,tmP1 : TRzPanel;

 F : TFact;
// tmSlot : TSlot;
 tmColor,tmColor1 : TColor;
 tmS,tmS1 : string;
begin
 if ai=T3.CBRPResults.Count-1 then
  RzButton2.Enabled:=False
   else RzButton2.Enabled:=True;

 if ai=0 then
  RzButton3.Enabled:=False
   else RzButton3.Enabled:=True;

 Caption:=Application.Title;
 RzLabel1.Caption:=' '+Application.Title+' ';

 //show data
 WC:=ScrollBox2;
 RzLabel5.Caption:=MainForm.LS('Value')+' - ['+FA.ID+']';

 STDIClass.ReleaseObjects(WC);
 T:=15;
 L:=5;
 WC.Visible:=False;
 F:=T3.F1;

for i := 0 to F.Slots.Count-1 do
// if Trim(TSlot(F.Slots.Items[i]).Value)<>'' then
  begin
   tmP:=STDIClass.AddRzPanel(i*5+1,1,20,500,
    WC,i,alTop,clCream,bvNone,bvNone,bsNone,'');

   STDIClass.AddRzPanel(1,1,10,Round(tmP.Width/2),
    tmP,i,alClient,clCream,bvNone,bvNone,bsSingle,
     TSlot(F.Slots.Items[i]).Name);
   tmS:=TSlot(F.Slots.Items[i]).Value;
   if tmS='' then tmS:='-';

   tmP1:=STDIClass.AddRzPanel(1,100,10,170,
    tmP,i,alRight,clCream,bvNone,bvNone,bsSingle,
     tmS);
   tmP1.Font.Style:=[fsBold];
//   tmP1.Font.Color:=clGreen;

   if FA<>nil then tmS1:=TSlot(FA.Slots.Items[i]).Value
    else tmS1:='-';

   if tmS1='' then tmS1:='-';

   tmP1:=STDIClass.AddRzPanel(1,100,10,170,
    tmP,i,alRight,clCream,bvNone,bvNone,bsSingle,
     tmS1);
   tmP1.Font.Style:=[fsBold];

   if tmS<>tmS1 then
    tmP1.Font.Color:=clRed;
     //use the constraint field for store weight

     tmP1:=STDIClass.AddRzPanel(1,1,10,20,
      tmP,i,alRight,clCream,bvNone,bvNone,bsSingle,
       TSlot(F.Slots.Items[i]).Constraint);

     tmP1.Font.Style:=[fsBold];

     tmColor:=clSkyBlue;
     tmColor1:=clBlack;
     case TSlot(F.Slots.Items[i]).Constraint[1] of
     '2': tmColor:=clMoneyGreen;
     '3': tmColor:=clYellow;
     '4': tmColor:=$000080FF;
     '5': begin
        tmColor:=clRed;
        tmColor1:=clWhite;
      end;
     end;
     tmP1.Color:=tmColor;
     tmP1.Font.Color:=tmColor1;

   if T12>T then T:=T12;
   T:=T+5;
  end;
 WC.Visible:=True;

end;

procedure TVRItemForm.RzButton1Click(Sender: TObject);
var
 i,j : Integer;
begin
 j:=-1;
 try
 for i := 0 to AddFactForm2.ScrollBox4.ComponentCount-1 do
  if TRzPanel(AddFactForm2.ScrollBox4.Components[i]).BorderOuter=
   fsGroove then
    begin
     j:=i;
     Break;
    end;
 if j<>-1 then
  begin
   TRzPanel(AddFactForm2.ScrollBox4.Components[j]).BorderOuter:=
    fsNone;
  end;
 except
 end;
 Close;
end;

procedure TVRItemForm.RzButton2Click(Sender: TObject);
var
 i,j : Integer;
begin
 ai:=ai+1;
 i:=AddFactForm2.T3.K1.IndexOfFactByID(AddFactForm2.T3.CBRPResults.Names[
  ai
  ]);
 if i=-1 then FA:=nil
  else
   begin
    FA:=TFact(AddFactForm2.T3.K1.Facts.Items[i]);
   end;

 //visualization
 j:=-1;
 for i := 0 to AddFactForm2.ScrollBox4.ComponentCount-1 do
  if TRzPanel(AddFactForm2.ScrollBox4.Components[i]).BorderOuter=
   fsGroove then
    begin
     j:=i;
     Break;
    end;
 if j<>-1 then
  begin
   TRzPanel(AddFactForm2.ScrollBox4.Components[j+1]).BorderOuter:=
    fsGroove;
//   TRzPanel(AddFactForm2.ScrollBox4.Components[j-1]).BorderColor:=
//    clRed;
   TRzPanel(AddFactForm2.ScrollBox4.Components[j]).BorderOuter:=
    fsNone;
  end;

 OnShow(Self);
end;

procedure TVRItemForm.RzButton3Click(Sender: TObject);
var
 i,j : Integer;
begin
 ai:=ai-1;
 i:=AddFactForm2.T3.K1.IndexOfFactByID(AddFactForm2.T3.CBRPResults.Names[
  ai
  ]);
 if i=-1 then FA:=nil
  else
   begin
    FA:=TFact(AddFactForm2.T3.K1.Facts.Items[i]);
   end;

 //visualization
 j:=-1;
 for i := 0 to AddFactForm2.ScrollBox4.ComponentCount-1 do
  if TRzPanel(AddFactForm2.ScrollBox4.Components[i]).BorderOuter=
   fsGroove then
    begin
     j:=i;
     Break;
    end;
 if j<>-1 then
  begin
   TRzPanel(AddFactForm2.ScrollBox4.Components[j-1]).BorderOuter:=
    fsGroove;
   TRzPanel(AddFactForm2.ScrollBox4.Components[j-1]).BorderColor:=
    clRed;
   TRzPanel(AddFactForm2.ScrollBox4.Components[j]).BorderOuter:=
    fsNone;
  end;

 OnShow(Self);
end;

end.
