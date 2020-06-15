unit unt_avaliacao;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ComCtrls, Vcl.StdCtrls, Vcl.DBCtrls,
  Vcl.Mask, Vcl.Buttons, Data.DB, Vcl.Grids, Vcl.DBGrids, Vcl.DBActns,
  System.Actions, Vcl.ActnList, Vcl.PlatformDefaultStyleActnCtrls, Vcl.ActnMan;

type
  Tfrm_avaliacao = class(TForm)
    lbl_data: TLabel;
    lbl_aluno: TLabel;
    lbl_queixa: TLabel;
    mm_queixa: TDBMemo;
    Label4: TLabel;
    mm_habitos: TDBMemo;
    lbl_doenca: TLabel;
    mm_doenca: TDBMemo;
    lbl_antecedentes: TLabel;
    mm_antecedentes: TDBMemo;
    lbl_tratamento: TLabel;
    mm_tratamento: TDBMemo;
    lbl_dor_mov: TLabel;
    edt_dor_mov: TDBEdit;
    lbl_cirurgia: TLabel;
    edt_cirurgias: TDBEdit;
    lbl_posicoes: TLabel;
    mm_posicoes: TDBMemo;
    lbl_exer_ativ: TLabel;
    edt_exer_ativ: TDBEdit;
    lbl_objetivos: TLabel;
    edt_objetivo: TDBEdit;
    btn_calendario: TButton;
    calendario: TMonthCalendar;
    Escolher_aluno: TDBLookupComboBox;
    btn_cancelar: TSpeedButton;
    btn_editar: TSpeedButton;
    btn_inserir: TSpeedButton;
    btn_salvar: TSpeedButton;
    btn_deletar: TSpeedButton;
    ActionManager1: TActionManager;
    DatasetInsert1: TDataSetInsert;
    DatasetDelete1: TDataSetDelete;
    DatasetEdit1: TDataSetEdit;
    DatasetPost1: TDataSetPost;
    DatasetCancel1: TDataSetCancel;
    DBGrid1: TDBGrid;
    edt_selecione: TDBEdit;
    procedure btn_calendarioClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure calendarioClick(Sender: TObject);
    procedure btn_deletarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
      cad:string;
  end;

var
  frm_avaliacao: Tfrm_avaliacao;

implementation

{$R *.dfm}

uses unt_dtm;

procedure Tfrm_avaliacao.btn_calendarioClick(Sender: TObject);
begin
calendario.Visible:=true;
end;

procedure Tfrm_avaliacao.btn_deletarClick(Sender: TObject);
begin
if MessageDlg('Deseja mesmo Deletar a Avaliação ?', MtConfirmation, [Mbyes, MbNo],0)=mrYES then
  begin
    dtm.servicos.Delete;
  end;
end;

procedure Tfrm_avaliacao.calendarioClick(Sender: TObject);
begin
edt_selecione.Text:=datetostr(calendario.Date);
calendario.Visible:=false;
end;

procedure Tfrm_avaliacao.FormClose(Sender: TObject; var Action: TCloseAction);
begin
Action:=caFree;
end;

end.
