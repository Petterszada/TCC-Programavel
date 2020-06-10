object frm_alunos: Tfrm_alunos
  Left = 0
  Top = 0
  Caption = 'Alunos'
  ClientHeight = 430
  ClientWidth = 785
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  OnClose = FormClose
  PixelsPerInch = 96
  TextHeight = 13
  object btn_inserir: TSpeedButton
    Left = 96
    Top = 312
    Width = 169
    Height = 38
    Caption = 'Inserir'
  end
  object btn_editar: TSpeedButton
    Left = 293
    Top = 312
    Width = 169
    Height = 38
    Caption = 'Editar'
    OnClick = btn_editarClick
  end
  object btn_deletar: TSpeedButton
    Left = 488
    Top = 312
    Width = 169
    Height = 38
    Caption = 'Deletar'
  end
  object btn_salvar: TSpeedButton
    Left = 184
    Top = 376
    Width = 169
    Height = 38
    Caption = 'Salvar'
  end
  object btn_cancelar: TSpeedButton
    Left = 392
    Top = 376
    Width = 169
    Height = 38
    Caption = 'Cancelar'
  end
  object Label1: TLabel
    Left = 136
    Top = 56
    Width = 27
    Height = 13
    Caption = 'Nome'
    FocusControl = DBEdit1
  end
  object Label2: TLabel
    Left = 392
    Top = 56
    Width = 54
    Height = 13
    Caption = 'Sobrenome'
    FocusControl = DBEdit2
  end
  object Label3: TLabel
    Left = 136
    Top = 104
    Width = 55
    Height = 13
    Caption = 'Nascimento'
    FocusControl = DBEdit3
    OnClick = Label3Click
  end
  object Label4: TLabel
    Left = 392
    Top = 107
    Width = 19
    Height = 13
    Caption = 'CPF'
    FocusControl = DBEdit4
  end
  object Label5: TLabel
    Left = 136
    Top = 160
    Width = 44
    Height = 13
    Caption = 'Profiss'#227'o'
    FocusControl = DBEdit5
  end
  object Label6: TLabel
    Left = 392
    Top = 163
    Width = 35
    Height = 13
    Caption = 'Servi'#231'o'
    FocusControl = DBEdit6
  end
  object DBEdit1: TDBEdit
    Left = 136
    Top = 72
    Width = 217
    Height = 21
    DataField = 'nome_aluno'
    DataSource = dtm.ds_alunos
    TabOrder = 0
  end
  object DBEdit2: TDBEdit
    Left = 392
    Top = 72
    Width = 217
    Height = 21
    DataField = 'sobrenome_aluno'
    DataSource = dtm.ds_alunos
    TabOrder = 1
  end
  object DBEdit3: TDBEdit
    Left = 136
    Top = 123
    Width = 217
    Height = 21
    DataField = 'data_nasc'
    DataSource = dtm.ds_alunos
    TabOrder = 2
  end
  object DBEdit4: TDBEdit
    Left = 392
    Top = 123
    Width = 217
    Height = 21
    DataField = 'cpf'
    DataSource = dtm.ds_alunos
    TabOrder = 3
  end
  object DBEdit5: TDBEdit
    Left = 136
    Top = 179
    Width = 217
    Height = 21
    DataField = 'profissao'
    DataSource = dtm.ds_alunos
    TabOrder = 4
  end
  object DBEdit6: TDBEdit
    Left = 392
    Top = 179
    Width = 217
    Height = 21
    DataField = 'servico'
    DataSource = dtm.ds_alunos
    TabOrder = 5
  end
  object ActionManager1: TActionManager
    Left = 688
    Top = 56
    StyleName = 'Platform Default'
  end
end
