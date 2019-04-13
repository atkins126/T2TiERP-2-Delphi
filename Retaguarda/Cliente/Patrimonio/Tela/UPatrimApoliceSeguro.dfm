inherited FPatrimApoliceSeguro: TFPatrimApoliceSeguro
  Tag = 1
  Left = 442
  Top = 148
  Caption = 'Ap'#243'lice de Seguro'
  ClientWidth = 782
  ExplicitWidth = 798
  ExplicitHeight = 505
  PixelsPerInch = 96
  TextHeight = 13
  inherited PageControl: TPageControl
    Width = 782
    ActivePage = PaginaEdits
    ExplicitWidth = 782
    inherited PaginaGrid: TTabSheet
      ExplicitWidth = 774
      inherited PanelGrid: TPanel
        Width = 774
        ExplicitWidth = 774
        inherited Grid: TJvDBUltimGrid
          Width = 774
        end
        inherited PanelFiltroRapido: TPanel
          Width = 774
          ExplicitWidth = 774
          inherited BotaoConsultar: TSpeedButton
            Left = 642
            ExplicitLeft = 790
          end
          inherited EditCriterioRapido: TLabeledMaskEdit
            Width = 473
            ExplicitWidth = 473
          end
        end
      end
    end
    inherited PaginaEdits: TTabSheet
      ExplicitLeft = 4
      ExplicitTop = 24
      ExplicitWidth = 774
      ExplicitHeight = 407
      inherited PanelEdits: TPanel
        Width = 774
        ExplicitWidth = 774
        object BevelEdits: TBevel
          Left = 9
          Top = 45
          Width = 753
          Height = 337
          Anchors = [akLeft, akTop, akRight]
          Constraints.MinWidth = 753
        end
        object EditIdBem: TLabeledCalcEdit
          Left = 16
          Top = 66
          Width = 61
          Height = 21
          ShowButton = False
          TabOrder = 0
          DecimalPlacesAlwaysShown = False
          OnKeyUp = EditIdBemKeyUp
          CalcEditLabel.Width = 47
          CalcEditLabel.Height = 13
          CalcEditLabel.Caption = 'Bem [F1]:'
        end
        object EditNomeBem: TLabeledEdit
          Left = 77
          Top = 66
          Width = 676
          Height = 21
          TabStop = False
          Anchors = [akLeft, akTop, akRight]
          Color = clInfoBk
          EditLabel.Width = 6
          EditLabel.Height = 13
          EditLabel.Caption = '  '
          ReadOnly = True
          TabOrder = 1
        end
        object EditIdSeguradora: TLabeledCalcEdit
          Left = 16
          Top = 109
          Width = 61
          Height = 21
          ShowButton = False
          TabOrder = 2
          DecimalPlacesAlwaysShown = False
          OnKeyUp = EditIdSeguradoraKeyUp
          CalcEditLabel.Width = 83
          CalcEditLabel.Height = 13
          CalcEditLabel.Caption = 'Seguradora [F1]:'
        end
        object EditNomeSeguradora: TLabeledEdit
          Left = 77
          Top = 109
          Width = 676
          Height = 21
          TabStop = False
          Anchors = [akLeft, akTop, akRight]
          Color = clInfoBk
          EditLabel.Width = 6
          EditLabel.Height = 13
          EditLabel.Caption = '  '
          ReadOnly = True
          TabOrder = 3
        end
        object EditDataContratacao: TLabeledDateEdit
          Left = 157
          Top = 152
          Width = 121
          Height = 21
          ShowNullDate = False
          TabOrder = 5
          DateEditLabel.Width = 90
          DateEditLabel.Height = 13
          DateEditLabel.Caption = 'Data Contrata'#231#227'o:'
        end
        object EditDataVencimento: TLabeledDateEdit
          Left = 284
          Top = 152
          Width = 121
          Height = 21
          ShowNullDate = False
          TabOrder = 6
          DateEditLabel.Width = 85
          DateEditLabel.Height = 13
          DateEditLabel.Caption = 'Data Vencimento:'
        end
        object EditNumero: TLabeledEdit
          Left = 16
          Top = 152
          Width = 135
          Height = 21
          EditLabel.Width = 41
          EditLabel.Height = 13
          EditLabel.Caption = 'N'#250'mero:'
          MaxLength = 20
          TabOrder = 4
        end
        object EditValorPremio: TLabeledCalcEdit
          Left = 16
          Top = 195
          Width = 121
          Height = 21
          DisplayFormat = '###,###,##0.00'
          TabOrder = 7
          DecimalPlacesAlwaysShown = False
          CalcEditLabel.Width = 63
          CalcEditLabel.Height = 13
          CalcEditLabel.Caption = 'Valor Pr'#234'mio:'
        end
        object EditValorSegurado: TLabeledCalcEdit
          Left = 143
          Top = 195
          Width = 121
          Height = 21
          DisplayFormat = '###,###,##0.00'
          TabOrder = 8
          DecimalPlacesAlwaysShown = False
          CalcEditLabel.Width = 77
          CalcEditLabel.Height = 13
          CalcEditLabel.Caption = 'Valor Segurado:'
        end
        object MemoObservacao: TLabeledMemo
          Left = 16
          Top = 239
          Width = 737
          Height = 133
          Anchors = [akLeft, akTop, akRight]
          TabOrder = 9
          MemoLabel.Width = 67
          MemoLabel.Height = 13
          MemoLabel.Caption = 'Observa'#231#245'es:'
        end
        object ActionToolBar1: TActionToolBar
          Left = 4
          Top = 4
          Width = 766
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
    Width = 782
    ExplicitWidth = 782
    inherited BotaoSair: TSpeedButton
      Left = 678
      ExplicitLeft = 826
    end
    inherited BotaoExportar: TSpeedButton
      Left = 578
      ExplicitLeft = 726
    end
    inherited BotaoImprimir: TSpeedButton
      Left = 478
      ExplicitLeft = 626
    end
    inherited BotaoSeparador1: TSpeedButton
      Left = 368
      ExplicitLeft = 516
    end
    inherited BotaoFiltrar: TSpeedButton
      Left = 378
      ExplicitLeft = 526
    end
  end
  inherited PopupMenuAtalhosBotoesTelaCadastro: TPopupMenu
    Left = 248
    Top = 24
  end
  object ActionManager1: TActionManager
    ActionBars = <
      item
        Items = <
          item
            Action = ActionAcionarGed
            Caption = '&Acionar GED'
            ImageIndex = 26
          end>
        ActionBar = ActionToolBar1
      end>
    DisabledImages = FDataModule.ImagensCadastrosD
    Images = FDataModule.ImagensCadastros
    Left = 372
    Top = 359
    StyleName = 'Platform Default'
    object ActionAcionarGed: TAction
      Caption = 'Acionar GED'
      ImageIndex = 26
      OnExecute = ActionAcionarGedExecute
    end
  end
end
