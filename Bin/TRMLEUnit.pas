unit TRMLEUnit;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ComCtrls, RzListVw, RzPanel, RzTabs, ExtCtrls, RzSplit, ToolWin,
  RzLine, StdCtrls, RzLabel, Menus;

type
  TTRVMLEForm = class(TForm)
    ToolBar2: TToolBar;
    ToolButton1: TToolButton;
    ToolButton2: TToolButton;
    ToolButton3: TToolButton;
    ToolButton4: TToolButton;
    ToolButton5: TToolButton;
    ToolButton6: TToolButton;
    ToolButton7: TToolButton;
    ToolButton8: TToolButton;
    ToolButton9: TToolButton;
    RzSplitter1: TRzSplitter;
    RzSplitter2: TRzSplitter;
    RzGroupBox1: TRzGroupBox;
    TreeView1: TTreeView;
    ToolBar1: TToolBar;
    NewKB: TToolButton;
    NewT: TToolButton;
    NewF: TToolButton;
    ToolButton13: TToolButton;
    NewR: TToolButton;
    ToolButton11: TToolButton;
    ToolButton15: TToolButton;
    EditItem: TToolButton;
    DeleteItem: TToolButton;
    ToolButton14: TToolButton;
    ToolButton10: TToolButton;
    ToolButton12: TToolButton;
    ToolButton16: TToolButton;
    ToolButton18: TToolButton;
    RzPageControl2: TRzPageControl;
    TabSheet4: TRzTabSheet;
    ScrollBox1: TScrollBox;
    PopupMenu3: TPopupMenu;
    Edit1: TMenuItem;
    RzListView2: TRzListView;
    procedure FormShow(Sender: TObject);
    procedure TreeView1Click(Sender: TObject);
    procedure ToolButton1Click(Sender: TObject);
    procedure ToolButton9Click(Sender: TObject);

    procedure ScrollBox1DragOver(Sender, Source: TObject; X, Y: Integer;
      State: TDragState; var Accept: Boolean);
    procedure ScrollBox1DragDrop(Sender, Source: TObject; X, Y: Integer);

    procedure ElementDragDrop(Sender, Source: TObject; X, Y: Integer);
    procedure ElementEndDrag(Sender, Target: TObject; X, Y: Integer);
    procedure ElementDragOver(Sender, Source: TObject; X, Y: Integer;
      State: TDragState; var Accept: Boolean);

    procedure PopupMenu3Popup(Sender: TObject);
    procedure Edit1Click(Sender: TObject);

    procedure RVMLElementDBClick(Sender:TObject);
    Function LoadTreeV2(tmKBList:TList; Tree:TTreeView):Integer;
    procedure RzListView2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  TRVMLEForm: TTRVMLEForm;

implementation

uses UMsgBoxForm, USTDIClass, UPKBClass, MAIN, URVMLElementEditUnit;

{$R *.dfm}

procedure TTRVMLEForm.ElementEndDrag(Sender, Target: TObject; X, Y: Integer);
var
 MovedObj : TControl;
 i,j,j1,j2,j3,j4,j5,j6,j7 : Integer;
 s,doi : string;
 tmKB1 : TKnowledgeBase;
begin
 try
 if (Sender is TImage)and(TImage(Target).Tag=2) then
  MovedObj:=TImage(Sender).Parent;
 if (Sender is TRzPanel) then
  if TRzPanel(Sender).Tag=1 then
   MovedObj:=TRzPanel(Sender)
   else
    MovedObj:=TRzPanel(Sender).Parent;

