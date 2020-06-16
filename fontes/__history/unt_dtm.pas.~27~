unit unt_dtm;

interface

uses
  System.SysUtils, System.Classes, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Error, FireDAC.UI.Intf, FireDAC.Phys.Intf, FireDAC.Stan.Def,
  FireDAC.Stan.Pool, FireDAC.Stan.Async, FireDAC.Phys, FireDAC.Phys.MySQL,
  FireDAC.Phys.MySQLDef, FireDAC.VCLUI.Wait, FireDAC.Comp.UI, Data.DB,
  FireDAC.Comp.Client, FireDAC.Stan.Param, FireDAC.DatS, FireDAC.DApt.Intf,
  FireDAC.DApt, FireDAC.Comp.DataSet, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Mask, Vcl.DBCtrls, Vcl.Buttons,System.MaskUtils;

type
  Tdtm = class(TDataModule)
    conexao: TFDConnection;
    FDPhysMySQLDriverLink1: TFDPhysMySQLDriverLink;
    FDGUIxWaitCursor1: TFDGUIxWaitCursor;
    servicos: TFDQuery;
    ds_servicos: TDataSource;
    alunos: TFDQuery;
    ds_alunos: TDataSource;
    alunosid_aluno: TFDAutoIncField;
    alunosnome_aluno: TStringField;
    alunossobrenome_aluno: TStringField;
    alunosdata_nasc: TDateField;
    alunoscpf: TStringField;
    alunosemail: TStringField;
    alunossexo: TStringField;
    alunosprofissao: TStringField;
    alunosservico: TIntegerField;
    servicosid_servico: TFDAutoIncField;
    servicosplano_descricao: TStringField;
    servicosvalor_servico: TBCDField;
    servicosobservacao: TStringField;
    avaliacao: TFDQuery;
    ds_avaliacao: TDataSource;
    avaliacaoidavaliacao: TFDAutoIncField;
    avaliacaodata_avaliacao: TDateField;
    avaliacaoaluno: TIntegerField;
    avaliacaoqueixa: TMemoField;
    avaliacaohabitos: TMemoField;
    avaliacaodoenca: TMemoField;
    avaliacaoantecedentes: TMemoField;
    avaliacaotratamento: TMemoField;
    avaliacaodor_mov: TStringField;
    avaliacaocirurgias: TStringField;
    avaliacaoposicoes: TMemoField;
    avaliacaoexer_ativi: TStringField;
    avaliacaoobjetivos: TStringField;
    procedure servicosAfterCancel(DataSet: TDataSet);
    procedure servicosAfterPost(DataSet: TDataSet);
    procedure servicosBeforeEdit(DataSet: TDataSet);
    procedure servicosBeforeInsert(DataSet: TDataSet);
    procedure servicosBeforePost(DataSet: TDataSet);
    procedure alunosAfterCancel(DataSet: TDataSet);
    procedure alunosAfterPost(DataSet: TDataSet);
    procedure alunosBeforeEdit(DataSet: TDataSet);
    procedure alunosBeforeInsert(DataSet: TDataSet);
    procedure alunosBeforePost(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  dtm: Tdtm;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

uses unt_aluno, unt_avaliacao, unt_cad_agendam, unt_cadastrar_alunos, unt_login,
  unt_pagamento, unt_principal, unt_servico;

{$R *.dfm}

procedure Tdtm.alunosAfterCancel(DataSet: TDataSet);
begin
       frm_cadastrar_alunos.cad:='não';
end;

procedure Tdtm.alunosAfterPost(DataSet: TDataSet);
begin
        frm_cadastrar_alunos.cad:='não';
end;

procedure Tdtm.alunosBeforeEdit(DataSet: TDataSet);
begin
       frm_cadastrar_alunos.cad:='sim';
end;

procedure Tdtm.alunosBeforeInsert(DataSet: TDataSet);
begin
      frm_cadastrar_alunos.cad:='sim';
end;

procedure Tdtm.alunosBeforePost(DataSet: TDataSet);
begin
       frm_cadastrar_alunos.cad:='sim';
end;

procedure Tdtm.servicosAfterCancel(DataSet: TDataSet);
begin
    frm_servico.cad:='não';
end;

procedure Tdtm.servicosAfterPost(DataSet: TDataSet);
begin
   frm_servico.cad:='não';
end;

procedure Tdtm.servicosBeforeEdit(DataSet: TDataSet);
begin
    frm_servico.cad:='sim';
end;

procedure Tdtm.servicosBeforeInsert(DataSet: TDataSet);
begin
   frm_servico.cad:='sim';
end;

procedure Tdtm.servicosBeforePost(DataSet: TDataSet);
begin
if servicosplano_descricao.IsNull then
raise Exception.Create('O campo Descrição não pode ficar vazio');

if servicosvalor_servico.IsNull then
raise Exception.Create('O campo Valor não pode ficar vazio');



end;



end.
