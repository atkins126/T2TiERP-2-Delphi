inherited FCTe: TFCTe
  Left = 328
  Top = 125
  Caption = 'Conhecimento de Transporte Eletr'#244'nico'
  ClientHeight = 572
  ClientWidth = 984
  ExplicitWidth = 1000
  ExplicitHeight = 611
  PixelsPerInch = 96
  TextHeight = 13
  inherited PageControl: TPageControl
    Width = 984
    Height = 541
    ActivePage = PaginaEdits
    ExplicitWidth = 984
    ExplicitHeight = 541
    inherited PaginaGrid: TTabSheet
      ExplicitWidth = 976
      ExplicitHeight = 513
      inherited PanelGrid: TPanel
        Width = 976
        Height = 513
        ExplicitWidth = 976
        ExplicitHeight = 513
        inherited Grid: TJvDBUltimGrid
          Width = 976
          Height = 461
        end
        inherited PanelFiltroRapido: TPanel
          Top = 461
          Width = 976
          ExplicitTop = 461
          ExplicitWidth = 976
          inherited BotaoConsultar: TSpeedButton
            Left = 844
            ExplicitLeft = 896
          end
          inherited EditCriterioRapido: TLabeledMaskEdit
            Width = 675
            ExplicitWidth = 675
          end
        end
      end
    end
    inherited PaginaEdits: TTabSheet
      ExplicitLeft = 4
      ExplicitTop = 24
      ExplicitWidth = 976
      ExplicitHeight = 513
      inherited PanelEdits: TPanel
        Width = 976
        Height = 513
        ExplicitWidth = 976
        ExplicitHeight = 513
        object ScrollBox: TScrollBox
          Left = 4
          Top = 4
          Width = 968
          Height = 505
          Align = alClient
          TabOrder = 0
          object BevelEdits: TBevel
            Left = 0
            Top = 60
            Width = 964
            Height = 328
            Align = alClient
            ExplicitLeft = 312
            ExplicitTop = 112
            ExplicitWidth = 50
            ExplicitHeight = 50
          end
          object ActionToolBarEdits: TActionToolBar
            AlignWithMargins = True
            Left = 3
            Top = 3
            Width = 958
            Height = 54
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
          object PageControlEdits: TPageControl
            Left = 0
            Top = 60
            Width = 964
            Height = 328
            ActivePage = TabSheetDadosNotaFiscal
            Align = alClient
            TabOrder = 1
            object TabSheetDadosNotaFiscal: TTabSheet
              Caption = 'Dados do CT-e'
              object PanelDadosCTe: TPanel
                Left = 0
                Top = 0
                Width = 956
                Height = 300
                Align = alClient
                BevelInner = bvLowered
                BevelOuter = bvNone
                BiDiMode = bdLeftToRight
                Ctl3D = True
                UseDockManager = False
                DoubleBuffered = False
                FullRepaint = False
                ParentBiDiMode = False
                ParentBackground = False
                ParentCtl3D = False
                ParentDoubleBuffered = False
                ShowCaption = False
                TabOrder = 0
                DesignSize = (
                  956
                  300)
                object EditNumeroCTe: TLabeledEdit
                  Left = 520
                  Top = 66
                  Width = 84
                  Height = 21
                  Anchors = [akTop, akRight]
                  EditLabel.Width = 41
                  EditLabel.Height = 13
                  EditLabel.Caption = 'N'#250'mero:'
                  ReadOnly = True
                  TabOrder = 7
                end
                object EditSerie: TLabeledEdit
                  Left = 452
                  Top = 66
                  Width = 62
                  Height = 21
                  Anchors = [akTop, akRight]
                  EditLabel.Width = 28
                  EditLabel.Height = 13
                  EditLabel.Caption = 'Serie:'
                  ReadOnly = True
                  TabOrder = 6
                end
                object EditNaturezaOperacao: TLabeledEdit
                  Left = 376
                  Top = 23
                  Width = 572
                  Height = 21
                  Anchors = [akLeft, akTop, akRight]
                  EditLabel.Width = 113
                  EditLabel.Height = 13
                  EditLabel.Caption = 'Natureza da Opera'#231#227'o:'
                  ReadOnly = True
                  TabOrder = 2
                end
                object GroupBoxDestinatario: TGroupBox
                  Left = 8
                  Top = 136
                  Width = 940
                  Height = 191
                  Anchors = [akLeft, akTop, akRight]
                  Caption = 'Destinat'#225'rio:'
                  TabOrder = 16
                  DesignSize = (
                    940
                    191)
                  object EditDestinatarioCpfCnpj: TLabeledEdit
                    Left = 69
                    Top = 32
                    Width = 136
                    Height = 21
                    EditLabel.Width = 58
                    EditLabel.Height = 13
                    EditLabel.Caption = 'CPF / CNPJ:'
                    MaxLength = 14
                    TabOrder = 1
                  end
                  object EditDestinatarioIE: TLabeledEdit
                    Left = 617
                    Top = 115
                    Width = 138
                    Height = 21
                    Anchors = [akTop, akRight]
                    EditLabel.Width = 91
                    EditLabel.Height = 13
                    EditLabel.Caption = 'Inscri'#231#227'o Estadual:'
                    MaxLength = 14
                    TabOrder = 11
                  end
                  object EditDestinatarioTelefone: TLabeledEdit
                    Left = 761
                    Top = 115
                    Width = 169
                    Height = 21
                    Anchors = [akTop, akRight]
                    EditLabel.Width = 46
                    EditLabel.Height = 13
                    EditLabel.Caption = 'Telefone:'
                    MaxLength = 14
                    TabOrder = 12
                  end
                  object EditDestinatarioLogradouro: TLabeledEdit
                    Left = 87
                    Top = 73
                    Width = 423
                    Height = 21
                    Anchors = [akLeft, akTop, akRight]
                    EditLabel.Width = 59
                    EditLabel.Height = 13
                    EditLabel.Caption = 'Logradouro:'
                    MaxLength = 60
                    TabOrder = 4
                  end
                  object EditDestinatarioNumero: TLabeledEdit
                    Left = 516
                    Top = 73
                    Width = 100
                    Height = 21
                    Anchors = [akTop, akRight]
                    EditLabel.Width = 41
                    EditLabel.Height = 13
                    EditLabel.Caption = 'Numero:'
                    MaxLength = 60
                    TabOrder = 5
                  end
                  object EditDestinatarioBairro: TLabeledEdit
                    Left = 9
                    Top = 115
                    Width = 200
                    Height = 21
                    EditLabel.Width = 32
                    EditLabel.Height = 13
                    EditLabel.Caption = 'Bairro:'
                    MaxLength = 60
                    TabOrder = 8
                  end
                  object EditDestinatarioCEP: TLabeledEdit
                    Left = 9
                    Top = 73
                    Width = 72
                    Height = 21
                    EditLabel.Width = 23
                    EditLabel.Height = 13
                    EditLabel.Caption = 'CEP:'
                    MaxLength = 8
                    TabOrder = 3
                  end
                  object EditDestinatarioCidade: TLabeledEdit
                    Left = 284
                    Top = 115
                    Width = 282
                    Height = 21
                    Anchors = [akLeft, akTop, akRight]
                    EditLabel.Width = 37
                    EditLabel.Height = 13
                    EditLabel.Caption = 'Cidade:'
                    MaxLength = 60
                    TabOrder = 9
                  end
                  object EditDestinatarioUF: TLabeledEdit
                    Left = 572
                    Top = 115
                    Width = 39
                    Height = 21
                    Anchors = [akTop, akRight]
                    CharCase = ecUpperCase
                    EditLabel.Width = 17
                    EditLabel.Height = 13
                    EditLabel.Caption = 'UF:'
                    MaxLength = 2
                    TabOrder = 10
                  end
                  object EditDestinatarioComplemento: TLabeledEdit
                    Left = 622
                    Top = 73
                    Width = 308
                    Height = 21
                    Anchors = [akTop, akRight]
                    EditLabel.Width = 69
                    EditLabel.Height = 13
                    EditLabel.Caption = 'Complemento:'
                    MaxLength = 60
                    TabOrder = 6
                  end
                  object EditDestinatarioRazao: TLabeledEdit
                    Left = 211
                    Top = 32
                    Width = 719
                    Height = 21
                    Anchors = [akLeft, akTop, akRight]
                    EditLabel.Width = 101
                    EditLabel.Height = 13
                    EditLabel.Caption = 'Raz'#227'o Social / Nome:'
                    MaxLength = 60
                    TabOrder = 2
                  end
                  object EditDestinatarioEmail: TLabeledEdit
                    Left = 9
                    Top = 159
                    Width = 921
                    Height = 21
                    Anchors = [akLeft, akTop, akRight]
                    EditLabel.Width = 32
                    EditLabel.Height = 13
                    EditLabel.Caption = 'E-Mail:'
                    MaxLength = 60
                    TabOrder = 13
                  end
                  object EditDestinatarioId: TLabeledCalcEdit
                    Left = 9
                    Top = 32
                    Width = 54
                    Height = 21
                    ShowButton = False
                    TabOrder = 0
                    DecimalPlacesAlwaysShown = False
                    OnKeyUp = EditDestinatarioIdKeyUp
                    CalcEditLabel.Width = 37
                    CalcEditLabel.Height = 13
                    CalcEditLabel.Caption = 'Id [F1]:'
                  end
                  object EditDestinatarioCodigoIbge: TLabeledEdit
                    Left = 215
                    Top = 115
                    Width = 63
                    Height = 21
                    EditLabel.Width = 49
                    EditLabel.Height = 13
                    EditLabel.Caption = 'C'#243'd IBGE:'
                    MaxLength = 60
                    TabOrder = 7
                  end
                end
                object EditDataHoraEmissao: TLabeledDateEdit
                  Left = 610
                  Top = 66
                  Width = 110
                  Height = 21
                  Anchors = [akTop, akRight]
                  ShowNullDate = False
                  TabOrder = 8
                  DateEditLabel.Width = 83
                  DateEditLabel.Height = 13
                  DateEditLabel.Caption = 'Data de Emiss'#227'o:'
                end
                object EditDataEntradaSaida: TLabeledDateEdit
                  Left = 726
                  Top = 66
                  Width = 110
                  Height = 21
                  Anchors = [akTop, akRight]
                  ShowNullDate = False
                  TabOrder = 9
                  DateEditLabel.Width = 98
                  DateEditLabel.Height = 13
                  DateEditLabel.Caption = 'Data Entrada/Sa'#237'da:'
                end
                object EditHoraEntradaSaida: TLabeledMaskEdit
                  Left = 842
                  Top = 66
                  Width = 106
                  Height = 21
                  Anchors = [akTop, akRight]
                  EditLabel.Width = 102
                  EditLabel.Height = 13
                  EditLabel.Caption = 'Hora: Entrada/Sa'#237'da:'
                  MaxLength = 8
                  TabOrder = 10
                  Text = 
                    '  ::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::' +
                    '::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::' +
                    ':::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::: :' +
                    ' :'
                  Required = False
                  EditMask = '##:##:##;1;_'
                  MaskState = [msMasked]
                end
                object ComboTipoOperacao: TLabeledComboBox
                  Left = 9
                  Top = 108
                  Width = 200
                  Height = 22
                  Style = csOwnerDrawFixed
                  ItemIndex = 1
                  TabOrder = 11
                  Text = '1 - Sa'#237'da'
                  Items.Strings = (
                    '0 - Entrada'
                    '1 - Sa'#237'da')
                  ComboBoxLabel.Width = 89
                  ComboBoxLabel.Height = 13
                  ComboBoxLabel.Caption = 'Tipo de Opera'#231#227'o:'
                end
                object ComboTipoEmissao: TLabeledComboBox
                  Left = 215
                  Top = 108
                  Width = 190
                  Height = 22
                  Style = csOwnerDrawFixed
                  ItemIndex = 0
                  TabOrder = 12
                  Text = '1 '#8211' Normal'
                  Items.Strings = (
                    '1 '#8211' Normal'
                    '2 '#8211' Conting'#234'ncia FS'
                    '3 '#8211' Conting'#234'ncia SCAN'
                    '4 '#8211' Conting'#234'ncia DPEC'
                    '5 '#8211' Conting'#234'ncia FS-DA'
                    '6 '#8211' Conting'#234'ncia SVC-AN'
                    '7 '#8211' Conting'#234'ncia SVC-RS')
                  ComboBoxLabel.Width = 80
                  ComboBoxLabel.Height = 13
                  ComboBoxLabel.Caption = 'Tipo de Emiss'#227'o:'
                end
                object ComboFinalidadeEmissao: TLabeledComboBox
                  Left = 411
                  Top = 108
                  Width = 190
                  Height = 22
                  Style = csOwnerDrawFixed
                  ItemIndex = 0
                  TabOrder = 13
                  Text = '1 - Normal'
                  Items.Strings = (
                    '1 - Normal'
                    '2 - Complementar'
                    '3 - Ajuste')
                  ComboBoxLabel.Width = 108
                  ComboBoxLabel.Height = 13
                  ComboBoxLabel.Caption = 'Finalidade de Emiss'#227'o:'
                end
                object ComboFormaImpDaCTe: TLabeledComboBox
                  Left = 607
                  Top = 108
                  Width = 190
                  Height = 22
                  Style = csOwnerDrawFixed
                  ItemIndex = 0
                  TabOrder = 14
                  Text = '1 - Retrato'
                  Items.Strings = (
                    '1 - Retrato'
                    '2 - Paisagem')
                  ComboBoxLabel.Width = 133
                  ComboBoxLabel.Height = 13
                  ComboBoxLabel.Caption = 'Formato Impress'#227'o DACTe:'
                end
                object ComboBoxFormaPagamento: TLabeledComboBox
                  Left = 803
                  Top = 108
                  Width = 145
                  Height = 22
                  Style = csOwnerDrawFixed
                  Anchors = [akLeft, akTop, akRight]
                  ItemIndex = 0
                  TabOrder = 15
                  Text = 'A Vista'
                  Items.Strings = (
                    'A Vista'
                    'A Prazo'
                    'Outros')
                  ComboBoxLabel.Width = 106
                  ComboBoxLabel.Height = 13
                  ComboBoxLabel.Caption = 'Forma de Pagamento:'
                end
                object EditChaveAcesso: TLabeledEdit
                  Left = 9
                  Top = 65
                  Width = 282
                  Height = 22
                  Anchors = [akLeft, akTop, akRight]
                  AutoSize = False
                  EditLabel.Width = 87
                  EditLabel.Height = 13
                  EditLabel.Caption = 'Chave de Acesso:'
                  Font.Charset = ANSI_CHARSET
                  Font.Color = clWindowText
                  Font.Height = -11
                  Font.Name = 'Courier New'
                  Font.Style = [fsBold]
                  ParentFont = False
                  ReadOnly = True
                  TabOrder = 3
                end
                object EditCodigoNumerico: TLabeledEdit
                  Left = 318
                  Top = 66
                  Width = 128
                  Height = 21
                  Anchors = [akTop, akRight]
                  EditLabel.Width = 74
                  EditLabel.Height = 13
                  EditLabel.Caption = 'C'#243'd. Num'#233'rico:'
                  ReadOnly = True
                  TabOrder = 5
                end
                object EditDigitoChaveAcesso: TLabeledEdit
                  Left = 291
                  Top = 65
                  Width = 21
                  Height = 22
                  Anchors = [akTop, akRight]
                  AutoSize = False
                  EditLabel.Width = 17
                  EditLabel.Height = 13
                  EditLabel.Caption = 'DV:'
                  Font.Charset = ANSI_CHARSET
                  Font.Color = clWindowText
                  Font.Height = -11
                  Font.Name = 'Courier New'
                  Font.Style = [fsBold]
                  ParentFont = False
                  ReadOnly = True
                  TabOrder = 4
                end
                object ComboboxModeloNotaFiscal: TLabeledComboBox
                  Left = 77
                  Top = 23
                  Width = 293
                  Height = 22
                  Style = csOwnerDrawFixed
                  ItemIndex = 0
                  TabOrder = 1
                  Text = '57 - Conhecimento de Transporte Eletr'#244'nico - CTe'
                  Items.Strings = (
                    '57 - Conhecimento de Transporte Eletr'#244'nico - CTe')
                  ComboBoxLabel.Width = 93
                  ComboBoxLabel.Height = 13
                  ComboBoxLabel.Caption = 'Modelo Nota Fiscal:'
                end
                object EditIdVenda: TLabeledCalcEdit
                  Left = 10
                  Top = 23
                  Width = 61
                  Height = 21
                  ShowButton = False
                  TabOrder = 0
                  DecimalPlacesAlwaysShown = False
                  OnKeyUp = EditIdVendaKeyUp
                  CalcEditLabel.Width = 57
                  CalcEditLabel.Height = 13
                  CalcEditLabel.Caption = 'Venda [F1]:'
                end
              end
            end
            object TabSheetInformacoesAdicionais: TTabSheet
              Caption = 'Informa'#231#245'es Adicionais'
              ImageIndex = 4
              object PanelInformacoesAdicionais: TPanel
                Left = 0
                Top = 0
                Width = 956
                Height = 300
                Align = alClient
                TabOrder = 0
                object PageControlInformacoesAdicionais: TPageControl
                  Left = 1
                  Top = 1
                  Width = 954
                  Height = 298
                  ActivePage = TabSheet1
                  Align = alClient
                  TabOrder = 0
                  object TabSheet1: TTabSheet
                    Caption = 'Emitente'
                    DesignSize = (
                      946
                      270)
                    object GroupBox2: TGroupBox
                      Left = 3
                      Top = 10
                      Width = 940
                      Height = 191
                      Anchors = [akLeft, akTop, akRight]
                      Caption = 'Dados do Emitente:'
                      TabOrder = 0
                      DesignSize = (
                        940
                        191)
                      object EditCnpjEmitente: TLabeledEdit
                        Left = 69
                        Top = 32
                        Width = 136
                        Height = 21
                        EditLabel.Width = 29
                        EditLabel.Height = 13
                        EditLabel.Caption = 'CNPJ:'
                        MaxLength = 14
                        TabOrder = 1
                      end
                      object EditIeEmitente: TLabeledEdit
                        Left = 617
                        Top = 115
                        Width = 138
                        Height = 21
                        Anchors = [akTop, akRight]
                        EditLabel.Width = 91
                        EditLabel.Height = 13
                        EditLabel.Caption = 'Inscri'#231#227'o Estadual:'
                        MaxLength = 14
                        TabOrder = 11
                      end
                      object EditTelefoneEmitente: TLabeledEdit
                        Left = 761
                        Top = 115
                        Width = 169
                        Height = 21
                        Anchors = [akTop, akRight]
                        EditLabel.Width = 46
                        EditLabel.Height = 13
                        EditLabel.Caption = 'Telefone:'
                        MaxLength = 14
                        TabOrder = 12
                      end
                      object EditLogradouroEmitente: TLabeledEdit
                        Left = 87
                        Top = 73
                        Width = 423
                        Height = 21
                        Anchors = [akLeft, akTop, akRight]
                        EditLabel.Width = 59
                        EditLabel.Height = 13
                        EditLabel.Caption = 'Logradouro:'
                        MaxLength = 60
                        TabOrder = 4
                      end
                      object EditNumeroEmitente: TLabeledEdit
                        Left = 516
                        Top = 73
                        Width = 100
                        Height = 21
                        Anchors = [akTop, akRight]
                        EditLabel.Width = 41
                        EditLabel.Height = 13
                        EditLabel.Caption = 'Numero:'
                        MaxLength = 60
                        TabOrder = 5
                      end
                      object EditBairroEmitente: TLabeledEdit
                        Left = 9
                        Top = 115
                        Width = 200
                        Height = 21
                        EditLabel.Width = 32
                        EditLabel.Height = 13
                        EditLabel.Caption = 'Bairro:'
                        MaxLength = 60
                        TabOrder = 8
                      end
                      object EditCepEmitente: TLabeledEdit
                        Left = 9
                        Top = 73
                        Width = 72
                        Height = 21
                        EditLabel.Width = 23
                        EditLabel.Height = 13
                        EditLabel.Caption = 'CEP:'
                        MaxLength = 8
                        TabOrder = 3
                      end
                      object EditCidadeEmitente: TLabeledEdit
                        Left = 284
                        Top = 115
                        Width = 282
                        Height = 21
                        Anchors = [akLeft, akTop, akRight]
                        EditLabel.Width = 37
                        EditLabel.Height = 13
                        EditLabel.Caption = 'Cidade:'
                        MaxLength = 60
                        TabOrder = 9
                      end
                      object EditUfEmitente: TLabeledEdit
                        Left = 572
                        Top = 115
                        Width = 39
                        Height = 21
                        Anchors = [akTop, akRight]
                        CharCase = ecUpperCase
                        EditLabel.Width = 17
                        EditLabel.Height = 13
                        EditLabel.Caption = 'UF:'
                        MaxLength = 2
                        TabOrder = 10
                      end
                      object EditComplementoEmitente: TLabeledEdit
                        Left = 622
                        Top = 73
                        Width = 308
                        Height = 21
                        Anchors = [akTop, akRight]
                        EditLabel.Width = 69
                        EditLabel.Height = 13
                        EditLabel.Caption = 'Complemento:'
                        MaxLength = 60
                        TabOrder = 6
                      end
                      object EditNomeEmitente: TLabeledEdit
                        Left = 211
                        Top = 32
                        Width = 719
                        Height = 21
                        Anchors = [akLeft, akTop, akRight]
                        EditLabel.Width = 31
                        EditLabel.Height = 13
                        EditLabel.Caption = 'Nome:'
                        MaxLength = 60
                        TabOrder = 2
                      end
                      object EditEmailEmitente: TLabeledEdit
                        Left = 9
                        Top = 159
                        Width = 921
                        Height = 21
                        Anchors = [akLeft, akTop, akRight]
                        EditLabel.Width = 32
                        EditLabel.Height = 13
                        EditLabel.Caption = 'E-Mail:'
                        MaxLength = 60
                        TabOrder = 13
                      end
                      object EditIdEmitente: TLabeledCalcEdit
                        Left = 9
                        Top = 32
                        Width = 54
                        Height = 21
                        ShowButton = False
                        TabOrder = 0
                        DecimalPlacesAlwaysShown = False
                        OnKeyUp = EditDestinatarioIdKeyUp
                        CalcEditLabel.Width = 37
                        CalcEditLabel.Height = 13
                        CalcEditLabel.Caption = 'Id [F1]:'
                      end
                      object EditIbgeEmitente: TLabeledEdit
                        Left = 215
                        Top = 115
                        Width = 63
                        Height = 21
                        EditLabel.Width = 49
                        EditLabel.Height = 13
                        EditLabel.Caption = 'C'#243'd IBGE:'
                        MaxLength = 60
                        TabOrder = 7
                      end
                    end
                  end
                  object Remetente: TTabSheet
                    Caption = 'Remetente'
                    ImageIndex = 1
                    DesignSize = (
                      946
                      270)
                    object GroupBox3: TGroupBox
                      Left = 3
                      Top = 10
                      Width = 940
                      Height = 191
                      Anchors = [akLeft, akTop, akRight]
                      Caption = 'Dados do Remetente:'
                      TabOrder = 0
                      DesignSize = (
                        940
                        191)
                      object EditCnpjRemetente: TLabeledEdit
                        Left = 69
                        Top = 32
                        Width = 136
                        Height = 21
                        EditLabel.Width = 29
                        EditLabel.Height = 13
                        EditLabel.Caption = 'CNPJ:'
                        MaxLength = 14
                        TabOrder = 1
                      end
                      object EditIeRemetente: TLabeledEdit
                        Left = 617
                        Top = 115
                        Width = 138
                        Height = 21
                        Anchors = [akTop, akRight]
                        EditLabel.Width = 91
                        EditLabel.Height = 13
                        EditLabel.Caption = 'Inscri'#231#227'o Estadual:'
                        MaxLength = 14
                        TabOrder = 11
                      end
                      object EditTelefoneRemetente: TLabeledEdit
                        Left = 761
                        Top = 115
                        Width = 169
                        Height = 21
                        Anchors = [akTop, akRight]
                        EditLabel.Width = 46
                        EditLabel.Height = 13
                        EditLabel.Caption = 'Telefone:'
                        MaxLength = 14
                        TabOrder = 12
                      end
                      object EditLogradouroRemetente: TLabeledEdit
                        Left = 87
                        Top = 73
                        Width = 423
                        Height = 21
                        Anchors = [akLeft, akTop, akRight]
                        EditLabel.Width = 59
                        EditLabel.Height = 13
                        EditLabel.Caption = 'Logradouro:'
                        MaxLength = 60
                        TabOrder = 4
                      end
                      object EditNumeroRemetente: TLabeledEdit
                        Left = 516
                        Top = 73
                        Width = 100
                        Height = 21
                        Anchors = [akTop, akRight]
                        EditLabel.Width = 41
                        EditLabel.Height = 13
                        EditLabel.Caption = 'Numero:'
                        MaxLength = 60
                        TabOrder = 5
                      end
                      object EditBairroRemetente: TLabeledEdit
                        Left = 9
                        Top = 115
                        Width = 200
                        Height = 21
                        EditLabel.Width = 32
                        EditLabel.Height = 13
                        EditLabel.Caption = 'Bairro:'
                        MaxLength = 60
                        TabOrder = 8
                      end
                      object EditCepRemetente: TLabeledEdit
                        Left = 9
                        Top = 73
                        Width = 72
                        Height = 21
                        EditLabel.Width = 23
                        EditLabel.Height = 13
                        EditLabel.Caption = 'CEP:'
                        MaxLength = 8
                        TabOrder = 3
                      end
                      object EditCidadeRemetente: TLabeledEdit
                        Left = 284
                        Top = 115
                        Width = 282
                        Height = 21
                        Anchors = [akLeft, akTop, akRight]
                        EditLabel.Width = 37
                        EditLabel.Height = 13
                        EditLabel.Caption = 'Cidade:'
                        MaxLength = 60
                        TabOrder = 9
                      end
                      object EditUfRemetente: TLabeledEdit
                        Left = 572
                        Top = 115
                        Width = 39
                        Height = 21
                        Anchors = [akTop, akRight]
                        CharCase = ecUpperCase
                        EditLabel.Width = 17
                        EditLabel.Height = 13
                        EditLabel.Caption = 'UF:'
                        MaxLength = 2
                        TabOrder = 10
                      end
                      object EditComplementoRemetente: TLabeledEdit
                        Left = 622
                        Top = 73
                        Width = 308
                        Height = 21
                        Anchors = [akTop, akRight]
                        EditLabel.Width = 69
                        EditLabel.Height = 13
                        EditLabel.Caption = 'Complemento:'
                        MaxLength = 60
                        TabOrder = 6
                      end
                      object EditNomeRemetente: TLabeledEdit
                        Left = 353
                        Top = 32
                        Width = 577
                        Height = 21
                        Anchors = [akLeft, akTop, akRight]
                        EditLabel.Width = 31
                        EditLabel.Height = 13
                        EditLabel.Caption = 'Nome:'
                        MaxLength = 60
                        TabOrder = 2
                      end
                      object EditEmailRemetente: TLabeledEdit
                        Left = 9
                        Top = 159
                        Width = 921
                        Height = 21
                        Anchors = [akLeft, akTop, akRight]
                        EditLabel.Width = 32
                        EditLabel.Height = 13
                        EditLabel.Caption = 'E-Mail:'
                        MaxLength = 60
                        TabOrder = 13
                      end
                      object EditIdRemetente: TLabeledCalcEdit
                        Left = 9
                        Top = 32
                        Width = 54
                        Height = 21
                        ShowButton = False
                        TabOrder = 0
                        DecimalPlacesAlwaysShown = False
                        OnKeyUp = EditDestinatarioIdKeyUp
                        CalcEditLabel.Width = 37
                        CalcEditLabel.Height = 13
                        CalcEditLabel.Caption = 'Id [F1]:'
                      end
                      object EditIbgeRemetente: TLabeledEdit
                        Left = 215
                        Top = 115
                        Width = 63
                        Height = 21
                        EditLabel.Width = 49
                        EditLabel.Height = 13
                        EditLabel.Caption = 'C'#243'd IBGE:'
                        MaxLength = 60
                        TabOrder = 7
                      end
                      object EditCpfRemetente: TLabeledEdit
                        Left = 211
                        Top = 32
                        Width = 136
                        Height = 21
                        EditLabel.Width = 23
                        EditLabel.Height = 13
                        EditLabel.Caption = 'CPF:'
                        MaxLength = 14
                        TabOrder = 14
                      end
                    end
                  end
                  object Recebedor: TTabSheet
                    Caption = 'Recebedor'
                    ImageIndex = 2
                    DesignSize = (
                      946
                      270)
                    object GroupBox4: TGroupBox
                      Left = 3
                      Top = 10
                      Width = 940
                      Height = 191
                      Anchors = [akLeft, akTop, akRight]
                      Caption = 'Dados do Recebedor:'
                      TabOrder = 0
                      DesignSize = (
                        940
                        191)
                      object LabeledEdit1: TLabeledEdit
                        Left = 69
                        Top = 32
                        Width = 136
                        Height = 21
                        EditLabel.Width = 29
                        EditLabel.Height = 13
                        EditLabel.Caption = 'CNPJ:'
                        MaxLength = 14
                        TabOrder = 1
                      end
                      object LabeledEdit2: TLabeledEdit
                        Left = 617
                        Top = 115
                        Width = 138
                        Height = 21
                        Anchors = [akTop, akRight]
                        EditLabel.Width = 91
                        EditLabel.Height = 13
                        EditLabel.Caption = 'Inscri'#231#227'o Estadual:'
                        MaxLength = 14
                        TabOrder = 11
                      end
                      object LabeledEdit3: TLabeledEdit
                        Left = 761
                        Top = 115
                        Width = 169
                        Height = 21
                        Anchors = [akTop, akRight]
                        EditLabel.Width = 46
                        EditLabel.Height = 13
                        EditLabel.Caption = 'Telefone:'
                        MaxLength = 14
                        TabOrder = 12
                      end
                      object LabeledEdit4: TLabeledEdit
                        Left = 87
                        Top = 73
                        Width = 423
                        Height = 21
                        Anchors = [akLeft, akTop, akRight]
                        EditLabel.Width = 59
                        EditLabel.Height = 13
                        EditLabel.Caption = 'Logradouro:'
                        MaxLength = 60
                        TabOrder = 4
                      end
                      object LabeledEdit5: TLabeledEdit
                        Left = 516
                        Top = 73
                        Width = 100
                        Height = 21
                        Anchors = [akTop, akRight]
                        EditLabel.Width = 41
                        EditLabel.Height = 13
                        EditLabel.Caption = 'Numero:'
                        MaxLength = 60
                        TabOrder = 5
                      end
                      object LabeledEdit6: TLabeledEdit
                        Left = 9
                        Top = 115
                        Width = 200
                        Height = 21
                        EditLabel.Width = 32
                        EditLabel.Height = 13
                        EditLabel.Caption = 'Bairro:'
                        MaxLength = 60
                        TabOrder = 8
                      end
                      object LabeledEdit7: TLabeledEdit
                        Left = 9
                        Top = 73
                        Width = 72
                        Height = 21
                        EditLabel.Width = 23
                        EditLabel.Height = 13
                        EditLabel.Caption = 'CEP:'
                        MaxLength = 8
                        TabOrder = 3
                      end
                      object LabeledEdit8: TLabeledEdit
                        Left = 284
                        Top = 115
                        Width = 282
                        Height = 21
                        Anchors = [akLeft, akTop, akRight]
                        EditLabel.Width = 37
                        EditLabel.Height = 13
                        EditLabel.Caption = 'Cidade:'
                        MaxLength = 60
                        TabOrder = 9
                      end
                      object LabeledEdit9: TLabeledEdit
                        Left = 572
                        Top = 115
                        Width = 39
                        Height = 21
                        Anchors = [akTop, akRight]
                        CharCase = ecUpperCase
                        EditLabel.Width = 17
                        EditLabel.Height = 13
                        EditLabel.Caption = 'UF:'
                        MaxLength = 2
                        TabOrder = 10
                      end
                      object LabeledEdit10: TLabeledEdit
                        Left = 622
                        Top = 73
                        Width = 308
                        Height = 21
                        Anchors = [akTop, akRight]
                        EditLabel.Width = 69
                        EditLabel.Height = 13
                        EditLabel.Caption = 'Complemento:'
                        MaxLength = 60
                        TabOrder = 6
                      end
                      object LabeledEdit11: TLabeledEdit
                        Left = 353
                        Top = 32
                        Width = 577
                        Height = 21
                        Anchors = [akLeft, akTop, akRight]
                        EditLabel.Width = 31
                        EditLabel.Height = 13
                        EditLabel.Caption = 'Nome:'
                        MaxLength = 60
                        TabOrder = 2
                      end
                      object LabeledEdit12: TLabeledEdit
                        Left = 9
                        Top = 159
                        Width = 921
                        Height = 21
                        Anchors = [akLeft, akTop, akRight]
                        EditLabel.Width = 32
                        EditLabel.Height = 13
                        EditLabel.Caption = 'E-Mail:'
                        MaxLength = 60
                        TabOrder = 13
                      end
                      object LabeledCalcEdit1: TLabeledCalcEdit
                        Left = 9
                        Top = 32
                        Width = 54
                        Height = 21
                        ShowButton = False
                        TabOrder = 0
                        DecimalPlacesAlwaysShown = False
                        OnKeyUp = EditDestinatarioIdKeyUp
                        CalcEditLabel.Width = 37
                        CalcEditLabel.Height = 13
                        CalcEditLabel.Caption = 'Id [F1]:'
                      end
                      object LabeledEdit13: TLabeledEdit
                        Left = 215
                        Top = 115
                        Width = 63
                        Height = 21
                        EditLabel.Width = 49
                        EditLabel.Height = 13
                        EditLabel.Caption = 'C'#243'd IBGE:'
                        MaxLength = 60
                        TabOrder = 7
                      end
                      object LabeledEdit14: TLabeledEdit
                        Left = 211
                        Top = 32
                        Width = 136
                        Height = 21
                        EditLabel.Width = 23
                        EditLabel.Height = 13
                        EditLabel.Caption = 'CPF:'
                        MaxLength = 14
                        TabOrder = 14
                      end
                    end
                  end
                  object Expedidor: TTabSheet
                    Caption = 'Expedidor'
                    ImageIndex = 3
                    DesignSize = (
                      946
                      270)
                    object GroupBox5: TGroupBox
                      Left = 3
                      Top = 10
                      Width = 940
                      Height = 191
                      Anchors = [akLeft, akTop, akRight]
                      Caption = 'Dados do Expedidor:'
                      TabOrder = 0
                      DesignSize = (
                        940
                        191)
                      object LabeledEdit15: TLabeledEdit
                        Left = 69
                        Top = 32
                        Width = 136
                        Height = 21
                        EditLabel.Width = 29
                        EditLabel.Height = 13
                        EditLabel.Caption = 'CNPJ:'
                        MaxLength = 14
                        TabOrder = 1
                      end
                      object LabeledEdit16: TLabeledEdit
                        Left = 617
                        Top = 115
                        Width = 138
                        Height = 21
                        Anchors = [akTop, akRight]
                        EditLabel.Width = 91
                        EditLabel.Height = 13
                        EditLabel.Caption = 'Inscri'#231#227'o Estadual:'
                        MaxLength = 14
                        TabOrder = 11
                      end
                      object LabeledEdit17: TLabeledEdit
                        Left = 761
                        Top = 115
                        Width = 169
                        Height = 21
                        Anchors = [akTop, akRight]
                        EditLabel.Width = 46
                        EditLabel.Height = 13
                        EditLabel.Caption = 'Telefone:'
                        MaxLength = 14
                        TabOrder = 12
                      end
                      object LabeledEdit18: TLabeledEdit
                        Left = 87
                        Top = 73
                        Width = 423
                        Height = 21
                        Anchors = [akLeft, akTop, akRight]
                        EditLabel.Width = 59
                        EditLabel.Height = 13
                        EditLabel.Caption = 'Logradouro:'
                        MaxLength = 60
                        TabOrder = 4
                      end
                      object LabeledEdit19: TLabeledEdit
                        Left = 516
                        Top = 73
                        Width = 100
                        Height = 21
                        Anchors = [akTop, akRight]
                        EditLabel.Width = 41
                        EditLabel.Height = 13
                        EditLabel.Caption = 'Numero:'
                        MaxLength = 60
                        TabOrder = 5
                      end
                      object LabeledEdit20: TLabeledEdit
                        Left = 9
                        Top = 115
                        Width = 200
                        Height = 21
                        EditLabel.Width = 32
                        EditLabel.Height = 13
                        EditLabel.Caption = 'Bairro:'
                        MaxLength = 60
                        TabOrder = 8
                      end
                      object LabeledEdit21: TLabeledEdit
                        Left = 9
                        Top = 73
                        Width = 72
                        Height = 21
                        EditLabel.Width = 23
                        EditLabel.Height = 13
                        EditLabel.Caption = 'CEP:'
                        MaxLength = 8
                        TabOrder = 3
                      end
                      object LabeledEdit22: TLabeledEdit
                        Left = 284
                        Top = 115
                        Width = 282
                        Height = 21
                        Anchors = [akLeft, akTop, akRight]
                        EditLabel.Width = 37
                        EditLabel.Height = 13
                        EditLabel.Caption = 'Cidade:'
                        MaxLength = 60
                        TabOrder = 9
                      end
                      object LabeledEdit23: TLabeledEdit
                        Left = 572
                        Top = 115
                        Width = 39
                        Height = 21
                        Anchors = [akTop, akRight]
                        CharCase = ecUpperCase
                        EditLabel.Width = 17
                        EditLabel.Height = 13
                        EditLabel.Caption = 'UF:'
                        MaxLength = 2
                        TabOrder = 10
                      end
                      object LabeledEdit24: TLabeledEdit
                        Left = 622
                        Top = 73
                        Width = 308
                        Height = 21
                        Anchors = [akTop, akRight]
                        EditLabel.Width = 69
                        EditLabel.Height = 13
                        EditLabel.Caption = 'Complemento:'
                        MaxLength = 60
                        TabOrder = 6
                      end
                      object LabeledEdit25: TLabeledEdit
                        Left = 353
                        Top = 32
                        Width = 577
                        Height = 21
                        Anchors = [akLeft, akTop, akRight]
                        EditLabel.Width = 31
                        EditLabel.Height = 13
                        EditLabel.Caption = 'Nome:'
                        MaxLength = 60
                        TabOrder = 2
                      end
                      object LabeledEdit26: TLabeledEdit
                        Left = 9
                        Top = 159
                        Width = 921
                        Height = 21
                        Anchors = [akLeft, akTop, akRight]
                        EditLabel.Width = 32
                        EditLabel.Height = 13
                        EditLabel.Caption = 'E-Mail:'
                        MaxLength = 60
                        TabOrder = 13
                      end
                      object LabeledCalcEdit2: TLabeledCalcEdit
                        Left = 9
                        Top = 32
                        Width = 54
                        Height = 21
                        ShowButton = False
                        TabOrder = 0
                        DecimalPlacesAlwaysShown = False
                        OnKeyUp = EditDestinatarioIdKeyUp
                        CalcEditLabel.Width = 37
                        CalcEditLabel.Height = 13
                        CalcEditLabel.Caption = 'Id [F1]:'
                      end
                      object LabeledEdit27: TLabeledEdit
                        Left = 215
                        Top = 115
                        Width = 63
                        Height = 21
                        EditLabel.Width = 49
                        EditLabel.Height = 13
                        EditLabel.Caption = 'C'#243'd IBGE:'
                        MaxLength = 60
                        TabOrder = 7
                      end
                      object LabeledEdit28: TLabeledEdit
                        Left = 211
                        Top = 32
                        Width = 136
                        Height = 21
                        EditLabel.Width = 23
                        EditLabel.Height = 13
                        EditLabel.Caption = 'CPF:'
                        MaxLength = 14
                        TabOrder = 14
                      end
                    end
                  end
                  object Tomador: TTabSheet
                    Caption = 'Tomador'
                    ImageIndex = 4
                    DesignSize = (
                      946
                      270)
                    object GroupBox6: TGroupBox
                      Left = 3
                      Top = 10
                      Width = 940
                      Height = 191
                      Anchors = [akLeft, akTop, akRight]
                      Caption = 'Dados do Tomador:'
                      TabOrder = 0
                      DesignSize = (
                        940
                        191)
                      object LabeledEdit29: TLabeledEdit
                        Left = 69
                        Top = 32
                        Width = 136
                        Height = 21
                        EditLabel.Width = 29
                        EditLabel.Height = 13
                        EditLabel.Caption = 'CNPJ:'
                        MaxLength = 14
                        TabOrder = 1
                      end
                      object LabeledEdit30: TLabeledEdit
                        Left = 617
                        Top = 115
                        Width = 138
                        Height = 21
                        Anchors = [akTop, akRight]
                        EditLabel.Width = 91
                        EditLabel.Height = 13
                        EditLabel.Caption = 'Inscri'#231#227'o Estadual:'
                        MaxLength = 14
                        TabOrder = 11
                      end
                      object LabeledEdit31: TLabeledEdit
                        Left = 761
                        Top = 115
                        Width = 169
                        Height = 21
                        Anchors = [akTop, akRight]
                        EditLabel.Width = 46
                        EditLabel.Height = 13
                        EditLabel.Caption = 'Telefone:'
                        MaxLength = 14
                        TabOrder = 12
                      end
                      object LabeledEdit32: TLabeledEdit
                        Left = 87
                        Top = 73
                        Width = 423
                        Height = 21
                        Anchors = [akLeft, akTop, akRight]
                        EditLabel.Width = 59
                        EditLabel.Height = 13
                        EditLabel.Caption = 'Logradouro:'
                        MaxLength = 60
                        TabOrder = 4
                      end
                      object LabeledEdit33: TLabeledEdit
                        Left = 516
                        Top = 73
                        Width = 100
                        Height = 21
                        Anchors = [akTop, akRight]
                        EditLabel.Width = 41
                        EditLabel.Height = 13
                        EditLabel.Caption = 'Numero:'
                        MaxLength = 60
                        TabOrder = 5
                      end
                      object LabeledEdit34: TLabeledEdit
                        Left = 9
                        Top = 115
                        Width = 200
                        Height = 21
                        EditLabel.Width = 32
                        EditLabel.Height = 13
                        EditLabel.Caption = 'Bairro:'
                        MaxLength = 60
                        TabOrder = 8
                      end
                      object LabeledEdit35: TLabeledEdit
                        Left = 9
                        Top = 73
                        Width = 72
                        Height = 21
                        EditLabel.Width = 23
                        EditLabel.Height = 13
                        EditLabel.Caption = 'CEP:'
                        MaxLength = 8
                        TabOrder = 3
                      end
                      object LabeledEdit36: TLabeledEdit
                        Left = 284
                        Top = 115
                        Width = 282
                        Height = 21
                        Anchors = [akLeft, akTop, akRight]
                        EditLabel.Width = 37
                        EditLabel.Height = 13
                        EditLabel.Caption = 'Cidade:'
                        MaxLength = 60
                        TabOrder = 9
                      end
                      object LabeledEdit37: TLabeledEdit
                        Left = 572
                        Top = 115
                        Width = 39
                        Height = 21
                        Anchors = [akTop, akRight]
                        CharCase = ecUpperCase
                        EditLabel.Width = 17
                        EditLabel.Height = 13
                        EditLabel.Caption = 'UF:'
                        MaxLength = 2
                        TabOrder = 10
                      end
                      object LabeledEdit38: TLabeledEdit
                        Left = 622
                        Top = 73
                        Width = 308
                        Height = 21
                        Anchors = [akTop, akRight]
                        EditLabel.Width = 69
                        EditLabel.Height = 13
                        EditLabel.Caption = 'Complemento:'
                        MaxLength = 60
                        TabOrder = 6
                      end
                      object LabeledEdit39: TLabeledEdit
                        Left = 353
                        Top = 32
                        Width = 577
                        Height = 21
                        Anchors = [akLeft, akTop, akRight]
                        EditLabel.Width = 31
                        EditLabel.Height = 13
                        EditLabel.Caption = 'Nome:'
                        MaxLength = 60
                        TabOrder = 2
                      end
                      object LabeledEdit40: TLabeledEdit
                        Left = 9
                        Top = 159
                        Width = 921
                        Height = 21
                        Anchors = [akLeft, akTop, akRight]
                        EditLabel.Width = 32
                        EditLabel.Height = 13
                        EditLabel.Caption = 'E-Mail:'
                        MaxLength = 60
                        TabOrder = 13
                      end
                      object LabeledCalcEdit3: TLabeledCalcEdit
                        Left = 9
                        Top = 32
                        Width = 54
                        Height = 21
                        ShowButton = False
                        TabOrder = 0
                        DecimalPlacesAlwaysShown = False
                        OnKeyUp = EditDestinatarioIdKeyUp
                        CalcEditLabel.Width = 37
                        CalcEditLabel.Height = 13
                        CalcEditLabel.Caption = 'Id [F1]:'
                      end
                      object LabeledEdit41: TLabeledEdit
                        Left = 215
                        Top = 115
                        Width = 63
                        Height = 21
                        EditLabel.Width = 49
                        EditLabel.Height = 13
                        EditLabel.Caption = 'C'#243'd IBGE:'
                        MaxLength = 60
                        TabOrder = 7
                      end
                      object LabeledEdit42: TLabeledEdit
                        Left = 211
                        Top = 32
                        Width = 136
                        Height = 21
                        EditLabel.Width = 23
                        EditLabel.Height = 13
                        EditLabel.Caption = 'CPF:'
                        MaxLength = 14
                        TabOrder = 14
                      end
                    end
                  end
                end
              end
            end
            object TabSheetCobranca: TTabSheet
              Caption = 'Cobran'#231'a'
              ImageIndex = 7
              object PanelCobranca: TPanel
                Left = 0
                Top = 0
                Width = 956
                Height = 300
                Align = alClient
                BevelInner = bvLowered
                BevelOuter = bvNone
                ParentBackground = False
                TabOrder = 0
                object PanelFatura: TPanel
                  Left = 1
                  Top = 31
                  Width = 954
                  Height = 123
                  Align = alTop
                  BevelOuter = bvLowered
                  TabOrder = 0
                  DesignSize = (
                    954
                    123)
                  object GroupBoxFatura: TGroupBox
                    Left = 8
                    Top = 6
                    Width = 938
                    Height = 107
                    Anchors = [akLeft, akTop, akRight]
                    Caption = 'Fatura:'
                    TabOrder = 0
                    DesignSize = (
                      938
                      107)
                    object EditFaturaNumero: TLabeledEdit
                      Left = 10
                      Top = 33
                      Width = 917
                      Height = 21
                      Anchors = [akLeft, akTop, akRight]
                      EditLabel.Width = 41
                      EditLabel.Height = 13
                      EditLabel.Caption = 'N'#250'mero:'
                      MaxLength = 60
                      TabOrder = 0
                    end
                    object EditFaturaValorOriginal: TLabeledCalcEdit
                      Left = 10
                      Top = 77
                      Width = 121
                      Height = 21
                      DisplayFormat = '###,###,##0.00'
                      ShowButton = False
                      TabOrder = 1
                      DecimalPlacesAlwaysShown = False
                      CalcEditLabel.Width = 67
                      CalcEditLabel.Height = 13
                      CalcEditLabel.Caption = 'Valor Original:'
                    end
                    object EditFaturaValorDesconto: TLabeledCalcEdit
                      Left = 137
                      Top = 77
                      Width = 121
                      Height = 21
                      DisplayFormat = '###,###,##0.00'
                      ShowButton = False
                      TabOrder = 2
                      DecimalPlacesAlwaysShown = False
                      CalcEditLabel.Width = 91
                      CalcEditLabel.Height = 13
                      CalcEditLabel.Caption = 'Valor do Desconto:'
                    end
                    object EditFaturaValorLiquido: TLabeledCalcEdit
                      Left = 264
                      Top = 77
                      Width = 121
                      Height = 21
                      DisplayFormat = '###,###,##0.00'
                      ShowButton = False
                      TabOrder = 3
                      DecimalPlacesAlwaysShown = False
                      CalcEditLabel.Width = 64
                      CalcEditLabel.Height = 13
                      CalcEditLabel.Caption = 'Valor L'#237'quido:'
                    end
                    object Button1: TButton
                      Left = 720
                      Top = 72
                      Width = 203
                      Height = 25
                      Caption = 'Financeiro'
                      TabOrder = 4
                      OnClick = Button1Click
                    end
                  end
                end
                object GroupBox1: TGroupBox
                  Left = 1
                  Top = 154
                  Width = 954
                  Height = 145
                  Align = alClient
                  Caption = 'Duplicatas'
                  TabOrder = 1
                  object GridDuplicatas: TJvDBUltimGrid
                    Left = 2
                    Top = 15
                    Width = 950
                    Height = 128
                    Align = alClient
                    DataSource = FDataModuleCTe.DSDuplicata
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
                object ActionToolBar5: TActionToolBar
                  AlignWithMargins = True
                  Left = 4
                  Top = 4
                  Width = 948
                  Height = 24
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
              end
            end
            object TabSheetNF: TTabSheet
              Caption = 'Notas Fiscais'
              ImageIndex = 1
              object JvNetscapeSplitter1: TJvNetscapeSplitter
                Left = 0
                Top = 279
                Width = 956
                Height = 20
                Cursor = crDefault
                Align = alBottom
                Color = clBtnFace
                MinSize = 1
                ParentColor = False
                Maximized = False
                Minimized = True
                ButtonCursor = crDefault
                ButtonStyle = bsWindows
                WindowsButtons = [wbMin, wbMax]
                ButtonWidth = 300
                ExplicitTop = 0
                ExplicitWidth = 1013
                RestorePos = 185
              end
              object PanelDetalhes: TPanel
                Left = 0
                Top = 0
                Width = 956
                Height = 279
                Align = alClient
                BevelInner = bvLowered
                BevelOuter = bvNone
                ParentBackground = False
                TabOrder = 0
                object GridItens: TJvDBUltimGrid
                  Left = 1
                  Top = 33
                  Width = 954
                  Height = 245
                  Align = alClient
                  DataSource = FDataModuleCTe.DSCteNf
                  TabOrder = 0
                  TitleFont.Charset = DEFAULT_CHARSET
                  TitleFont.Color = clWindowText
                  TitleFont.Height = -11
                  TitleFont.Name = 'Tahoma'
                  TitleFont.Style = []
                  OnKeyDown = GridItensKeyDown
                  SelectColumnsDialogStrings.Caption = 'Select columns'
                  SelectColumnsDialogStrings.OK = '&OK'
                  SelectColumnsDialogStrings.NoSelectionWarning = 'At least one column must be visible!'
                  EditControls = <>
                  RowsHeight = 17
                  TitleRowHeight = 17
                end
                object ActionToolBar1: TActionToolBar
                  AlignWithMargins = True
                  Left = 4
                  Top = 4
                  Width = 948
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
              end
              object PanelDetalhesAnexo: TPanel
                Left = 0
                Top = 299
                Width = 956
                Height = 1
                Align = alBottom
                BevelInner = bvLowered
                BevelOuter = bvNone
                TabOrder = 1
              end
            end
            object TabSheetTipoTransporte: TTabSheet
              Caption = 'Tipo Transporte'
              ImageIndex = 2
              object PageControlReferenciado: TPageControl
                Left = 0
                Top = 30
                Width = 956
                Height = 270
                ActivePage = TabSheetTransporteAereo
                Align = alClient
                TabOrder = 0
                object TabSheetTransporteAereo: TTabSheet
                  Caption = 'A'#233'reo'
                  object GridCTeReferenciada: TJvDBUltimGrid
                    Left = 0
                    Top = 47
                    Width = 948
                    Height = 195
                    Align = alBottom
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
                  object EditAereoNumeroMinuta: TLabeledEdit
                    Left = 9
                    Top = 20
                    Width = 128
                    Height = 21
                    EditLabel.Width = 36
                    EditLabel.Height = 13
                    EditLabel.Caption = 'Minuta:'
                    ReadOnly = True
                    TabOrder = 1
                  end
                  object LabeledEdit43: TLabeledEdit
                    Left = 143
                    Top = 20
                    Width = 128
                    Height = 21
                    EditLabel.Width = 72
                    EditLabel.Height = 13
                    EditLabel.Caption = 'Conhecimento:'
                    ReadOnly = True
                    TabOrder = 2
                  end
                  object LabeledDateEdit1: TLabeledDateEdit
                    Left = 277
                    Top = 20
                    Width = 110
                    Height = 21
                    ShowNullDate = False
                    TabOrder = 3
                    DateEditLabel.Width = 110
                    DateEditLabel.Height = 13
                    DateEditLabel.Caption = 'Data Prevista Entrega:'
                  end
                end
                object TabSheetTransporteRodoviario: TTabSheet
                  Caption = 'Rodovi'#225'rio'
                  ImageIndex = 1
                  DesignSize = (
                    948
                    242)
                  object GroupBox7: TGroupBox
                    Left = 3
                    Top = 7
                    Width = 940
                    Height = 65
                    Anchors = [akLeft, akTop, akRight]
                    Caption = 'Cabe'#231'alho:'
                    TabOrder = 0
                    object LabeledEdit44: TLabeledEdit
                      Left = 176
                      Top = 34
                      Width = 133
                      Height = 21
                      EditLabel.Width = 38
                      EditLabel.Height = 13
                      EditLabel.Caption = 'RNTRC:'
                      MaxLength = 20
                      TabOrder = 2
                    end
                    object LabeledEdit45: TLabeledEdit
                      Left = 55
                      Top = 34
                      Width = 115
                      Height = 21
                      EditLabel.Width = 90
                      EditLabel.Height = 13
                      EditLabel.Caption = 'Indicador Lota'#231#227'o:'
                      MaxLength = 8
                      TabOrder = 1
                    end
                    object LabeledEdit46: TLabeledEdit
                      Left = 10
                      Top = 34
                      Width = 39
                      Height = 21
                      CharCase = ecUpperCase
                      EditLabel.Width = 29
                      EditLabel.Height = 13
                      EditLabel.Caption = 'CIOT:'
                      MaxLength = 2
                      TabOrder = 0
                    end
                    object LabeledDateEdit2: TLabeledDateEdit
                      Left = 315
                      Top = 34
                      Width = 110
                      Height = 21
                      ShowNullDate = False
                      TabOrder = 3
                      DateEditLabel.Width = 110
                      DateEditLabel.Height = 13
                      DateEditLabel.Caption = 'Data Prevista Entrega:'
                    end
                  end
                  object PageControl1: TPageControl
                    Left = 0
                    Top = 68
                    Width = 948
                    Height = 174
                    ActivePage = TabSheet2
                    Align = alBottom
                    TabOrder = 1
                    object TabSheet2: TTabSheet
                      Caption = 'Lacre'
                      object JvDBUltimGrid4: TJvDBUltimGrid
                        Left = 0
                        Top = 0
                        Width = 940
                        Height = 146
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
                    object TabSheet3: TTabSheet
                      Caption = 'Motorista'
                      ImageIndex = 1
                      object JvDBUltimGrid1: TJvDBUltimGrid
                        Left = 0
                        Top = 0
                        Width = 940
                        Height = 146
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
                    object TabSheet4: TTabSheet
                      Caption = 'Ped'#225'gio'
                      ImageIndex = 3
                      object JvDBUltimGrid2: TJvDBUltimGrid
                        Left = 0
                        Top = 0
                        Width = 940
                        Height = 146
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
                    object TabSheet5: TTabSheet
                      Caption = 'Ve'#237'culo'
                      ImageIndex = 4
                      object JvDBUltimGrid3: TJvDBUltimGrid
                        Left = 0
                        Top = 0
                        Width = 940
                        Height = 146
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
                object TabSheetTransporteAquaviario: TTabSheet
                  Caption = 'Aquavi'#225'rio'
                  ImageIndex = 3
                  DesignSize = (
                    948
                    242)
                  object GroupBox8: TGroupBox
                    Left = 3
                    Top = 7
                    Width = 940
                    Height = 65
                    Anchors = [akLeft, akTop, akRight]
                    Caption = 'Cabe'#231'alho:'
                    TabOrder = 0
                    object LabeledEdit48: TLabeledEdit
                      Left = 79
                      Top = 34
                      Width = 115
                      Height = 21
                      EditLabel.Width = 45
                      EditLabel.Height = 13
                      EditLabel.Caption = 'Controle:'
                      MaxLength = 8
                      TabOrder = 1
                    end
                    object LabeledEdit49: TLabeledEdit
                      Left = 10
                      Top = 34
                      Width = 63
                      Height = 21
                      CharCase = ecUpperCase
                      EditLabel.Width = 41
                      EditLabel.Height = 13
                      EditLabel.Caption = 'Booking:'
                      MaxLength = 2
                      TabOrder = 0
                    end
                    object LabeledCalcEdit4: TLabeledCalcEdit
                      Left = 200
                      Top = 34
                      Width = 121
                      Height = 21
                      DisplayFormat = '###,###,##0.00'
                      ReadOnly = True
                      ShowButton = False
                      TabOrder = 2
                      DecimalPlacesAlwaysShown = False
                      CalcEditLabel.Width = 79
                      CalcEditLabel.Height = 13
                      CalcEditLabel.Caption = 'Valor Presta'#231#227'o:'
                    end
                    object LabeledCalcEdit5: TLabeledCalcEdit
                      Left = 327
                      Top = 34
                      Width = 121
                      Height = 21
                      DisplayFormat = '###,###,##0.00'
                      ReadOnly = True
                      ShowButton = False
                      TabOrder = 3
                      DecimalPlacesAlwaysShown = False
                      CalcEditLabel.Width = 40
                      CalcEditLabel.Height = 13
                      CalcEditLabel.Caption = 'AFRMM:'
                    end
                  end
                  object PageControl2: TPageControl
                    Left = 0
                    Top = 50
                    Width = 948
                    Height = 192
                    ActivePage = TabSheet6
                    Align = alBottom
                    TabOrder = 1
                    object TabSheet6: TTabSheet
                      Caption = 'Balsa'
                      object JvDBUltimGrid5: TJvDBUltimGrid
                        Left = 0
                        Top = 0
                        Width = 940
                        Height = 164
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
                object TabSheetTransporteFerroviario: TTabSheet
                  Caption = 'Ferrovi'#225'rio'
                  ImageIndex = 4
                  DesignSize = (
                    948
                    242)
                  object GroupBox9: TGroupBox
                    Left = 3
                    Top = 7
                    Width = 940
                    Height = 65
                    Anchors = [akLeft, akTop, akRight]
                    Caption = 'Cabe'#231'alho:'
                    TabOrder = 0
                    object LabeledEdit47: TLabeledEdit
                      Left = 79
                      Top = 34
                      Width = 115
                      Height = 21
                      EditLabel.Width = 97
                      EditLabel.Height = 13
                      EditLabel.Caption = 'Resp. Faturamento:'
                      MaxLength = 8
                      TabOrder = 1
                    end
                    object LabeledEdit50: TLabeledEdit
                      Left = 10
                      Top = 34
                      Width = 63
                      Height = 21
                      CharCase = ecUpperCase
                      EditLabel.Width = 42
                      EditLabel.Height = 13
                      EditLabel.Caption = 'Tr'#225'fego:'
                      MaxLength = 2
                      TabOrder = 0
                    end
                    object LabeledCalcEdit6: TLabeledCalcEdit
                      Left = 200
                      Top = 34
                      Width = 121
                      Height = 21
                      DisplayFormat = '###,###,##0.00'
                      ReadOnly = True
                      ShowButton = False
                      TabOrder = 2
                      DecimalPlacesAlwaysShown = False
                      CalcEditLabel.Width = 57
                      CalcEditLabel.Height = 13
                      CalcEditLabel.Caption = 'Valor Frete:'
                    end
                  end
                  object PageControl3: TPageControl
                    Left = 0
                    Top = 50
                    Width = 948
                    Height = 192
                    ActivePage = TabSheet7
                    Align = alBottom
                    TabOrder = 1
                    object TabSheet7: TTabSheet
                      Caption = 'Ferrovia'
                      object JvDBUltimGrid6: TJvDBUltimGrid
                        Left = 0
                        Top = 0
                        Width = 940
                        Height = 164
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
                    object TabSheet8: TTabSheet
                      Caption = 'Vag'#227'o'
                      ImageIndex = 1
                      object JvDBUltimGrid7: TJvDBUltimGrid
                        Left = 0
                        Top = 0
                        Width = 940
                        Height = 164
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
              object ActionToolBar2: TActionToolBar
                AlignWithMargins = True
                Left = 3
                Top = 3
                Width = 950
                Height = 24
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
            end
            object TabSheetEntregaRetirada: TTabSheet
              Caption = 'Entrega / Coleta'
              ImageIndex = 6
              object PanelEntregaRetirada: TPanel
                Left = 0
                Top = 0
                Width = 956
                Height = 300
                Align = alClient
                BevelInner = bvLowered
                BevelOuter = bvNone
                BiDiMode = bdLeftToRight
                Ctl3D = True
                UseDockManager = False
                DoubleBuffered = False
                FullRepaint = False
                ParentBiDiMode = False
                ParentBackground = False
                ParentCtl3D = False
                ParentDoubleBuffered = False
                ShowCaption = False
                TabOrder = 0
                DesignSize = (
                  956
                  300)
                object GroupBoxEntrega: TGroupBox
                  Left = 8
                  Top = 35
                  Width = 938
                  Height = 113
                  Anchors = [akLeft, akTop, akRight]
                  Caption = 'Dados para entrega:'
                  TabOrder = 0
                  DesignSize = (
                    938
                    113)
                  object EditEntregaCpfCnpj: TLabeledEdit
                    Left = 9
                    Top = 31
                    Width = 136
                    Height = 21
                    EditLabel.Width = 58
                    EditLabel.Height = 13
                    EditLabel.Caption = 'CPF / CNPJ:'
                    MaxLength = 14
                    TabOrder = 0
                  end
                  object EditEntregaLogradouro: TLabeledEdit
                    Left = 154
                    Top = 31
                    Width = 356
                    Height = 21
                    Anchors = [akLeft, akTop, akRight]
                    EditLabel.Width = 59
                    EditLabel.Height = 13
                    EditLabel.Caption = 'Logradouro:'
                    MaxLength = 60
                    TabOrder = 1
                  end
                  object EditEntregaNumero: TLabeledEdit
                    Left = 520
                    Top = 31
                    Width = 100
                    Height = 21
                    Anchors = [akTop, akRight]
                    EditLabel.Width = 41
                    EditLabel.Height = 13
                    EditLabel.Caption = 'Numero:'
                    MaxLength = 60
                    TabOrder = 2
                  end
                  object EditEntregaBairro: TLabeledEdit
                    Left = 9
                    Top = 76
                    Width = 200
                    Height = 21
                    EditLabel.Width = 32
                    EditLabel.Height = 13
                    EditLabel.Caption = 'Bairro:'
                    MaxLength = 60
                    TabOrder = 4
                  end
                  object EditEntregaCidade: TLabeledEdit
                    Left = 284
                    Top = 76
                    Width = 598
                    Height = 21
                    Anchors = [akLeft, akTop, akRight]
                    EditLabel.Width = 37
                    EditLabel.Height = 13
                    EditLabel.Caption = 'Cidade:'
                    MaxLength = 60
                    TabOrder = 6
                  end
                  object EditEntregaUf: TLabeledEdit
                    Left = 889
                    Top = 76
                    Width = 39
                    Height = 21
                    Anchors = [akTop, akRight]
                    CharCase = ecUpperCase
                    EditLabel.Width = 17
                    EditLabel.Height = 13
                    EditLabel.Caption = 'UF:'
                    MaxLength = 2
                    TabOrder = 7
                  end
                  object EditEntregaComplemento: TLabeledEdit
                    Left = 628
                    Top = 31
                    Width = 300
                    Height = 21
                    Anchors = [akTop, akRight]
                    EditLabel.Width = 69
                    EditLabel.Height = 13
                    EditLabel.Caption = 'Complemento:'
                    MaxLength = 60
                    TabOrder = 3
                  end
                  object EditEntregaIbge: TLabeledCalcEdit
                    Left = 215
                    Top = 76
                    Width = 63
                    Height = 21
                    ShowButton = False
                    TabOrder = 5
                    DecimalPlacesAlwaysShown = False
                    CalcEditLabel.Width = 63
                    CalcEditLabel.Height = 13
                    CalcEditLabel.Caption = 'C'#243'digo IBGE:'
                  end
                end
                object GroupBoxRetirada: TGroupBox
                  Left = 8
                  Top = 165
                  Width = 938
                  Height = 113
                  Anchors = [akLeft, akTop, akRight]
                  Caption = 'Dados para coleta:'
                  TabOrder = 1
                  DesignSize = (
                    938
                    113)
                  object EditRetiradaCpfCnpj: TLabeledEdit
                    Left = 9
                    Top = 31
                    Width = 136
                    Height = 21
                    EditLabel.Width = 58
                    EditLabel.Height = 13
                    EditLabel.Caption = 'CPF / CNPJ:'
                    MaxLength = 14
                    TabOrder = 0
                  end
                  object EditRetiradaLogradouro: TLabeledEdit
                    Left = 154
                    Top = 31
                    Width = 356
                    Height = 21
                    Anchors = [akLeft, akTop, akRight]
                    EditLabel.Width = 59
                    EditLabel.Height = 13
                    EditLabel.Caption = 'Logradouro:'
                    MaxLength = 60
                    TabOrder = 1
                  end
                  object EditRetiradaNumero: TLabeledEdit
                    Left = 520
                    Top = 31
                    Width = 100
                    Height = 21
                    Anchors = [akTop, akRight]
                    EditLabel.Width = 41
                    EditLabel.Height = 13
                    EditLabel.Caption = 'Numero:'
                    MaxLength = 60
                    TabOrder = 2
                  end
                  object EditRetiradaBairro: TLabeledEdit
                    Left = 9
                    Top = 76
                    Width = 200
                    Height = 21
                    EditLabel.Width = 32
                    EditLabel.Height = 13
                    EditLabel.Caption = 'Bairro:'
                    MaxLength = 60
                    TabOrder = 4
                  end
                  object EditRetiradaCidade: TLabeledEdit
                    Left = 284
                    Top = 76
                    Width = 598
                    Height = 21
                    Anchors = [akLeft, akTop, akRight]
                    EditLabel.Width = 37
                    EditLabel.Height = 13
                    EditLabel.Caption = 'Cidade:'
                    MaxLength = 60
                    TabOrder = 6
                  end
                  object EditRetiradaUf: TLabeledEdit
                    Left = 889
                    Top = 76
                    Width = 39
                    Height = 21
                    Anchors = [akTop, akRight]
                    CharCase = ecUpperCase
                    EditLabel.Width = 17
                    EditLabel.Height = 13
                    EditLabel.Caption = 'UF:'
                    MaxLength = 2
                    TabOrder = 7
                  end
                  object EditRetiradaComplemento: TLabeledEdit
                    Left = 628
                    Top = 31
                    Width = 300
                    Height = 21
                    Anchors = [akTop, akRight]
                    EditLabel.Width = 69
                    EditLabel.Height = 13
                    EditLabel.Caption = 'Complemento:'
                    MaxLength = 60
                    TabOrder = 3
                  end
                  object EditRetiradaIbge: TLabeledCalcEdit
                    Left = 215
                    Top = 76
                    Width = 63
                    Height = 21
                    ShowButton = False
                    TabOrder = 5
                    DecimalPlacesAlwaysShown = False
                    CalcEditLabel.Width = 63
                    CalcEditLabel.Height = 13
                    CalcEditLabel.Caption = 'C'#243'digo IBGE:'
                  end
                end
                object ActionToolBar3: TActionToolBar
                  AlignWithMargins = True
                  Left = 4
                  Top = 4
                  Width = 948
                  Height = 24
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
              end
            end
            object TabSheetRespostaSefaz: TTabSheet
              Caption = 'Respostas Sefaz'
              ImageIndex = 3
              object MemoRespostas: TMemo
                Left = 0
                Top = 0
                Width = 956
                Height = 300
                Align = alClient
                ScrollBars = ssVertical
                TabOrder = 0
              end
            end
          end
          object PageControlTotais: TPageControl
            Left = 0
            Top = 388
            Width = 964
            Height = 113
            ActivePage = tsTotaisGeral
            Align = alBottom
            TabOrder = 2
            object tsTotaisGeral: TTabSheet
              Caption = 'Totais Geral'
              object PanelTotais: TPanel
                Left = 0
                Top = 0
                Width = 956
                Height = 85
                Align = alClient
                BevelInner = bvLowered
                BevelOuter = bvNone
                ParentBackground = False
                TabOrder = 0
                DesignSize = (
                  956
                  85)
                object EditBCIcms: TLabeledCalcEdit
                  Left = 12
                  Top = 20
                  Width = 121
                  Height = 21
                  DisplayFormat = '###,###,##0.00'
                  ReadOnly = True
                  ShowButton = False
                  TabOrder = 0
                  DecimalPlacesAlwaysShown = False
                  CalcEditLabel.Width = 122
                  CalcEditLabel.Height = 13
                  CalcEditLabel.Caption = 'Base de C'#225'lculo do ICMS:'
                end
                object EditValorIcms: TLabeledCalcEdit
                  Left = 139
                  Top = 20
                  Width = 121
                  Height = 21
                  DisplayFormat = '###,###,##0.00'
                  ReadOnly = True
                  ShowButton = False
                  TabOrder = 1
                  DecimalPlacesAlwaysShown = False
                  CalcEditLabel.Width = 71
                  CalcEditLabel.Height = 13
                  CalcEditLabel.Caption = 'Valor do ICMS:'
                end
                object EditBCIcmsSt: TLabeledCalcEdit
                  Left = 266
                  Top = 20
                  Width = 121
                  Height = 21
                  DisplayFormat = '###,###,##0.00'
                  ReadOnly = True
                  ShowButton = False
                  TabOrder = 2
                  DecimalPlacesAlwaysShown = False
                  CalcEditLabel.Width = 107
                  CalcEditLabel.Height = 13
                  CalcEditLabel.Caption = 'Base C'#225'lculo ICMS ST:'
                end
                object EditValorIcmsSt: TLabeledCalcEdit
                  Left = 393
                  Top = 20
                  Width = 121
                  Height = 21
                  DisplayFormat = '###,###,##0.00'
                  ReadOnly = True
                  ShowButton = False
                  TabOrder = 3
                  DecimalPlacesAlwaysShown = False
                  CalcEditLabel.Width = 86
                  CalcEditLabel.Height = 13
                  CalcEditLabel.Caption = 'Valor do ICMS ST:'
                end
                object EditValorCreditoPresumidoICMS: TLabeledCalcEdit
                  Left = 520
                  Top = 20
                  Width = 121
                  Height = 21
                  DisplayFormat = '###,###,##0.00'
                  ReadOnly = True
                  ShowButton = False
                  TabOrder = 4
                  DecimalPlacesAlwaysShown = False
                  CalcEditLabel.Width = 118
                  CalcEditLabel.Height = 13
                  CalcEditLabel.Caption = 'Valor Cr'#233'dito Presumido:'
                end
                object EditValorICMSOutraUF: TLabeledCalcEdit
                  Left = 647
                  Top = 20
                  Width = 121
                  Height = 21
                  DisplayFormat = '###,###,##0.00'
                  ReadOnly = True
                  ShowButton = False
                  TabOrder = 5
                  DecimalPlacesAlwaysShown = False
                  CalcEditLabel.Width = 103
                  CalcEditLabel.Height = 13
                  CalcEditLabel.Caption = 'Valor ICMS Outra UF:'
                end
                object EditSimplesNacionalTotal: TLabeledCalcEdit
                  Left = 647
                  Top = 59
                  Width = 121
                  Height = 21
                  DisplayFormat = '###,###,##0.00'
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clWindowText
                  Font.Height = -11
                  Font.Name = 'Tahoma'
                  Font.Style = []
                  ParentFont = False
                  ReadOnly = True
                  ShowButton = False
                  TabOrder = 6
                  DecimalPlacesAlwaysShown = False
                  CalcEditLabel.Width = 109
                  CalcEditLabel.Height = 13
                  CalcEditLabel.Caption = 'Simples Nacional Total:'
                  CalcEditLabel.Font.Charset = DEFAULT_CHARSET
                  CalcEditLabel.Font.Color = clWindowText
                  CalcEditLabel.Font.Height = -11
                  CalcEditLabel.Font.Name = 'Tahoma'
                  CalcEditLabel.Font.Style = []
                  CalcEditLabel.ParentFont = False
                end
                object EditValorTotalCarga: TLabeledCalcEdit
                  Left = 827
                  Top = 59
                  Width = 121
                  Height = 21
                  DisplayFormat = '###,###,##0.00'
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clWindowText
                  Font.Height = -11
                  Font.Name = 'Tahoma'
                  Font.Style = [fsBold]
                  Anchors = [akTop, akRight]
                  ParentFont = False
                  ReadOnly = True
                  ShowButton = False
                  TabOrder = 7
                  DecimalPlacesAlwaysShown = False
                  CalcEditLabel.Width = 68
                  CalcEditLabel.Height = 13
                  CalcEditLabel.Caption = 'Total Carga:'
                  CalcEditLabel.Font.Charset = DEFAULT_CHARSET
                  CalcEditLabel.Font.Color = clWindowText
                  CalcEditLabel.Font.Height = -11
                  CalcEditLabel.Font.Name = 'Tahoma'
                  CalcEditLabel.Font.Style = [fsBold]
                  CalcEditLabel.ParentFont = False
                end
              end
            end
          end
        end
      end
    end
  end
  inherited PanelToolBar: TPanel
    Width = 984
    ExplicitWidth = 984
    inherited BotaoSair: TSpeedButton
      Left = 880
      ExplicitLeft = 932
    end
    inherited BotaoExportar: TSpeedButton
      Left = 780
      ExplicitLeft = 832
    end
    inherited BotaoImprimir: TSpeedButton
      Left = 680
      ExplicitLeft = 732
    end
    inherited BotaoSeparador1: TSpeedButton
      Left = 570
      ExplicitLeft = 622
    end
    inherited BotaoAlterar: TSpeedButton
      ExplicitLeft = 287
      ExplicitTop = -4
    end
    inherited BotaoFiltrar: TSpeedButton
      Left = 580
      ExplicitLeft = 632
    end
  end
  inherited PopupMenuExportar: TPopupMenu
    Left = 24
    Top = 0
  end
  inherited PopupMenuAtalhosBotoesTela: TPopupMenu
    Left = 124
    Top = 65535
  end
  inherited PopupMenuAtalhosBotoesTelaCadastro: TPopupMenu
    Left = 264
    Top = 0
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
          end>
      end
      item
      end
      item
        Items = <
          item
            Action = ActionAtualizarTotais
            Caption = 'A&tualizar Totais'
            ImageIndex = 30
          end
          item
            Caption = '-'
          end
          item
            Action = ActionConsultarSefaz
            Caption = '&Consultar Sefaz'
            ImageIndex = 36
          end
          item
            Action = ActionStatusServico
            Caption = 'C&onsultar Status Servi'#231'o'
            ImageIndex = 37
          end
          item
            Action = ActionCancelarCTe
            Caption = 'C&ancelar CT-e'
            ImageIndex = 34
          end
          item
            Caption = '-'
          end
          item
            Action = ActionSelecionarCertificado
            Caption = 'S&elecionar Certificado'
            ImageIndex = 27
          end
          item
            Action = ActionImprimirDaCTe
            Caption = '&Imprimir DACTe'
            ImageIndex = 4
          end
          item
            Action = ActionEnviar
            Caption = 'E&nviar'
            ImageIndex = 33
          end
          item
            Action = ActionAssinar
            Caption = 'Assina&r'
            ImageIndex = 35
          end
          item
            Action = ActionValidar
            Caption = '&Validar'
            ImageIndex = 32
          end
          item
            Action = ActionInutilizarCTe
            Caption = 'In&utilizar'
            ImageIndex = 33
          end
          item
            Action = ActionCCe
            ImageIndex = 1
          end
          item
            Action = ActionGerarXml
            Caption = '&Gerar XML'
            ImageIndex = 18
          end>
        ActionBar = ActionToolBarEdits
      end
      item
      end
      item
        Items = <
          item
            Action = ActionExcluirItem
            Caption = '&Excluir Nota'
            ImageIndex = 10
          end
          item
            Action = ActionIncluirItem
            Caption = '&Incluir Nota'
            ImageIndex = 31
          end>
        ActionBar = ActionToolBar1
      end
      item
        Items = <
          item
            Action = ActionExcluirTipoTransporte
            Caption = '&Excluir Tipo Transporte'
            ImageIndex = 10
          end>
        ActionBar = ActionToolBar2
      end
      item
        Items = <
          item
            Action = ActionExcluirEntregaRetirada
            Caption = '&Excluir Dados Entrega/Coleta'
            ImageIndex = 10
          end>
        ActionBar = ActionToolBar3
      end
      item
        Items = <
          item
            Action = ActionExcluirTransporte
            Caption = '&Excluir Dados Transporte'
            ImageIndex = 10
          end>
      end
      item
        Items = <
          item
            Action = ActionExcluirCobranca
            Caption = '&Excluir Dados Cobran'#231'a'
            ImageIndex = 10
          end>
        ActionBar = ActionToolBar5
      end>
    DisabledImages = FDataModule.ImagensCadastrosD
    Images = FDataModule.ImagensCadastros
    Left = 427
    StyleName = 'Ribbon - Silver'
    object ActionIncluirItem: TAction
      Category = 'CTe'
      Caption = 'Incluir Nota'
      ImageIndex = 31
      OnExecute = ActionIncluirItemExecute
    end
    object ActionExcluirItem: TAction
      Category = 'CTe'
      Caption = 'Excluir Nota'
      ImageIndex = 10
      OnExecute = ActionExcluirItemExecute
    end
    object ActionExcluirTipoTransporte: TAction
      Category = 'CTe'
      Caption = 'Excluir Tipo Transporte'
      ImageIndex = 10
    end
    object ActionExcluirEntregaRetirada: TAction
      Category = 'CTe'
      Caption = 'Excluir Dados Entrega/Coleta'
      ImageIndex = 10
      OnExecute = ActionExcluirEntregaRetiradaExecute
    end
    object ActionExcluirTransporte: TAction
      Category = 'CTe'
      Caption = 'Excluir Dados Transporte'
      ImageIndex = 10
    end
    object ActionExcluirCobranca: TAction
      Category = 'CTe'
      Caption = 'Excluir Dados Cobran'#231'a'
      ImageIndex = 10
      OnExecute = ActionExcluirCobrancaExecute
    end
    object ActionSelecionarCertificado: TAction
      Category = 'CTe'
      Caption = 'Selecionar Certificado'
      ImageIndex = 27
      OnExecute = ActionSelecionarCertificadoExecute
    end
    object ActionConsultarSefaz: TAction
      Category = 'CTe'
      Caption = 'Consultar Sefaz'
      ImageIndex = 36
      OnExecute = ActionConsultarSefazExecute
    end
    object ActionImprimirDaCTe: TAction
      Category = 'CTe'
      Caption = 'Imprimir DACTe'
      ImageIndex = 4
      OnExecute = ActionImprimirDaCTeExecute
    end
    object ActionCancelarCTe: TAction
      Category = 'CTe'
      Caption = 'Cancelar CT-e'
      ImageIndex = 34
      OnExecute = ActionCancelarCTeExecute
    end
    object ActionEnviar: TAction
      Category = 'CTe'
      Caption = 'Enviar'
      ImageIndex = 33
      OnExecute = ActionEnviarExecute
    end
    object ActionAssinar: TAction
      Category = 'CTe'
      Caption = 'Assinar'
      ImageIndex = 35
      OnExecute = ActionAssinarExecute
    end
    object ActionValidar: TAction
      Category = 'CTe'
      Caption = 'Validar'
      ImageIndex = 32
      OnExecute = ActionValidarExecute
    end
    object ActionAtualizarTotais: TAction
      Category = 'CTe'
      Caption = 'Atualizar Totais'
      ImageIndex = 30
      OnExecute = ActionAtualizarTotaisExecute
    end
    object ActionGerarXml: TAction
      Category = 'CTe'
      Caption = 'Gerar XML'
      ImageIndex = 18
      OnExecute = ActionGerarXmlExecute
    end
    object ActionInutilizarCTe: TAction
      Category = 'CTe'
      Caption = 'Inutilizar'
      ImageIndex = 33
      OnExecute = ActionInutilizarCTeExecute
    end
    object ActionCCe: TAction
      Category = 'CTe'
      Caption = 'CC-e'
      ImageIndex = 1
      OnExecute = ActionCCeExecute
    end
    object ActionStatusServico: TAction
      Category = 'CTe'
      Caption = 'Consultar Status Servi'#231'o'
      ImageIndex = 37
      OnExecute = ActionStatusServicoExecute
    end
  end
end
