object dtm: Tdtm
  OldCreateOrder = False
  Height = 481
  Width = 821
  object conexao: TFDConnection
    Params.Strings = (
      'User_Name=root'
      'Password=root'
      'Database=studiovera'
      'DriverID=MySQL')
    Connected = True
    LoginPrompt = False
    Left = 16
    Top = 16
  end
  object FDPhysMySQLDriverLink1: TFDPhysMySQLDriverLink
    VendorLib = 'C:\Users\pette\Google Drive\TCC-Programavel\fontes\libmysql.dll'
    Left = 96
    Top = 16
  end
  object FDGUIxWaitCursor1: TFDGUIxWaitCursor
    Provider = 'Forms'
    Left = 168
    Top = 16
  end
  object servicos: TFDQuery
    Active = True
    BeforeInsert = servicosBeforeInsert
    BeforeEdit = servicosBeforeEdit
    BeforePost = servicosBeforePost
    AfterPost = servicosAfterPost
    AfterCancel = servicosAfterCancel
    Connection = conexao
    SQL.Strings = (
      'select * from servicos')
    Left = 16
    Top = 104
    object servicosid_servico: TFDAutoIncField
      FieldName = 'id_servico'
      Origin = 'id_servico'
      ProviderFlags = [pfInWhere, pfInKey]
      ReadOnly = True
    end
    object servicosplano_descricao: TStringField
      FieldName = 'plano_descricao'
      Origin = 'plano_descricao'
      Required = True
      Size = 45
    end
    object servicosvalor_servico: TBCDField
      FieldName = 'valor_servico'
      Origin = 'valor_servico'
      Required = True
      currency = True
      MaxValue = 999.990000000000000000
      MinValue = 1.000000000000000000
      Precision = 8
      Size = 2
    end
    object servicosobservacao: TStringField
      FieldName = 'observacao'
      Origin = 'observacao'
      Size = 45
    end
  end
  object ds_servicos: TDataSource
    DataSet = servicos
    Left = 16
    Top = 160
  end
  object alunos: TFDQuery
    Active = True
    BeforeInsert = alunosBeforeInsert
    BeforeEdit = alunosBeforeEdit
    BeforePost = alunosBeforePost
    AfterPost = alunosAfterPost
    AfterCancel = alunosAfterCancel
    Connection = conexao
    SQL.Strings = (
      'select * from aluno'
      '')
    Left = 96
    Top = 104
    object alunosid_aluno: TFDAutoIncField
      DisplayWidth = 10
      FieldName = 'id_aluno'
      Origin = 'id_aluno'
      ProviderFlags = [pfInWhere, pfInKey]
      ReadOnly = True
    end
    object alunosnome_aluno: TStringField
      DisplayWidth = 33
      FieldName = 'nome_aluno'
      Origin = 'nome_aluno'
      Required = True
      Size = 45
    end
    object alunossobrenome_aluno: TStringField
      DisplayWidth = 19
      FieldName = 'sobrenome_aluno'
      Origin = 'sobrenome_aluno'
      Required = True
      Size = 45
    end
    object alunosdata_nasc: TDateField
      DisplayWidth = 10
      FieldName = 'data_nasc'
      Origin = 'data_nasc'
      Required = True
      EditMask = '!99/99/0000;1;_'
    end
    object alunoscpf: TStringField
      DisplayWidth = 12
      FieldName = 'cpf'
      Origin = 'cpf'
      Required = True
      Size = 12
    end
    object alunosemail: TStringField
      DisplayWidth = 45
      FieldName = 'email'
      Origin = 'email'
      Required = True
      Size = 45
    end
    object alunossexo: TStringField
      DisplayWidth = 9
      FieldName = 'sexo'
      Origin = 'sexo'
      Required = True
      FixedChar = True
      Size = 9
    end
    object alunosprofissao: TStringField
      DisplayWidth = 45
      FieldName = 'profissao'
      Origin = 'profissao'
      Required = True
      Size = 45
    end
    object alunosservico: TIntegerField
      DisplayWidth = 10
      FieldName = 'servico'
      Origin = 'servico'
      Required = True
    end
  end
  object ds_alunos: TDataSource
    DataSet = alunos
    Left = 96
    Top = 160
  end
  object avaliacao: TFDQuery
    Active = True
    Connection = conexao
    UpdateOptions.AssignedValues = [uvEDelete, uvEInsert, uvEUpdate, uvUpdateMode]
    SQL.Strings = (
      'select * from avaliacao')
    Left = 176
    Top = 104
    object avaliacaoidavaliacao: TFDAutoIncField
      FieldName = 'idavaliacao'
      Origin = 'idavaliacao'
      ProviderFlags = [pfInWhere, pfInKey]
      ReadOnly = True
    end
    object avaliacaodata_avaliacao: TDateField
      FieldName = 'data_avaliacao'
      Origin = 'data_avaliacao'
      Required = True
    end
    object avaliacaoaluno: TIntegerField
      FieldName = 'aluno'
      Origin = 'aluno'
      Required = True
    end
    object avaliacaoqueixa: TMemoField
      FieldName = 'queixa'
      Origin = 'queixa'
      Required = True
      BlobType = ftMemo
    end
    object avaliacaohabitos: TMemoField
      FieldName = 'habitos'
      Origin = 'habitos'
      Required = True
      BlobType = ftMemo
    end
    object avaliacaodoenca: TMemoField
      FieldName = 'doenca'
      Origin = 'doenca'
      Required = True
      BlobType = ftMemo
    end
    object avaliacaoantecedentes: TMemoField
      FieldName = 'antecedentes'
      Origin = 'antecedentes'
      Required = True
      BlobType = ftMemo
    end
    object avaliacaotratamento: TMemoField
      FieldName = 'tratamento'
      Origin = 'tratamento'
      Required = True
      BlobType = ftMemo
    end
    object avaliacaodor_mov: TStringField
      FieldName = 'dor_mov'
      Origin = 'dor_mov'
      Required = True
      FixedChar = True
      Size = 3
    end
    object avaliacaocirurgias: TStringField
      FieldName = 'cirurgias'
      Origin = 'cirurgias'
      Required = True
      Size = 255
    end
    object avaliacaoposicoes: TMemoField
      FieldName = 'posicoes'
      Origin = 'posicoes'
      Required = True
      BlobType = ftMemo
    end
    object avaliacaoexer_ativi: TStringField
      FieldName = 'exer_ativi'
      Origin = 'exer_ativi'
      Required = True
      Size = 255
    end
    object avaliacaoobjetivos: TStringField
      FieldName = 'objetivos'
      Origin = 'objetivos'
      Required = True
      Size = 255
    end
    object avaliacaonew_aluno: TStringField
      FieldKind = fkLookup
      FieldName = 'new_aluno'
      LookupDataSet = alunos
      LookupKeyFields = 'id_aluno'
      LookupResultField = 'nome_aluno'
      KeyFields = 'aluno'
      Size = 50
      Lookup = True
    end
  end
  object ds_avaliacao: TDataSource
    DataSet = avaliacao
    Left = 176
    Top = 160
  end
  object busca_alunos: TFDQuery
    Active = True
    Connection = conexao
    SQL.Strings = (
      'SELECT * FROM aluno where nome_aluno like :aluno')
    Left = 256
    Top = 104
    ParamData = <
      item
        Name = 'ALUNO'
        DataType = ftString
        ParamType = ptInput
        Size = 100
        Value = Null
      end>
    object busca_alunosid_aluno: TFDAutoIncField
      FieldName = 'id_aluno'
      Origin = 'id_aluno'
      ProviderFlags = [pfInWhere, pfInKey]
      ReadOnly = True
    end
    object busca_alunosnome_aluno: TStringField
      FieldName = 'nome_aluno'
      Origin = 'nome_aluno'
      Required = True
      Size = 45
    end
    object busca_alunossobrenome_aluno: TStringField
      FieldName = 'sobrenome_aluno'
      Origin = 'sobrenome_aluno'
      Required = True
      Size = 45
    end
    object busca_alunosdata_nasc: TDateField
      FieldName = 'data_nasc'
      Origin = 'data_nasc'
      Required = True
    end
    object busca_alunoscpf: TStringField
      FieldName = 'cpf'
      Origin = 'cpf'
      Required = True
      Size = 12
    end
    object busca_alunosemail: TStringField
      FieldName = 'email'
      Origin = 'email'
      Required = True
      Size = 45
    end
    object busca_alunossexo: TStringField
      FieldName = 'sexo'
      Origin = 'sexo'
      Required = True
      FixedChar = True
      Size = 9
    end
    object busca_alunosprofissao: TStringField
      FieldName = 'profissao'
      Origin = 'profissao'
      Required = True
      Size = 45
    end
    object busca_alunosservico: TIntegerField
      FieldName = 'servico'
      Origin = 'servico'
      Required = True
    end
  end
  object ds_busca_alunos: TDataSource
    DataSet = busca_alunos
    Left = 256
    Top = 160
  end
  object consulta_alunos: TFDQuery
    Active = True
    Connection = conexao
    SQL.Strings = (
      'SELECT * FROM aluno where nome_aluno like :aluno')
    Left = 352
    Top = 104
    ParamData = <
      item
        Name = 'ALUNO'
        DataType = ftString
        ParamType = ptInput
        Size = 100
        Value = Null
      end>
  end
  object ds_consulta_alunos: TDataSource
    DataSet = consulta_alunos
    Left = 352
    Top = 160
  end
  object agendamentos: TFDQuery
    Active = True
    Connection = conexao
    SQL.Strings = (
      'Select * from agendamento')
    Left = 448
    Top = 104
    object agendamentosid_agendamento: TFDAutoIncField
      FieldName = 'id_agendamento'
      Origin = 'id_agendamento'
      ProviderFlags = [pfInWhere, pfInKey]
    end
    object agendamentoshora_data_agendamento: TDateTimeField
      FieldName = 'hora_data_agendamento'
      Origin = 'hora_data_agendamento'
      Required = True
    end
    object agendamentosagenda: TIntegerField
      FieldName = 'agenda'
      Origin = 'agenda'
      Required = True
    end
    object agendamentosaluno: TIntegerField
      FieldName = 'aluno'
      Origin = 'aluno'
      Required = True
    end
  end
  object ds_agendamentos: TDataSource
    DataSet = agendamentos
    Left = 448
    Top = 160
  end
end
