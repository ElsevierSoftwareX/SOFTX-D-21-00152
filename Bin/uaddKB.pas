{------------------------------------------------------------------------------}
{                                                                              }
{  Personal Knowledge Base Designer                                            }
{  by A.Yu. Yurin, N.O. Dorodnykh                                              }
{                                                                              }
{  iskander@icc.ru                                                             }
{  http://knowledge-core.ru/                                                   }
{                                                                              }
{------------------------------------------------------------------------------}

unit uaddKB;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Mask, RzEdit, RzPanel, RzButton, ExtCtrls, UPKBClass,
  ComCtrls;

type
  TaddKB = class(TForm)
    RzPanel2: TRzPanel;
    RzButton1: TRzButton;
    RzButton2: TRzButton;
    RzPanel6: TRzPanel;
    RzEdit1: TRzEdit;
    Label1: TLabel;
    Label2: TLabel;
    RzEdit2: TRzEdit;
    Label3: TLabel;
    ComboBox1: TComboBox;
    GroupBox1: TRzGroupBox;
    Memo1: TMemo;
    procedure RzButton2Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure RzButton1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure RzEdit1Change(Sender: TObject);
    procedure RzEdit2Click(Sender: TObject);
    procedure RzEdit2Change(Sender: TObject);
    procedure RzPanel1MouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);

    function IndexOfKB(n:string):Integer;
    function IndexOfKB_(n,id:string):Integer;

  private
    { Private declarations }
  public
    { Public declarations }
   KB1:TKnowledgeBase;
  end;

var
  addKB: TaddKB;

implementation

{$R *.dfm}
uses MAIN, USTDIClass, uTrans;

procedure TaddKB.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := caFree;
end;

procedure TaddKB.RzButton1Click(Sender: TObject);
begin
  addKB.Close;
end;

function TaddKB.IndexOfKB(n:string):Integer;
var
 i : Integer;
begin
 Result:=-1;
 for i := 0 to KBList.Count-1 do
  if TKnowledgeBase(KBList.Items[i]).Name=n then
    begin
     Result:=i;
     Break;
    end;
end;
//-------------------------------------------------------
function TaddKB.IndexOfKB_(n,id:string):Integer;
var
 i : Integer;
begin
 Result:=-1;
 for i := 0 to KBList.Count-1 do
  if (TKnowledgeBase(KBList.Items[i]).Name=n)and
   (TKnowledgeBase(KBList.Items[i]).ID<>id) then
    begin
     Result:=i;
     Break;
    end;
end;
//-------------------------------------------------------
procedure TaddKB.RzButton2Click(Sender: TObject);
var
 s : string;
 old_name,new_name : Integer;
 old_kind,new_kind : Integer;
begin
 s:=Trim(RzEdit1.Text);
 if s='' then
  begin
   MainForm.MMessageBox(1,0,'0='+MainForm.LS('The name can not be empty'))
  end
 else
  begin
   new_name:=IndexOfKB(s);
   old_name:=IndexOfKB(KB1.Name);

   new_kind:=ComboBox1.ItemIndex;
   old_kind:=KB1.Kind;

     if (new_name=-1)or(old_name=new_name) then
      begin
       KB1.Name:=Trim(RzEdit1.Text);
       KB1.ShortName:=Translit.Trans(KB1.Name, Translit.FL);
       if KB1.ShortName='' then
        KB1.ShortName:=Translit.Trans(KB1.Name, Translit.FL);
       KB1.Kind:=ComboBox1.ItemIndex;
       KB1.Description:=Trim(Memo1.Text);

       case Tag of
       1:begin //edit
         MainForm.MakeDump(MainForm.LS('Edit the knowledge base')+': '+KB1.Name,10);
         MainForm.LoadAList(MainForm.RzListView1);

         MainForm.TreeView1.Selected.Text:=KB1.Name;
         if (old_kind<>new_kind) then MainForm.LoadTree(KBList,MainForm.TreeView1)
          else
           begin
            MainForm.TreeView1.Selected.Text:=KB1.Name;
            MainForm.TreeView1Click(MainForm.TreeView1);
           end;
        end;  //end 1
       2:begin //add
         MainForm.MakeDump(MainForm.LS('Create a new knowledge base')+': '+KB1.Name,6);
         MainForm.LoadAList(MainForm.RzListView1);
         KB1.LoadTemplatesFromCFM; //load template by default
         if FileExists(ExtractFileDir(Application.ExeName)+'/Config/rules.cfg') then
          KB1.LoadGRules(ExtractFileDir(Application.ExeName)+'/Config/rules.cfg');

         KBList.Add(KB1);
         MainForm.TreeView1.Selected:=
          KB1.AddToTreeView(MainForm.TreeView1,MainForm.TreeView1.Items.Item[0]);
         MainForm.TreeView1.Items.Item[0].Text:=
          MainForm.PutChildCount(MainForm.TreeView1.Items.Item[0]);
         MainForm.RebulidImagesOnTree(MainForm.TreeView1);
         MainForm.TreeView1Click(MainForm.TreeView1);
        end;   //end 2
       end;  //end case
      Close;
    end
   else
    MainForm.MMessageBox(1,0,'0='+MainForm.LS('The Knowledge base with the same name already exists'))
  end;
