unit unt_servico;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.Grids, Vcl.DBGrids,
  Vcl.Buttons, Vcl.DBActns, System.Actions, Vcl.ActnList,
  Vcl.PlatformDefaultStyleActnCtrls, Vcl.ActnMan, Vcl.StdCtrls, Vcl.Mask,
  Vcl.DBCtrls, Vcl.ComCtrls;

type
  Tfrm_servico = class(TForm)
    Label2: TLabel;
    edit_desc: TDBEdit;
    Label3: TLabel;
    edt_valor: TDBEdit;
    ActionManager1: TActionManager;
    DatasetInsert1: TDataSetInsert;
    DatasetDelete1: TDataSetDelete;
    DatasetEdit1: TDataSetEdit;
    DatasetPost1: TDataSetPost;
    DatasetCancel1: TDataSetCancel;
    btn_inserir: TSpeedButton;
    btn_editar: TSpeedButton;
    btn_delete: TSpeedButton;
    btn_salvar: TSpeedButton;
    btn_cancelar: TSpeedButton;
    DBGrid1: TDBGrid;
    Label1: TLabel;
    DBEdit1: TDBEdit;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btn_deleteClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    cad:string;
  end;

var
  frm_servico: Tfrm_servico;

implementation

{$R *.dfm}

uses unt_dtm, unt_aluno, unt_avaliacao, unt_cad_agendam, unt_cadastrar_alunos,
  unt_login, unt_pagamento, unt_principal, unt_procura_avaliacao;

procedure Tfrm_servico.btn_deleteClick(Sender: TObject);
begin
if MessageDlg('Deseja mesmo deletar o Servi�o ?', MtConfirmation, [Mbyes, MbNo],0)=mrYES then
  begin
  try
     dtm.servicos.Delete;
  except
      ShowMessage('o servi�o n�o pode ser deletado porque tem alunos visculados ao mesmo');
  end;

  end;

end;

procedure Tfrm_servico.FormClose(Sender: TObject; var Action: TCloseAction);
begin
if cad='sim' then
begin
  if MessageDlg('Uma opera��o est� sendo executada, gostaria de cancelar?', MtConfirmation, [Mbyes, MbNo],0)=mrYES then
  begin
    dtm.servicos.Cancel;
    Action:= caFree;
  end
  else
  Action:=caNone;

end;
end;




end.

