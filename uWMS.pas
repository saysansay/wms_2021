unit uWMS;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms, Dialogs, 
  dxBar, dxRibbon, dxRibbonForm, dxRibbonSkins, cxGraphics, cxControls, 
  cxLookAndFeels, cxLookAndFeelPainters, cxClasses, dxSkinsCore,
  dxSkinOffice2013White, dxRibbonCustomizationForm, dxStatusBar,
  dxRibbonStatusBar, dxBarApplicationMenu, Vcl.ComCtrls, cxSplitter,
  Vcl.ExtCtrls, Data.DB, MemDS, DBAccess, Uni, cxPC, dxBarBuiltInMenu,
  dxTabbedMDI, Vcl.ImgList, cxImageList, Vcl.StdCtrls;

type
  TfrmWMS = class(TdxRibbonForm)
    dxBarManager1: TdxBarManager;
    dxBarManager1Bar1: TdxBar;
    dxBarApplicationMenu1: TdxBarApplicationMenu;
    dxRibbon1: TdxRibbon;
    dxRibbon1Tab1: TdxRibbonTab;
    dxRibbonStatusBar1: TdxRibbonStatusBar;
    Panel1: TPanel;
    cxSplitter1: TcxSplitter;
    TreeView1: TTreeView;
    qryMenu: TUniQuery;
    MDIMAIN: TdxTabbedMDIManager;
    imglist: TcxImageList;
    edNode: TEdit;
    mnFile: TdxBarButton;
    mnExit: TdxBarButton;
    procedure FormShow(Sender: TObject);
    procedure edNodeKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure mnExitClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
  private
    { Private declarations }
    procedure CreateTreeMenu(ParentID :Integer;Node :TTreeNode);
    function GetNodeByText(ATree : TTreeView; AValue:String; AVisible: Boolean): TTreeNode;
    procedure CreateForm(const FormName:string);
  public
    { Public declarations }
  end;

var
  frmWMS: TfrmWMS;

implementation

{$R *.dfm}

uses uCON, uBase;

{ TfrmWMS }

procedure TfrmWMS.Button1Click(Sender: TObject);
begin
  Edit2.Text :=DM.XorEncode(Edit1.Text,'KEY1010')
end;

procedure TfrmWMS.Button2Click(Sender: TObject);
begin
  //Memo1.Lines.Add(DM.XorDecode(Edit2.Text,'KEY1010'))
end;

procedure TfrmWMS.CreateForm(const FormName: string);
var
  fc : TFormClass;
  f : TForm;
begin
  fc := TFormClass(FindClass(FormName));
  if Assigned(f) then
     f.Show
  else
    begin
      f := fc.Create(Application);
      f.Show;
    end;
end;

procedure TfrmWMS.CreateTreeMenu(ParentID: Integer; Node: TTreeNode);
var
  list : TStringList ;
  i : Integer;
  newNode :TTreeNode;
begin
   list := TStringList.Create;
   try
   with qryMenu do
   begin
     Close;
     SQL.Text :='SELECT id,menu_name,parent_id from treemenu where parent_id=:pid';
     ParamByName('pid').AsInteger :=ParentID;
     Open;
   end;
   qryMenu.First;
   while not qryMenu.Eof do
   begin
     if qryMenu.FieldByName('parent_id').AsInteger=ParentID then
       list.Add(qryMenu.FieldByName('id').AsString +'='+qryMenu.FieldByName('menu_name').AsString);
     qryMenu.Next;
   end;
   i := 0;
   while i < list.Count do
   begin
     newNode :=TreeView1.Items.AddChild(Node,list.Values[list.Names[i]]);
     CreateTreeMenu(StrToInt(list.Names[i]),newNode);
     Inc(i);
   end;
   finally
     list.Free;
   end;


end;

procedure TfrmWMS.edNodeKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
var
 tn : TTreeNode;
begin
  if Key=VK_RETURN then
  begin
    tn :=GetNodeByText(TreeView1,edNode.Text,True);
    if tn = nil then
      ShowMessage('Not found!')
   else begin
   TreeView1.SetFocus;
   tn.Selected := True;
   end;
  end;

end;

procedure TfrmWMS.FormCreate(Sender: TObject);
begin
   //ShowMessage(DM.XorEncode('uprit','xtbcabcdefghijk'));
end;

procedure TfrmWMS.FormShow(Sender: TObject);
var
  topNode: TTreeNode;
begin
  topNode := TreeView1.Items.Add(Nil, 'Navigation');
  CreateTreeMenu(0,topNode);
end;

function TfrmWMS.GetNodeByText(ATree: TTreeView; AValue: String;
  AVisible: Boolean): TTreeNode;
var
 Node: TTreeNode;
begin
 Result := nil;
 if ATree.Items.Count = 0 then Exit;
    Node := ATree.Items[0];
 while Node<>nil do
 begin
 if UpperCase(Node.Text) = UpperCase(AValue) then
 begin
   Result := Node;
   if AVisible then
     Result.MakeVisible;
   Break;
 end;
 Node := Node.GetNext;
 end;
end;

procedure TfrmWMS.mnExitClick(Sender: TObject);
begin
  if MessageDlg('Are you sure exit this application ?',mtConfirmation,[mbYes,mbNo],0)=mrYes then
     Application.Terminate;

end;

initialization
 RegisterClass(TfrmBase)
end.
