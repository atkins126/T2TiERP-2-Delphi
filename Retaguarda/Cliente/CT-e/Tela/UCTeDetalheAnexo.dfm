object FCTeDetalheAnexo: TFCTeDetalheAnexo
  Left = 320
  Top = 216
  Caption = 'CT-e Detalhes Anexo'
  ClientHeight = 379
  ClientWidth = 1017
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object PageControlDadosTributacao: TPageControl
    Left = 0
    Top = 0
    Width = 1017
    Height = 379
    ActivePage = tsTransporte
    Align = alClient
    TabOrder = 0
    object tsTransporte: TTabSheet
      Caption = 'Transporte'
      ImageIndex = 9
      object PanelDetalheArmamento: TPanel
        Left = 0
        Top = 0
        Width = 1009
        Height = 351
        Align = alClient
        BevelOuter = bvNone
        TabOrder = 0
        object GridDetalheArmamento: TJvDBUltimGrid
          Left = 0
          Top = 0
          Width = 1009
          Height = 351
          Align = alClient
          TabOrder = 0
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -11
          TitleFont.Name = 'Tahoma'
          TitleFont.Style = []
          SelectColumnsDialogStrings.Caption = 'Select columns'
          SelectColumnsDialogStrings.OK = '&OK'
          SelectColumnsDialogStrings.NoSelectionWarning = 'At least one column must be visible!'
          EditControls = <>
          RowsHeight = 17
          TitleRowHeight = 17
        end
      end
    end
    object tsCarga: TTabSheet
      Caption = 'Carga'
      ImageIndex = 10
      object PanelDeclaracaoImportacao: TPanel
        Left = 0
        Top = 0
        Width = 1009
        Height = 351
        Align = alClient
        BevelOuter = bvNone
        TabOrder = 0
        object GridDeclaracaoImportacao: TJvDBUltimGrid
          Left = 0
          Top = 0
          Width = 1009
          Height = 158
          Align = alClient
          TabOrder = 0
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -11
          TitleFont.Name = 'Tahoma'
          TitleFont.Style = []
          SelectColumnsDialogStrings.Caption = 'Select columns'
          SelectColumnsDialogStrings.OK = '&OK'
          SelectColumnsDialogStrings.NoSelectionWarning = 'At least one column must be visible!'
          EditControls = <>
          RowsHeight = 17
          TitleRowHeight = 17
        end
        object PageLacres: TPageControl
          Left = 0
          Top = 158
          Width = 1009
          Height = 193
          ActivePage = tsLacre
          Align = alBottom
          TabOrder = 1
          object tsLacre: TTabSheet
            Caption = 'Lacre'
            object Panel1: TPanel
              Left = 0
              Top = 0
              Width = 1001
              Height = 165
              Align = alClient
              BevelOuter = bvNone
              TabOrder = 0
              object GridDeclaracaoImportacaoDetalhe: TJvDBUltimGrid
                Left = 0
                Top = 0
                Width = 1001
                Height = 165
                Align = alClient
                TabOrder = 0
                TitleFont.Charset = DEFAULT_CHARSET
                TitleFont.Color = clWindowText
                TitleFont.Height = -11
                TitleFont.Name = 'Tahoma'
                TitleFont.Style = []
                SelectColumnsDialogStrings.Caption = 'Select columns'
                SelectColumnsDialogStrings.OK = '&OK'
                SelectColumnsDialogStrings.NoSelectionWarning = 'At least one column must be visible!'
                EditControls = <>
                RowsHeight = 17
                TitleRowHeight = 17
              end
            end
          end
        end
      end
    end
  end
end
