inherited FWmsParametro: TFWmsParametro
  Tag = 1
  Left = 318
  Top = 203
  Caption = 'WMS Par'#226'metros'
  ClientWidth = 961
  ExplicitWidth = 977
  ExplicitHeight = 505
  PixelsPerInch = 96
  TextHeight = 13
  inherited PageControl: TPageControl
    Width = 961
    ActivePage = PaginaEdits
    ExplicitWidth = 961
    inherited PaginaGrid: TTabSheet
      ExplicitWidth = 953
      inherited PanelGrid: TPanel
        Width = 953
        ExplicitWidth = 953
        inherited Grid: TJvDBUltimGrid
          Width = 953
        end
        inherited PanelFiltroRapido: TPanel
          Width = 953
          ExplicitWidth = 953
          inherited BotaoConsultar: TSpeedButton
            Left = 821
            ExplicitLeft = 825
          end
          inherited EditCriterioRapido: TLabeledMaskEdit
            Width = 652
            ExplicitWidth = 652
          end
        end
      end
    end
    inherited PaginaEdits: TTabSheet
      ExplicitLeft = 4
      ExplicitTop = 24
      ExplicitWidth = 953
      ExplicitHeight = 407
      inherited PanelEdits: TPanel
        Width = 953
        ExplicitWidth = 953
        object BevelEdits: TBevel
          Left = 10
          Top = 14
          Width = 935
          Height = 59
          Anchors = [akLeft, akTop, akRight]
          Constraints.MinWidth = 753
        end
        object EditHoraPorVolume: TLabeledCalcEdit
          Left = 23
          Top = 36
          Width = 104
          Height = 21
          ShowButton = False
          TabOrder = 0
          DecimalPlacesAlwaysShown = False
          CalcEditLabel.Width = 83
          CalcEditLabel.Height = 13
          CalcEditLabel.Caption = 'Hora por Volume:'
        end
        object EditPessoaPorVolume: TLabeledCalcEdit
          Left = 133
          Top = 36
          Width = 104
          Height = 21
          ShowButton = False
          TabOrder = 1
          DecimalPlacesAlwaysShown = False
          CalcEditLabel.Width = 94
          CalcEditLabel.Height = 13
          CalcEditLabel.Caption = 'Pessoa por Volume:'
        end
        object EditHoraPorPeso: TLabeledCalcEdit
          Left = 244
          Top = 36
          Width = 104
          Height = 21
          ShowButton = False
          TabOrder = 2
          DecimalPlacesAlwaysShown = False
          CalcEditLabel.Width = 72
          CalcEditLabel.Height = 13
          CalcEditLabel.Caption = 'Hora por Peso:'
        end
        object EditPessoaPorPeso: TLabeledCalcEdit
          Left = 354
          Top = 36
          Width = 104
          Height = 21
          ShowButton = False
          TabOrder = 3
          DecimalPlacesAlwaysShown = False
          CalcEditLabel.Width = 83
          CalcEditLabel.Height = 13
          CalcEditLabel.Caption = 'Pessoa por Peso:'
        end
      end
    end
  end
  inherited PanelToolBar: TPanel
    Width = 961
    ExplicitWidth = 961
    inherited BotaoSair: TSpeedButton
      Left = 857
      ExplicitLeft = 889
    end
    inherited BotaoExportar: TSpeedButton
      Left = 757
      ExplicitLeft = 799
    end
    inherited BotaoImprimir: TSpeedButton
      Left = 647
      ExplicitLeft = 719
    end
    inherited BotaoSeparador1: TSpeedButton
      Left = 747
      ExplicitLeft = 895
      ExplicitTop = -4
    end
    inherited BotaoFiltrar: TSpeedButton
      Left = 547
      ExplicitLeft = 639
    end
  end
end
