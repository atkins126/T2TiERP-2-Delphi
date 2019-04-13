inherited FInventarioContagem: TFInventarioContagem
  Tag = 1
  Left = 309
  Top = 216
  Caption = 'Contagem'
  ClientWidth = 930
  ExplicitWidth = 946
  ExplicitHeight = 505
  PixelsPerInch = 96
  TextHeight = 13
  inherited PageControl: TPageControl
    Width = 930
    ActivePage = PaginaEdits
    ExplicitWidth = 930
    inherited PaginaGrid: TTabSheet
      ExplicitLeft = 4
      ExplicitTop = 24
      ExplicitWidth = 922
      ExplicitHeight = 407
      inherited PanelGrid: TPanel
        Width = 922
        ExplicitWidth = 922
        inherited Grid: TJvDBUltimGrid
          Width = 922
        end
        inherited PanelFiltroRapido: TPanel
          Width = 922
          ExplicitWidth = 922
          inherited BotaoConsultar: TSpeedButton
            Left = 790
            ExplicitLeft = 790
          end
          inherited EditCriterioRapido: TLabeledMaskEdit
            Width = 621
            ExplicitWidth = 621
          end
        end
      end
    end
    inherited PaginaEdits: TTabSheet
      ExplicitLeft = 4
      ExplicitTop = 24
      ExplicitWidth = 922
      ExplicitHeight = 407
      inherited PanelEdits: TPanel
        Width = 922
        ExplicitWidth = 922
        object BevelEdits: TBevel
          Left = 10
          Top = 43
          Width = 900
          Height = 54
          Anchors = [akLeft, akTop, akRight]
          Constraints.MinWidth = 753
        end
        object GroupBoxParcelas: TGroupBox
          Left = 10
          Top = 103
          Width = 900
          Height = 274
          Anchors = [akLeft, akTop, akRight, akBottom]
          Caption = 'Itens'
          TabOrder = 0
          object GridItens: TJvDBUltimGrid
            Left = 2
            Top = 15
            Width = 896
            Height = 257
            Align = alClient
            DataSource = DSInventarioContagemDetalhe
            TabOrder = 0
            TitleFont.Charset = DEFAULT_CHARSET
            TitleFont.Color = clWindowText
            TitleFont.Height = -11
            TitleFont.Name = 'Tahoma'
            TitleFont.Style = []
            TitleButtons = True
            AlternateRowColor = 15593713
            TitleArrow = True
            SelectColumnsDialogStrings.Caption = 'Select columns'
            SelectColumnsDialogStrings.OK = '&OK'
            SelectColumnsDialogStrings.NoSelectionWarning = 'At least one column must be visible!'
            CanDelete = False
            EditControls = <>
            RowsHeight = 17
            TitleRowHeight = 17
            SortWith = swFields
          end
        end
        object EditDataContagem: TLabeledDateEdit
          Left = 20
          Top = 66
          Width = 121
          Height = 21
          ShowNullDate = False
          TabOrder = 1
          DateEditLabel.Width = 79
          DateEditLabel.Height = 13
          DateEditLabel.Caption = 'Data Contagem:'
        end
        object ActionToolBarEdits: TActionToolBar
          AlignWithMargins = True
          Left = 7
          Top = 7
          Width = 908
          Height = 26
          ActionManager = ActionManager
          BiDiMode = bdRightToLeft
          Caption = 'ActionToolBarEdits'
          ColorMap.MenuColor = clMenu
          ColorMap.BtnSelectedColor = clBtnFace
          ColorMap.UnusedColor = clWhite
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          Orientation = boRightToLeft
          ParentBiDiMode = False
          ParentFont = False
          Spacing = 0
        end
        object CheckBoxAtualizaEstoque: TCheckBox
          Left = 298
          Top = 68
          Width = 144
          Height = 17
          Caption = 'Atualizar Estoque'
          TabOrder = 3
        end
        object ComboBoxTipo: TLabeledComboBox
          Left = 147
          Top = 66
          Width = 145
          Height = 21
          Style = csDropDownList
          ItemIndex = 0
          TabOrder = 4
          Text = 'Geral'
          Items.Strings = (
            'Geral'
            'Din'#226'mico'
            'Rotativo'
            'Amostragem')
          ComboBoxLabel.Width = 24
          ComboBoxLabel.Height = 13
          ComboBoxLabel.Caption = 'Tipo:'
        end
      end
    end
  end
  inherited PanelToolBar: TPanel
    Width = 930
    ExplicitWidth = 930
    inherited BotaoSair: TSpeedButton
      Left = 826
      ExplicitLeft = 826
    end
    inherited BotaoExportar: TSpeedButton
      Left = 726
      ExplicitLeft = 726
    end
    inherited BotaoImprimir: TSpeedButton
      Left = 626
      ExplicitLeft = 626
    end
    inherited BotaoSeparador1: TSpeedButton
      Left = 516
      ExplicitLeft = 516
    end
    inherited BotaoFiltrar: TSpeedButton
      Left = 526
      ExplicitLeft = 526
    end
  end
  inherited PopupMenuAtalhosBotoesTelaCadastro: TPopupMenu
    Left = 704
    Top = 24
  end
  object CDSInventarioContagemDetalhe: TClientDataSet
    Aggregates = <>
    FieldDefs = <
      item
        Name = 'ID'
        DataType = ftInteger
      end
      item
        Name = 'ID_PRODUTO'
        DataType = ftInteger
      end
      item
        Name = 'ID_ESTOQUE_CONTAGEM_CABECALHO'
        DataType = ftInteger
      end
      item
        Name = 'PRODUTO.NOME'
        DataType = ftString
        Size = 100
      end
      item
        Name = 'QUANTIDADE_CONTADA'
        DataType = ftFloat
      end
      item
        Name = 'QUANTIDADE_SISTEMA'
        DataType = ftFloat
      end
      item
        Name = 'ACURACIDADE'
        DataType = ftFloat
      end
      item
        Name = 'DIVERGENCIA'
        DataType = ftFloat
      end
      item
        Name = 'PERSISTE'
        DataType = ftString
        Size = 1
      end>
    IndexDefs = <>
    Params = <>
    StoreDefs = True
    AfterEdit = CDSInventarioContagemDetalheAfterEdit
    BeforePost = CDSInventarioContagemDetalheBeforePost
    AfterPost = CDSInventarioContagemDetalheAfterPost
    Left = 836
    Top = 311
  end
  object DSInventarioContagemDetalhe: TDataSource
    DataSet = CDSInventarioContagemDetalhe
    Left = 836
    Top = 367
  end
  object ActionManager: TActionManager
    ActionBars.ShowHints = False
    ActionBars = <
      item
      end
      item
        Items = <
          item
            Caption = '-'
          end
          item
            Caption = '-'
          end
          item
            Caption = '-'
          end>
      end
      item
      end
      item
        Items = <
          item
            Caption = '-'
          end
          item
            Action = ActionSelecionarItens
            Caption = '&Selecionar Itens'
            ImageIndex = 36
          end>
      end
      item
      end
      item
        Items = <
          item
            Action = ActionSelecionarItens
            Caption = '&Selecionar Itens'
            ImageIndex = 36
          end>
      end
      item
        Items = <
          item
            Action = ActionRealizarCalculos
            Caption = '&Realizar C'#225'lculos'
            ImageIndex = 31
          end>
      end
      item
        Items = <
          item
            Action = ActionRealizarCalculos
            Caption = '&Realizar C'#225'lculos'
            ImageIndex = 29
          end
          item
            Action = ActionSelecionarItens
            Caption = '&Selecionar Itens'
            ImageIndex = 36
          end>
        ActionBar = ActionToolBarEdits
      end>
    DisabledImages = FDataModule.ImagensCadastrosD
    Images = FDataModule.ImagensCadastros
    Left = 851
    Top = 80
    StyleName = 'Ribbon - Silver'
    object ActionSelecionarItens: TAction
      Category = 'InventarioContagem'
      Caption = 'Selecionar Itens'
      ImageIndex = 36
      OnExecute = ActionSelecionarItensExecute
    end
    object ActionRealizarCalculos: TAction
      Category = 'InventarioContagem'
      Caption = 'Realizar C'#225'lculos'
      ImageIndex = 29
      OnExecute = ActionRealizarCalculosExecute
    end
  end
  object CDSProduto: TClientDataSet
    Active = True
    Aggregates = <>
    FieldDefs = <
      item
        Name = 'ID'
        DataType = ftInteger
      end
      item
        Name = 'NOME'
        DataType = ftString
        Size = 100
      end
      item
        Name = 'QUANTIDADE_ESTOQUE'
        DataType = ftFloat
      end>
    IndexDefs = <>
    Params = <>
    StoreDefs = True
    Left = 644
    Top = 311
    Data = {
      590000009619E0BD010000001800000003000000000003000000590002494404
      00010000000000044E4F4D450100490000000100055749445448020002006400
      125155414E5449444144455F4553544F51554508000400000000000000}
    object CDSProdutoID: TIntegerField
      FieldName = 'ID'
    end
    object CDSProdutoNOME: TStringField
      FieldName = 'NOME'
      Size = 100
    end
    object CDSProdutoQUANTIDADE_ESTOQUE: TFloatField
      FieldName = 'QUANTIDADE_ESTOQUE'
    end
  end
  object DSProduto: TDataSource
    DataSet = CDSProduto
    Left = 644
    Top = 367
  end
end
