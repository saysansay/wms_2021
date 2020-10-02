unit uWMS;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms, Dialogs, 
  dxBar, dxRibbon, dxRibbonForm, dxRibbonSkins, cxGraphics, cxControls, 
  cxLookAndFeels, cxLookAndFeelPainters, cxClasses, dxSkinsCore,
  dxSkinOffice2013White, dxRibbonCustomizationForm, dxStatusBar,
  dxRibbonStatusBar, dxBarApplicationMenu, Vcl.ComCtrls, cxSplitter,
  Vcl.ExtCtrls, Data.DB, MemDS, DBAccess, Uni;

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
    Panel2: TPanel;
    TreeView1: TTreeView;
    qryMenu: TUniQuery;
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
    procedure CreateTreeMenu(ParentID :Integer;Node :TTreeNode);
  public
    { Public declarations }
  end;

var
  frmWMS: TfrmWMS;

implementation

{$R *.dfm}

uses uCON;

{ TfrmWMS }

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

procedure TfrmWMS.FormShow(Sender: TObject);
var
  topNode: TTreeNode;
begin
  topNode := TreeView1.Items.Add(Nil, 'Root Node');
  CreateTreeMenu(0, topNode);
end;

end.