if Target<>nil then
 begin
   //------------------------
   if (Target is TScrollBox) then
    begin
     MovedObj.Top:=Y;
     MovedObj.Left:=X;
    end
   else
    begin
    if (Target is TImage) then
      begin
       if (TImage(Target).Tag=2) then
        begin  //sinlge element
         MovedObj.Top:=TImage(Sender).Parent.Top+TImage(Sender).Top+Y;
         MovedObj.Left:=TImage(Sender).Parent.Left+TImage(Sender).Left+X;
        end
       else //group
        begin
         MovedObj.Top:=Y;
         MovedObj.Left:=X;
        end;
      end
     else //sinlge element
      if TRzPanel(Target).Tag=1 then
        begin
         MovedObj.Top:=TRzPanel(Sender).Top+Y;
         MovedObj.Left:=TRzPanel(Sender).Left+X;
        end
       else
        begin
         MovedObj.Top:=TRzPanel(Sender).Parent.Top+TRzPanel(Sender).Top+Y;
         MovedObj.Left:=TRzPanel(Sender).Parent.Left+TRzPanel(Sender).Left+X;
        end
    end;
   //------------------------
 end
  else
    begin
     MovedObj.Top:=Y;
     MovedObj.Left:=X;
    end;

  tmPSO1.Free;
  tmPSO1:=nil;
  tmPSO2.Free;
  tmPSO2:=nil;
  tmPSO3.Free;
  tmPSO3:=nil;
  tmPSO4.Free;
  tmPSO4:=nil;

  //save position
  j1:=MovedObj.ComponentIndex;

  //-------------------
  if TObject(TreeView1.Selected.Data) is TTemplate then
   begin
    doi:=TTemplate(TreeView1.Selected.Data).ID;
    tmKB1:=MainForm.GetKBForNode(TreeView1.Selected);
    if j1=1 then
      begin
       TTemplate(TreeView1.Selected.Data).
        DrawParams.Values['x'+doi]:=IntToStr(MovedObj.Left);
       TTemplate(TreeView1.Selected.Data).
        DrawParams.Values['y'+doi]:=IntToStr(MovedObj.Top);
      end
     else   //scales
      begin
       j5:=-1;
       for i := 0 to TTemplate(TreeView1.Selected.Data).Slots.Count-1 do
        begin
          if TSlot(TTemplate(TreeView1.Selected.Data).Slots.Items[i]).DataType='Fuzzy' then
           begin
            //count of scales
            Inc(j5);
           if j5=((j1 div 2)-1) then
             begin
              j6:=tmKB1.IndexOfFScale(TSlot(TTemplate(TreeView1.Selected.Data).
               Slots.Items[i]).Value);
              if j6>-1 then
               begin
                TFScale(tmKB1.FScales.Items[j6]).
                 DrawParams.Values['x'+doi]:=IntToStr(MovedObj.Left);
                TFScale(tmKB1.FScales.Items[j6]).
                 DrawParams.Values['y'+doi]:=IntToStr(MovedObj.Top);
               end;
             end;
           end;
        end;
      end;
    //reload arrows
    TTemplate(TreeView1.Selected.Data).DrawArrowsV2(
     TImage(ScrollBox1.Components[0]).Canvas,
      ScrollBox1.HorzScrollBar.Position,
       ScrollBox1.VertScrollBar.Position,tmKB1);
   end;
  //-------------------
  if TObject(TreeView1.Selected.Data) is TFScale then
   begin
     doi:=TFScale(TreeView1.Selected.Data).ID;
     if j1=1 then
     //core
      begin
       TFScale(TreeView1.Selected.Data).
        DrawParams.Values['x'+doi]:=IntToStr(MovedObj.Left);
       TFScale(TreeView1.Selected.Data).
        DrawParams.Values['y'+doi]:=IntToStr(MovedObj.Top);
      end
     else
     //terms
      begin
       TFVar(TFScale(TreeView1.Selected.Data).ListOfValues.Objects[j1-2]).
        DrawParams.Values['x'+doi]:=IntToStr(MovedObj.Left);
       TFVar(TFScale(TreeView1.Selected.Data).ListOfValues.Objects[j1-2]).
        DrawParams.Values['y'+doi]:=IntToStr(MovedObj.Top);
      end;

    //reload arrows
    TFScale(TreeView1.Selected.Data).DrawArrowsV2(
     TImage(ScrollBox1.Components[0]).Canvas,
      ScrollBox1.HorzScrollBar.Position,
       ScrollBox1.VertScrollBar.Position);
   end;
  //-------------------
  if TObject(TreeView1.Selected.Data) is TFVar then
   begin
    doi:=TFVar(TreeView1.Selected.Data).ID;
     for i := 0 to MovedObj.Parent.ControlCount-1 do
      begin
//       if i=0 then s:='' else s:=IntToStr(i);
       TFVar(TreeView1.Selected.Data).
        DrawParams.Values['x'+doi]:=
         IntToStr(MovedObj.Parent.Controls[i].Left);
       TFVar(TreeView1.Selected.Data).
        DrawParams.Values['y'+doi]:=
         IntToStr(MovedObj.Parent.Controls[i].Top);
      end;
   end;
  //-------------------
  if TObject(TreeView1.Selected.Data) is TFact then
   begin
     doi:=TFact(TreeView1.Selected.Data).ID;
     tmKB1:=MainForm.GetKBForNode(TreeView1.Selected);
     if j1=1 then
      begin
       TFact(TreeView1.Selected.Data).
        DrawParams.Values['x'+doi]:=IntToStr(MovedObj.Left);
       TFact(TreeView1.Selected.Data).
        DrawParams.Values['y'+doi]:=IntToStr(MovedObj.Top);
      end
     else  //terms
      begin
        j6:=tmKB1.IndexOfTemplateV3(TFact(TreeView1.Selected.Data));
        j2:=0;
//        for i := 0 to TFact(TreeView1.Selected.Data).Slots.Count-1 do
//         begin
          if j6>-1 then
           begin
            j7:=0;
           for j3 := 0 to TTemplate(tmKb1.Templates.Items[j6]).Slots.Count-1 do
            if (TSlot(TTemplate(tmKb1.Templates.Items[j6]).Slots.Items[j3]).DataType='Fuzzy')
