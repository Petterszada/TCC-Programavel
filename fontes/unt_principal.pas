unit unt_principal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Buttons, Vcl.ExtCtrls;

type
  Tfrm_principal = class(TForm)
    pnp_titulo: TPanel;
    pnp_fundo: TPanel;
    pnp_consultar: TPanel;
    pnp_alunos: TPanel;
    pnp_agendamentos: TPanel;
    pnp_serviços: TPanel;
    pnp_cadastros: TPanel;
    pnp_cadastro_agendamentos: TPanel;
    Panel2: TPanel;
    Panel3: TPanel;
    pnp_avaliação: TPanel;
    procedure pnp_alunosClick(Sender: TObject);
    procedure pnp_serviçosClick(Sender: TObject);
    procedure Panel2Click(Sender: TObject);
    procedure Panel3Click(Sender: TObject);
    procedure pnp_avaliaçãoClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frm_principal: Tfrm_principal;

implementation

{$R *.dfm}

uses unt_servico, unt_cad_agendam, unt_pagamento,
  unt_login, unt_cadastrar_alunos, unt_aluno, unt_avaliacao, unt_dtm;

procedure Tfrm_principal.Panel2Click(Sender: TObject);
begin
frm_cadastrar_alunos:=Tfrm_cadastrar_alunos.Create(self);
frm_cadastrar_alunos.Show;
end;

procedure Tfrm_principal.Panel3Click(Sender: TObject);
begin
frm_login:=Tfrm_login.Create(self);
frm_login.Show;
end;

procedure Tfrm_principal.pnp_alunosClick(Sender: TObject);
begin
frm_aluno:=Tfrm_aluno.Create(self);
frm_aluno.Show;
end;

procedure Tfrm_principal.pnp_avaliaçãoClick(Sender: TObject);
begin
frm_avaliacao:=Tfrm_avaliacao.Create(self);
frm_avaliacao.Show;
end;

procedure Tfrm_principal.pnp_serviçosClick(Sender: TObject);
begin
frm_servico:=Tfrm_servico.Create(self);  //cria em memoria o form
frm_servico.Show;
end;

end.
