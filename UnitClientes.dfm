object DMClientes: TDMClientes
  OldCreateOrder = False
  Height = 349
  Width = 509
  object Conexao: TFDConnection
    Params.Strings = (
      'Database=aula'
      'User_Name=root'
      'Server=localhost'
      'DriverID=MySQL')
    Connected = True
    LoginPrompt = False
    Left = 72
    Top = 72
  end
  object sqlConsulta: TFDQuery
    Active = True
    Connection = Conexao
    SQL.Strings = (
      'SELECT * FROM clientes')
    Left = 328
    Top = 72
    ParamData = <
      item
        Name = 'pConsulta'
      end>
  end
  object dsConsulta: TDataSource
    DataSet = sqlConsulta
    Left = 336
    Top = 192
  end
end
