inherited FReuniaoSala: TFReuniaoSala
  Tag = 1
  Left = 318
  Top = 203
  Caption = 'Salas de Reuni'#227'o'
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
          Top = 11
          Width = 932
          Height = 56
          Anchors = [akLeft, akTop, akRight]
          Constraints.MinWidth = 753
        end
        object EditAndar: TLabeledEdit
          Left = 22
          Top = 33
          Width = 90
          Height = 21
          Constraints.MinWidth = 90
          EditLabel.Width = 33
          EditLabel.Height = 13
          EditLabel.BiDiMode = bdLeftToRight
          EditLabel.Caption = 'Andar:'
          EditLabel.ParentBiDiMode = False
          TabOrder = 0
        end
        object EditPredio: TLabeledEdit
          Left = 214
          Top = 33
          Width = 715
          Height = 21
          Anchors = [akLeft, akTop, akRight]
          Constraints.MinWidth = 90
          EditLabel.Width = 34
          EditLabel.Height = 13
          EditLabel.BiDiMode = bdLeftToRight
          EditLabel.Caption = 'Pr'#233'dio:'
          EditLabel.ParentBiDiMode = False
          TabOrder = 1
        end
        object EditNumero: TLabeledEdit
          Left = 118
          Top = 33
          Width = 90
          Height = 21
          Constraints.MinWidth = 90
          EditLabel.Width = 41
          EditLabel.Height = 13
          EditLabel.BiDiMode = bdLeftToRight
          EditLabel.Caption = 'N'#250'mero:'
          EditLabel.ParentBiDiMode = False
          TabOrder = 2
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
