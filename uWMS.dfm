object frmWMS: TfrmWMS
  Left = 0
  Top = 0
  Caption = 'WMS'
  ClientHeight = 480
  ClientWidth = 640
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Tahoma'
  Font.Style = []
  FormStyle = fsMDIForm
  OldCreateOrder = True
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 14
  object dxRibbon1: TdxRibbon
    Left = 0
    Top = 0
    Width = 640
    Height = 159
    ApplicationButton.Menu = dxBarApplicationMenu1
    BarManager = dxBarManager1
    CapitalizeTabCaptions = bDefault
    ColorSchemeName = 'Blue'
    QuickAccessToolbar.Toolbar = dxBarManager1Bar1
    SupportNonClientDrawing = True
    Contexts = <>
    TabOrder = 0
    TabStop = False
    ExplicitLeft = -2
    ExplicitTop = 1
    ExplicitWidth = 634
    object dxRibbon1Tab1: TdxRibbonTab
      Active = True
      Caption = 'Home'
      Groups = <>
      Index = 0
    end
  end
  object dxRibbonStatusBar1: TdxRibbonStatusBar
    Left = 0
    Top = 457
    Width = 640
    Height = 23
    Panels = <>
    Ribbon = dxRibbon1
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clDefault
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
  end
  object Panel1: TPanel
    Left = 0
    Top = 159
    Width = 185
    Height = 298
    Align = alLeft
    Caption = 'Panel1'
    TabOrder = 2
    ExplicitTop = 135
    ExplicitHeight = 322
    object TreeView1: TTreeView
      Left = 1
      Top = 23
      Width = 183
      Height = 274
      Align = alClient
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = []
      Images = imglist
      Indent = 10
      ParentFont = False
      ShowButtons = False
      ShowRoot = False
      TabOrder = 0
      ExplicitLeft = -4
      ExplicitTop = 18
    end
    object edNode: TEdit
      Left = 1
      Top = 1
      Width = 183
      Height = 22
      Align = alTop
      TabOrder = 1
      OnKeyDown = edNodeKeyDown
      ExplicitLeft = 64
      ExplicitTop = 276
      ExplicitWidth = 121
    end
  end
  object cxSplitter1: TcxSplitter
    Left = 185
    Top = 159
    Width = 8
    Height = 298
    HotZoneClassName = 'TcxSimpleStyle'
    Control = Panel1
    ExplicitTop = 135
    ExplicitHeight = 322
  end
  object dxBarManager1: TdxBarManager
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Segoe UI'
    Font.Style = []
    Categories.Strings = (
      'Default')
    Categories.ItemsVisibles = (
      2)
    Categories.Visibles = (
      True)
    PopupMenuLinks = <>
    UseSystemFont = True
    Left = 568
    Top = 8
    PixelsPerInch = 96
    object dxBarManager1Bar1: TdxBar
      Caption = 'Quick Access Toolbar'
      CaptionButtons = <>
      DockedLeft = 0
      DockedTop = 0
      FloatLeft = 0
      FloatTop = 0
      FloatClientWidth = 0
      FloatClientHeight = 0
      ItemLinks = <>
      OneOnRow = True
      Row = 0
      UseOwnFont = False
      Visible = True
      WholeRow = False
    end
    object mnFile: TdxBarButton
      Caption = 'File'
      Category = 0
      Hint = 'File'
      Visible = ivAlways
    end
    object mnExit: TdxBarButton
      Caption = 'Exit'
      Category = 0
      Hint = 'Exit'
      Visible = ivAlways
      OnClick = mnExitClick
    end
  end
  object dxBarApplicationMenu1: TdxBarApplicationMenu
    BarManager = dxBarManager1
    Buttons = <>
    ExtraPane.AllowPinItems = False
    ExtraPane.Items = <
      item
        DisplayText = 'Nungguin ya'
      end>
    ExtraPane.Size = 1
    ExtraPane.Visible = False
    ItemLinks = <
      item
        Visible = True
        ItemName = 'mnFile'
      end
      item
        BeginGroup = True
        Visible = True
        ItemName = 'mnExit'
      end>
    UseOwnFont = False
    Left = 536
    Top = 8
    PixelsPerInch = 96
  end
  object qryMenu: TUniQuery
    Connection = DataModule1.dbCON
    Left = 312
    Top = 248
  end
  object MDIMAIN: TdxTabbedMDIManager
    Active = True
    TabProperties.CustomButtons.Buttons = <>
    Left = 288
    Top = 288
    PixelsPerInch = 96
  end
  object imglist: TcxImageList
    SourceDPI = 96
    FormatVersion = 1
    DesignInfo = 14680320
    ImageInfo = <
      item
        Image.Data = {
          36040000424D3604000000000000360000002800000010000000100000000100
          2000000000000004000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000090000
          000E000000100000001000000010000000100000001000000011000000110000
          001100000011000000100000000B00000003000000000000000019427ACA245A
          A5FF255CA7FF255BA7FF245AA6FF2459A6FF2358A5FF2358A4FF2356A4FF2256
          A4FF2255A3FF2154A3FF2153A1FF1C468AE303080F2900000002255DA5FF316B
          AEFF6DA6D5FF86CAF0FF46A6E4FF44A3E4FF41A1E3FF3FA0E2FF3C9EE2FF3B9C
          E1FF389BE0FF369AE0FF3498DFFF2C77C1FF10284D8B000000082B68AEFF4984
          BEFF4B8BC5FFB2E3F8FF68BBECFF55B0E8FF52AEE8FF4EACE7FF4CA9E6FF49A8
          E5FF47A6E4FF44A4E4FF41A2E3FF3A92D6FF1C4885D50000000D2F6FB4FF6CA7
          D2FF3F87C4FFAED9F0FF9AD8F5FF66BDEEFF63BBEDFF60B9EBFF5DB6EBFF5BB5
          EAFF57B2EAFF55B0E9FF51AEE7FF4FABE7FF2D69B1FF040B142F3276B9FF8FC7
          E6FF509FD4FF86BCE0FFC5EFFCFF78CAF2FF74C8F1FF72C5F0FF6FC4F0FF6DC2
          EFFF69C0EEFF66BDEEFF63BBEDFF60B9EBFF448BC9FF122D4D81357CBCFFAFE3
          F5FF75C8EDFF59A2D4FFDDF7FDFFDFF8FEFFDDF7FEFFDBF7FEFFD8F5FEFFD4F4
          FDFFD0F2FDFFCCEFFCFFC7EDFBFFC1EBFBFF9ACBE9FF215187CB3882C1FFC7F5
          FEFF97E5FCFF64BAE5FF4D9FD3FF4D9DD2FF4B9BD1FF4A99CFFF4998CFFF4896
          CEFF4694CCFF4592CBFF3073B7FF3072B6FF2F71B5FF2A65A4EA3A88C5FFCDF7
          FEFFA6ECFEFF9CE8FDFF93E4FBFF8EE1FBFF89DFFBFF86DEFAFF81DAFAFF7ED8
          F9FF7BD7F9FF79D6F9FF2A6BB0FF000000140000000A000000073D8EC8FFD0F8
          FEFFAEF0FEFFAAEEFEFFA6EDFEFFA5EBFDFFBBF2FDFFD4F9FEFFD5F9FEFFD3F8
          FEFFD1F8FEFFCEF7FDFF3680BFFF0000000800000000000000003F92CBFFD3F9
          FEFFB6F3FEFFB3F1FDFFB0F1FEFFB8EDFAFF4895CBFF3B8CC6FF3B8AC6FF3A89
          C5FF3A88C5FF3A87C3FF2A6391C20000000500000000000000004197CEFFE2FC
          FEFFE2FCFEFFE1FCFEFFD4F3FAFF458FBFEC040A0E1B00000006000000060000
          000600000006000000060000000400000001000000000000000031739ABF429A
          D0FF4299D0FF4299D0FF4297CFFF153244590000000200000000000000000000
          0000000000000000000000000000000000000000000000000000000000020000
          0003000000030000000400000003000000020000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000}
      end>
  end
end
