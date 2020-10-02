object DataModule1: TDataModule1
  OldCreateOrder = False
  Height = 420
  Width = 817
  object dbCON: TUniConnection
    ProviderName = 'MySQL'
    Database = 'aiswms'
    Username = 'beacukai'
    Server = 'localhost'
    LoginPrompt = False
    Left = 160
    Top = 120
    EncryptedPassword = '9DFF9AFF9EFF9CFF8AFF94FF9EFF96FF'
  end
  object mySQL: TMySQLUniProvider
    Left = 200
    Top = 120
  end
end