//             and (TSlot(TTemplate(tmKb1.Templates.Items[j6]).Slots.Items[j3]).Name=
//               TSlot(TFact(TreeView1.Selected.Data).Slots.Items[i]).Name)
                then
                 begin
                   inc(j7);
                   if j7=(j1-1) then
                     begin
                      j4:=tmKb1.IndexOfFScale(TSlot(TTemplate(tmKb1.Templates.Items[j6]).
                       Slots.Items[j3]).Value);
                      if j4>-1 then
                       begin
                        j5:=TFScale(tmKb1.FScales.Items[j4]).ListOfValues.IndexOf(TSlot(
                         TFact(TreeView1.Selected.Data).Slots.Items[j3]).Value);
                        if j5>-1 then
                         begin
                           TFVar(TFScale(tmKb1.FScales.Items[j4]).ListOfValues.Objects[j5]).
                            DrawParams.Values['x'+doi]:= IntToStr(MovedObj.Left);
                           TFVar(TFScale(tmKb1.FScales.Items[j4]).ListOfValues.Objects[j5]).
                            DrawParams.Values['y'+doi]:= IntToStr(MovedObj.Top);
                         end;
                       end;
                     end;
                 end;
            end;
//         end;
      end;
    //reload arrows
    TFact(TreeView1.Selected.Data).DrawArrowsV2(
     TImage(ScrollBox1.Components[0]).Canvas,
      ScrollBox1.HorzScrollBar.Position,
       ScrollBox1.VertScrollBar.Position, tmKb1);
   end;
   //--------------------------
  if TObject(TreeView1.Selected.Data) is TGRule then
   begin
     doi:=TGRule(TreeView1.Selected.Data).ID;
     j:=TGRule(TreeView1.Selected.Data).Conditions.Count*2+1;
     if j1=j then
      begin //core
       TGRule(TreeView1.Selected.Data).
        DrawParams.Values['x'+doi]:=IntToStr(MovedObj.Left);
       TGRule(TreeView1.Selected.Data).
        DrawParams.Values['y'+doi]:=IntToStr(MovedObj.Top);
      end
     else
      if j1<j then
       begin //conditions
         TTemplate(TGRule(TreeView1.Selected.Data).Conditions.Items[
          (j1 div 2)-1]).
          DrawParams.Values['x'+doi]:=IntToStr(MovedObj.Left);
         TTemplate(TGRule(TreeView1.Selected.Data).Conditions.Items[
          (j1 div 2)-1]).
           DrawParams.Values['y'+doi]:=IntToStr(MovedObj.Top);
       end
      else //actions
       begin
         TTemplate(TGRule(TreeView1.Selected.Data).Actions.Items[
          ((j1-j) div 2)-1]).
          DrawParams.Values['x'+doi]:=IntToStr(MovedObj.Left);
         TTemplate(TGRule(TreeView1.Selected.Data).Actions.Items[
          ((j1-j) div 2)-1]).
           DrawParams.Values['y'+doi]:=IntToStr(MovedObj.Top);
       end;

    //reload arrows
    TGRule(TreeView1.Selected.Data).DrawArrowsV2(
     TImage(ScrollBox1.Components[0]).Canvas,
      ScrollBox1.HorzScrollBar.Position,
       ScrollBox1.VertScrollBar.Position);
   end;
   //--------------------------
  if TObject(TreeView1.Selected.Data) is TRule then
   begin
     doi:=TRule(TreeView1.Selected.Data).ID;
     j:=TRule(TreeView1.Selected.Data).Conditions.Count*2+1;
     if j1=j then
      begin //core
       TRule(TreeView1.Selected.Data).
        DrawParams.Values['x'+doi]:=IntToStr(MovedObj.Left);
       TRule(TreeView1.Selected.Data).
        DrawParams.Values['y'+doi]:=IntToStr(MovedObj.Top);
      end
     else
      if j1<j then
       begin //conditions
         TCondition(TRule(TreeView1.Selected.Data).Conditions.Items[
          (j1 div 2)-1]).Fact.
          DrawParams.Values['x'+doi]:=IntToStr(MovedObj.Left);
         TCondition(TRule(TreeView1.Selected.Data).Conditions.Items[
          (j1 div 2)-1]).Fact.
           DrawParams.Values['y'+doi]:=IntToStr(MovedObj.Top);
       end
      else //actions
       begin
         TRAction(TRule(TreeView1.Selected.Data).Actions.Items[
          ((j1-j) div 2)-1]).Fact.
          DrawParams.Values['x'+doi]:=IntToStr(MovedObj.Left);
         TRAction(TRule(TreeView1.Selected.Data).Actions.Items[
          ((j1-j) div 2)-1]).Fact.
           DrawParams.Values['y'+doi]:=IntToStr(MovedObj.Top);
       end;

    //reload arrows
    TRule(TreeView1.Selected.Data).DrawArrowsV2(
     TImage(ScrollBox1.Components[0]).Canvas,
      ScrollBox1.HorzScrollBar.Position,
       ScrollBox1.VertScrollBar.Position);
   end;
  //drow arrows
