unit unt_alunos;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs;

type
  Tfrm_alunos = class(TForm)
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
    DBEdit6: TDBEdit;
    ActionManager1: TActionManager;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btn_editarClick(Sender: TObject);
    procedure Label3Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frm_alunos: Tfrm_alunos;

implementation

{$R *.dfm}

uses unt_dtm;

procedure Tfrm_alunos.FormClose(Sender: TObject; var Action: TCloseAction);
begin
Action:=caFree;
end;

procedure Tfrm_alunos.Label3Click(Sender: TObject);
begin

end;

procedure Tfrm_alunos.btn_editarClick(Sender: TObject);
begin

end;

end.
