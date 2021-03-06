unit unitcadPaciente;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls, Vcl.Mask,
  Vcl.DBCtrls, Data.DB, Vcl.Grids, Vcl.DBGrids;

type
  TformcadPacientes = class(TForm)
    Panel1: TPanel;
    Label1: TLabel;
    DBEdit1: TDBEdit;
    DBEdit2: TDBEdit;
    DBEdit3: TDBEdit;
    DBEdit4: TDBEdit;
    DBEdit5: TDBEdit;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    DBGrid1: TDBGrid;
    DBNavigator1: TDBNavigator;
    txtBusca: TEdit;
    Label7: TLabel;
    procedure txtBuscaChange(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  formcadPacientes: TformcadPacientes;

implementation

{$R *.dfm}

uses unitDM;


procedure TformcadPacientes.txtBuscaChange(Sender: TObject); //Caixinha de busca de pacientes
begin
  //Referenciando a tela DM juntamente com a tabela paciente, o comando Locate para localizar algum dado
  //cadastrado na tabela, indicamos nome o do campo que quero buscar, qual ? a informa??o que quero busca dentro da caixa
  // txtBusca ? oq quero buscar no campo nome da tabela pacientes
  DM.tbPaciente.Locate('nome', txtBusca.Text,[loPartialKey]);  //loPartial serve pra que eu busque pelo nome parcial do paciente
end;

end.
