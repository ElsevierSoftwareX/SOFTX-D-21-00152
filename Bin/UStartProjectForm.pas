{------------------------------------------------------------------------------}
{                                                                              }
{  Personal Knowledge Base Designer                                            }
{  by A.Yu. Yurin, N.O. Dorodnykh                                              }
{                                                                              }
{  iskander@icc.ru                                                             }
{  http://knowledge-core.ru/                                                   }
{                                                                              }
{------------------------------------------------------------------------------}

unit UStartProjectForm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, RzLabel, RzButton, ExtCtrls, ComCtrls, RzListVw, RzPanel,
  RzLstBox;

type
  TStartProjectForm = class(TForm)
    RzBitBtn1: TRzBitBtn;
    RzBitBtn2: TRzBitBtn;
    RzBitBtn3: TRzBitBtn;
    Panel1: TPanel;
    GroupBox1: TRzGroupBox;
    RzListBox1: TRzListBox;
    procedure RzBitBtn3Click(Sender: TObject);
    procedure RzBitBtn1Click(Sender: TObject);
    procedure RzBitBtn2Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure RzListView1DblClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  StartProjectForm: TStartProjectForm;

implementation

uses MAIN, USTDIClass, SDXML, UPKBClass, UMsgBoxForm;

{$R *.dfm}

procedure TStartProjectForm.RzBitBtn3Click(Sender: TObject);
begin
 MainForm.NewKBClick(MainForm.NewKB);
 MainForm.RebulidImagesOnTree(MainForm.TreeView1);
 Close;
end;

procedure TStartProjectForm.RzListView1DblClick(Sender: TObject);
var
 tmKB1  : TKnowledgeBase;
begin
 if RzListBox1.ItemIndex>-1 then
  begin
   tmKB1:=TKnowledgeBase.Create;
   tmKB1.Init;
   tmKB1.FileName:=RzListBox1.Items[RzListBox1.ItemIndex];

    if XmlDow.parXML(RzListBox1.Items[RzListBox1.ItemIndex],tmKB1)=0 then
     begin
      MainForm.MakeDump(
       STDIClass.LoadSingleString('Open: knowledge base',LangLocaleDir+LangPrefix+'012.lan')
        ,7);
      MainForm.LoadAList(MainForm.RzListView1);

      //check ID
      if MainForm.IndexOfKBbyID(KBList,tmKB1.ID)<>-1 then
       begin //kb is opened
         MainForm.MMessageBox(1,0,'0='+
          STDIClass.LoadSingleString('The knowledge base is already open',LangLocaleDir+LangPrefix+'012.lan')
          );
       end
      else
       begin //kb is not opened
        //check name
        if MainForm.IndexOfKBbyName(KBList,tmKB1.Name)<>-1 then
         begin //the similar kb is opened
          if MainForm.MMessageBox(1,1,'0='+
           STDIClass.LoadSingleString('The Knowledge base with the same name is already open. Still open?',LangLocaleDir+LangPrefix+'012.lan')
           )=0
           then
            begin
              KBList.Add(tmKB1);
              MainForm.LoadTree(KBList,MainForm.TreeView1);
              Close;
            end;
         end
        else
         begin
          KBList.Add(tmKB1);
          MainForm.LoadTree(KBList,MainForm.TreeView1);
          Close;
         end;
       end;
     end;
  end;
end;

procedure TStartProjectForm.FormCreate(Sender: TObject);
var
 f  : TStringList;
 i : Integer;
begin
 STDIClass.LoadLocalLang(Self,LangLocaleDir+LangPrefix+'010.lan');
 //recent files
 if FileExists(ExtractFileDir(Application.ExeName)+'/Config/recent.log') then
  begin
   RzListBox1.Clear;
   f:=TStringList.Create;
   f.LoadFromFile(ExtractFileDir(Application.ExeName)+'/Config/recent.log');
   for i := 0 to f.Count-1 do
    begin
     if FileExists(f.Strings[i]) then
      begin
       if FileExists(f.Strings[i]) then
        begin
         RzListBox1.Add(f.Strings[i]);
        end;
      end;
    end;
  end;
 if RzListBox1.Items.Count>0 then
  begin
   i:=185+RzListBox1.Items.Count*25;
   if i>270 then i:=270;

   Self.Height:=i;
   GroupBox1.Visible:=True;
  end
 else
  begin
   Self.Height:=170;
   GroupBox1.Visible:=False;
  end;
end;

procedure TStartProjectForm.RzBitBtn1Click(Sender: TObject);
begin
 MainForm.N16Click(MainForm.N16);
 Close;
end;

procedure TStartProjectForm.RzBitBtn2Click(Sender: TObject);
begin
 MainForm.N13Click(MainForm.N13);
 Close;
end;

end.
