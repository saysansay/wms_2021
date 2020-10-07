unit uCON;

interface

uses
  System.SysUtils, System.Classes, Data.DB, DBAccess, Uni, UniProvider,
  MySQLUniProvider,IniFiles, UniDacVcl,Forms,Dialogs;

type
  TDM = class(TDataModule)
    dbCON: TUniConnection;
    mySQL: TMySQLUniProvider;
    conDialogs: TUniConnectDialog;
    procedure DataModuleCreate(Sender: TObject);
  private
    { Private declarations }
    procedure WriteAndReadConnDB;
  public
    { Public declarations }
    function XorEncode(Source, Key: string): string;
    function XorDecode(Source, Key: string): string;
  end;
  const
    KEY ='140686AIS.D30';
var
  DM: TDM;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

{$R *.dfm}

{ TDM }

procedure TDM.DataModuleCreate(Sender: TObject);
begin
  WriteAndReadConnDB;
end;

procedure TDM.WriteAndReadConnDB;
var
   appINI : TIniFile;
begin
   appINI :=TIniFile.Create(ChangeFileExt(Application.ExeName,'.ini'));
   if not FileExists('prjWMS.ini') then
   begin
     conDialogs.Execute;
     appINI.WriteString('DB','SERVER',XorEncode(dbCON.Server,KEY));
     appINI.WriteString('DB','USER',XorEncode(dbCON.UserName,KEY));
     appINI.WriteString('DB','PWD',XorEncode(dbCON.Password,KEY));
     appINI.WriteString('DB','DATABASE',XorEncode(dbCON.Database,KEY));
     appINI.WriteInteger('DB','PORT',dbCON.Port);
   end
   else
     begin
       dbCON.Server :=XorDecode(appINI.ReadString('DB','SERVER',''),KEY);
       dbCON.Username :=XorDecode(appINI.ReadString('DB','USER',''),KEY);
       dbCON.Password :=XorDecode(appINI.ReadString('DB','PWD',''),KEY);
       dbCON.Database :=XorDecode(appINI.ReadString('DB','database',''),KEY);
       dbCON.Port :=appINI.ReadInteger('DB','SERVER',0);
       dbCON.Connected;
     end;
end;

function TDM.XorDecode(Source, Key: string): string;
var
  I: Integer;
  C: Char;

begin
  Result := '';
  for I := 0 to Length(Source) div 2 - 1 do begin
    C := Chr(StrToIntDef('$' + Copy(Source, (I * 2) + 1, 2), Ord(' ')));
  if Length(Key) > 0 then
    C := Chr(Byte(Key[1 + (I mod Length(Key))]) xor Byte(C));
  Result := Result + C;
end;

end;

function TDM.XorEncode(Source, Key: string): string;
var
  I: Integer;
  C: Byte;
begin
  Result := '';
for I := 1 to Length(Source) do begin
  if Length(Key) > 0 then
  C := Byte(Key[1 + ((I - 1) mod Length(Key))]) xor Byte(Source[I])
else
  C := Byte(Source[I]);
  Result := Result + AnsiLowerCase(IntToHex(C, 2));
end;

end;

end.
