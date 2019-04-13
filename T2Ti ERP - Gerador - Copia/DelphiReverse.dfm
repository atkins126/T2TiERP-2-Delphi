object FGera: TFGera
  Left = 349
  Top = 86
  BorderStyle = bsSingle
  Caption = 'Gerador de VOs e Controllers'
  ClientHeight = 672
  ClientWidth = 1192
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  WindowState = wsMaximized
  OnClose = FormClose
  OnCreate = FormCreate
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Panel2: TPanel
    Left = 217
    Top = 216
    Width = 516
    Height = 437
    Align = alCustom
    TabOrder = 2
    DesignSize = (
      516
      437)
    object botaoGerar: TButton
      Left = 140
      Top = 6
      Width = 131
      Height = 23
      Caption = ' Controller (Cliente)'
      TabOrder = 0
      OnClick = botaoGerarClick
    end
    object botaoSair: TButton
      Left = 17
      Top = 578
      Width = 100
      Height = 23
      Caption = 'Sair'
      TabOrder = 1
      OnClick = botaoSairClick
    end
    object botaoLimparMemo: TButton
      Left = 5
      Top = 582
      Width = 100
      Height = 23
      Caption = 'Limpar Memo'
      TabOrder = 2
      OnClick = botaoLimparMemoClick
    end
    object BotaoGerarTodos: TButton
      Left = 3
      Top = 402
      Width = 131
      Height = 26
      Anchors = [akLeft, akBottom]
      Caption = 'Gerar Todos'
      TabOrder = 3
      OnClick = BotaoGerarTodosClick
    end
    object cbxOpcao: TComboBox
      Left = 3
      Top = 8
      Width = 131
      Height = 21
      Style = csDropDownList
      ItemIndex = 0
      TabOrder = 4
      Text = 'Gerar VOs'
      OnChange = cbxOpcaoChange
      Items.Strings = (
        'Gerar VOs'
        'Controller (Cliente)'
        'Controller (Servidor)')
    end
    object BotaoGerarConjunto: TButton
      Left = 277
      Top = 6
      Width = 131
      Height = 25
      Caption = 'Gerar Conjunto'
      TabOrder = 5
      OnClick = BotaoGerarConjuntoClick
    end
    object ListaTransiente: TCheckListBox
      Left = 228
      Top = 42
      Width = 284
      Height = 356
      Anchors = [akLeft, akTop, akRight, akBottom]
      ItemHeight = 13
      TabOrder = 6
    end
    object Button1: TButton
      Left = 17
      Top = 195
      Width = 75
      Height = 25
      Caption = 'Button1'
      TabOrder = 7
      OnClick = Button1Click
    end
    object ListaTransienteTemporaria: TCheckListBox
      Left = 6
      Top = 42
      Width = 221
      Height = 354
      OnClickCheck = ListaTransienteTemporariaClickCheck
      Anchors = [akLeft, akTop, akBottom]
      ItemHeight = 13
      TabOrder = 8
    end
  end
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 1192
    Height = 216
    Align = alTop
    TabOrder = 0
    DesignSize = (
      1192
      216)
    object GroupBox1: TGroupBox
      Left = 8
      Top = 10
      Width = 1165
      Height = 159
      Anchors = [akLeft, akTop, akRight]
      Caption = 'Conex'#227'o:'
      TabOrder = 0
      DesignSize = (
        1165
        159)
      object Label1: TLabel
        Left = 223
        Top = 24
        Width = 26
        Height = 13
        Caption = 'Host:'
      end
      object Label3: TLabel
        Left = 423
        Top = 23
        Width = 40
        Height = 13
        Caption = 'Usu'#225'rio:'
      end
      object Label4: TLabel
        Left = 606
        Top = 24
        Width = 34
        Height = 13
        Caption = 'Senha:'
      end
      object Label5: TLabel
        Left = 11
        Top = 24
        Width = 30
        Height = 13
        Caption = 'SGBD:'
      end
      object Label6: TLabel
        Left = 11
        Top = 76
        Width = 62
        Height = 13
        Caption = 'Caminho VO:'
      end
      object Label7: TLabel
        Left = 11
        Top = 49
        Width = 81
        Height = 13
        Caption = 'Banco de Dados:'
      end
      object Label2: TLabel
        Left = 11
        Top = 102
        Width = 131
        Height = 13
        Caption = 'Caminho Controller Cliente:'
      end
      object Label8: TLabel
        Left = 11
        Top = 130
        Width = 138
        Height = 13
        Caption = 'Caminho Controller Servidor:'
      end
      object editHost: TEdit
        Left = 253
        Top = 20
        Width = 164
        Height = 21
        TabOrder = 1
        Text = 'localhost'
      end
      object editSenha: TEdit
        Left = 643
        Top = 20
        Width = 151
        Height = 21
        PasswordChar = '*'
        TabOrder = 3
        Text = 'root'
      end
      object editUsuario: TEdit
        Left = 469
        Top = 20
        Width = 131
        Height = 21
        TabOrder = 2
        Text = 'root'
      end
      object comboConexao: TComboBox
        Left = 44
        Top = 20
        Width = 173
        Height = 21
        ItemIndex = 0
        TabOrder = 0
        Text = 'MySQL'
        Items.Strings = (
          'MySQL'
          'MSSQL'
          'FIREBIRD'
          'INTERBASE'
          'Oracle')
      end
      object editDiretorioVO: TJvDirectoryEdit
        Left = 156
        Top = 74
        Width = 994
        Height = 21
        DialogKind = dkWin32
        Anchors = [akLeft, akTop, akRight]
        TabOrder = 4
        Text = ''
      end
      object editDiretorioControllerCliente: TJvDirectoryEdit
        Left = 156
        Top = 101
        Width = 994
        Height = 21
        DialogKind = dkWin32
        Anchors = [akLeft, akTop, akRight]
        TabOrder = 5
        Text = ''
      end
      object editDiretorioControllerServidor: TJvDirectoryEdit
        Left = 155
        Top = 128
        Width = 995
        Height = 21
        DialogKind = dkWin32
        Anchors = [akLeft, akTop, akRight]
        TabOrder = 6
        Text = ''
      end
    end
    object EditAutor: TLabeledEdit
      Left = 19
      Top = 188
      Width = 390
      Height = 21
      EditLabel.Width = 31
      EditLabel.Height = 13
      EditLabel.Caption = 'Autor:'
      TabOrder = 1
    end
    object EditEmailAutor: TLabeledEdit
      Left = 415
      Top = 188
      Width = 657
      Height = 21
      Anchors = [akLeft, akTop, akRight]
      EditLabel.Width = 28
      EditLabel.Height = 13
      EditLabel.Caption = 'Email:'
      TabOrder = 2
    end
    object editBancoDados: TJvFilenameEdit
      Left = 106
      Top = 57
      Width = 1052
      Height = 21
      AddQuotes = False
      Anchors = [akLeft, akTop, akRight]
      TabOrder = 3
      Text = 't2tierp'
    end
    object botaoConectar: TBitBtn
      Left = 1075
      Top = 184
      Width = 83
      Height = 25
      Anchors = [akTop, akRight]
      Caption = 'Conectar'
      TabOrder = 4
      OnClick = botaoConectarClick
    end
  end
  object memo: TMemo
    Left = 733
    Top = 216
    Width = 175
    Height = 437
    Hint = 'copy content'
    Align = alCustom
    Anchors = [akLeft, akTop, akRight]
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Courier'
    Font.Style = []
    ParentFont = False
    ParentShowHint = False
    ScrollBars = ssBoth
    ShowHint = True
    TabOrder = 1
  end
  object Panel3: TPanel
    Left = 0
    Top = 216
    Width = 217
    Height = 437
    Align = alLeft
    TabOrder = 3
    object Splitter1: TSplitter
      Left = 1
      Top = 169
      Width = 159
      Height = 3
      Align = alNone
    end
    object Splitter2: TSplitter
      Left = 1
      Top = 257
      Width = 215
      Height = 3
      Cursor = crVSplit
      Align = alTop
      ExplicitTop = 172
      ExplicitWidth = 156
    end
    object listaCampo: TListBox
      Left = 1
      Top = 260
      Width = 215
      Height = 176
      Hint = 'Right Click Mouse'
      Align = alClient
      ItemHeight = 13
      ParentShowHint = False
      ShowHint = True
      TabOrder = 0
      OnClick = listaCampoClick
    end
    object listaTabelas: TListBox
      Left = 1
      Top = 42
      Width = 215
      Height = 215
      Align = alTop
      ItemHeight = 13
      TabOrder = 1
      OnClick = listaTabelasClick
    end
    object Panel4: TPanel
      Left = 1
      Top = 1
      Width = 215
      Height = 41
      Align = alTop
      TabOrder = 2
      object EditBusca: TLabeledEdit
        Left = 4
        Top = 16
        Width = 206
        Height = 21
        EditLabel.Width = 45
        EditLabel.Height = 13
        EditLabel.Caption = 'Localizar:'
        TabOrder = 0
        OnChange = EditBuscaChange
      end
    end
  end
  object StatusBar1: TStatusBar
    Left = 0
    Top = 653
    Width = 1192
    Height = 19
    Panels = <>
  end
  object Panel5: TPanel
    Left = 908
    Top = 216
    Width = 284
    Height = 437
    Align = alRight
    TabOrder = 5
    object Splitter3: TSplitter
      Left = 1
      Top = 245
      Width = 282
      Height = 3
      Cursor = crVSplit
      Align = alTop
      ExplicitTop = 251
      ExplicitWidth = 159
    end
    object Splitter4: TSplitter
      Left = 9
      Top = 116
      Width = 282
      Height = 3
      Align = alCustom
    end
    object ListaCamposList: TListBox
      Left = 1
      Top = 248
      Width = 282
      Height = 188
      Hint = 'Right Click Mouse'
      Align = alClient
      ItemHeight = 13
      ParentShowHint = False
      ShowHint = True
      TabOrder = 0
      OnClick = ListaCamposListClick
    end
    object Panel6: TPanel
      Left = 1
      Top = 1
      Width = 282
      Height = 41
      Align = alTop
      TabOrder = 1
      object EditBusca2: TLabeledEdit
        Left = 4
        Top = 16
        Width = 206
        Height = 21
        EditLabel.Width = 45
        EditLabel.Height = 13
        EditLabel.Caption = 'Localizar:'
        TabOrder = 0
        OnChange = EditBusca2Change
      end
    end
    object ListaTabelasList: TCheckListBox
      Left = 1
      Top = 42
      Width = 282
      Height = 203
      Align = alTop
      ItemHeight = 13
      TabOrder = 2
      OnClick = ListaTabelasListClick
    end
  end
  object Entidade: TSQLDataSet
    SchemaName = 'dbo'
    CommandText = 'select * from "Sistema"'
    MaxBlobSize = -1
    Params = <>
    Left = 560
    Top = 360
  end
  object DataSetEntidade: TClientDataSet
    Active = True
    Aggregates = <>
    Params = <>
    Left = 752
    Top = 216
    Data = {
      560000009619E0BD01000000180000000200000000000300000056000563616D
      706F01004900000001000557494454480200020032000D696D706C616D656E74
      6163616F01004900000001000557494454480200020064000000}
    object DataSetEntidadecampo: TStringField
      FieldName = 'campo'
      Size = 50
    end
    object DataSetEntidadeimplamentacao: TStringField
      FieldName = 'implamentacao'
      Size = 100
    end
  end
  object DataSource1: TDataSource
    DataSet = DataSetEntidade
    Left = 752
    Top = 360
  end
  object INTERBASE: TSQLConnection
    ConnectionName = 'IBCONNECTION'
    DriverName = 'Firebird'
    LoginPrompt = False
    Params.Strings = (
      
        'DriverPackageLoader=TDBXDynalinkDriverLoader,DbxCommonDriver140.' +
        'bpl'
      'VendorLib=fbclient.DLL')
    Left = 320
    Top = 248
  end
  object Oracle: TSQLConnection
    ConnectionName = 'IBCONNECTION'
    DriverName = 'Oracle'
    LoginPrompt = False
    Params.Strings = (
      
        'DriverPackageLoader=TDBXDynalinkDriverLoader,DBXCommonDriver140.' +
        'bpl')
    Left = 322
    Top = 408
  end
  object SQL: TSQLConnection
    ConnectionName = 'MSSQLCONNECTION'
    DriverName = 'MSSQL'
    LoginPrompt = False
    Params.Strings = (
      'schemaoverride=sa.dbo'
      'drivername=MSSQL'
      'HostName=note-dell\sqlexpress'
      'Database=AXIAL_DB'
      'User_Name=SYSDBA'
      'Password=masterkey'
      'blobsize=-1'
      'localecode=0000'
      'isolationlevel=ReadCommitted'
      'os authentication=False'
      'prepare sql=False'
      'connecttimeout=60'
      'mars_connection=False'
      'ErrorResourceFile=')
    Left = 320
    Top = 302
  end
  object CONN: TSQLConnection
    ConnectionName = 'MSSQLCONNECTION'
    DriverName = 'MSSQL'
    LoginPrompt = False
    Params.Strings = (
      'schemaoverride=sa.dbo'
      'drivername=MSSQL'
      'HostName=note-dell\sqlexpress'
      'Database=AXIAL_DB'
      'User_Name=SYSDBA'
      'Password=masterkey'
      'blobsize=-1'
      'localecode=0000'
      'isolationlevel=ReadCommitted'
      'os authentication=False'
      'prepare sql=False'
      'connecttimeout=60'
      'mars_connection=False'
      'ErrorResourceFile=')
    Left = 368
    Top = 324
  end
  object MySQL: TSQLConnection
    ConnectionName = 'IBCONNECTION'
    DriverName = 'MySQL'
    LoginPrompt = False
    Params.Strings = (
      'DriverUnit=DBXMySQL'
      
        'DriverPackageLoader=TDBXDynalinkDriverLoader,DbxCommonDriver140.' +
        'bpl'
      'VendorLib=LIBMYSQL.dll')
    Left = 368
    Top = 432
  end
  object OpenDialog1: TOpenDialog
    Left = 752
    Top = 416
  end
  object FindDialog1: TFindDialog
    Left = 752
    Top = 496
  end
  object JvEnterAsTab1: TJvEnterAsTab
    Left = 448
    Top = 240
  end
  object Transientes: TSQLDataSet
    SchemaName = 'dbo'
    CommandText = 'select * from "Sistema"'
    MaxBlobSize = -1
    Params = <>
    Left = 560
    Top = 488
  end
  object TransientesTemp: TSQLDataSet
    SchemaName = 'dbo'
    CommandText = 'select * from "Sistema"'
    MaxBlobSize = -1
    Params = <>
    Left = 472
    Top = 328
  end
end
