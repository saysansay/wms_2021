object DM: TDM
  OldCreateOrder = False
  OnCreate = DataModuleCreate
  Height = 420
  Width = 817
  object dbCON: TUniConnection
    ProviderName = 'MySQL'
    Database = 'aiswms'
    Username = 'beacukai'
    Server = 'localhost'
    ConnectDialog = conDialogs
    LoginPrompt = False
    Left = 16
    Top = 16
    EncryptedPassword = '9DFF9AFF9EFF9CFF8AFF94FF9EFF96FF'
  end
  object mySQL: TMySQLUniProvider
    Left = 48
    Top = 16
  end
  object conDialogs: TUniConnectDialog
    DatabaseLabel = 'Database'
    PortLabel = 'Port'
    ProviderLabel = 'Provider'
    Caption = 'Connect'
    UsernameLabel = 'User Name'
    PasswordLabel = 'Password'
    ServerLabel = 'Server'
    ConnectButton = 'Connect'
    CancelButton = 'Cancel'
    Left = 80
    Top = 18
  end
end
