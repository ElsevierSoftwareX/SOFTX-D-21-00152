{------------------------------------------------------------------------------}
{                                                                              }
{  Personal Knowledge Base Designer                                            }
{  by A.Yu. Yurin, N.O. Dorodnykh                                              }
{                                                                              }
{  iskander@icc.ru                                                             }
{  http://knowledge-core.ru/                                                   }
{                                                                              }
{------------------------------------------------------------------------------}

unit AddTempFormUnit;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Mask, RzEdit, RzLabel, ExtCtrls, RzPanel, RzButton, RzTabs,
  UPKBClass, RzCommon;

type
  TAddTempForm = class(TForm)
    Image1: TImage;
    RzPageControl1: TRzPageControl;
    TabSheet1: TRzTabSheet;
    GroupBox1: TGroupBox;
    ComboBox1: TComboBox;
    GroupBox3: TGroupBox;
    TabSheet2: TRzTabSheet;
    GroupBox2: TGroupBox;
    RzPanel3: TRzPanel;
    RzLabel5: TRzLabel;
    RzLabel6: TRzLabel;
    ScrollBox1: TScrollBox;
    TabSheet3: TRzTabSheet;
    GroupBox4: TGroupBox;
    ScrollBox2: TScrollBox;
    RzPanel2: TRzPanel;
    RzLabel1: TRzLabel;
    RzLabel2: TRzLabel;
    RzLabel3: TRzLabel;
    RzPanel1: TRzPanel;
    RzButton1: TRzButton;
    RzButton2: TRzButton;
    RzButton3: TRzButton;
    RzPanel6: TRzPanel;
    ScrollBox3: TScrollBox;
    RzPanel4: TRzPanel;
    RzLabel4: TRzLabel;
    RzLabel7: TRzLabel;
    RzEdit2: TRzEdit;
    RzPanel9: TRzPanel;
    Memo1: TMemo;
    RzLabel8: TRzLabel;
    RzPanel5: TRzPanel;
    RzLabel10: TRzLabel;
    RzLabel9: TRzLabel;
    RzLabel11: TRzLabel;
    Image2: TImage;
    RzPanel7: TRzPanel;
    RzLabel13: TRzLabel;
    RzLabel14: TRzLabel;
    RzLabel15: TRzLabel;
    RzLabel16: TRzLabel;
    RzLabel12: TRzLabel;
    procedure FormCreate(Sender: TObject);
    procedure ComboBox1Change(Sender: TObject);
    procedure TabSheet1Show(Sender: TObject);
    procedure RzButton1Click(Sender: TObject);
    procedure RzButton2Click(Sender: TObject);
    procedure TabSheet2Show(Sender: TObject);
    procedure Image2Click(Sender: TObject);

    procedure DelSlotImageClick(Sender: TObject);
    procedure DataTypeComboChange(Sender: TObject);
    procedure RzButton3Click(Sender: TObject);
    procedure TabSheet3Show(Sender: TObject);

    procedure MarkCurrentNavPanel(i:Integer);
    procedure TabSheet1Exit(Sender: TObject);
    procedure RzEdit2Change(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
   T1 : TTemplate;
   ScN : ShortString;
  end;

var
  AddTempForm: TAddTempForm;
  NavPanelsIndexList : TStringList;

implementation

uses MAIN, USTDIClass, uTrans, UAddScaleForm;

{$R *.dfm}
//----------------------------------------------------------------------
procedure TAddTempForm.MarkCurrentNavPanel(i:Integer);
var
 c : Integer;
begin
 for c := 0 to NavPanelsIndexList.Count-1 do
  begin
   TRzPanel(NavPanelsIndexList.Objects[c]).BorderWidth:=1;
   TRzPanel(NavPanelsIndexList.Objects[c]).BorderColor:=clWhite;
  end;
 c:=NavPanelsIndexList.IndexOf(IntToStr(i));
 if c>-1 then
  begin
   TRzPanel(NavPanelsIndexList.Objects[c]).BorderWidth:=3;
   TRzPanel(NavPanelsIndexList.Objects[c]).BorderColor:=clTeal;
  end;
end;
//----------------------------------------------------------------------
procedure TAddTempForm.DataTypeComboChange(Sender: TObject);
var
 nF : TAddScaleForm;
 s : string;
 i : Integer;
begin
 if TComboBox(Sender).Items.IndexOf(
  Trim(TComboBox(Sender).Text))=-1 then
   TComboBox(Sender).ItemIndex:=0;

 if TComboBox(Sender).Text='Fuzzy' then
  begin
   Application.CreateForm(TAddScaleForm, nF);
   //slot name
   s:=TRzEdit(
    TComboBox(Sender).Parent.Components[TComboBox(Sender).ComponentIndex-1]
    ).Text;

   nF.KB2:=TKnowledgeBase(ComboBox1.Items.Objects[ComboBox1.ItemIndex]);

   nF.ScN:=STDIClass.GetPrefix(T1.Name)+'-'+s;

   nF.ShowModal;
   //value
   TRzEdit(
    TComboBox(Sender).Parent.Components[TComboBox(Sender).ComponentIndex+1]
    ).Text:= ScN;
  end;
end;
//----------------------------------------------------------------------
procedure TAddTempForm.DelSlotImageClick(Sender: TObject);
function GetSlotName(tmP:TRzPanel):string;
begin
 Result:='';
 if tmP.ComponentCount>0 then
  if tmP.Components[0] is TEdit then
   Result:=TEdit(tmP.Components[0]).Text;
end;

var
 s : string;
 i : Integer;
begin
 try
  T1.RefreshFromSlotPanels(ScrollBox1);

  s:=GetSlotName(TRzPanel(TImage(Sender).Parent));

  if MainForm.MMessageBox(1,1,'0='+MainForm.LS('Remove')+': '+s+' ?')=0
   then
    begin
     s:=Translit.Trans(s, Translit.FL);

     i:=T1.IndexOf(s,-1);
     if i>-1 then
      begin
       T1.Delete(i);
       TRzPanel(TImage(Sender).Parent).Free;
      end;
    end;
 except
 end;
end;
//---------------------------------------------------------------------------
procedure TAddTempForm.ComboBox1Change(Sender: TObject);
var
 tKB  : TKnowledgeBase;
begin
 if TComboBox(Sender).Items.IndexOf(TComboBox(Sender).Text)=-1 then
  TComboBox(Sender).ItemIndex:=0;

 tKB:=TKnowledgeBase(
  TComboBox(Sender).Items.Objects[TComboBox(Sender).ItemIndex]
   );
end;

procedure TAddTempForm.FormCreate(Sender: TObject);
Procedure CreateNavPanels;
var
 T,i  : Integer;
 s : string;
 tmP : TRzPanel;
 tmTs : TStringList;
begin
  T:=80;
  tmTs:=TStringList.Create;
  tmTs.Add('0='+MainForm.LS('STEP 1 and 2:')+' '+MainForm.LS('Knowledge base selection and entering a name and description of the template'));
  tmTs.Add('1='+MainForm.LS('STEP 3:')+' '+MainForm.LS('Entering the properties'));
  tmTs.Add('2='+MainForm.LS('STEP 4:')+' '+MainForm.LS('Entered data preview'));

  NavPanelsIndexList:=TStringList.Create;
  for i := 0 to tmTs.Count-1 do
   begin
    tmP:=STDIClass.AddRzPanel(T,8,0,110,
     Self,0,alCustom,clCream,bvNone,bvNone,bsNone,
      tmTs.ValueFromIndex[i]);
    tmP.Font.Style:=[fsBold];
    tmP.Transparent:=True;
    T:=tmP.Top+tmP.Height+3;
    NavPanelsIndexList.AddObject(tmTs.Names[i],tmP);
   end;
end;

var
 i  : Integer;
 tKB  : TKnowledgeBase;
 s : string;
 tmP : TRzPanel;
begin
// AddFactForm2.RzButton1.Visible:=True;

 for i := 0 to RzPageControl1.PageCount-1 do
  RzPageControl1.Pages[i].TabVisible:=False;

  STDIClass.LoadLocalLang(Self,LangLocaleDir+LangPrefix+'006.lan');

  tKB:=TKnowledgeBase.Create;
  tKB.Init;

  ComboBox1.Enabled:=True;
  ComboBox1.Items.Clear;
   for i:=0 to KBList.Count-1 do
//    if ((TKnowledgeBase(KBList.Items[i]).Kind=1)and(Tag=3))or(Tag<>3) then
     ComboBox1.Items.AddObject(
      TKnowledgeBase(KBList.Items[i]).Name,
       TKnowledgeBase(KBList.Items[i])
       );

    ComboBox1.Enabled:=True;

    if (ComboBox1.Items.Count>0) then
     begin
//      ComboBox1.ItemIndex:=0;
//       MainForm.ImageList1.GetIcon(20,Self.Icon);

      if ComboBox1.ItemIndex>KBList.Count-1 then
       begin
        tKB.Name:=MainForm.LS('New knowledge base');
        tKB.Kind:=0;
        KBList.Add(tKB);
       end;
      ComboBox1Change(ComboBox1);

      //add panels for navigation
      CreateNavPanels;

     end
    else
     begin
      if Tag=3 then
//       MainForm.MMessageBox(1,0,
//       '0=Тестирование произвести невозможно, т.к. нет прецедентных баз знаний');
      Close;
     end;
end;

procedure TAddTempForm.Image2Click(Sender: TObject);
var
 tmS : TSlot;
 newT : Integer;
 tmP : TRzPanel;
begin
 tmS:=TSlot.Create;
 ScrollBox1.Visible:=False;
 tmS.Name:='Slot-'+IntToStr(T1.Slots.Count);
// tmS.ShortName:=Translit.Trans(tmS.Name, Translit.FL);

 tmS.DataType:='String';
 T1.Slots.Add(tmS);
 newT:=1;
 if ScrollBox1.ComponentCount>0 then
  if ScrollBox1.Components[ScrollBox1.ComponentCount-1] is TRzPanel then
   newT:=TRzPanel(ScrollBox1.Components[ScrollBox1.ComponentCount-1]).Top+20;

 tmP:=tmS.ShowEditPanel(ScrollBox1,True,newT,1);

 if tmP.ComponentCount=5 then
  if tmP.Components[4] is TImage then
   TImage(tmP.Components[4]).OnClick:=DelSlotImageClick;

 if tmP.Components[1] is TComboBox then
  TComboBox(tmP.Components[1]).OnChange:=DataTypeComboChange;

 ScrollBox1.Visible:=True;
end;

procedure TAddTempForm.RzButton1Click(Sender: TObject);
begin
 Close;
end;

procedure TAddTempForm.RzButton2Click(Sender: TObject);
var
 i,j : Integer;
 s,s1 : string;
 tmTs,tmTs1 : TStringList;
begin
 case Tag of
 //-------------------------------------------------------------
  0:begin //edit template
   if (RzPageControl1.ActivePageIndex=2) then
    begin
     tmTs:=TStringList.Create;
     tmTs.AddStrings(
      TKnowledgeBase(ComboBox1.Items.Objects[ComboBox1.ItemIndex]).
       IndexesOfGUT(TTemplate(MainForm.TreeView1.Selected.Data))
       );
     tmTs.AddStrings(
      TKnowledgeBase(ComboBox1.Items.Objects[ComboBox1.ItemIndex]).
       IndexesOfRUT(TTemplate(MainForm.TreeView1.Selected.Data))
       );
     tmTs.AddStrings(
      TKnowledgeBase(ComboBox1.Items.Objects[ComboBox1.ItemIndex]).
       IndexesOfFUT(TTemplate(MainForm.TreeView1.Selected.Data))
       );
     tmTs1:=TStringList.Create;
     for i := 0 to tmTs.Count-1 do
      tmTs1.Add('255='+tmTs.Strings[i]);
     s:='';
     if tmTs.Count>0 then
      begin
       s:='need chandes';
       if MainForm.MMessageBox(1,1,'0='+MainForm.LS('Changes in the template results to changes in connected objects')+':'
         +#10+tmTs1.Text
         +#10#10+'0='+MainForm.LS('Proceed')+'?')=0
         then s:='';
      end;
      if s='' then
         begin
           MainForm.MakeDump(MainForm.LS('Edit the template')+': '+
            TTemplate(MainForm.TreeView1.Selected.Data).Name,10);
           MainForm.LoadAList(MainForm.RzListView1);
           //make cascade changes
           TKnowledgeBase(ComboBox1.Items.Objects[ComboBox1.ItemIndex]).
            UpdateGRFbyT(TTemplate(MainForm.TreeView1.Selected.Data),T1,
             tmTs);
           //
           TTemplate(MainForm.TreeView1.Selected.Data).MakeACloneFrom(1,T1);

           //reload name
           if T1.Description<>'' then s:=' ('+T1.Description+')';
           MainForm.TreeView1.Selected.Text:=
            '['+T1.ID+'] '+T1.Name+s;
           //reload slots
           MainForm.TreeView1.Selected.DeleteChildren;
           for i:=0 to T1.Slots.Count-1 do
            TSlot(T1.Slots.Items[i]).AddToTreeView(MainForm.TreeView1,
             MainForm.TreeView1.Selected);

           MainForm.TreeView1Click(MainForm.TreeView1);
           Close;
         end;
    end
   else
    begin
     s:=Trim(RzEdit2.Text);
     s1:=Translit.Trans(s, Translit.FL);
     if  TKnowledgeBase(ComboBox1.Items.Objects[ComboBox1.ItemIndex]).
      IndexOfTemplateByShortName(s1,
        TTemplate(MainForm.TreeView1.Selected.Data).ShortName)=-1 then
      begin
       RzPageControl1.ActivePageIndex:=
        RzPageControl1.ActivePageIndex+1;
      end
     else
      begin
       MainForm.MMessageBox(1,0,'0='+MainForm.LS('The template with such name already exists'))
      end;
    end;
  end;
 //-------------------------------------------------------------
  1:begin //add temp
   if (RzPageControl1.ActivePageIndex=2) then
    begin
     MainForm.MakeDump(MainForm.LS('Create a new template')+': '+T1.Name,6);
     MainForm.LoadAList(MainForm.RzListView1);

     TKnowledgeBase(ComboBox1.Items.Objects[ComboBox1.ItemIndex]).Templates.Add(T1);

     MainForm.TreeView1.Selected:=
      T1.AddToTreeView(MainForm.TreeView1,
       MainForm.TreeView1.Items.Item[0].Item[ComboBox1.ItemIndex].Item[0]);

     MainForm.TreeView1.Items.Item[0].Item[ComboBox1.ItemIndex].Item[0].Text:=
      MainForm.PutChildCount(MainForm.TreeView1.Items.Item[0].Item[ComboBox1.ItemIndex].Item[0]);
     MainForm.TreeView1Click(MainForm.TreeView1);
     Close;
    end
   else
    begin
     s:=Trim(RzEdit2.Text);
     s1:=Translit.Trans(s, Translit.FL);
     if  TKnowledgeBase(ComboBox1.Items.Objects[ComboBox1.ItemIndex]).
      IndexOfTemplateByShortName(s1,'')=-1 then
      begin
       T1.Name:=s;
       T1.ShortName:=s1;
       T1.Description:=Trim(Memo1.Text);

       RzPageControl1.ActivePageIndex:=
        RzPageControl1.ActivePageIndex+1;
      end
     else
      begin
       MainForm.MMessageBox(1,0,'0='+MainForm.LS('The template with such name already exists'))
      end;
    end;
  end;
 //-------------------------------------------------------------
 end; //end case
end;

procedure TAddTempForm.RzButton3Click(Sender: TObject);
begin
 RzPageControl1.ActivePageIndex:=
  RzPageControl1.ActivePageIndex-1;
end;

procedure TAddTempForm.RzEdit2Change(Sender: TObject);
var
 i,j :Integer;
begin
  TRzEdit(Sender).Text:=StringReplace(TRzEdit(Sender).Text,'(','_',[rfReplaceAll]);
  TRzEdit(Sender).Text:=StringReplace(TRzEdit(Sender).Text,')','_',[rfReplaceAll]);

 if Trim(TRzEdit(Sender).Text)='' then RzButton2.Enabled:=False
  else RzButton2.Enabled:=True;

 i:=TKnowledgeBase(ComboBox1.Items.Objects[ComboBox1.ItemIndex]).
   IndexOfTemplateByShortName(Translit.Trans(TRzEdit(Sender).Text,Translit.FL),'');
 j:=TKnowledgeBase(ComboBox1.Items.Objects[ComboBox1.ItemIndex]).
   IndexOfTemplateByID(T1.ID);
 if (i>-1)and(i<>j) then
  begin
   MainForm.MMessageBox(1,0,
    '0='+MainForm.LS('This template name already exists'));
   RzButton2.Enabled:=False;
  end
 else
  begin
   RzButton2.Enabled:=True;
  end;
end;

procedure TAddTempForm.TabSheet1Exit(Sender: TObject);
begin
 T1.Name:=Trim(RzEdit2.Text);
 T1.ShortName:=Translit.Trans(T1.Name, Translit.FL);
 T1.Description:=Trim(Memo1.Text);
end;

procedure TAddTempForm.TabSheet1Show(Sender: TObject);
begin
 if Tag=1 then
  begin
   Caption:=' '+ MainForm.LS('Create a new template');
//   MainForm.ReloadHelpMessage(ScrollBox3,34)
  end
   else
    begin
     Caption:=' '+MainForm.LS('Edit the template');
//     MainForm.ReloadHelpMessage(ScrollBox3,35);
    end;
 MainForm.ReloadHelpMessage(ScrollBox3,81);

 if T1=nil then
  begin
   T1:=TTemplate.Create;
   T1.Init;
   T1.ID:=TKnowledgeBase(ComboBox1.Items.Objects[ComboBox1.ItemIndex]).NewID('T');
   T1.Name:=MainForm.LS('Template')+'-'+T1.ID;
   T1.Description:=MainForm.LS('Description of the template')+' '+T1.ID;
  end;

  RzLabel4.Caption:= '['+T1.ID+']';
  RzEdit2.Text:=T1.Name;
  RzEdit2Change(RzEdit2);
  Memo1.Text:=T1.Description;

  RzButton2.Caption:=MainForm.LS('Next >>');
//    RzButton2.Hint:='Продложить процесс описания факта (прецедента)';
  RzButton3.Enabled:=False;

  //--------------------------------------
 MarkCurrentNavPanel(0);
end;

procedure TAddTempForm.TabSheet2Show(Sender: TObject);
function OrderOnClick(tmWC:TScrollBox):Integer;
var
 i : Integer;
 tmP : TRzPanel;
begin
 for i := 0 to tmWC.ComponentCount-1 do
  if tmWC.Components[i] is TRzPanel then
   begin
    tmP:=TRzPanel(tmWC.Components[i]);
     if tmP.ComponentCount=5 then
      if tmP.Components[4] is TImage then
       TImage(tmP.Components[4]).OnClick:=DelSlotImageClick;
     if tmP.Components[1] is TComboBox then
      TComboBox(tmP.Components[1]).OnChange:=DataTypeComboChange;
   end;
end;

begin
 MainForm.ReloadHelpMessage(ScrollBox3,82);

// if Tag=1 then
//  MainForm.ReloadHelpMessage(ScrollBox3,34)
//   else
//    MainForm.ReloadHelpMessage(ScrollBox3,35);

  RzLabel5.Caption:= '['+T1.ID+']';
  RzLabel8.Caption:=T1.Name;
//  Memo1.Text:=T1.Description;

  T1.ShowEditPanelsForSlots(ScrollBox1,True);
  OrderOnClick(ScrollBox1);

  RzButton2.Caption:=MainForm.LS('Next >>');
//    RzButton2.Hint:='Продложить процесс описания факта (прецедента)';
  RzButton3.Enabled:=True;
  //--------------------------------------
 MarkCurrentNavPanel(1);
end;

procedure TAddTempForm.TabSheet3Show(Sender: TObject);
begin
 MainForm.ReloadHelpMessage(ScrollBox3,83);

  RzButton2.Caption:=MainForm.LS('Ok');

  RzLabel2.Caption:= '['+T1.ID+']';
  RzLabel1.Caption:=T1.Name;
  T1.RefreshFromSlotPanels(ScrollBox1);

  T1.ShowAsTable(ScrollBox2,1,0);
  //--------------------------------------
 MarkCurrentNavPanel(2);
end;

end.
