{------------------------------------------------------------------------------}
{                                                                              }
{  Personal Knowledge Base Designer                                            }
{  by A.Yu. Yurin, N.O. Dorodnykh                                              }
{                                                                              }
{  iskander@icc.ru                                                             }
{  http://knowledge-core.ru/                                                   }
{                                                                              }
{------------------------------------------------------------------------------}

unit URVMLElementEditUnit;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, RzTabs, RzButton, ExtCtrls, RzPanel, Mask, RzEdit, RzLabel,
  ComCtrls, RzListVw, Menus;

type
  TRVMLElementEditForm = class(TForm)
    RzPanel2: TRzPanel;
    RzButton1: TRzButton;
    RzButton2: TRzButton;
    RzPageControl1: TRzPageControl;
    TabSheet3: TRzTabSheet;
    GroupBox3: TGroupBox;
    TabSheet1: TRzTabSheet;
    GroupBox4: TGroupBox;
    TabSheet5: TRzTabSheet;
    RzPanel4: TRzPanel;
    RzLabel7: TRzLabel;
    RzEdit2: TRzEdit;
    RzPanel9: TRzPanel;
    Memo1: TMemo;
    RzPanel1: TRzPanel;
    RzLabel2: TRzLabel;
    RzEdit1: TRzEdit;
    RzLabel1: TRzLabel;
    RzPanel3: TRzPanel;
    RzLabel3: TRzLabel;
    RzEdit3: TRzEdit;
    TabSheet2: TRzTabSheet;
    RzListView1: TRzListView;
    PopupMenu1: TPopupMenu;
    Edit1: TMenuItem;
    RzPanel5: TRzPanel;
    RzLabel4: TRzLabel;
    RzEdit4: TRzEdit;
    RzPanel6: TRzPanel;
    RzLabel5: TRzLabel;
    RzEdit5: TRzEdit;
    GroupBox1: TGroupBox;
    RzListView2: TRzListView;
    GroupBox2: TGroupBox;
    RzListView3: TRzListView;
    RzPanel7: TRzPanel;
    RzLabel6: TRzLabel;
    RzEdit6: TRzEdit;
    TabSheet4: TRzTabSheet;
    GroupBox5: TGroupBox;
    RzListView4: TRzListView;
    TabSheet6: TRzTabSheet;
    TabSheet7: TRzTabSheet;
    GroupBox6: TGroupBox;
    RzListView5: TRzListView;
    GroupBox7: TGroupBox;
    RzListView6: TRzListView;
    TabSheet8: TRzTabSheet;
    GroupBox8: TGroupBox;
    RzListView7: TRzListView;

    procedure RzButton1Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure RzEdit1Change(Sender: TObject);
    procedure RzButton2Click(Sender: TObject);
    procedure Insert1Click(Sender: TObject);
    procedure Remove1Click(Sender: TObject);
    procedure RzListView1DblClick(Sender: TObject);
    procedure Edit1Click(Sender: TObject);
    procedure PopupMenu1Popup(Sender: TObject);
    procedure RzListView2DblClick(Sender: TObject);
    procedure RzListView3DblClick(Sender: TObject);
    procedure RzListView4DblClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    tmObj : TObject;
  end;

var
  RVMLElementEditForm: TRVMLElementEditForm;

implementation

uses UPKBClass, uTrans, MAIN, USTDIClass;

{$R *.dfm}

procedure TRVMLElementEditForm.Edit1Click(Sender: TObject);
begin
 if RzListView1.ItemIndex>-1 then
  RzListView1DblClick(RzListView1);
end;

procedure TRVMLElementEditForm.FormCreate(Sender: TObject);
begin
 //localisation
 STDIClass.LoadLocalLang(Self,
  LangLocaleDir+LangPrefix+'018.lan');

 RzPageControl1.Pages[0].Caption:=MainForm.LS('General properties');
 RzPageControl1.Pages[1].Caption:=MainForm.LS('Properties (Atributes)');
 RzPageControl1.Pages[2].Caption:=MainForm.LS('Relations');
 RzPageControl1.Pages[3].Caption:=MainForm.LS('Facts');
 RzPageControl1.Pages[4].Caption:=MainForm.LS('Conditions1');
 RzPageControl1.Pages[5].Caption:=MainForm.LS('Actions1');
 RzPageControl1.Pages[6].Caption:=MainForm.LS('Actions1');
 RzPageControl1.Pages[7].Caption:=MainForm.LS('Rules1');

 RzListView1.Columns.Items[0].Caption:=MainForm.LS('Name');
 RzListView1.Columns.Items[1].Caption:=MainForm.LS('DataType');
 RzListView1.Columns.Items[2].Caption:=MainForm.LS('Value');

 RzListView2.Columns.Items[0].Caption:=MainForm.LS('Used in the rule');
 RzListView2.Columns.Items[1].Caption:=MainForm.LS('Role');

 RzListView3.Columns.Items[0].Caption:=MainForm.LS('Used in the fact');

 RzListView4.Columns.Items[0].Caption:=MainForm.LS('Used in the rule');

 RzListView5.Columns.Items[0].Caption:=MainForm.LS('Templates4');

 RzListView6.Columns.Items[0].Caption:=MainForm.LS('Operations');
 RzListView6.Columns.Items[1].Caption:=MainForm.LS('Facts');

 RzListView7.Columns.Items[0].Caption:=MainForm.LS('Templates4');
end;

procedure TRVMLElementEditForm.FormShow(Sender: TObject);
var
 i : Integer;
 K : TKnowledgeBase;
 Lst : TStringList;
 s : string;
begin
// RzListView1.Clear;
 RzPageControl1.ActivePageIndex:=0;

 if tmObj is TSlot then  //for slots
  begin
   Caption:='Slot detail: '+TSlot(tmObj).Name;
   RzEdit1.Text:=TSlot(tmObj).Name;
   RzEdit3.Text:=TSlot(tmObj).ShortName;
   Memo1.Text:=TSlot(tmObj).Description;
   RzEdit5.Text:=TSlot(tmObj).DataType; RzPanel5.Visible:=True;
   RzEdit4.Text:=TSlot(tmObj).Value; RzPanel6.Visible:=True;

   RzPageControl1.Pages[1].TabVisible:=False; //properties
   RzPageControl1.Pages[2].TabVisible:=False; //relations
   RzPageControl1.Pages[3].TabVisible:=False; //rule elements
   RzPageControl1.Pages[4].TabVisible:=False; //conditions
   RzPageControl1.Pages[5].TabVisible:=False; //actions for rule
   RzPageControl1.Pages[6].TabVisible:=False; //actions for grule
   RzPageControl1.Pages[7].TabVisible:=False; //rules
 end;
 //--------------------------------------------------------------------------

 if tmObj is TRule then  //for rules
  begin
   Caption:='Rule detail: '+TRule(tmObj).ID;
   RzEdit1.Text:=TRule(tmObj).Name;
   RzEdit3.Text:=TRule(tmObj).ShortName;
   RzEdit2.Text:=TRule(tmObj).ID;
   RzEdit6.Text:=TRule(tmObj).Salience;  RzPanel7.Visible:=True;
   Memo1.Text:=TRule(tmObj).Description;

   //load conditions
   RzListView5.Clear;
   for i := 0 to TRule(tmObj).Conditions.Count-1 do
    begin
     RzListView5.AddItem(
      TFact(TCondition(TRule(tmObj).Conditions.Items[i]).Fact).Name,
        TRule(tmObj).Conditions.Items[i]
     );
    end;

   //load actions
   RzListView6.Clear;
   for i := 0 to TRule(tmObj).Actions.Count-1 do
    begin
     RzListView6.AddItem(
      TRAction(TRule(tmObj).Actions.Items[i]).Operator,
        TRule(tmObj).Actions.Items[i]
     );
     RzListView6.Items.Item[RzListView1.Items.Count-1].SubItems.Add(
      TFact(TRAction(TRule(tmObj).Actions.Items[i]).Fact).Name
       );
    end;

   RzPageControl1.Pages[1].TabVisible:=False; //properties
   RzPageControl1.Pages[2].TabVisible:=False; //relations (rule elements)
   RzPageControl1.Pages[3].TabVisible:=False; //facts
   RzPageControl1.Pages[4].TabVisible:=True; //conditions
   RzPageControl1.Pages[5].TabVisible:=True; //actions for rule
   RzPageControl1.Pages[6].TabVisible:=False; //actions for grule
   RzPageControl1.Pages[7].TabVisible:=False; //rules
  end;
 //--------------------------------------------------------------------------
 if tmObj is TFact then  //for facts
  begin
   Caption:='Fact detail: '+TFact(tmObj).ID;
   RzEdit1.Text:=TFact(tmObj).Name;
   RzEdit3.Text:=TFact(tmObj).ShortName;
   RzEdit2.Text:=TFact(tmObj).ID;
   Memo1.Text:=TFact(tmObj).Description;
   //load slots
   RzListView1.Clear;
   for i := 0 to TFact(tmObj).Slots.Count-1 do
    begin
     RzListView1.AddItem(
      TSlot(TFact(tmObj).Slots.Items[i]).Name,
       TFact(tmObj).Slots.Items[i]
     );
     RzListView1.Items.Item[RzListView1.Items.Count-1].SubItems.Add(
      TSlot(TFact(tmObj).Slots.Items[i]).DataType
       );
     RzListView1.Items.Item[RzListView1.Items.Count-1].SubItems.Add(
      TSlot(TFact(tmObj).Slots.Items[i]).Value
      );
    end;

   //load relations
   //!!!

   RzPageControl1.Pages[1].TabVisible:=True; //properties
   RzPageControl1.Pages[2].TabVisible:=False; //relations (rule elements)
   RzPageControl1.Pages[3].TabVisible:=False; //facts
   RzPageControl1.Pages[4].TabVisible:=False; //conditions
   RzPageControl1.Pages[5].TabVisible:=False; //actions for rule
   RzPageControl1.Pages[6].TabVisible:=False; //actions for grule
   RzPageControl1.Pages[7].TabVisible:=False; //rules
  end;
 //--------------------------------------------------------------------------
 if tmObj is TTemplate then  //for template
  begin
   Caption:='Template detail: '+TTemplate(tmObj).ID;
   RzEdit1.Text:=TTemplate(tmObj).Name;
   RzEdit3.Text:=TTemplate(tmObj).ShortName;
   RzEdit2.Text:=TTemplate(tmObj).ID;
   Memo1.Text:=TTemplate(tmObj).Description;
   //load slots
   RzListView1.Clear;
   for i := 0 to TTemplate(tmObj).Slots.Count-1 do
    begin
     RzListView1.AddItem(
      TSlot(TTemplate(tmObj).Slots.Items[i]).Name,
       TTemplate(tmObj).Slots.Items[i]
     );
     RzListView1.Items.Item[RzListView1.Items.Count-1].SubItems.Add(
      TSlot(TTemplate(tmObj).Slots.Items[i]).DataType
       );
     RzListView1.Items.Item[RzListView1.Items.Count-1].SubItems.Add(
      TSlot(TTemplate(tmObj).Slots.Items[i]).Value
      );
    end;

   //load relations
   K:=MainForm.GetKBForNode(MainForm.TreeView1.Selected);
   Lst:=K.IndexesOfGUT(TTemplate(tmObj));
   RzListView2.Clear;
   for i := 0 to Lst.Count-1 do
    begin
     RzListView2.AddItem(
      Lst.Strings[i],
       Lst.Objects[i]
     );
     if pos('[A',Lst.Strings[i])=0 then s:='Condition'
      else s:='Action';

     RzListView2.Items.Item[RzListView2.Items.Count-1].SubItems.Add(
      s
       );
    end;

   //load facts
   Lst:=K.IndexesOfFUT(TTemplate(tmObj));
   RzListView3.Clear;
   for i := 0 to Lst.Count-1 do
    begin
     RzListView3.AddItem(
      Lst.Strings[i],
       Lst.Objects[i]
     );
    end;

   RzPageControl1.Pages[1].TabVisible:=True; //properties
   RzPageControl1.Pages[2].TabVisible:=True; //relations (rule elements)
   RzPageControl1.Pages[3].TabVisible:=True; //facts
   RzPageControl1.Pages[4].TabVisible:=False; //conditions
   RzPageControl1.Pages[5].TabVisible:=False; //actions for rule
   RzPageControl1.Pages[6].TabVisible:=False; //actions for grule
   RzPageControl1.Pages[7].TabVisible:=False; //rules
  end;

 //--------------------------------------------------------------------------
 if tmObj is TGRule then  //for grule
  begin
   Caption:='Generalized rule detail: '+TGRule(tmObj).ID;
   RzEdit1.Text:=TGRule(tmObj).Name;
   RzEdit3.Text:=TGRule(tmObj).ShortName;
   RzEdit2.Text:=TGRule(tmObj).ID;
   Memo1.Text:=TGRule(tmObj).Description;

   //load conditions
   RzListView5.Clear;
   for i := 0 to TGRule(tmObj).Conditions.Count-1 do
    begin
     RzListView5.AddItem(
      TTemplate(TGRule(tmObj).Conditions.Items[i]).Name,
        TGRule(tmObj).Conditions.Items[i]
     );
    end;

   //load actions
   RzListView7.Clear;
   for i := 0 to TGRule(tmObj).Actions.Count-1 do
    begin
     RzListView7.AddItem(
      TTemplate(TGRule(tmObj).Actions.Items[i]).Name,
        TGRule(tmObj).Actions.Items[i]
     );
    end;

   //load Rules
   K:=MainForm.GetKBForNode(MainForm.TreeView1.Selected);
   Lst:=K.IndexesOfRUG(TGRule(tmObj));
   RzListView4.Clear;
   for i := 0 to Lst.Count-1 do
    begin
     RzListView4.AddItem(
      Lst.Strings[i],
       Lst.Objects[i]
     );
    end;
   RzPageControl1.Pages[1].TabVisible:=False; //properties
   RzPageControl1.Pages[2].TabVisible:=False; //relations (rule elements)
   RzPageControl1.Pages[3].TabVisible:=False; //facts
   RzPageControl1.Pages[4].TabVisible:=True; //conditions
   RzPageControl1.Pages[5].TabVisible:=False; //actions for rule
   RzPageControl1.Pages[6].TabVisible:=True; //actions for grule
   RzPageControl1.Pages[7].TabVisible:=True; //rules
  end;
end;

procedure TRVMLElementEditForm.Insert1Click(Sender: TObject);
function GetNewSlotName(tmObj:TObject):string;
var
 i,j,k : Integer;
begin
 j:=0;
 Result:='';
  while Result='' do
   begin
    if tmObj is TTemplate then  //for templates
     if TTemplate(tmObj).GetSlotByName('Slot_'+IntToStr(j))=-1 then
      Result:='Slot_'+IntToStr(j);

    if tmObj is TFact then  //for facts
     for k := 0 to TFact(tmObj).Slots.Count-1 do
      if TSlot(TFact(tmObj).Slots.Items[k]).Name='Slot_'+IntToStr(j) then
       begin
        Result:='';
        Break;
       end;

    Inc(j);
   end;
end;

var
 tmSlot : TSlot;
begin
 tmSlot:=TSlot.Create;

 if tmObj is TTemplate then  //for templates
  begin
   tmSlot.Name:=GetNewSlotName(tmObj);
   tmSlot.ShortName:=tmSlot.Name;
   TTemplate(tmObj).Slots.Add(tmSlot);
   //add to list
   RzListView1.AddItem(tmSlot.Name, tmSlot);
   RzListView1.Items.Item[RzListView1.Items.Count-1].SubItems.Add(tmSlot.DataType);
   RzListView1.Items.Item[RzListView1.Items.Count-1].SubItems.Add(tmSlot.Value);
  end;
 if tmObj is TFact then  //for facts
  begin
   tmSlot.Name:=GetNewSlotName(tmObj);
   tmSlot.ShortName:=tmSlot.Name;
   TFact(tmObj).Slots.Add(tmSlot);
   //add to list
   RzListView1.AddItem(tmSlot.Name, tmSlot);
   RzListView1.Items.Item[RzListView1.Items.Count-1].SubItems.Add(tmSlot.DataType);
   RzListView1.Items.Item[RzListView1.Items.Count-1].SubItems.Add(tmSlot.Value);
  end;
end;

procedure TRVMLElementEditForm.PopupMenu1Popup(Sender: TObject);
begin
 if RzListView1.ItemIndex>-1 then
  begin
   TPopupMenu(Sender).Items.Items[0].Enabled:=True;
//   TPopupMenu(Sender).Items.Items[1].Enabled:=True;
//   TPopupMenu(Sender).Items.Items[2].Enabled:=True;
  end
 else
  begin
   TPopupMenu(Sender).Items.Items[0].Enabled:=False;
//   TPopupMenu(Sender).Items.Items[1].Enabled:=False;
//   TPopupMenu(Sender).Items.Items[2].Enabled:=False;
  end;
end;

procedure TRVMLElementEditForm.Remove1Click(Sender: TObject);
begin
 if RzListView1.ItemIndex>-1 then
   if MainForm.MMessageBox(1,1,'0='+
//    STDIClass.LoadSingleString('Remove',LangLocaleDir+LangPrefix+'012.lan')
    'Remove the slot:'
    +': '+
    RzListView1.Items.Item[RzListView1.ItemIndex].Caption
     +'?')=0 then
      RzListView1.Items.Delete(RzListView1.ItemIndex);
end;

procedure TRVMLElementEditForm.RzButton1Click(Sender: TObject);
begin
 Close;
 MainForm.EditItemClick(Sender);
end;

procedure TRVMLElementEditForm.RzButton2Click(Sender: TObject);
var
 i : Integer;
 tmSlot : TSlot;
 tmFact : TFact;
 tmTemplate : TTemplate;
 K : TKnowledgeBase;
begin
{ STDIClass.ReleaseObjects(MainForm.ScrollBox4);

 if tmObj is TRule then  //for rules
  begin
   TRule(tmObj).Name:=RzEdit1.Text;
   TRule(tmObj).ShortName:=RzEdit3.Text;
   TRule(tmObj).ID:=RzEdit2.Text;
   TRule(tmObj).Description:=Memo1.Text;

   //
   TRule(tmObj).Draw(MainForm.ScrollBox4);
  end;

 if tmObj is TSlot then  //for slots
  begin
   TSlot(tmObj).Name:=RzEdit1.Text;
   TSlot(tmObj).ShortName:=RzEdit3.Text;
   TSlot(tmObj).Value:=RzEdit4.Text;
   //!!!!
   TSlot(tmObj).DataType:=RzEdit5.Text;
   TSlot(tmObj).Description:=Memo1.Text;
  end;

 if tmObj is TFact then  //for facts
  begin
   TFact(tmObj).Name:=RzEdit1.Text;
   TFact(tmObj).ShortName:=RzEdit3.Text;
   TFact(tmObj).ID:=RzEdit2.Text;
   TFact(tmObj).Description:=Memo1.Text;
   //reload slots
   TFact(tmObj).Slots.Clear;
   for i := 0 to RzListView1.Items.Count-1 do
    begin
     tmSlot:=TSlot.Create;
     tmSlot.CopyFrom(TSlot(RzListView1.Items.Item[i].Data));
     TFact(tmObj).Slots.Add(tmSlot);
    end;
   //!!!!
    K:=MainForm.GetKBForNode(MainForm.TreeView1.Selected);
    tmFact:=TFact(MainForm.TreeView1.Selected.Data);
    K.CopyFact(0,TFact(tmObj),tmFact);
    TFact(MainForm.TreeView1.Selected.Data).Draw(MainForm.ScrollBox4,0);
  end;

 if tmObj is TTemplate then  //for template
  begin
   TTemplate(tmObj).Name:=RzEdit1.Text;
   TTemplate(tmObj).ShortName:=RzEdit3.Text;
   TTemplate(tmObj).ID:=RzEdit2.Text;
   TTemplate(tmObj).Description:=Memo1.Text;
   //reload slots
   TTemplate(tmObj).Slots.Clear;
   for i := 0 to RzListView1.Items.Count-1 do
    begin
     tmSlot:=TSlot.Create;
     tmSlot.CopyFrom(TSlot(RzListView1.Items.Item[i].Data));
     TTemplate(tmObj).Slots.Add(tmSlot);
    end;
   K:=MainForm.GetKBForNode(MainForm.TreeView1.Selected);
   MainForm.TreeView1.Selected.Data:=tmObj;
//   tmTemplate:=TTemplate(MainForm.TreeView1.Selected.Data);
//   K.CopyTemplate(0,TTemplate(tmObj),tmTemplate);
   TTemplate(MainForm.TreeView1.Selected.Data).Draw(MainForm.ScrollBox4);
  end;

 if tmObj is TGRule then  //for grule
  begin
   TGRule(tmObj).Name:=RzEdit1.Text;
   TGRule(tmObj).ShortName:=RzEdit3.Text;
   TGRule(tmObj).ID:=RzEdit2.Text;
   TGRule(tmObj).Description:=Memo1.Text;

   TGRule(tmObj).Draw(MainForm.ScrollBox4);
  end;}
 Close;
end;

procedure TRVMLElementEditForm.RzEdit1Change(Sender: TObject);
begin
  RzEdit3.Text:=Translit.Trans(Trim(TRzEdit(Sender).Text),Translit.FL);
end;

procedure TRVMLElementEditForm.RzListView1DblClick(Sender: TObject);
var
 nF : TRVMLElementEditForm;
begin
 if TRzListView(Sender).ItemIndex>-1 then
  begin
    Application.CreateForm(TRVMLElementEditForm, nF);
   //get selected object

    nF.tmObj:=TSlot(TRzListView(Sender).
     Items.Item[TRzListView(Sender).ItemIndex].Data);
    //show and hide tabs
     nF.RzPanel5.Visible:=True;  //slot value
     nF.RzPanel6.Visible:=True;  //slot datatype

     nF.RzPanel4.Visible:=False;  //id

    nF.ShowModal;
{    RzListView1.Items.Item[RzListView1.ItemIndex].Caption:=
     TSlot(RzListView1.Items.Item[RzListView1.ItemIndex].Data).Name;
    RzListView1.Items.Item[RzListView1.ItemIndex].SubItems.Strings[0]:=
     TSlot(RzListView1.Items.Item[RzListView1.ItemIndex].Data).DataType;
    RzListView1.Items.Item[RzListView1.ItemIndex].SubItems.Strings[1]:=
     TSlot(RzListView1.Items.Item[RzListView1.ItemIndex].Data).Value;
     }
  end;
end;

procedure TRVMLElementEditForm.RzListView2DblClick(Sender: TObject);
var
 nF : TRVMLElementEditForm;
begin
 if TRzListView(Sender).ItemIndex>-1 then
  begin
    Application.CreateForm(TRVMLElementEditForm, nF);
    nF.tmObj:=TGRule(TRzListView(Sender).Items.
     Item[TRzListView(Sender).ItemIndex].Data);
    nF.ShowModal;
  end;
end;

procedure TRVMLElementEditForm.RzListView3DblClick(Sender: TObject);
var
 nF : TRVMLElementEditForm;
begin
 if TRzListView(Sender).ItemIndex>-1 then
  begin
    Application.CreateForm(TRVMLElementEditForm, nF);
    nF.tmObj:=TFact(TRzListView(Sender).Items.
     Item[TRzListView(Sender).ItemIndex].Data);
    nF.ShowModal;
  end;
end;

procedure TRVMLElementEditForm.RzListView4DblClick(Sender: TObject);
var
 nF : TRVMLElementEditForm;
begin
 if TRzListView(Sender).ItemIndex>-1 then
  begin
    Application.CreateForm(TRVMLElementEditForm, nF);
    nF.tmObj:=TRule(TRzListView(Sender).Items.
     Item[TRzListView(Sender).ItemIndex].Data);
    nF.ShowModal;
  end;
end;

end.
