unit unt_cad_agendam;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Mask, Vcl.DBCtrls,
  Vcl.Buttons, Vcl.DBActns, System.Actions, Vcl.ActnList,
  Vcl.PlatformDefaultStyleActnCtrls, Vcl.ActnMan, Data.DB, Vcl.Grids,
  Vcl.DBGrids;

type
  Tfrm_cadastrar_agendamentos = class(TForm)
    Label2: TLabel;
    DBEdit2: TDBEdit;
    Label3: TLabel;
    DBEdit3: TDBEdit;
    Label4: TLabel;
    procura_agendamento: TEdit;
    ActionManager1: TActionManager;
    DatasetInsert1: TDataSetInsert;
    DatasetDelete1: TDataSetDelete;
    DatasetEdit1: TDataSetEdit;
    DatasetPost1: TDataSetPost;
    DatasetCancel1: TDataSetCancel;
    SpeedButton1: TSpeedButton;
    SpeedButton2: TSpeedButton;
    SpeedButton3: TSpeedButton;
    SpeedButton4: TSpeedButton;
    SpeedButton5: TSpeedButton;
    DBGrid1: TDBGrid;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frm_cadastrar_agendamentos: Tfrm_cadastrar_agendamentos;

implementation

{$R *.dfm}

uses unt_aluno, unt_avaliacao, unt_cadastrar_alunos, unt_dtm, unt_login,
  unt_pagamento, unt_principal, unt_procura_avaliacao, unt_servico;

procedure Tfrm_cadastrar_agendamentos.FormClose(Sender: TObject; var Action: TCloseAction);
begin
Action:=caFree;
end;

end.
