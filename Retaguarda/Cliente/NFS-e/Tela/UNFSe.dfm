inherited FNFSe: TFNFSe
  Left = 313
  Top = 96
  Caption = 'NFS-e'
  ClientHeight = 581
  ExplicitWidth = 1008
  ExplicitHeight = 620
  PixelsPerInch = 96
  TextHeight = 13
  inherited PageControl: TPageControl
    Height = 550
    ActivePage = PaginaEdits
    ExplicitHeight = 550
    inherited PaginaGrid: TTabSheet
      ExplicitHeight = 522
      inherited PanelGrid: TPanel
        Height = 522
        ExplicitHeight = 522
        inherited Grid: TJvDBUltimGrid
          Height = 470
        end
        inherited PanelFiltroRapido: TPanel
          Top = 470
          ExplicitTop = 470
          inherited BotaoConsultar: TSpeedButton
            Left = 852
            ExplicitLeft = 857
          end
          inherited EditCriterioRapido: TLabeledMaskEdit
            Width = 683
            ExplicitWidth = 683
          end
        end
      end
    end
    inherited PaginaEdits: TTabSheet
      ExplicitLeft = 4
      ExplicitTop = 24
      ExplicitWidth = 984
      ExplicitHeight = 522
      inherited PanelEdits: TPanel
        Height = 522
        ExplicitHeight = 522
        object ScrollBox: TScrollBox
          Left = 4
          Top = 4
          Width = 976
          Height = 514
          Align = alClient
          BevelInner = bvNone
          BevelOuter = bvNone
          BorderStyle = bsNone
          TabOrder = 0
          DesignSize = (
            976
            514)
          object BevelEdits: TBevel
            Left = 7
            Top = 7
            Width = 959
            Height = 140
            Anchors = [akLeft, akTop, akRight]
            Constraints.MinWidth = 753
          end
          object EditNumeroRPS: TLabeledEdit
            Left = 16
            Top = 117
            Width = 141
            Height = 21
            EditLabel.Width = 63
            EditLabel.Height = 13
            EditLabel.Caption = 'N'#250'mero RPS:'
            MaxLength = 100
            TabOrder = 3
          end
          object EditNumero: TLabeledEdit
            Left = 295
            Top = 30
            Width = 141
            Height = 21
            EditLabel.Width = 41
            EditLabel.Height = 13
            EditLabel.Caption = 'N'#250'mero:'
            MaxLength = 20
            TabOrder = 2
          end
          object PageControlDadosNFSe: TPageControl
            Left = 7
            Top = 153
            Width = 959
            Height = 353
            ActivePage = tsDetalhe
            Anchors = [akLeft, akTop, akRight, akBottom]
            TabOrder = 4
            object tsDetalhe: TTabSheet
              Caption = 'Detalhe'
              ImageIndex = 2
              object PanelDocumentacao: TPanel
                Left = 0
                Top = 0
                Width = 951
                Height = 325
                Align = alClient
                BevelOuter = bvNone
                TabOrder = 0
                object GridDetalhe: TJvDBUltimGrid
                  Left = 0
                  Top = 26
                  Width = 951
                  Height = 299
                  Align = alClient
                  DataSource = DSNFSeDetalhe
                  TabOrder = 0
                  TitleFont.Charset = DEFAULT_CHARSET
                  TitleFont.Color = clWindowText
                  TitleFont.Height = -11
                  TitleFont.Name = 'Tahoma'
                  TitleFont.Style = []
                  OnKeyDown = GridDetalheKeyDown
                  AlternateRowColor = 15593713
                  SelectColumnsDialogStrings.Caption = 'Select columns'
                  SelectColumnsDialogStrings.OK = '&OK'
                  SelectColumnsDialogStrings.NoSelectionWarning = 'At least one column must be visible!'
                  EditControls = <>
                  RowsHeight = 17
                  TitleRowHeight = 17
                end
                object ActionToolBar1: TActionToolBar
                  Left = 0
                  Top = 0
                  Width = 951
                  Height = 26
                  ActionManager = ActionManagerBem
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
            object tsIntermediarios: TTabSheet
              Caption = 'Intermedi'#225'rios'
              ImageIndex = 2
              object PanelDepreciacao: TPanel
                Left = 0
                Top = 0
                Width = 951
                Height = 325
                Align = alClient
                BevelOuter = bvNone
                TabOrder = 0
                object GridIntermediarios: TJvDBUltimGrid
                  Left = 0
                  Top = 26
                  Width = 951
                  Height = 299
                  Align = alClient
                  DataSource = DSNFSeIntermediario
                  TabOrder = 0
                  TitleFont.Charset = DEFAULT_CHARSET
                  TitleFont.Color = clWindowText
                  TitleFont.Height = -11
                  TitleFont.Name = 'Tahoma'
                  TitleFont.Style = []
                  AlternateRowColor = 15593713
                  SelectColumnsDialogStrings.Caption = 'Select columns'
                  SelectColumnsDialogStrings.OK = '&OK'
                  SelectColumnsDialogStrings.NoSelectionWarning = 'At least one column must be visible!'
                  EditControls = <>
                  RowsHeight = 17
                  TitleRowHeight = 17
                end
                object ActionToolBarDepreciacao: TActionToolBar
                  Left = 0
                  Top = 0
                  Width = 951
                  Height = 26
                  ActionManager = ActionManagerBem
                  BiDiMode = bdRightToLeft
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
                  ParentBiDiMode = False
                  ParentFont = False
                  Spacing = 0
                end
              end
            end
          end
          object EditIdOS: TLabeledCalcEdit
            Left = 16
            Top = 30
            Width = 61
            Height = 21
            ShowButton = False
            TabOrder = 0
            DecimalPlacesAlwaysShown = False
            OnKeyUp = EditIdOSKeyUp
            CalcEditLabel.Width = 56
            CalcEditLabel.Height = 13
            CalcEditLabel.Caption = 'N'#186' OS [F1]:'
          end
          object EditCliente: TLabeledEdit
            Left = 77
            Top = 30
            Width = 212
            Height = 21
            TabStop = False
            Color = clInfoBk
            EditLabel.Width = 6
            EditLabel.Height = 13
            EditLabel.Caption = '  '
            ReadOnly = True
            TabOrder = 1
          end
          object EditCodigoVerificacao: TLabeledEdit
            Left = 442
            Top = 30
            Width = 103
            Height = 21
            EditLabel.Width = 92
            EditLabel.Height = 13
            EditLabel.Caption = 'C'#243'digo Verifica'#231#227'o:'
            MaxLength = 20
            TabOrder = 5
          end
          object EditDataHoraEmissao: TLabeledDateEdit
            Left = 551
            Top = 30
            Width = 121
            Height = 21
            ShowNullDate = False
            TabOrder = 6
            DateEditLabel.Width = 95
            DateEditLabel.Height = 13
            DateEditLabel.Caption = 'Data/Hora Emiss'#227'o:'
          end
          object EditCompetencia: TLabeledMaskEdit
            Left = 678
            Top = 30
            Width = 83
            Height = 21
            EditLabel.Width = 66
            EditLabel.Height = 13
            EditLabel.Caption = 'Compet'#234'ncia:'
            MaxLength = 7
            TabOrder = 7
            Text = '  /////'
            Required = False
            EditMask = '##/####;1;_'
            MaskState = [msMasked]
          end
          object EditNumeroSubstituida: TLabeledEdit
            Left = 767
            Top = 30
            Width = 188
            Height = 21
            Anchors = [akLeft, akTop, akRight]
            EditLabel.Width = 97
            EditLabel.Height = 13
            EditLabel.Caption = 'N'#250'mero Substitu'#237'da:'
            MaxLength = 20
            TabOrder = 8
          end
          object ComboNaturezaOperacao: TLabeledComboBox
            Left = 16
            Top = 75
            Width = 297
            Height = 21
            Style = csDropDownList
            ItemIndex = 0
            TabOrder = 9
            Text = 'Tributa'#231#227'o no munic'#237'pio'
            Items.Strings = (
              'Tributa'#231#227'o no munic'#237'pio'
              'Tributa'#231#227'o fora do munic'#237'pio'
              'Isen'#231#227'o'
              'Imune'
              'Exigibilidade suspensa por decis'#227'o judicial'
              'Exigibilidade suspensa por procedimento administrativo')
            ComboBoxLabel.Width = 113
            ComboBoxLabel.Height = 13
            ComboBoxLabel.Caption = 'Natureza da Opera'#231#227'o:'
          end
          object ComboRegimeEspecialTributacao: TLabeledComboBox
            Left = 319
            Top = 75
            Width = 162
            Height = 21
            Style = csDropDownList
            ItemIndex = 0
            TabOrder = 10
            Text = 'Microempresa Municipal'
            Items.Strings = (
              'Microempresa Municipal'
              'Estimativa'
              'Sociedade de Profissionais'
              'Cooperativa')
            ComboBoxLabel.Width = 149
            ComboBoxLabel.Height = 13
            ComboBoxLabel.Caption = 'Regime Especial de Tributa'#231#227'o:'
          end
          object ComboOptanteSimplesNacional: TLabeledComboBox
            Left = 487
            Top = 75
            Width = 138
            Height = 21
            Style = csDropDownList
            ItemIndex = 1
            TabOrder = 11
            Text = 'N'#227'o'
            Items.Strings = (
              'Sim'
              'N'#227'o')
            ComboBoxLabel.Width = 125
            ComboBoxLabel.Height = 13
            ComboBoxLabel.Caption = 'Optante Simples Nacional:'
          end
          object ComboIncentivadorCultural: TLabeledComboBox
            Left = 631
            Top = 75
            Width = 114
            Height = 21
            Style = csDropDownList
            ItemIndex = 1
            TabOrder = 12
            Text = 'N'#227'o'
            Items.Strings = (
              'Sim'
              'N'#227'o')
            ComboBoxLabel.Width = 105
            ComboBoxLabel.Height = 13
            ComboBoxLabel.Caption = 'Incentivador Cultural:'
          end
          object EditSerieRPS: TLabeledEdit
            Left = 163
            Top = 117
            Width = 62
            Height = 21
            EditLabel.Width = 50
            EditLabel.Height = 13
            EditLabel.Caption = 'S'#233'rie RPS:'
            MaxLength = 100
            TabOrder = 13
            Text = 'T2Ti'
          end
          object ComboTipoRPS: TLabeledComboBox
            Left = 751
            Top = 75
            Width = 204
            Height = 21
            Style = csDropDownList
            ItemIndex = 0
            TabOrder = 14
            Text = 'Recibo Provis'#243'rio de Servi'#231'os'
            Items.Strings = (
              'Recibo Provis'#243'rio de Servi'#231'os'
              'RPS  Nota Fiscal Conjugada (Mista)'
              'Cupom')
            ComboBoxLabel.Width = 46
            ComboBoxLabel.Height = 13
            ComboBoxLabel.Caption = 'Tipo RPS:'
          end
          object EditDataEmissaoRPS: TLabeledDateEdit
            Left = 231
            Top = 117
            Width = 121
            Height = 21
            ShowNullDate = False
            TabOrder = 15
            DateEditLabel.Width = 90
            DateEditLabel.Height = 13
            DateEditLabel.Caption = 'Data Emiss'#227'o RPS:'
          end
          object EditCodigoObra: TLabeledEdit
            Left = 358
            Top = 117
            Width = 141
            Height = 21
            EditLabel.Width = 64
            EditLabel.Height = 13
            EditLabel.Caption = 'C'#243'digo Obra:'
            MaxLength = 100
            TabOrder = 16
          end
          object EditNumeroART: TLabeledEdit
            Left = 505
            Top = 117
            Width = 141
            Height = 21
            EditLabel.Width = 64
            EditLabel.Height = 13
            EditLabel.Caption = 'N'#250'mero ART:'
            MaxLength = 100
            TabOrder = 17
          end
        end
      end
    end
  end
  inherited PanelToolBar: TPanel
    inherited BotaoSair: TSpeedButton
      ExplicitLeft = 913
    end
    inherited BotaoExportar: TSpeedButton
      ExplicitLeft = 823
    end
    inherited BotaoImprimir: TSpeedButton
      Left = 678
      ExplicitLeft = 743
    end
    inherited BotaoSeparador1: TSpeedButton
      Left = 778
      ExplicitLeft = 903
    end
    inherited BotaoFiltrar: TSpeedButton
      Left = 578
      ExplicitLeft = 663
    end
  end
  inherited PopupMenuAtalhosBotoesTela: TPopupMenu
    Top = 23
  end
  inherited PopupMenuAtalhosBotoesTelaCadastro: TPopupMenu
    Left = 720
    Top = 24
  end
  object CDSNFSeDetalhe: TClientDataSet
    Aggregates = <>
    FieldDefs = <>
    IndexDefs = <>
    Params = <>
    StoreDefs = True
    AfterEdit = CDSNFSeDetalheAfterEdit
    Left = 96
    Top = 507
  end
  object DSNFSeDetalhe: TDataSource
    DataSet = CDSNFSeDetalhe
    Left = 93
    Top = 464
  end
  object CDSNFSeIntermediario: TClientDataSet
    Aggregates = <>
    FieldDefs = <>
    IndexDefs = <>
    Params = <>
    StoreDefs = True
    AfterEdit = CDSNFSeIntermediarioAfterEdit
    Left = 224
    Top = 507
  end
  object DSNFSeIntermediario: TDataSource
    DataSet = CDSNFSeIntermediario
    Left = 221
    Top = 464
  end
  object ActionManagerBem: TActionManager
    ActionBars = <
      item
        Items = <
          item
            Action = ActionIncluirIntermediario
            Caption = '&Inlcuir Intermedi'#225'rio'
            ImageIndex = 0
          end>
        ActionBar = ActionToolBarDepreciacao
      end
      item
        Items = <
          item
            Action = ActionSelecionarItemListaServico
            Caption = '&Selecionar Item Lista Servi'#231'o'
            ImageIndex = 11
          end
          item
            Action = ActionEnviarRPS
            Caption = '&Enviar RPS'
            ImageIndex = 33
          end>
        ActionBar = ActionToolBar1
      end>
    DisabledImages = FDataModule.ImagensCadastrosD
    Images = FDataModule.ImagensCadastros
    Left = 740
    Top = 417
    StyleName = 'Platform Default'
    object ActionIncluirIntermediario: TAction
      Category = 'Geral'
      Caption = 'Inlcuir Intermedi'#225'rio'
      ImageIndex = 0
      OnExecute = ActionIncluirIntermediarioExecute
    end
    object ActionEnviarRPS: TAction
      Category = 'Geral'
      Caption = 'Enviar RPS'
      ImageIndex = 33
      OnExecute = ActionEnviarRPSExecute
    end
    object ActionSelecionarItemListaServico: TAction
      Category = 'Geral'
      Caption = 'Selecionar Item Lista Servi'#231'o'
      ImageIndex = 11
      OnExecute = ActionSelecionarItemListaServicoExecute
    end
  end
  object ACBrNFSe1: TACBrNFSe
    MAIL = ACBrMail1
    OnStatusChange = ACBrNFSe1StatusChange
    Configuracoes.Geral.SSLLib = libCapicom
    Configuracoes.Geral.FormatoAlerta = 'TAG:%TAGNIVEL% ID:%ID%/%TAG%(%DESCRICAO%) - %MSG%.'
    Configuracoes.Geral.CodigoMunicipio = 0
    Configuracoes.Geral.ConsultaLoteAposEnvio = True
    Configuracoes.WebServices.UF = 'SP'
    Configuracoes.WebServices.AguardarConsultaRet = 2000
    Configuracoes.WebServices.Tentativas = 10
    Configuracoes.WebServices.IntervaloTentativas = 3000
    Configuracoes.WebServices.Salvar = True
    Configuracoes.WebServices.QuebradeLinha = '|'
    Configuracoes.Certificados.VerificarValidade = False
    DANFSE = ACBrNFSeDANFSeRL1
    Left = 360
    Top = 248
  end
  object ACBrMail1: TACBrMail
    Host = '127.0.0.1'
    Port = '25'
    SetSSL = False
    SetTLS = False
    Attempts = 3
    DefaultCharset = UTF_8
    IDECharset = CP1252
    Left = 430
    Top = 249
  end
  object ACBrNFSeDANFSeRL1: TACBrNFSeDANFSeRL
    ACBrNFSe = ACBrNFSe1
    MostrarPreview = True
    MostrarStatus = True
    NumCopias = 1
    MargemInferior = 0.800000000000000000
    MargemSuperior = 0.800000000000000000
    MargemEsquerda = 0.600000000000000000
    MargemDireita = 0.510000000000000000
    NFSeCancelada = False
    Provedor = proNenhum
    TamanhoFonte = 6
    FormatarNumeroDocumentoNFSe = True
    PrintDialog = True
    Left = 554
    Top = 260
  end
end
