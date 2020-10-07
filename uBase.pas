unit uBase;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ComCtrls, Vcl.ToolWin, dxSkinsCore,
  dxSkinOffice2013White, cxClasses, dxBar, cxStyles, Vcl.ImgList, cxImageList,
  cxGraphics, AdvUtil, Vcl.Grids, AdvObj, BaseGrid, AdvGrid, DBAdvGrid,
  tmsAdvGridExcel;

type
  TfrmBase = class(TForm)
    dxBarMGR: TdxBarManager;
    dxBarDockControl1: TdxBarDockControl;
    dxBarMGRBar1: TdxBar;
    btnNew: TdxBarButton;
    btnEdit: TdxBarButton;
    cxStyleRepository1: TcxStyleRepository;
    cxStyle1: TcxStyle;
    btnDelete: TdxBarButton;
    imgBtn: TcxImageList;
    btnCopy: TdxBarButton;
    btnRefresh: TdxBarButton;
    btnFind: TdxBarButton;
    DBAdvGrid1: TDBAdvGrid;
    AdvGridExcelIO1: TAdvGridExcelIO;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmBase: TfrmBase;

implementation

{$R *.dfm}

end.
