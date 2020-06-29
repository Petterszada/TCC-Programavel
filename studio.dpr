program studio;

uses
  Vcl.Forms,
  unt_principal in 'fontes\unt_principal.pas' {frm_principal},
  unt_servico in 'fontes\unt_servico.pas' {frm_servico},
  unt_dtm in 'fontes\unt_dtm.pas' {dtm: TDataModule},
  unt_cadastrar_alunos in 'fontes\unt_cadastrar_alunos.pas' {frm_cadastrar_alunos},
  unt_cad_agendam in 'fontes\unt_cad_agendam.pas' {frm_cadastrar_agendamentos},
  unt_aluno in 'fontes\unt_aluno.pas' {frm_aluno},
  unt_pagamento in 'fontes\unt_pagamento.pas' {frm_pagamentos},
  unt_login in 'fontes\unt_login.pas' {frm_login},
  unt_avaliacao in 'fontes\unt_avaliacao.pas' {frm_avaliacao},
  unt_procura_avaliacao in 'fontes\unt_procura_avaliacao.pas' {frm_procura_avaliacao};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(Tfrm_principal, frm_principal);
  Application.CreateForm(Tdtm, dtm);
  Application.Run;
end.
