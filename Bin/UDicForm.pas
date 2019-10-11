{------------------------------------------------------------------------------}
{                                                                              }
{  Personal Knowledge Base Designer                                            }
{  by A.Yu. Yurin, N.O. Dorodnykh                                              }
{                                                                              }
{  iskander@icc.ru                                                             }
{  http://knowledge-core.ru/                                                   }
{                                                                              }
{------------------------------------------------------------------------------}

unit UDicForm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, RzButton, ExtCtrls, RzPanel, StdCtrls, RzLstBox, RzChkLst;

type
  TDicForm = class(TForm)
    RzPanel1: TRzPanel;
    RzButton2: TRzButton;
    RzPanel6: TRzPanel;
    GroupBox1: TGroupBox;
    RzCheckList1: TRzCheckList;
    RzPanel5: TRzPanel;
    RzButton7: TRzButton;
    RzButton8: TRzButton;
    RzPanel4: TRzPanel;
    OpenDialog1: TOpenDialog;
    RzPanel2: TRzPanel;
    ListBox1: TListBox;
    procedure RzButton2Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure RzCheckList1Click(Sender: TObject);
    procedure RzCheckList1Change(Sender: TObject; Index: Integer;
      NewState: TCheckBoxState);
    procedure RzButton7Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DicForm: TDicForm;

implementation

uses UPKBClass, MAIN, USTDIClass;

{$R *.dfm}

procedure TDicForm.RzButton2Click(Sender: TObject);
begin
 Close;
end;

procedure TDicForm.FormCreate(Sender: TObject);
var
 i  : Integer;
begin
 STDIClass.LoadLocalLang(Self,
  LangLocaleDir+LangPrefix+'008.lan');

 RzCheckList1.Clear;
 SelectedCDic.Clear;
// STDIClass.ReleaseObjects(ScrollBox1);
 for i:=0 to CDicList.Count-1 do
  begin
  RzCheckList1.AddItem(
   TCDictionary(CDicList.Items[i]).Name,
    TCDictionary(CDicList.Items[i]));
   SelectedCDic.Add(TCDictionary(CDicList.Items[i]).Name
    +'='+IntToStr(i));
  end;
 RzCheckList1.CheckAll;

 if RzCheckList1.Count>0 then
  RzCheckList1.ItemIndex:=0;
 RzCheckList1Click(RzCheckList1);
end;

procedure TDicForm.RzCheckList1Click(Sender: TObject);
var
 tmWC : TWinControl;
 T,L  : Integer;
begin
// tmWC:=ScrollBox1;
 STDIClass.ReleaseObjects(tmWC);
 T:=5;
 L:=5;
 if TRzCheckList(Sender).ItemIndex>-1 then
  begin
{
   T:=STDIClass.AddLabel(tmWC,'Словарь-справочник:',T,L,250,clNavy,clNone,[]);
   T:=STDIClass.AddLabel(tmWC,TCDictionary(RzCheckList1.Items.Objects[
    RzCheckList1.ItemIndex]).Name
     ,T,L+10,tmWC.Width-25-10,clBlack,clNone,[fsBold]);
   T:=STDIClass.AddLabel(tmWC,'Описание:',T,L,250,clNavy,clNone,[]);
   if TCDictionary(RzCheckList1.Items.Objects[
    RzCheckList1.ItemIndex]).Description='' then
     T:=STDIClass.AddLabel(tmWC,'сведений нет'
      ,T,L+10,250,clInactiveCaption,clNone,[])
      else
   T:=STDIClass.AddLabel(tmWC,TCDictionary(RzCheckList1.Items.Objects[
    RzCheckList1.ItemIndex]).Description
     ,T,L+10,tmWC.Width-25-10,clBlack,clNone,[fsBold]);
   STDIClass.AddLabel(tmWC,'Понятий:',T,L,250,clNavy,clNone,[]);
   T:=STDIClass.AddLabel(tmWC,IntToStr(TCDictionary(RzCheckList1.Items.Objects[
    RzCheckList1.ItemIndex]).Names.Count)
     ,T,L+10+100,tmWC.Width-25-10,clBlack,clNone,[fsBold]);
   STDIClass.AddLabel(tmWC,'Значений:',T,L,250,clNavy,clNone,[]);
   T:=STDIClass.AddLabel(tmWC,IntToStr(TCDictionary(RzCheckList1.Items.Objects[
    RzCheckList1.ItemIndex]).Values.Count)
     ,T,L+10+100,tmWC.Width-25-10,clBlack,clNone,[fsBold]);
   }
  end;
end;

procedure TDicForm.RzCheckList1Change(Sender: TObject; Index: Integer;
  NewState: TCheckBoxState);
var
 i,c  : Integer;
 tmDic  : TCDictionary;
begin
 c:=-1;
 for i:=0 to SelectedCDic.Count-1 do
  if RzCheckList1.Items.Strings[RzCheckList1.ItemIndex]=
   SelectedCDic.Names[i] then
    begin
     c:=i;
     Break;
    end;

 if RzCheckList1.ItemChecked[RzCheckList1.ItemIndex]=True then
  begin
   if c=-1 then
    begin
     SelectedCDic.Add(
      RzCheckList1.Items.Strings[RzCheckList1.ItemIndex]+'='+
       IntToStr(RzCheckList1.ItemIndex)
      )
    end;
  end
 else
  begin
   //del
   if c>-1 then
    begin
//     RzCheckList1.Items.Delete(RzCheckList1.ItemIndex);
     CDicList.Delete(RzCheckList1.ItemIndex);
     SelectedCDic.Delete(c);
    end;
  end;
end;

procedure TDicForm.RzButton7Click(Sender: TObject);
begin
 OpenDialog1.Title:=Application.Title+': Подключение справочника';
 OpenDialog1.Filter:='DIC files |*.dic|Все файлы |*.*';
 OpenDialog1.InitialDir:=ExtractFileDir(Application.ExeName)+'\Dic';
 if  OpenDialog1.Execute then
  if OpenDialog1.FileName<>'' then
   begin
    ShowMessage('!');
    //xml структура название словаря - понятия, значения
   end;
end;

end.