// TreeView1Click(TreeView1);
 except
  tmPSO1.Free;
  tmPSO1:=nil;
  tmPSO2.Free;
  tmPSO2:=nil;
  tmPSO3.Free;
  tmPSO3:=nil;
  tmPSO4.Free;
  tmPSO4:=nil;
 end;
end;

procedure TTRVMLEForm.FormShow(Sender: TObject);
begin
 LoadTreeV2(KBList,TRVMLEForm.TreeView1);
 if TreeView1.Items.Count>0 then TreeView1.Selected:=TreeView1.Items.Item[0];
 TreeView1Click(TreeView1);
 OnShow:=nil;
end;
//-----------------------------------------------------------------------------
Function TTRVMLEForm.LoadTreeV2(tmKBList:TList; Tree:TTreeView):Integer;
var
 i  : Integer;
 tN : TTreeNode;
begin
 Tree.Items.Clear;
 tN:=Tree.Items.Add(nil,
  STDIClass.LoadSingleString('Knowledge bases (projects)',LangLocaleDir+LangPrefix+'012.lan')
  +' ['+IntToStr(tmKBList.Count)+']');
 for i:=0 to tmKBList.Count-1 do
  begin
//   TKnowledgeBase(tmKBList.Items[i]).UpdateIDforGRules;
   if TKnowledgeBase(tmKBList.Items[i]).AddToTreeViewV2(Tree,tN,0).Expanded then
    tN.Expand(False);
  end;
 MainForm.RebulidImagesOnTree(Tree);
end;
//-----------------------------------------------------------------------------
procedure TTRVMLEForm.PopupMenu3Popup(Sender: TObject);
begin
// get
// ScrollBox4.get
// ShowMessage(IntToStr(TImage(TPopupMenu(Sender).PopupComponent).Left));

 imX:=Mouse.CursorPos.X-ScrollBox1.Top;
 imY:=Mouse.CursorPos.Y-ScrollBox1.Left;

 if TreeView1.Selected<>nil then
  begin
   if (TObject(TreeView1.Selected.Data) is TRule) or
    (TObject(TreeView1.Selected.Data) is TGRule) or
    (TObject(TreeView1.Selected.Data) is TFact) or
    (TObject(TreeView1.Selected.Data) is TTemplate) then
      TPopupMenu(Sender).Items.Items[0].Enabled:=True //edit
      else
       TPopupMenu(Sender).Items.Items[0].Enabled:=False; //edit
  end
 else
  TPopupMenu(Sender).Items.Items[0].Enabled:=False; //edit
end;

//-----------------------------------------------------------------------------
procedure TTRVMLEForm.RVMLElementDBClick(Sender:TObject);
var
 nF : TRVMLElementEditForm;
 K : TKnowledgeBase;
 tmObj1 : TObject;
begin
//  ScrollBox4.Enabled:=False;
  Application.CreateForm(TRVMLElementEditForm, nF);
  K:=MainForm.GetKBForNode(TreeView1.Selected);
 //get selected object

  if TObject(TreeView1.Selected.Data) is TTemplate then
   begin
    K.CopyTemplate(1,TTemplate(TreeView1.Selected.Data),TTemplate(nF.tmObj));
   end;
  if TObject(TreeView1.Selected.Data) is TFact then
   begin
    K.CopyFact(1,TFact(TreeView1.Selected.Data),TFact(nF.tmObj));
   end;

  if TObject(TreeView1.Selected.Data) is TGRule then
  begin
   tmObj1:=TGRule(TreeView1.Selected.Data).GetElementByPosition(
    imX, imY);
   if tmObj1 is TTemplate then
    K.CopyTemplate(1,TTemplate(tmObj1),TTemplate(nF.tmObj));
   if tmObj1 is TGRule then
    K.CopyGRule(1,TGRule(tmObj1),TGRule(nF.tmObj));
  end;

  if TObject(TreeView1.Selected.Data) is TRule then
  begin
   tmObj1:=TRule(TreeView1.Selected.Data).GetElementByPosition(
    imX, imY);
   if tmObj1 is TCondition then
    K.CopyFact(1,TFact(TCondition(tmObj1).Fact),TFact(nF.tmObj));
   if tmObj1 is TRAction then
    K.CopyFact(1,TFact(TRAction(tmObj1).Fact),TFact(nF.tmObj));
   if tmObj1 is TRule then
    K.CopyRule(1,TRule(tmObj1),TRule(nF.tmObj))
  end;

//show and hide tabs
//!!!
 nF.RzPanel5.Visible:=False;  //slot value
 nF.RzPanel6.Visible:=False;  //slot datatype

 nF.RzPanel4.Visible:=True;  //id

 //!!! ??????? ?????????? ?????? ??????????????
 nF.ShowModal;
