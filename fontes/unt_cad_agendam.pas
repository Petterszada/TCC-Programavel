unit unt_cad_agendam;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs;

type
  Tfrm_agendam = class(TForm)
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frm_agendam: Tfrm_agendam;

implementation

{$R *.dfm}

procedure Tfrm_agendam.FormClose(Sender: TObject; var Action: TCloseAction);
begin
Action:=caFree;
end;

end.
