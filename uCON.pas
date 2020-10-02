unit uCON;

interface

uses
  System.SysUtils, System.Classes, Data.DB, DBAccess, Uni, UniProvider,
  MySQLUniProvider;

type
  TDataModule1 = class(TDataModule)
    dbCON: TUniConnection;
    mySQL: TMySQLUniProvider;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DataModule1: TDataModule1;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

{$R *.dfm}

end.
