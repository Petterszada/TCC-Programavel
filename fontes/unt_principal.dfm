﻿object frm_principal: Tfrm_principal
  Left = 0
  Top = 0
  Caption = 'Home'
  ClientHeight = 644
  ClientWidth = 758
  Color = clBtnHighlight
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  PixelsPerInch = 96
  TextHeight = 13
  object pnp_fundo: TPanel
    Left = 0
    Top = 41
    Width = 225
    Height = 603
    Align = alLeft
    BevelOuter = bvNone
    Color = 7841023
    ParentBackground = False
    TabOrder = 0
    object pnp_consultar: TPanel
      Left = 0
      Top = 0
      Width = 225
      Height = 43
      Align = alTop
      BevelOuter = bvNone
      Caption = 'Consultas'
      Color = 10797567
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -19
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentBackground = False
      ParentFont = False
      TabOrder = 0
    end
    object pnp_alunos: TPanel
      Left = 16
      Top = 53
      Width = 193
      Height = 44
      Cursor = crHandPoint
      BevelOuter = bvNone
      Caption = 'Alunos'
      Color = 10797567
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentBackground = False
      ParentFont = False
      TabOrder = 1
      OnClick = pnp_alunosClick
    end
    object pnp_agendamentos: TPanel
      Left = 16
      Top = 107
      Width = 193
      Height = 44
      Cursor = crHandPoint
      BevelOuter = bvNone
      Caption = 'Agendamentos'
      Color = 10797567
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentBackground = False
      ParentFont = False
      TabOrder = 2
    end
    object pnp_serviços: TPanel
      Left = 16
      Top = 377
      Width = 193
      Height = 44
      Cursor = crHandPoint
      BevelOuter = bvNone
      Caption = 'Servi'#231'os'
      Color = 10797567
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentBackground = False
      ParentFont = False
      TabOrder = 3
      OnClick = pnp_serviçosClick
    end
    object pnp_cadastros: TPanel
      Left = 0
      Top = 217
      Width = 225
      Height = 43
      BevelOuter = bvNone
      Caption = 'Cadastros'
      Color = 10797567
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -19
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentBackground = False
      ParentFont = False
      TabOrder = 4
    end
    object pnp_cadastro_agendamentos: TPanel
      Left = 16
      Top = 323
      Width = 193
      Height = 44
      Cursor = crHandPoint
      BevelOuter = bvNone
      Caption = 'Agendamentos'
      Color = 10797567
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentBackground = False
      ParentFont = False
      TabOrder = 5
    end
    object pnp_cadastrar_alunos: TPanel
      Left = 16
      Top = 270
      Width = 193
      Height = 44
      Cursor = crHandPoint
      BevelOuter = bvNone
      Caption = 'Alunos'
      Color = 10797567
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentBackground = False
      ParentFont = False
      TabOrder = 6
      OnClick = pnp_cadastrar_alunosClick
    end
    object pnp_logout: TPanel
      Left = 16
      Top = 528
      Width = 193
      Height = 41
      Cursor = crHandPoint
      BevelOuter = bvNone
      Caption = 'Logout'
      Color = 10797567
      DragCursor = crDefault
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentBackground = False
      ParentFont = False
      TabOrder = 7
      OnClick = pnp_logoutClick
    end
    object pnp_avaliação: TPanel
      Left = 16
      Top = 430
      Width = 193
      Height = 43
      Cursor = crHandPoint
      BevelOuter = bvNone
      Caption = 'Avalia'#231#227'o'
      Color = 10797567
      DragCursor = crHandPoint
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentBackground = False
      ParentFont = False
      TabOrder = 8
      OnClick = pnp_avaliaçãoClick
    end
  end
  object pnp_titulo: TPanel
    Left = 0
    Top = 0
    Width = 758
    Height = 41
    Align = alTop
    BevelOuter = bvNone
    Caption = 'Studio Vera Odpp'#237's'
    Color = 7841023
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -24
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentBackground = False
    ParentFont = False
    TabOrder = 1
  end
end