end;

procedure TaddKB.FormCreate(Sender: TObject);
begin
// MainForm.ImageList1.gGetIcon(21,Icon);
 ComboBox1.Clear;
 if LangPrefix='ru/' then
  begin
   ComboBox1.Items.Add('продукции'); ComboBox1.Items.Add('прецеденты');
  end
 else
  begin
   ComboBox1.Items.Add('rules'); ComboBox1.Items.Add('cases');
  end;

 STDIClass.LoadLocalLang(Self,
  LangLocaleDir+LangPrefix+'005.lan');

 KB1:=TKnowledgeBase.Create;
 KB1.Init;

 RzEdit1.Text:=MainForm.LS('Knowledge base')+' '+KB1.ID;

// MainForm.ReloadHelpMessage(ScrollBox3,14);
end;

procedure TaddKB.FormShow(Sender: TObject);
begin

 case Tag of
  1:begin //edit
    Self.Caption:=' '+MainForm.LS('Edit the knowledge base');
    RzButton2.Caption:=MainForm.LS('Ok');
    RzEdit1.Text:=KB1.Name;
    RzEdit2.Text:=KB1.ShortName;
    Memo1.Text:=KB1.Description;
    MainForm.ImageList2.GetIcon(1,Self.Icon);
    ComboBox1.ItemIndex:=KB1.Kind;
//    ComboBox1.Enabled:=False;
   end;
  2:begin //add
    RzButton2.Caption:=MainForm.LS('Create');
    Self.Caption:=' '+MainForm.LS('Create a new knowledge base');
    MainForm.ImageList1.GetIcon(21,Self.Icon);
    ComboBox1.ItemIndex:=0;
//    ComboBox1.Enabled:=True;
  end;
 end;
 RzEdit1Change(RzEdit1);
end;

procedure TaddKB.RzEdit1Change(Sender: TObject);
begin
// if (RzEdit2.Text='') and (RzEdit2.Tag=0) then
  TRzEdit(Sender).Text:=StringReplace(TRzEdit(Sender).Text,'(','_',[rfReplaceAll]);
  TRzEdit(Sender).Text:=StringReplace(TRzEdit(Sender).Text,')','_',[rfReplaceAll]);
  RzEdit2.Text:=Translit.Trans(Trim(TRzEdit(Sender).Text),Translit.FL);
end;

procedure TaddKB.RzEdit2Click(Sender: TObject);
begin
 TRzEdit(Sender).Tag:=1;
end;

procedure TaddKB.RzEdit2Change(Sender: TObject);
begin
 if TRzEdit(Sender).Tag=1 then
  TRzEdit(Sender).Text:=
   Translit.Trans(TRzEdit(Sender).Text,Translit.FL);
end;

procedure TaddKB.RzPanel1MouseMove(Sender: TObject; Shift: TShiftState; X,
  Y: Integer);
begin
//  MainForm.ReloadHelpMessage(ScrollBox3,TWinControl(Sender).Tag);
end;

end.