//ScrollBox4.Enabled:=True;
end;

procedure TTRVMLEForm.RzListView2Click(Sender: TObject);
//----------------
Function GetTabCnt(s:String):Integer;
var
 i : Integer;
begin
 Result:=0;
 for i := 1 to Length(s) do
  begin
   if s[i]=' ' then Inc(Result)
    else Break;
  end;
end;
//----------------
Function DelItems(sender:TRzListView;start:Integer):Integer;
var
 i,j : Integer;
begin
 Result:=0;
 //get cnt items for delation
 j:=GetTabCnt(sender.Items[start].Caption);
 for i := start+1 to sender.Items.Count-1 do
  if j<GetTabCnt(sender.Items[i].Caption) then Inc(Result)
    else Break;

 for i := start+Result downto start+1 do
  sender.Items.Delete(i);
end;
//----------------
begin
 if TRzListView(Sender).Selected<>nil then
  begin
   if TRzListView(Sender).Selected.ImageIndex=1 then
    begin //expand -------------------------------
     TRzListView(Sender).Selected.ImageIndex:=0;

     if TObject(TRzListView(Sender).Selected.Data) is TSlot then
      TSlot(TRzListView(Sender).Selected.Data).AddToListView(
       TRzListView(Sender),TRzListView(Sender).Selected.Index,0,0,
        GetTabCnt(TRzListView(Sender).Selected.Caption),
         MainForm.GetKBForNode(TreeView1.Selected),
          TObject(TreeView1.Selected.Data));

     if TObject(TRzListView(Sender).Selected.Data) is TFVar then
      TFVar(TRzListView(Sender).Selected.Data).AddToListView(
       TRzListView(Sender),TRzListView(Sender).Selected.Index,0,0,
        GetTabCnt(TRzListView(Sender).Selected.Caption),
         MainForm.GetKBForNode(TreeView1.Selected),
          TObject(TreeView1.Selected.Data));

     if TObject(TRzListView(Sender).Selected.Data) is TFScale then
      TFScale(TRzListView(Sender).Selected.Data).AddToListView(
       TRzListView(Sender),TRzListView(Sender).Selected.Index,0,0,
        GetTabCnt(TRzListView(Sender).Selected.Caption),
         TObject(TreeView1.Selected.Data));

     if TObject(TRzListView(Sender).Selected.Data) is TTemplate then
      TTemplate(TRzListView(Sender).Selected.Data).AddToListView(
       TRzListView(Sender),TRzListView(Sender).Selected.Index,0,0,
        GetTabCnt(TRzListView(Sender).Selected.Caption),
         TObject(TreeView1.Selected.Data));

     if TObject(TRzListView(Sender).Selected.Data) is TFact then
      TFact(TRzListView(Sender).Selected.Data).AddToListView(
       TRzListView(Sender),TRzListView(Sender).Selected.Index,0,0,
        GetTabCnt(TRzListView(Sender).Selected.Caption),
         TObject(TreeView1.Selected.Data));

     if TObject(TRzListView(Sender).Selected.Data) is TCondition then
      TCondition(TRzListView(Sender).Selected.Data).AddToListView(
       TRzListView(Sender),TRzListView(Sender).Selected.Index,0,0,
        GetTabCnt(TRzListView(Sender).Selected.Caption),
         TObject(TreeView1.Selected.Data));

     if TObject(TRzListView(Sender).Selected.Data) is TRAction then
      TRAction(TRzListView(Sender).Selected.Data).AddToListView(
       TRzListView(Sender),TRzListView(Sender).Selected.Index,0,0,
        GetTabCnt(TRzListView(Sender).Selected.Caption),
         TObject(TreeView1.Selected.Data));

     if TObject(TRzListView(Sender).Selected.Data) is TGRule then
      TGRule(TRzListView(Sender).Selected.Data).AddToListView(
       TRzListView(Sender),TRzListView(Sender).Selected.Index,0,0,
        GetTabCnt(TRzListView(Sender).Selected.Caption));

     if TObject(TRzListView(Sender).Selected.Data) is TRule then
      TRule(TRzListView(Sender).Selected.Data).AddToListView(
       TRzListView(Sender),TRzListView(Sender).Selected.Index,0,0,
        GetTabCnt(TRzListView(Sender).Selected.Caption));

    end  //end expand -----------------------------
   else
     if TRzListView(Sender).Selected.ImageIndex=0 then
      begin  //collapse
       TRzListView(Sender).Selected.ImageIndex:=1;
       DelItems(TRzListView(Sender),TRzListView(Sender).Selected.Index);
      end; //end collapse --------------------------
  end;
end;

procedure TTRVMLEForm.Edit1Click(Sender: TObject);
begin
 if TreeView1.Selected<>nil then
  RVMLElementDBClick(ScrollBox1);
end;

