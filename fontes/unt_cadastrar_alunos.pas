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
    procedure DBEdit4Exit(Sender: TObject);
    procedure DBEdit4Enter(Sender: TObject);
    Function formacpf(numtexto:String):String;

  private
    { Private declarations }
    function cpf(num: string): boolean;
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

begin
  if MessageDlg('Quer mesmo deletar o Aluno?', MtConfirmation,[Mbyes, MbNo],0) =mrYes then
  begin
    dtm.alunos.Delete;
    end
    else

end;
end;

function Tfrm_cadastrar_alunos.cpf(num: string): boolean;
var
n1,n2,n3,n4,n5,n6,n7,n8,n9,n10,n11,n12: integer;
   d1,d2: integer;
   digitado, calculado: string;
begin
   n1:=StrToInt(num[1]);
   n2:=StrToInt(num[2]);
   n3:=StrToInt(num[3]);
   n4:=StrToInt(num[4]);
   n5:=StrToInt(num[5]);
   n6:=StrToInt(num[6]);
   n7:=StrToInt(num[7]);
   n8:=StrToInt(num[8]);
   n9:=StrToInt(num[9]);
   d1:=n9*2+n8*3+n7*4+n6*5+n5*6+n4*7+n3*8+n2*9+n1*10;
   d1:=11-(d1 mod 11);
   if d1>=10 then d1:=0;
     d2:=d1*2+n9*3+n8*4+n7*5+n6*6+n5*7+n4*8+n3*9+n2*10+n1*11;
     d2:=11-(d2 mod 11);
   if d2>=10 then d2:=0;
     calculado:=inttostr(d1)+inttostr(d2);
     digitado:=num[10]+num[11];
   if calculado=digitado then
     cpf:=true
   else
     cpf:=false;


end;


procedure Tfrm_cadastrar_alunos.DBEdit4Enter(Sender: TObject);
var

    I: integer;

    S, Texto: string;

begin

    S := '';

    Texto := DBEdit4.Text;

    for I := 1 to Length(Texto) do

    begin

        if (Texto[I] in ['0'..'9']) then

        begin

            S := S + Copy(Texto, I, 1);

        end;

    end;

    DBEdit4.Text := S;

end;


procedure Tfrm_cadastrar_alunos.DBEdit4Exit(Sender: TObject);
var
FormatarCPF:String;
begin
    DBEdit4.Text:=formacpf(DBEdit4.Text);

end;


function Tfrm_cadastrar_alunos.formacpf(numtexto: String): String;

begin
    Delete(numtexto,ansipos('.',numtexto),1);  //Remove ponto .
    Delete(numtexto,ansipos('.',numtexto),1);
    Delete(numtexto,ansipos('-',numtexto),1); //Remove traço -
    Delete(numtexto,ansipos('/',numtexto),1); //Remove barra /
    Result:=FormatmaskText('000.000.000-00;0;',numtexto); // Formata os numero
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
