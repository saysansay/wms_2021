object frmWMS: TfrmWMS
  Left = 0
  Top = 0
  Caption = 'WMS'
  ClientHeight = 480
  ClientWidth = 640
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = True
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
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
    object dxRibbon1Tab1: TdxRibbonTab
      Active = True
      Caption = 'dxRibbon1Tab1'
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
      Top = 1
      Width = 183
      Height = 296
      Align = alClient
      Indent = 19
      TabOrder = 0
      ExplicitHeight = 320
    end
  end
  object cxSplitter1: TcxSplitter
    Left = 185
    Top = 159
    Width = 8
    Height = 298
    Control = Panel1
    ExplicitTop = 135
    ExplicitHeight = 322
  end
  object Panel2: TPanel
    Left = 193
    Top = 159
    Width = 447
    Height = 298
    Align = alClient
    Caption = 'Panel2'
    TabOrder = 4
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
  end
  object dxBarApplicationMenu1: TdxBarApplicationMenu
    BarManager = dxBarManager1
    Buttons = <>
    ExtraPane.Items = <>
    ItemLinks = <>
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
end