procedure TTRVMLEForm.ElementDragDrop(Sender, Source: TObject; X,
  Y: Integer);
var
 x1,y1 : Integer;
begin
try
 if Source is TRzPanel then // ???? ????????????? ?????????
  begin
     TRzPanel(Source).Left := X; //??????????? ????????? Image ? ?????????? //??????? ?? X
     TRzPanel(Source).Top := Y; //??????????? ????????? Image ? ?????????? //??????? ?? Y
  end;
 except
 end;
end;

procedure TTRVMLEForm.ScrollBox1DragDrop(Sender, Source: TObject; X,
  Y: Integer);
begin
try
 if Source is TRzPanel then // ???? ????????????? ?????????
//  if TImage(Source).Tag>0 then
  begin
     TRzPanel(Source).Left := X; //??????????? ????????? Image ? ?????????? //??????? ?? X
     TRzPanel(Source).Top := Y; //??????????? ????????? Image ? ?????????? //??????? ?? Y
  end;
 except
 end;
end;

procedure TTRVMLEForm.ElementDragOver(Sender, Source: TObject; X, Y: Integer;
  State: TDragState; var Accept: Boolean);
var
 MovedObj : TControl;
begin
 Accept := True;
 if (Source is TImage)and(TImage(Source).Tag=2) then
  MovedObj:=TImage(Source).Parent;
 if (Source is TRzPanel) then
  if TRzPanel(Source).Tag=1 then
   MovedObj:=TRzPanel(Source)
   else
    MovedObj:=TRzPanel(Source).Parent;

 if (Sender is TScrollBox) then
  begin
//   Y:=MovedObj.Top+Y;
//   X:=MovedObj.Left+X;
  end
 else
  if (Sender is TImage)and(TImage(Source).Tag=2) then
    begin
     Y:=TImage(Sender).Parent.Top+TImage(Sender).Top+Y;
     X:=TImage(Sender).Parent.Left+TImage(Sender).Left+X;
    end
   else
    if TRzPanel(Sender).Tag=1 then
      begin
       Y:=TRzPanel(Sender).Top+Y;
       X:=TRzPanel(Sender).Left+X;
      end
     else
      begin
       Y:=TRzPanel(Sender).Parent.Top+TRzPanel(Sender).Top+Y;
       X:=TRzPanel(Sender).Parent.Left+TRzPanel(Sender).Left+X;
      end;

//---------------
     if tmPSO1=nil then
      begin //create a frame
       tmPSO1:=STDIClass.AddLine(ScrollBox1,
        X,Y,MovedObj.Height,1);
       tmPSO1.LineColor:=clRed;
       tmPSO1.ArrowLength:=0;
       tmPSO1.Width:=1;
       tmPSO1.LineWidth:=2;
//       tmPSO1.OnDragOver:=tmPSODragOver;
//       tmPSO1.OnDragDrop:=tmPSODragDrop;

      //top side
       tmPSO2:=STDIClass.AddLine(ScrollBox1,
        Y,X,1,MovedObj.Width);
       tmPSO2.LineColor:=clRed;
       tmPSO2.ArrowLength:=0;
       tmPSO2.Height:=1;
       tmPSO2.LineWidth:=2;
//       tmPSO2.OnDragOver:=tmPSODragOver;
//       tmPSO2.OnDragDrop:=tmPSODragDrop;

      //bottom side
       tmPSO3:=STDIClass.AddLine(ScrollBox1,
        Y+MovedObj.Height,X,
         1,MovedObj.Width+1);
       tmPSO3.LineColor:=clRed;
       tmPSO3.ArrowLength:=0;
       tmPSO3.Height:=1;
       tmPSO3.LineWidth:=2;
//       tmPSO3.OnDragOver:=tmPSODragOver;
//       tmPSO3.OnDragDrop:=tmPSODragDrop;

      //right side
       tmPSO4:=STDIClass.AddLine(ScrollBox1,
        Y,X+MovedObj.Width,
         MovedObj.Height+1,1);
       tmPSO4.LineColor:=clRed;
       tmPSO4.ArrowLength:=0;
       tmPSO4.Width:=1;
       tmPSO4.LineWidth:=2;
//       tmPSO4.OnDragOver:=tmPSODragOver;
//       tmPSO4.OnDragDrop:=tmPSODragDrop;
      end
     else
      begin  //move a frame
       //left side
       tmPSO1.Top:=Y;
       tmPSO1.Left:=X;
       //top side
       tmPSO2.Top:=Y;
       tmPSO2.Left:=X;
       //bottom
       tmPSO3.Top:=Y+MovedObj.Height;
       tmPSO3.Left:=X;
       //right
       tmPSO4.Top:=Y;
       tmPSO4.Left:=X+MovedObj.Width;
      end;
//---------------
end;

procedure TTRVMLEForm.ScrollBox1DragOver(Sender, Source: TObject; X, Y: Integer;
  State: TDragState; var Accept: Boolean);
