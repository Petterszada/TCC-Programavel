unit unt_procura_avaliacao;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.Grids, Vcl.DBGrids,
  Vcl.StdCtrls, Vcl.Buttons;

type
  Tfrm_procura_avaliacao = class(TForm)
    edt_busca_aluno: TEdit;
    DBGrid1: TDBGrid;
    btn_selecionar: TSpeedButton;
    procedure edt_busca_alunoKeyPress(Sender: TObject; var Key: Char);
    procedure btn_selecionarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frm_procura_avaliacao: Tfrm_procura_avaliacao;

implementation

{$R *.dfm}

uses unt_dtm, unt_avaliacao;

procedure Tfrm_procura_avaliacao.btn_selecionarClick(Sender: TObject);
begin
frm_avaliacao.edt_aluno.Text:=inttostr(dtm.busca_alunosid_aluno.value);
frm_procura_avaliacao.close;
end;

procedure Tfrm_procura_avaliacao.edt_busca_alunoKeyPress(Sender: TObject;
  var Key: Char);
begin
with dtm.busca_alunos do
begin
  close;
  ParamByName('aluno').value:='%'+ edt_busca_aluno.Text + '%';
  Open();


end;
end;

end.
