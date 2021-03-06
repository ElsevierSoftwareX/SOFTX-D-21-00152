{------------------------------------------------------------------------------}
{                                                                              }
{  Personal Knowledge Base Designer                                            }
{  by A.Yu. Yurin, N.O. Dorodnykh                                              }
{                                                                              }
{  iskander@icc.ru                                                             }
{  http://knowledge-core.ru/                                                   }
{                                                                              }
{------------------------------------------------------------------------------}
unit UAggStrategesSelectForm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, RzButton, ExtCtrls, RzPanel, RzRadChk;

type
  TAggStrategesSelectForm = class(TForm)
    RzPanel6: TRzPanel;
    ScrollBox3: TScrollBox;
    RzPanel1: TRzPanel;
    RzButton1: TRzButton;
    RzButton2: TRzButton;
    GroupBox3: TGroupBox;
    RzCheckBox1: TRzCheckBox;
    RzCheckBox2: TRzCheckBox;
    RzCheckBox3: TRzCheckBox;
    RzCheckBox4: TRzCheckBox;
    RzCheckBox5: TRzCheckBox;
    GroupBox1: TGroupBox;
    RzCheckBox10: TRzCheckBox;
    procedure FormCreate(Sender: TObject);
    procedure RzButton2Click(Sender: TObject);
    procedure RzButton1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  AggStrategesSelectForm: TAggStrategesSelectForm;

implementation

uses USTDIClass, uTrans, MAIN;

{$R *.dfm}

procedure TAggStrategesSelectForm.FormCreate(Sender: TObject);
begin
 MainForm.ReloadHelpMessage(ScrollBox3,301);

 STDIClass.LoadLocalLang(Self,LangLocaleDir+LangPrefix+'021.lan');
end;

procedure TAggStrategesSelectForm.RzButton1Click(Sender: TObject);
begin
 Close;
end;

procedure TAggStrategesSelectForm.RzButton2Click(Sender: TObject);
var
 i : Integer;
begin
 CreateInstancesFlag:=0;
 AggStrategesList.Clear;
 for i := 0 to GroupBox3.ControlCount-1 do
  if TRzCheckBox(GroupBox3.Controls[i]).Checked then
   AggStrategesList.Add(IntToStr(TRzCheckBox(GroupBox3.Controls[i]).Tag));
 AggStrategesList.Add('0'); //start data processing
 if RzCheckBox10.Checked then CreateInstancesFlag:=1;

 Close;
end;

end.