var
 MovedObj : TControl;
begin
  if (Sender as TControl <> Source) then
    begin
     Accept := True;
     if (Source is TImage)and(TImage(Source).Tag=2) then MovedObj:=TImage(Source).Parent;
     if (Source is TRzPanel) then
      if TRzPanel(Source).Tag=1 then MovedObj:=TRzPanel(Source)
       else MovedObj:=TRzPanel(Source).Parent;

 if (Sender is TScrollBox) then
  begin
//   Y:=MovedObj.Top+Y;
//   X:=MovedObj.Left+X;
  end
 else
  if (Sender is TImage)and(TImage(Source).Tag=2) then
    begin
     Y:=TImage(Sender).Parent.Top+Y;
     X:=TImage(Sender).Parent.Left+X;
    end
   else
    if TRzPanel(Sender).Tag=1 then
      begin
       Y:=TRzPanel(Sender).Top+Y;
       X:=TRzPanel(Sender).Left+X;
      end
     else
      begin
       Y:=TRzPanel(Sender).Parent.Top+Y;
       X:=TRzPanel(Sender).Parent.Left+X;
      end;
//---------------
     if tmPSO1=nil then
      begin //create a frame
       tmPSO1:=STDIClass.AddLine(ScrollBox1,
        X,Y,MovedObj.Height,1);
       tmPSO1.LineColor:=clRed;
       tmPSO1.ArrowLength:=0;
       tmPSO1.Width:=1;
       tmPSO1.LineWidth:=2;
      //top side
       tmPSO2:=STDIClass.AddLine(ScrollBox1,
        Y,X,1,MovedObj.Width);
       tmPSO2.LineColor:=clRed;
       tmPSO2.ArrowLength:=0;
       tmPSO2.Height:=1;
       tmPSO2.LineWidth:=2;
      //bottom side
       tmPSO3:=STDIClass.AddLine(ScrollBox1,
        Y+MovedObj.Height,X,
         1,MovedObj.Width);
       tmPSO3.LineColor:=clRed;
       tmPSO3.ArrowLength:=0;
       tmPSO3.Height:=1;
       tmPSO3.LineWidth:=2;
      //right side
       tmPSO4:=STDIClass.AddLine(ScrollBox1,
        Y,X+MovedObj.Width,
         MovedObj.Height,1);
       tmPSO4.LineColor:=clRed;
       tmPSO4.ArrowLength:=0;
       tmPSO4.Width:=1;
       tmPSO4.LineWidth:=2;
      end
     else
      begin  //move a frame
       //left side
       tmPSO1.Top:=Y;
       tmPSO1.Left:=X;
       //top side
       tmPSO2.Top:=Y;
       tmPSO2.Left:=X;
       //bottom
       tmPSO3.Top:=Y+MovedObj.Height;
       tmPSO3.Left:=X;
       //right
       tmPSO4.Top:=Y;
       tmPSO4.Left:=X+MovedObj.Width;
      end;
//---------------
    end;
end;

procedure TTRVMLEForm.ToolButton1Click(Sender: TObject);
begin
 if TObject(TreeView1.Selected.Data) is TGRule then
  TGRule(TreeView1.Selected.Data).OrderV2(ScrollBox1,0);
 if TObject(TreeView1.Selected.Data) is TRule then
  TRule(TreeView1.Selected.Data).OrderV2(ScrollBox1,0);
 if TObject(TreeView1.Selected.Data) is TFScale then
  TFScale(TreeView1.Selected.Data).OrderV2;
 if TObject(TreeView1.Selected.Data) is TTemplate then
  TTemplate(TreeView1.Selected.Data).OrderV2(MainForm.GetKBForNode(TreeView1.Selected));
 if TObject(TreeView1.Selected.Data) is TFact then
  TFact(TreeView1.Selected.Data).OrderV2(MainForm.GetKBForNode(TreeView1.Selected));
 TreeView1.OnClick(TreeView1);
end;

procedure TTRVMLEForm.ToolButton9Click(Sender: TObject);
begin
 if MainForm.MMessageBox(1,1,'0='+
  STDIClass.LoadSingleString('Exit',LangLocaleDir+LangPrefix+'012.lan'))=0
   then
    Close;
end;
//----------------------------------------------------------------
procedure TTRVMLEForm.TreeView1Click(Sender: TObject);
//----------------------
function CopyElements(Source:TTreeView;Tragert:TRzListView;N:TTreeNode;
 s:string;clF:Integer):Integer;
var
 i : Integer;
 tLI : TListItem;
begin
 if clF=1 then Tragert.Items.Clear;
 for i := 0 to N.Count-1 do
  begin
//    Inc(position);
    tLI:=Tragert.Items.Insert(Tragert.Items.Count);
    tLI.Caption:=s+' ('+IntToStr(i+1)+') :';
    tLI.SubItems.Add(N.Item[i].Text);
    tLI.Data:=N.Item[i].Data;
    tLI.ImageIndex:=1;
  end;
