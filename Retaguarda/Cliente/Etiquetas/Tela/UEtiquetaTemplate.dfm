inherited FEtiquetaTemplate: TFEtiquetaTemplate
  Tag = 1
  Left = 368
  Top = 180
  Caption = 'Template'
  ClientHeight = 506
  ClientWidth = 863
  ExplicitWidth = 879
  ExplicitHeight = 545
  PixelsPerInch = 96
  TextHeight = 13
  inherited PageControl: TPageControl
    Width = 863
    Height = 475
    ActivePage = PaginaEdits
    ExplicitWidth = 863
    ExplicitHeight = 475
    inherited PaginaGrid: TTabSheet
      ExplicitWidth = 855
      ExplicitHeight = 447
      inherited PanelGrid: TPanel
        Width = 855
        Height = 447
        ExplicitWidth = 855
        ExplicitHeight = 447
        inherited Grid: TJvDBUltimGrid
          Width = 855
          Height = 395
        end
        inherited PanelFiltroRapido: TPanel
          Top = 395
          Width = 855
          ExplicitTop = 395
          ExplicitWidth = 855
          inherited BotaoConsultar: TSpeedButton
            Left = 723
            ExplicitLeft = 879
          end
          inherited EditCriterioRapido: TLabeledMaskEdit
            Width = 554
            ExplicitWidth = 554
          end
        end
      end
    end
    inherited PaginaEdits: TTabSheet
      ExplicitLeft = 4
      ExplicitTop = 24
      ExplicitWidth = 855
      ExplicitHeight = 447
      inherited PanelEdits: TPanel
        Width = 855
        Height = 447
        ExplicitWidth = 855
        ExplicitHeight = 447
        object EditIdLayout: TLabeledCalcEdit
          Left = 19
          Top = 64
          Width = 61
          Height = 21
          ShowButton = False
          TabOrder = 0
          DecimalPlacesAlwaysShown = False
          OnKeyUp = EditIdLayoutKeyUp
          CalcEditLabel.Width = 60
          CalcEditLabel.Height = 13
          CalcEditLabel.Caption = 'Layout [F1]:'
        end
        object EditLayout: TLabeledEdit
          Left = 82
          Top = 64
          Width = 752
          Height = 21
          Anchors = [akLeft, akTop, akRight]
          Color = clInfoBk
          EditLabel.Width = 6
          EditLabel.Height = 13
          EditLabel.Caption = '  '
          ReadOnly = True
          TabOrder = 1
        end
        object EditTabela: TLabeledEdit
          Left = 19
          Top = 109
          Width = 814
          Height = 21
          Anchors = [akLeft, akTop, akRight]
          EditLabel.Width = 36
          EditLabel.Height = 13
          EditLabel.Caption = 'Tabela:'
          TabOrder = 2
        end
        object EditQuantidadeRepeticoes: TLabeledCalcEdit
          Left = 175
          Top = 192
          Width = 150
          Height = 21
          ShowButton = False
          TabOrder = 3
          DecimalPlacesAlwaysShown = False
          CalcEditLabel.Width = 116
          CalcEditLabel.Height = 13
          CalcEditLabel.Caption = 'Quantidade Repeti'#231#245'es:'
        end
        object EditCampo: TLabeledEdit
          Left = 20
          Top = 149
          Width = 814
          Height = 21
          Anchors = [akLeft, akTop, akRight]
          EditLabel.Width = 37
          EditLabel.Height = 13
          EditLabel.Caption = 'Campo:'
          TabOrder = 4
        end
        object EditFiltro: TLabeledEdit
          Left = 19
          Top = 233
          Width = 814
          Height = 21
          Anchors = [akLeft, akTop, akRight]
          EditLabel.Width = 28
          EditLabel.Height = 13
          EditLabel.Caption = 'Filtro:'
          TabOrder = 5
        end
        object ComboBoxFormato: TLabeledComboBox
          Left = 20
          Top = 192
          Width = 149
          Height = 21
          Style = csDropDownList
          ItemIndex = 0
          TabOrder = 6
          Text = '0=EAN'
          Items.Strings = (
            '0=EAN'
            '1=QR Code')
          ComboBoxLabel.Width = 44
          ComboBoxLabel.Height = 13
          ComboBoxLabel.Caption = 'Formato:'
        end
        object ActionToolBar1: TActionToolBar
          Left = 4
          Top = 4
          Width = 847
          Height = 26
          ActionManager = ActionManager1
          Caption = 'ActionToolBar1'
          Color = clMenuBar
          ColorMap.DisabledFontColor = 7171437
          ColorMap.HighlightColor = clWhite
          ColorMap.BtnSelectedFont = clBlack
          ColorMap.UnusedColor = clWhite
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          Orientation = boRightToLeft
          ParentFont = False
          Spacing = 0
        end
      end
    end
  end
  inherited PanelToolBar: TPanel
    Width = 863
    ExplicitWidth = 863
    inherited BotaoSair: TSpeedButton
      Left = 759
      ExplicitLeft = 759
    end
    inherited BotaoExportar: TSpeedButton
      Left = 659
      ExplicitLeft = 815
    end
    inherited BotaoImprimir: TSpeedButton
      Left = 559
      ExplicitLeft = 715
    end
    inherited BotaoSeparador1: TSpeedButton
      Left = 449
      ExplicitLeft = 605
    end
    inherited BotaoFiltrar: TSpeedButton
      Left = 459
      ExplicitLeft = 615
    end
  end
  object frxReport: TfrxReport
    Version = '4.13.2'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Padr'#227'o'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 40359.374406643500000000
    ReportOptions.LastChange = 42819.507994745370000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'procedure MasterData1OnBeforePrint(Sender: TfrxComponent);'
      'begin'
      '  BarCode2.Visible := <frxTable."CODBARRAS"> <> '#39#39';'
      'end;'
      ''
      'begin'
      ''
      'end.')
    OnStartReport = 'frxReportOnStartReport'
    OnReportPrint = 'frxReportOnReportPrint'
    Left = 448
    Top = 204
    Datasets = <
      item
        DataSet = frxTable
        DataSetName = 'frxTable'
      end>
    Variables = <>
    Style = <>
    object Data: TfrxDataPage
      Height = 1000.000000000000000000
      Width = 1000.000000000000000000
    end
    object Page1: TfrxReportPage
      PaperWidth = 210.000000000000000000
      PaperHeight = 297.000000000000000000
      PaperSize = 9
      LeftMargin = 7.000000000000000000
      TopMargin = 13.000000000000000000
      Columns = 1
      ColumnWidth = 190.000000000000000000
      ColumnPositions.Strings = (
        '0')
      object mdEtiquetas: TfrxMasterData
        Height = 65.007874020000000000
        Restrictions = [rfDontModify]
        Top = 18.897650000000000000
        Width = 767.244590000000000000
        OnBeforePrint = 'MasterData1OnBeforePrint'
        Columns = 6
        ColumnWidth = 113.763779527559000000
        ColumnGap = 11.338582677165400000
        DataSet = frxTable
        DataSetName = 'frxTable'
        RowCount = 0
        object Memo1: TfrxMemoView
          Width = 113.385900000000000000
          Height = 64.252010000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object mmDescricaoProdutos: TfrxMemoView
          Top = 37.711268460000000000
          Width = 113.385826770000000000
          Height = 27.296605560000000000
          ShowHint = False
          DataSet = frxTable
          DataSetName = 'frxTable'
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%2.2m'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8W = (
            '[Copy(<frxTable."DESCRICAO">, 1, 30)]')
          ParentFont = False
        end
        object BarCode2: TfrxBarCodeView
          Left = 8.795300000000000000
          Top = 1.779530000000000000
          Width = 103.000000000000000000
          Height = 37.795300000000000000
          ShowHint = False
          BarType = bcCodeEAN13
          DataField = 'GTIN'
          DataSet = frxTable
          DataSetName = 'frxTable'
          HAlign = haCenter
          Rotation = 0
          Text = '12345678'
          WideBarRatio = 2.000000000000000000
          Zoom = 1.000000000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
        end
      end
    end
  end
  object frxTable: TfrxDBDataset
    UserName = 'frxTable'
    CloseDataSource = False
    BCDToCurrency = False
    Left = 510
    Top = 204
  end
  object frxBarCodeObject1: TfrxBarCodeObject
    Left = 592
    Top = 205
  end
  object ActionManager1: TActionManager
    ActionBars = <
      item
        Items = <
          item
            Action = ActionGerarEtiquetas
            Caption = '&Gerar Etiquetas'
            ImageIndex = 4
          end>
        ActionBar = ActionToolBar1
      end>
    Images = FDataModule.ImagensCadastros
    Left = 684
    Top = 327
    StyleName = 'Platform Default'
    object ActionGerarEtiquetas: TAction
      Caption = 'Gerar Etiquetas'
      ImageIndex = 4
      OnExecute = ActionGerarEtiquetasExecute
    end
  end
  object CDSProduto: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 348
    Top = 255
  end
end
