unit unitprincipal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Buttons, Vcl.ExtCtrls,
  Vcl.Menus, Vcl.Imaging.jpeg;

type
  TformPrincipal = class(TForm)
    MainMenu1: TMainMenu;
    N1: TMenuItem;
    Sair1: TMenuItem;
    Cadastro1: TMenuItem;
    Pacientes1: TMenuItem;
    Agendamentos1: TMenuItem;
    Panel1: TPanel;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    Image1: TImage;
    procedure Sair1Click(Sender: TObject);
    procedure Pacientes1Click(Sender: TObject);
    procedure Agendamentos1Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  formPrincipal: TformPrincipal;

implementation

{$R *.dfm}

uses unitcadPaciente, unitcadAgendamentos;


procedure TformPrincipal.Agendamentos1Click(Sender: TObject); //Op??o de agendamentos no menu principal.
begin
  //ShowModal serve para mostrar a tela desejada, no caso abaixo a tela de pacientes denominada de formcadAgendamentos.
  formcadAgendamentos.ShowModal;
end;

procedure TformPrincipal.BitBtn1Click(Sender: TObject);
begin
  formcadAgendamentos.ShowModal;
end;

procedure TformPrincipal.BitBtn2Click(Sender: TObject); //Bot?o de pacientes com o evento OnClick
begin
  //ShowModal exibir a tela
  formcadPacientes.ShowModal;
end;

procedure TformPrincipal.Pacientes1Click(Sender: TObject);  //Op??o de pacientes no menu principal
begin
  //ShowModal serve para mostrar a tela desejada, no caso abaixo a tela de pacientes denominada de formcadPacientes.
  formcadPacientes.ShowModal;
end;

procedure TformPrincipal.Sair1Click(Sender: TObject);  //Op??o de sair no menu principal.
begin
  //Fecha a janela ao clicar em sair.
  Application.Terminate;
end;

end.