end;
//----------------------
label
 l67;
var
 tmWC : TWinControl;
 T,L,T1,T2,T3  : Integer;
 i,j  : Integer;
// nC : TTreeNode;
 c,x  : Integer;
 tmTs : TStringList;
 tmTs1 : TStringList;
 tmS  : String;

 K : TKnowledgeBase;
// tP : TPanel;
 tmP, tmP0, tmP1 : TRzPanel;
 s,s1 : string;
 tmRule : TRule;

begin
 tmWC:=ScrollBox1;
// Caption:=IntToStr(TreeView1.Selected.Level)+':'+IntToStr(TreeView1.Selected.Index);
 RzListView2.Items.Clear;

if TreeView1.Selected<>nil then
try
 tmTs:=TStringList.Create;
 tmTs1:=TStringList.Create;
 tmWC.Visible:=False;
 STDIClass.ReleaseObjects(tmWC);
 T:=5;
 L:=5;

 K:=MainForm.GetKBForNode(TreeView1.Selected);
 if TreeView1.Selected.Level=1 then //overall project level
  begin //list of all elements
   RzListView2.Items.Clear;
   for i := 0 to TreeView1.Selected.Count-1 do
    begin //list of group elements
     case TreeView1.Selected.Item[i].Index of
      0:s1:='template';
      1:s1:='fact';
      2:s1:='g-rule';
      3:s1:='rule';
      4:s1:='scale';
     end;
     CopyElements(TreeView1,RzListView2,TreeView1.Selected.Item[i],s1,0);
    end;
  end;

 if TreeView1.Selected.Level=2 then //group project level
  begin //list of group elements
   case TreeView1.Selected.Index of
    0:s1:='template';
    1:s1:='fact';
    2:s1:='g-rule';
    3:s1:='rule';
    4:s1:='scale';
   end;
   CopyElements(TreeView1,RzListView2,TreeView1.Selected,s1,1);
  end;

 if TreeView1.Selected.Data<>nil then
  begin
   if TreeView1.Selected.Level=3 then //singl element level
    begin
     //-------------------------------------------------------------------------------
     //template description
     if TObject(TreeView1.Selected.Data) is TTemplate then
      begin
       TTemplate(TreeView1.Selected.Data).DrawV2(tmWC,1,1,
        TTemplate(TreeView1.Selected.Data).ID);

       //show description
       TTemplate(TreeView1.Selected.Data).AddToListView(RzListView2,0,1,0,0,
        TObject(TreeView1.Selected.Data));
      end;
     //-------------------------------------------------------------------------------
     //rule description
     if TObject(TreeView1.Selected.Data) is TRule then
      begin
       TRule(TreeView1.Selected.Data).DrawV2(tmWC,1,
        TRule(TreeView1.Selected.Data).ID);

       //show description
       TRule(TreeView1.Selected.Data).AddToListView(RzListView2,0,1,0,0);
      end;
     //-------------------------------------------------------------------------------
     //generalised rule description
     if TObject(TreeView1.Selected.Data) is TGRule then
      begin
       TGRule(TreeView1.Selected.Data).DrawV2(tmWC,1,
        TGRule(TreeView1.Selected.Data).ID);

       //show description
       TGRule(TreeView1.Selected.Data).AddToListView(RzListView2,0,1,0,0);
      end;
     //-------------------------------------------------------------------------------
     if TObject(TreeView1.Selected.Data) is TFVar then
      begin
       TFVar(TreeView1.Selected.Data).DrawV2(tmWC,1,
        TFVar(TreeView1.Selected.Data).ID);

       //show description
       TFVar(TreeView1.Selected.Data).AddToListView(RzListView2,0,1,0,0,K,
        TObject(TreeView1.Selected.Data));
      end;
     //-------------------------------------------------------------------------------
     //fact description
     if TObject(TreeView1.Selected.Data) is TFact then
      begin
       TFact(TreeView1.Selected.Data).DrawV2(tmWC,2,1,1,
        TFact(TreeView1.Selected.Data).ID);

       //show description
       TFact(TreeView1.Selected.Data).AddToListView(RzListView2,0,1,0,0,
        TObject(TreeView1.Selected.Data));
      end;
     //-------------------------------------------------------------------------------
     if TObject(TreeView1.Selected.Data) is TFScale then
      begin
       TFScale(TreeView1.Selected.Data).DrawV2(tmWC,1,1,
        TFScale(TreeView1.Selected.Data).ID);

       //show description
       TFScale(TreeView1.Selected.Data).AddToListView(RzListView2,0,1,0,0,
        TObject(TreeView1.Selected.Data));
      end;
      //-------------------------------------------------------------------------------
    end;
   end
 else //nil
  begin

  end;
except
end;
 tmWC.Visible:=True;
end;

end.
