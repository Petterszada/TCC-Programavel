unit unt_aluno;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.Grids, Vcl.DBGrids,
  Vcl.StdCtrls;

type
  Tfrm_aluno = class(TForm)
    edt_selecionar_aluno: TEdit;
    lnl_nome_aluno: TLabel;
    DBGrid1: TDBGrid;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure edt_selecionar_alunoChange(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frm_aluno: Tfrm_aluno;

implementation

{$R *.dfm}

uses unt_avaliacao, unt_cad_agendam, unt_cadastrar_alunos, unt_dtm, unt_login,
  unt_pagamento, unt_principal, unt_procura_avaliacao, unt_servico;

procedure Tfrm_aluno.edt_selecionar_alunoChange(Sender: TObject);
begin
with dtm.consulta_alunos do
begin
  close;
  ParamByName('aluno').value:='%'+ edt_selecionar_aluno.Text + '%';
  Open();
end;
end;

procedure Tfrm_aluno.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
Action:=caFree;
end;

end.
