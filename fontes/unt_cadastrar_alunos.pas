unit unt_cadastrar_alunos;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.Grids, Vcl.DBGrids,
  Vcl.DBActns, System.Actions, Vcl.ActnList, Vcl.PlatformDefaultStyleActnCtrls,
  Vcl.ActnMan, Vcl.StdCtrls, Vcl.Mask, Vcl.DBCtrls, Vcl.Buttons,System.MaskUtils;

type
  Tfrm_cadastrar_alunos = class(TForm)
    btn_inserir: TSpeedButton;
    btn_editar: TSpeedButton;
    btn_deletar: TSpeedButton;
    btn_salvar: TSpeedButton;
    btn_cancelar: TSpeedButton;
    Label1: TLabel;
    DBEdit1: TDBEdit;
    Label2: TLabel;
    DBEdit2: TDBEdit;
    Label3: TLabel;
    DBEdit3: TDBEdit;
    Label4: TLabel;
    DBEdit4: TDBEdit;
    Label5: TLabel;
    DBEdit5: TDBEdit;
    Label6: TLabel;
    ActionManager1: TActionManager;
    DatasetInsert1: TDataSetInsert;
    DatasetDelete1: TDataSetDelete;
    DatasetEdit1: TDataSetEdit;
    DatasetPost1: TDataSetPost;
    DatasetCancel1: TDataSetCancel;
    DBGrid1: TDBGrid;
    Label7: TLabel;
    DBEdit7: TDBEdit;
    Label8: TLabel;
    DBComboBox2: TDBComboBox;
    DBLookupComboBox1: TDBLookupComboBox;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btn_deletarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
      cad:string;
  end;

var
  frm_cadastrar_alunos: Tfrm_cadastrar_alunos;

implementation

{$R *.dfm}

uses unt_dtm, unt_avaliacao, unt_aluno, unt_cad_agendam, unt_login,
  unt_pagamento, unt_principal, unt_servico;

procedure Tfrm_cadastrar_alunos.btn_deletarClick(Sender: TObject);
begin
try
   dtm.alunos.Delete;
except
Showmessage('O aluno não pode ser excluído  porque tem uma avaliação vinculado a ele');
end;
end;

procedure Tfrm_cadastrar_alunos.FormClose(Sender: TObject; var Action: TCloseAction);
begin
if cad='sim' then
begin
  if MessageDlg('Uma operação está sendo executada, gostaria de cancelar?', MtConfirmation, [Mbyes, MbNo],0)=mrYES then
  begin
    dtm.alunos.Cancel;
    Action:= caFree;
  end
  else
  Action:=caNone;

end;
end;


begin



end.
