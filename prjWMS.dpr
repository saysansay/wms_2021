program prjWMS;

uses
  Vcl.Forms,
  uBase in 'uBase.pas' {frmBase},
  uWMS in 'uWMS.pas' {frmWMS},
  uCON in 'uCON.pas' {DM: TDataModule};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TDM, DM);
  Application.CreateForm(TfrmWMS, frmWMS);
  Application.Run;
end.
