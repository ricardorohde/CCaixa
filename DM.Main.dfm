object DTM: TDTM
  OldCreateOrder = False
  OnCreate = DataModuleCreate
  OnDestroy = DataModuleDestroy
  Height = 319
  Width = 407
  object Conn: TFDConnection
    Params.Strings = (
      'Database=C:\Users\alex\Documents\CCaixa\DB\DADOS.db'
      'DriverID=SQLite')
    LoginPrompt = False
    Left = 128
    Top = 32
  end
  object FDQuery1: TFDQuery
    Connection = Conn
    Left = 192
    Top = 32
  end
end
