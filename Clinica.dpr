program Clinica;

uses
  Vcl.Forms,
  unitprincipal in 'unitprincipal.pas' {formPrincipal},
  unitcadPaciente in 'unitcadPaciente.pas' {formcadPacientes},
  unitcadAgendamentos in 'unitcadAgendamentos.pas' {formcadAgendamentos},
  unitDM in 'unitDM.pas' {DM: TDataModule};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TformPrincipal, formPrincipal);
  Application.CreateForm(TformcadPacientes, formcadPacientes);
  Application.CreateForm(TformcadAgendamentos, formcadAgendamentos);
  Application.CreateForm(TDM, DM);
  Application.Run;
end.
