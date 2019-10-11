{------------------------------------------------------------------------------}
{                                                                              }
{  Personal Knowledge Base Designer                                            }
{  by A.Yu. Yurin, N.O. Dorodnykh                                              }
{                                                                              }
{  iskander@icc.ru                                                             }
{  http://knowledge-core.ru/                                                   }
{                                                                              }
{------------------------------------------------------------------------------}

unit UAddTicketForm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, RzLabel, RzPanel, RzButton, ExtCtrls, RzCmboBx, RzEdit;

type
  TATicketForm = class(TForm)
    RzPanel3: TRzPanel;
    RzButton1: TRzButton;
    RzButton2: TRzButton;
    RzPanel1: TRzPanel;
    RzGroupBox1: TRzGroupBox;
    RzLabel1: TRzLabel;
    RzLabel2: TRzLabel;
    Memo1: TRzMemo;
    ComboBox1: TRzComboBox;
    Timer2: TTimer;
    procedure RzButton2Click(Sender: TObject);
    procedure RzButton1Click(Sender: TObject);
    procedure ComboBox1Change(Sender: TObject);
    procedure RzButton1MouseLeave(Sender: TObject);
    procedure RzButton1MouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure RzButton2MouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure Memo1Change(Sender: TObject);
    procedure Memo1KeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure Timer2Timer(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  ATicketForm: TATicketForm;
  WPP1 : TRzPanel;

implementation

uses USTDIClass, MAIN, USSClass;

{$R *.dfm}
function SendTicketOnSecondThread(p: pointer):integer;
type
  TMethod = function (ProxyParams,InStr,URL:WideString):WideString; stdcall;

var
  tmTs  : TStringList;
//  tmTc : TTicket;
  s : String;

  ModuleID   : Cardinal;
  EntryPoint : Pointer;
  LMethod:TMethod;

  i : Integer;
begin
  begin
   tmTs:=TStringList.Create;
//   if Form1.RzListView2.ItemIndex<>-1 then
    try
     tmTs.Add('hid='+SSClass.GetCN);

//     tmTs.Add('login=test');
//     tmTs.Add('passwd=1');
     s:='txt='+ATicketForm.ComboBox1.Text+': '+Trim(
      StringReplace(ATicketForm.Memo1.Text,'%','--',[rfReplaceAll])
//     ATicketForm.Memo1.Text
     );
     tmTs.Add(s);
     tmTs.Text:=StringReplace(tmTs.Text,'"','`',[rfReplaceAll]);
     tmTs.Text:=StringReplace(tmTs.Text,#39,'`',[rfReplaceAll]);
//     Form1.RzStatusPane1.Caption:='Отправка запроса службе поддержки ...';
//     CurSession.CreateProgressPanel(Form1,'Отправка запроса службе поддержки ...');

     s:='';
//     if s<>'' then
      begin
      //-------------------------------------------------------------------------
      ModuleID:=Windows.LoadLibrary(PChar(
       ExtractFileDir(Application.ExeName)+'\Dll\001.dll'
      ));

      STDIClass.InternalGetMethodEntryPoint(ModuleID,'SendRequest',EntryPoint);
       if System.Assigned(EntryPoint) then
        try
          LMethod:=Windows.GetProcAddress(ModuleID,
           PChar('SendRequest'));
          if Assigned(LMethod)then
           begin
            s:=LMethod('',tmTs.Text,
             'http://www.knowledge-core.ru/cgi/pkbd_send_ticket.php');
           end;
        except
        end;
      //-------------------------------------------------------------------------
      end;
   except
   end;

//   CurSession.FreeProgressPanel;

   if s>'0' then
    begin
{     tmTc:=TTicket.Create;
     tmTc.ID:=s;
     tmTc.Status:=0;
     tmTc.Status_r:=0;
     tmTc.Date_in:=Now;
     tmTc.Text_in:=ATicketForm.ComboBox1.Text+': '+Trim(ATicketForm.Memo1.Text);
     CurSession.Tickets.Insert(0,tmTc);
}
     ATicketForm.Tag:=1;
    end
   else
    ATicketForm.Tag:=-1;

   ExitThread(0);
  end;
end;

procedure TATicketForm.ComboBox1Change(Sender: TObject);
begin
 if ComboBox1.Items.IndexOf(ComboBox1.Text)=-1 then
  ComboBox1.ItemIndex:=0;
end;

procedure TATicketForm.FormCreate(Sender: TObject);
begin
 STDIClass.LoadLocalLang(Self,LangLocaleDir+LangPrefix+'009.lan');
 Caption:=STDIClass.LoadSingleString('Caption',LangLocaleDir+LangPrefix+'009.lan');
end;

procedure TATicketForm.Memo1Change(Sender: TObject);
var
 tC : TColor;
begin
try
 if Trim(TRzMemo(Sender).Text)<>'' then tC:=clGreen
  else tC:=clRed;

 TRzMemo(Sender).FrameColor:=tC;
 TRzMemo(Sender).Font.Color:=tC;
finally
end;
end;

procedure TATicketForm.Memo1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
try
 if Key=13 then RzButton1Click(RzButton1);
 if Key=27 then RzButton2Click(RzButton2);
finally
end;
end;

procedure TATicketForm.RzButton1Click(Sender: TObject);
begin
 if Trim(Memo1.Text)='' then
  begin
   MainForm.MMessageBox(1,0,'0='+MainForm.LS('Please, enter the message'));
   Memo1.SetFocus;
  end
 else
  begin
   if MainForm.MMessageBox(1,1,'0='+MainForm.LS('Send the message')+': '+
    Trim(Memo1.Text)+'?')=0 then
     begin
//      WPString:='Отправка запроса ...';
//      Form1.RzStatusPane1.Caption:=WPString;
//      CurSession.Cnt:=0;
      Self.Tag:=0;
      Timer2.Enabled:=True;
      TH2:=BeginThread(nil,1024,SendTicketOnSecondThread,nil,0,TID2);
     end;
//   Close;
  end;
end;

procedure TATicketForm.RzButton1MouseLeave(Sender: TObject);
begin
 TRzButton(Sender).Font.Color:=clDefault;
end;

procedure TATicketForm.RzButton1MouseMove(Sender: TObject; Shift: TShiftState;
  X, Y: Integer);
begin
 TRzButton(Sender).Font.Color:=clGreen;
end;

procedure TATicketForm.RzButton2Click(Sender: TObject);
begin
 Close;
end;

procedure TATicketForm.RzButton2MouseMove(Sender: TObject; Shift: TShiftState;
  X, Y: Integer);
begin
 TRzButton(Sender).Font.Color:=clRed;
end;

procedure TATicketForm.Timer2Timer(Sender: TObject);
begin
   if Self.Tag=0 then
    begin
     if TTimer(Sender).Tag=0 then
      begin
//       WPP1:=CurSession.CreateProgressPanel(Self,WPString);
//       TRzProgressStatus(CurSession.P.Controls[0]).TotalParts:=
//        CurSession.Cnt;
//       CurSession.Cnt:=0;
       TTimer(Sender).Tag:=1;
       Screen.Cursor:=crHourGlass;
       Self.Enabled:=False;
      end
     else
      begin
//       Timer2.Tag:=Timer2.Tag+1;
//       Inc(CurSession.Cnt);
//       TRzProgressStatus(CurSession.P.Controls[0]).
//        PartsComplete:=CurSession.Cnt;
      end;
    end
    else
     begin
      TTimer(Sender).Enabled:=False;
      Screen.Cursor:=crDefault;
//      CurSession.FreeProgressPanel(WPP1);
      TTimer(Sender).Tag:=0;
        // --------------------------------------------
       if Self.Tag>0 then
        begin
         MainForm.MMessageBox(0,0,'0='+MainForm.LS('Message sent'));
  //       Form1.Image19Click(Form1.Image19);
        end
       else
         MainForm.MMessageBox(2,0,'255='+ MainForm.LS('Error when sending message'));
         // --------------------------------------------
      Close;
     end;
//  end;
end;


end.
