unit UMsgBoxForm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, RzButton, StdCtrls, RzLabel, jpeg, ExtCtrls, RzPanel, ImgList,
  RzStatus;

type
  TMsgBoxForm = class(TForm)
    RzPanel14: TRzPanel;
    RzPanel1: TRzPanel;
    RzButton1: TRzButton;
    Image1: TImage;
    ImageList1: TImageList;
    RzButton2: TRzButton;
    RzGroupBox1: TRzGroupBox;
    RzLabel1: TRzLabel;
    RzLabel2: TRzLabel;
    RzProgressStatus1: TRzProgressStatus;
    Timer1: TTimer;
    procedure RzButton1Click(Sender: TObject);
    procedure RzButton2Click(Sender: TObject);
    procedure RzButton3Click(Sender: TObject);
    procedure Timer1Timer(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
   C : Integer;
  end;

var
  MsgBoxForm: TMsgBoxForm;
  RepFileName : string;

implementation

{$R *.dfm}

procedure TMsgBoxForm.FormClose(Sender: TObject; var Action: TCloseAction);
begin
 MsgBoxForm.RzProgressStatus1.Visible:=False;
 Timer1.Enabled:=False;
end;

procedure TMsgBoxForm.RzButton1Click(Sender: TObject);
begin
 C:=0;
 Close;
end;

procedure TMsgBoxForm.RzButton2Click(Sender: TObject);
begin
 C:=1;
 Close;
end;

procedure TMsgBoxForm.RzButton3Click(Sender: TObject);
begin
 Close;
end;

procedure TMsgBoxForm.Timer1Timer(Sender: TObject);
var
 CloseFlag : Boolean;
begin
CloseFlag:=False;

 if RzProgressStatus1.PartsComplete=RzProgressStatus1.TotalParts then
  RzProgressStatus1.PartsComplete:=0;

 RzProgressStatus1.PartsComplete:=
  RzProgressStatus1.PartsComplete+1;
 Application.ProcessMessages;
 if FileExists(RepFileName) then CloseFlag:=True;


 if CloseFlag then Close;
end;

end.
