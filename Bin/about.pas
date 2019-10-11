{------------------------------------------------------------------------------}
{                                                                              }
{  Personal Knowledge Base Designer                                            }
{  by A.Yu. Yurin, N.O. Dorodnykh                                              }
{                                                                              }
{  iskander@icc.ru                                                             }
{  http://knowledge-core.ru/                                                   }
{                                                                              }
{------------------------------------------------------------------------------}

unit about;

interface

uses Windows, Classes, Graphics, Forms, Controls, StdCtrls,
  Buttons, ExtCtrls, jpeg, RzPanel, RzLstBox, Grids, RzGrids, RzButton, pngimage;

type
  TAboutBox = class(TForm)
    Panel1: TPanel;
    ProgramIcon: TImage;
    ProductName: TLabel;
    Version: TLabel;
    Copyright: TLabel;
    Comments: TLabel;
    Label1: TLabel;
    OKButton: TButton;
    RzPanel1: TRzPanel;
    ScrollBox1: TScrollBox;
    Label2: TLabel;
    RzButton4: TRzButton;
    RzButton1: TRzButton;
    Label3: TLabel;
    Image1: TImage;
    RzPanel2: TRzPanel;
    Image2: TImage;
    procedure OKButtonClick(Sender: TObject);
    procedure FormShow(Sender: TObject);

    Function ShowDllInfo:Integer;
    procedure FormCreate(Sender: TObject);
    procedure RzButton4Click(Sender: TObject);
    procedure RzButton1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  AboutBox: TAboutBox;

implementation

uses MAIN, USTDIClass, UAddTicketForm, ULicForm;

{$R *.dfm}

procedure TAboutBox.OKButtonClick(Sender: TObject);
begin
 Close;
end;

procedure TAboutBox.RzButton1Click(Sender: TObject);
begin
 LicForm.ShowModal;
end;

procedure TAboutBox.RzButton4Click(Sender: TObject);
begin
   Application.CreateForm(TATicketForm, ATicketForm);
//   ATicketForm.Tag:=-1;
   ATicketForm.ShowModal;
end;

Function TAboutBox.ShowDllInfo:Integer;
var
 i,T : Integer;
 tmP,tmP1 : TRzPanel;
 WC : TWinControl;
begin
 WC:=ScrollBox1;
 STDIClass.ReleaseObjects(WC);
for i := 0 to DllListForAbout.Count-1 do
// if Trim(TSlot(Slots.Items[i]).Value)<>'' then
  begin
//   Inc(c);
   tmP:=STDIClass.AddRzPanel(T,1,20,388,
    WC,i,alTop,clCream,bvNone,bvNone,bsNone,'');
//   tmP.AutoSize:=True;

   //slot name
   tmP1:=STDIClass.AddRzPanel(1,1,10,230,
    tmP,i,alClient,clCream,bvNone,bvNone,bsSingle,
     DllListForAbout.Names[i]);
   tmP.Height:=20*(((Length(DllListForAbout.Names[i])*7) div tmP1.Width)+1);

   //slot datatype
   tmP1:=STDIClass.AddRzPanel(1,100,10,138,
    tmP,i,alRight,clCream,bvNone,bvNone,bsSingle,
     DllListForAbout.ValueFromIndex[i]);

   T:=T+tmP.Height;
  end;
  Caption:=STDIClass.LoadSingleString('Caption',LangLocaleDir+LangPrefix+'014.lan');
  STDIClass.LoadLocalLang(Self,LangLocaleDir+LangPrefix+'014.lan');
end;

procedure TAboutBox.FormCreate(Sender: TObject);
begin
 ProductName.Caption:=Application.Title;
 Version.Caption:='v.'+Ver;

end;

procedure TAboutBox.FormShow(Sender: TObject);
begin
// if MainForm.Tag=0 then AboutBox.Label2.Caption:=''
//  else AboutBox.Label2.Caption:=
//   'ознакомительная';
 ShowDllInfo;
end;

end.

