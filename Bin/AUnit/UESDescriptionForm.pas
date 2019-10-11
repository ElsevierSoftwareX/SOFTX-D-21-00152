{------------------------------------------------------------------------------}
{                                                                              }
{  Personal Knowledge Base Designer                                            }
{  by A.Yu. Yurin, N.O. Dorodnykh                                              }
{                                                                              }
{  iskander@icc.ru                                                             }
{  http://knowledge-core.ru/                                                   }
{                                                                              }
{------------------------------------------------------------------------------}

unit UESDescriptionForm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, jpeg, ExtCtrls, Mask, RzEdit, StdCtrls, RzLabel, RzButton, RzPanel,
  ExtDlgs, DateUtils, Menus, RzCmboBx;

type
  TESDescriptionForm = class(TForm)
    RzPanel2: TRzPanel;
    RzButton1: TRzButton;
    RzButton2: TRzButton;
    GroupBox5: TGroupBox;
    RzPanel9: TRzPanel;
    RzPanel12: TRzPanel;
    RzLabel1: TRzLabel;
    Memo1: TMemo;
    RzPanel10: TRzPanel;
    RzPanel18: TRzPanel;
    RzPanel11: TRzPanel;
    RzLabel7: TRzLabel;
    RzEdit2: TRzEdit;
    RzPanel13: TRzPanel;
    RzLabel2: TRzLabel;
    RzEdit1: TRzEdit;
    RzPanel14: TRzPanel;
    RzLabel3: TRzLabel;
    RzEdit3: TRzEdit;
    RzPanel15: TRzPanel;
    RzLabel4: TRzLabel;
    RzEdit4: TRzEdit;
    RzPanel16: TRzPanel;
    RzLabel5: TRzLabel;
    RzPanel17: TRzPanel;
    ProgramIcon: TImage;
    OpenPictureDialog1: TOpenPictureDialog;
    RzComboBox1: TRzComboBox;
    procedure RzButton2Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure RzEdit1Change(Sender: TObject);
    procedure ProgramIconClick(Sender: TObject);
    procedure RzComboBox1Change(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
   T1 : TObject;
  end;

var
  ESDescriptionForm: TESDescriptionForm;

implementation

uses MAIN, UPKBClass, SDXML, USTDIClass;

{$R *.dfm}

procedure TESDescriptionForm.FormCreate(Sender: TObject);
begin
 Self.Caption:=STDIClass.LoadSingleString(Self.Name+'c',
  LangLocaleDir+LangPrefix+'019.lan');
 STDIClass.LoadLocalLang(Self,LangLocaleDir+LangPrefix+'019.lan');
 RzComboBox1.ItemIndex:=0;
end;

procedure TESDescriptionForm.FormShow(Sender: TObject);
begin
   RzEdit1.Text:=TTask(T1).Name;
   RzEdit3.Text:=TTask(T1).Authors;
   RzEdit2.Text:=TTask(T1).Creation_date;
//   RzEdit5.Text:=TTask(T1).Modification_date;
   RzEdit4.Text:=TTask(T1).task_Ver;
   Memo1.Text:=TTask(T1).Description;

   if Trim(TTask(T1).Logo_file)<>'' then
     try
      ProgramIcon.Picture.LoadFromFile(Trim(TTask(TTask(T1)).Logo_file));
     except
     end;
end;

procedure TESDescriptionForm.ProgramIconClick(Sender: TObject);
begin
 if OpenPictureDialog1.Execute then
  if Trim(OpenPictureDialog1.FileName)<>'' then
   try
    ProgramIcon.Picture.LoadFromFile(Trim(OpenPictureDialog1.FileName));
    TTask(T1).Logo_file:=Trim(OpenPictureDialog1.FileName);
   except
   end;
end;

procedure TESDescriptionForm.RzButton2Click(Sender: TObject);
function MakePKBDCloneFor(ES_folder:string):Integer;
var
 i,j : Integer;
 tmTs : TStringList;
 ES_path : string;
begin
 tmTs:=TStringList.Create;
 Result:=0; j:=0;
 ES_path:=ExtractFileDir(Application.ExeName)+'/Expert systems/'+ES_folder;
 if FileExists(ExtractFileDir(Application.ExeName)+'/Config/es_files_list.txt') then
  begin
   tmTs.LoadFromFile(ExtractFileDir(Application.ExeName)+'/Config/es_files_list.txt');
   for i := 0 to tmTs.Count-1 do
    begin
     if tmTs.Strings[i][1]<>';' then
      begin
       Inc(j);

      //-----------------------------
      prP.Caption:=MainForm.LS('Please,wait')+' ('+IntToStr(Round(100*i/17))+'%)';
      Application.ProcessMessages;
      //-----------------------------

       if Pos('.',tmTs.Strings[i])=0 then
        begin //create a folder
          if CreateDir(ES_path+tmTs.Strings[i]) then Result:=Result+1;
        end
       else  //copy a file
        begin
         if CopyFile(PWideChar(
          ExtractFileDir(Application.ExeName)+tmTs.Strings[i]
           ),PWideChar(
            ES_path+tmTs.Strings[i]
             ),true) then
          Result:=Result+1;
        end;
      end;
    end;
   CopyFile(PWideChar(Application.ExeName),PWideChar(
            ES_path+'/PKBD.exe'
             ),true);

   if Result<>j then Result:=-3;
   //modify the config
   tmTs.LoadFromFile(ES_path+'/Config/pkbd.cfg');
   tmTs.Values['lang']:=LangPrefix[1]+LangPrefix[2];
   tmTs.Values['mode']:='es';
   tmTs.SaveToFile(ES_path+'/Config/pkbd.cfg');
  end
 else Result:=-2;
end;

var
 s,s1,s2 : string;
 tMI : TMenuItem;
 K : TKnowledgeBase;
 tmTs : TStringList;
begin

  prP:=STDIClass.CreateProgressIndicator(Self,
  IntToStr(KB.Templates.Count)
   );

 //save enetred data
   s:=StringReplace(Trim(RzEdit1.Text),' ','_',[rfReplaceAll]);
   s:=StringReplace(s,'(','/',[rfReplaceAll]);
   s:=StringReplace(s,')','/',[rfReplaceAll]);
   TTask(T1).Name:=s;
   TTask(T1).Authors:=Trim(RzEdit3.Text);
   TTask(T1).Description:=Trim(Memo1.Text);
   TTask(T1).Platfotm:=RzComboBox1.Text;

 //create a specifications
 s1:=IntToStr(MilliSecondOfTheYear(Now))+'_'+TTask(T1).Name;
 s:=ExtractFileDir(Application.ExeName)+'\Expert systems\'+
  s1;
 if CreateDir(s) then
  begin
   //copy logo file
   if FileExists(TTask(T1).Logo_file) then
    if CopyFile(PWideChar(TTask(T1).Logo_file),PWideChar(s+'\logo'),true) then
   //change ref
     TTask(T1).Logo_file:='logo' else TTask(T1).Logo_file:='';

   K:=MainForm.GetKBForNode(MainForm.TreeView1.Selected);
  //-----------------------------
  prP.Caption:=MainForm.LS('Please,wait')+' (5%)';
  Application.ProcessMessages;
  //-----------------------------
  case RzComboBox1.ItemIndex of
   0: begin   //window/pkbd
     s2:=s+'\'+s1+'.ekb';
     XmlSave.GXMLStrSF(s2,K);
    end;
   1: begin //windows/pkbd-clips
     s2:=s+'\'+s1+'.clp';
     tmTs:=TStringList.Create;
      tmTs.Text:=KB.
       GetDescriptionOnKBLanguage(
        ExtractFileDir(Application.ExeName)+'\Dll\cs.dll'
         );

      TTask(T1).SaveMetaInfotoFile(tmTs);
      tmTs.SaveToFile(s2);
    end;
  end;
   Application.ProcessMessages;
   //copy other files with acordance of es_files_list.txt
   MakePKBDCloneFor(s1);
   //!!!!
   //обновить пункт меню со списком экспертных систем
    tMI:=TMenuItem.Create(tMI);
    tMI.Caption:=s1+' ('+DateTimeToStr(Now)+')';
    tMI.OnClick:=MainForm.ESMenuItemClick;
    MainForm.MainMenu.Items.Items[4].Insert(0,tMI);

  //сделать менеджер экспертных систем

   if MainForm.MMessageBox(0,2,'0='+
    MainForm.LS('Expert system is created. Local path for preview:')+' '+s+#10+
    '0='+MainForm.LS('Are you want to run?')
    )<>0 then
     begin //run the es created
      MainForm.ESMenuItemClick(
       MainForm.MainMenu.Items.Items[4].Items[0]
       )
     end;
  end
 else
  begin
    MainForm.MMessageBox(1,0,'0='+
     MainForm.LS('Expert system creation error')
    //      STDIClass.LoadSingleString('Programming languages support modules are missing',LangLocaleDir+LangPrefix+'012.lan')
       );
  end;
 prP.Free;
 Close;
end;

procedure TESDescriptionForm.RzComboBox1Change(Sender: TObject);
var
 s : string;
begin
 s:=Trim(TRzComboBox(Sender).Text);
 if TRzComboBox(Sender).IndexOf(s)=-1  then
  TRzComboBox(Sender).ItemIndex:=0;
end;

procedure TESDescriptionForm.RzEdit1Change(Sender: TObject);
begin
 if Trim(TRzEdit(Sender).Text)='' then
   MainForm.MMessageBox(1,0,'0='+MainForm.LS('The name can not be empty'));
end;

end.
