program prjWMS;

uses
  Vcl.Forms,
  uBase in 'uBase.pas' {frmBase},
  uWMS in 'uWMS.pas' {frmWMS},
  uCON in 'uCON.pas' {DataModule1: TDataModule};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TfrmWMS, frmWMS);
  Application.CreateForm(TDataModule1, DataModule1);
  Application.CreateForm(TfrmBase, frmBase);
  Application.Run;
end.
