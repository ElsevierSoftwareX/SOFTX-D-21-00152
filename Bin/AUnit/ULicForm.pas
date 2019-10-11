unit ULicForm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, RzButton, StdCtrls, RzCmboBx, RzEdit, RzLabel, RzPanel, ExtCtrls,
  Mask;

type
  TLicForm = class(TForm)
    RzPanel1: TRzPanel;
    RzGroupBox1: TRzGroupBox;
    RzLabel1: TRzLabel;
    RzLabel2: TRzLabel;
    RzPanel3: TRzPanel;
    RzButton2: TRzButton;
    RzEdit1: TRzEdit;
    ScrollBox1: TScrollBox;
    procedure RzButton2Click(Sender: TObject);
    procedure RzEdit1Change(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  LicForm: TLicForm;

implementation

uses USTDIClass, MAIN;

{$R *.dfm}

procedure TLicForm.FormClose(Sender: TObject; var Action: TCloseAction);
var
 tmTs : TStringList;
begin
  tmTs:=TStringList.Create;
  tmTs.Add('name='+Trim(RzEdit1.Text));
  tmTs.SaveToFile(
     ExtractFileDir(Application.ExeName)+'/Config/user.lic'
      );
end;

procedure TLicForm.FormCreate(Sender: TObject);
begin
 STDIClass.LoadLocalLang(Self,LangLocaleDir+LangPrefix+'004.lan');
end;

procedure TLicForm.FormShow(Sender: TObject);
var
 tmTs : TStringList;
begin
  tmTs:=TStringList.Create;
  if FileExists(ExtractFileDir(Application.ExeName)+'/Config/user.lic') then
    tmTs.LoadFromFile(
     ExtractFileDir(Application.ExeName)+'/Config/user.lic'
      );
  RzEdit1.Text:=tmTs.Values['name'];
  if RzEdit1.Text='' then RzEdit1.Text:='Researcher';

  STDIClass.ReleaseObjects(ScrollBox1);
  tmTs.Clear;
  if FileExists(ExtractFileDir(Application.ExeName)+'/Config/info.lic') then
   begin
    tmTs.LoadFromFile(
     ExtractFileDir(Application.ExeName)+'/Config/info.lic');
   end
   else
    tmTs.Add(MainForm.LS('License file is missed'));
  STDIClass.AddRzLabel(ScrollBox1,tmTs.Text,1,1,1,clBlack,clNone,[]);
  TRzLabel(ScrollBox1.Components[ScrollBox1.ComponentCount-1]).Align:=alClient;
  TRzLabel(ScrollBox1.Components[ScrollBox1.ComponentCount-1]).AlignWithMargins:=True;

 STDIClass.LoadLocalLang(Self,LangLocaleDir+LangPrefix+'004.lan');

 ScrollBox1.AutoScroll:=True;
 ScrollBox1.VertScrollBar.Visible:=True;

end;

procedure TLicForm.RzButton2Click(Sender: TObject);
begin
 Close;
end;

procedure TLicForm.RzEdit1Change(Sender: TObject);
var
 tC : TColor;
begin
 if Trim(TRzEdit(Sender).Text)<>'' then tC:=clGreen
  else tC:=clRed;

 TRzEdit(Sender).FrameColor:=tC;
 TRzEdit(Sender).Font.Color:=tC;
end;

end.
