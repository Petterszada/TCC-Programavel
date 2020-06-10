unit unt_pagamento;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs;

type
  Tfrm_pagamentos = class(TForm)
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frm_pagamentos: Tfrm_pagamentos;

implementation

{$R *.dfm}

procedure Tfrm_pagamentos.FormClose(Sender: TObject; var Action: TCloseAction);
begin
Action:=caFree;
end;

end.
