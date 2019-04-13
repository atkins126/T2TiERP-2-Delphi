{*******************************************************************************
Title: T2Ti ERP
Description: Janela Cadastro de S�cio

The MIT License

Copyright: Copyright (C) 2016 T2Ti.COM

Permission is hereby granted, free of charge, to any person
obtaining a copy of this software and associated documentation
files (the "Software"), to deal in the Software without
restriction, including without limitation the rights to use,
copy, modify, merge, publish, distribute, sublicense, and/or sell
copies of the Software, and to permit persons to whom the
Software is furnished to do so, subject to the following
conditions:

The above copyright notice and this permission notice shall be
included in all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND,
EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES
OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND
NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT
HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY,
WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING
FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR
OTHER DEALINGS IN THE SOFTWARE.

The author may be contacted at:
t2ti.com@gmail.com</p>

@author Albert Eije (t2ti.com@gmail.com)
@version 2.0
*******************************************************************************}
unit USocio;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, UTelaCadastro, DB, DBClient, Menus, StdCtrls, ExtCtrls, Buttons, Grids,
  DBGrids, JvExDBGrids, JvDBGrid, JvDBUltimGrid, ComCtrls, SocioVO,
  SocioController, Tipos, Atributos, Constantes, LabeledCtrls, JvToolEdit,
  Mask, JvExMask, JvBaseEdits, Math, StrUtils, UfController, UfVO,
  Generics.Collections, Controller;

type
  [TFormDescription(TConstantes.MODULO_ADMINISTRATIVO, 'Socio')]

  TFSocio = class(TFTelaCadastro)
    CDSSocioDependente: TClientDataSet;
    DSSocioDependente: TDataSource;
    CDSSocioDependenteID: TIntegerField;
    CDSSocioDependenteID_SOCIO: TIntegerField;
    CDSSocioDependenteID_TIPO_RELACIONAMENTO: TIntegerField;
    CDSSocioDependenteNOME: TStringField;
    CDSSocioDependenteDATA_INICIO_DEPENDENCIA: TDateField;
    CDSSocioDependenteDATA_FIM_DEPENDENCIA: TDateField;
    CDSSocioDependenteCPF: TStringField;
    CDSSocioDependentePersiste: TStringField;
    CDSSocioDependenteDATA_NASCIMENTO: TDateField;
    CDSParticipacaoSocietaria: TClientDataSet;
    DSParticipacaoSocietaria: TDataSource;
    CDSParticipacaoSocietariaID: TIntegerField;
    CDSParticipacaoSocietariaID_SOCIO: TIntegerField;
    CDSParticipacaoSocietariaCNPJ: TStringField;
    CDSParticipacaoSocietariaRAZAO_SOCIAL: TStringField;
    CDSParticipacaoSocietariaDATA_ENTRADA: TDateField;
    CDSParticipacaoSocietariaDATA_SAIDA: TDateField;
    CDSParticipacaoSocietariaPARTICIPACAO: TFMTBCDField;
    CDSParticipacaoSocietariaDIRIGENTE: TStringField;
    CDSParticipacaoSocietariaPERSISTE: TStringField;
    PageControlSocio: TPageControl;
    tsDependente: TTabSheet;
    TabSheetParticipacaoSocietaria: TTabSheet;
    PanelParticipacaoSocietaria: TPanel;
    PanelDados: TPanel;
    EditIdQuadroSocietario: TLabeledCalcEdit;
    EditCep: TLabeledMaskEdit;
    EditLogradouro: TLabeledEdit;
    EditComplemento: TLabeledEdit;
    EditMunicipio: TLabeledEdit;
    EditUf: TLabeledEdit;
    EditFone: TLabeledMaskEdit;
    EditCelular: TLabeledMaskEdit;
    EditEmail: TLabeledEdit;
    EditBairro: TLabeledEdit;
    EditNumero: TLabeledCalcEdit;
    PanelDependente: TPanel;
    GridDependente: TDBGrid;
    GridParticipacaoSocietaria: TDBGrid;
    EditDataIngresso: TLabeledDateEdit;
    EditDataSaida: TLabeledDateEdit;
    EditParticipacao: TLabeledCalcEdit;
    EditQuotas: TLabeledCalcEdit;
    EditIntegralizar: TLabeledCalcEdit;
    CDSSocioDependenteTIPO_RELACIONAMENTONOME: TStringField;
    procedure FormCreate(Sender: TObject);
    procedure GridDependenteKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure CDSSocioDependenteAfterEdit(DataSet: TDataSet);
    procedure GridParticipacaoSocietariaKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure CDSParticipacaoSocietariaAfterEdit(DataSet: TDataSet);
    procedure GridDblClick(Sender: TObject);
    procedure EditIdQuadroSocietarioKeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
  private
    { Private declarations }
  public
    { Public declarations }
    procedure GridParaEdits; override;
    procedure LimparCampos; override;

    // Controles CRUD
    function DoInserir: Boolean; override;
    function DoEditar: Boolean; override;
    function DoExcluir: Boolean; override;
    function DoSalvar: Boolean; override;

    procedure ConfigurarLayoutTela;
  end;

var
  FSocio: TFSocio;

implementation

uses ULookup, Biblioteca, UDataModule,
  //
  PessoaController, QuadroSocietarioController, TipoRelacionamentoController,
  EmpresaController,
  //
  QuadroSocietarioVO, TipoRelacionamentoVO, SocioDependenteVO, PessoaVO,
  ContabilContaVO, SocioParticipacaoSocietariaVO, EmpresaVO;
{$R *.dfm}

{$REGION 'Infra'}
procedure TFSocio.FormCreate(Sender: TObject);
begin
  ClasseObjetoGridVO := TSocioVO;
  ObjetoController := TSocioController.Create;

  inherited;
end;

procedure TFSocio.LimparCampos;
begin
  inherited;
  CDSSocioDependente.EmptyDataSet;
  CDSParticipacaoSocietaria.EmptyDataSet;
end;

procedure TFSocio.ConfigurarLayoutTela;
begin
  PageControlSocio.ActivePageIndex := 0;
  PanelEdits.Enabled := True;

  if StatusTela = stNavegandoEdits then
  begin
    PanelDados.Enabled := False;
    PanelDependente.Enabled := False;
    PanelParticipacaoSocietaria.Enabled := False;
  end
  else
  begin
    PanelDependente.Enabled := True;
    PanelParticipacaoSocietaria.Enabled := True;
    PanelDados.Enabled := True;
  end;
end;
{$ENDREGION}

{$REGION 'Controles CRUD'}
function TFSocio.DoInserir: Boolean;
begin
  Result := inherited DoInserir;

  if Result then
  begin
    EditIdQuadroSocietario.SetFocus;
  end;
end;

function TFSocio.DoEditar: Boolean;
begin
  Result := inherited DoEditar;

  if Result then
  begin
    EditIdQuadroSocietario.SetFocus;
  end;
end;

function TFSocio.DoExcluir: Boolean;
begin
  if inherited DoExcluir then
  begin
    try
      TController.ExecutarMetodo('SocioController.TSocioController', 'Exclui', [IdRegistroSelecionado], 'DELETE', 'Boolean');
      Result := TController.RetornoBoolean;
    except
      Result := False;
    end;
  end
  else
  begin
    Result := False;
  end;

  if Result then
    TController.ExecutarMetodo('SocioController.TSocioController', 'Consulta', [Trim(Filtro), Pagina.ToString, False], 'GET', 'Lista');
end;

function TFSocio.DoSalvar: Boolean;
var
  SocioDependente: TSocioDependenteVO;
  SocioParticipacaoSocietaria: TSocioParticipacaoSocietariaVO;
begin
  Result := inherited DoSalvar;

  if Result then
  begin
    try
      if not Assigned(ObjetoVO) then
        ObjetoVO := TSocioVO.Create;

      TSocioVO(ObjetoVO).IdQuadroSocietario := EditIdQuadroSocietario.AsInteger;
      TSocioVO(ObjetoVO).Logradouro := EditLogradouro.Text;
      TSocioVO(ObjetoVO).Numero := EditNumero.AsInteger;
      TSocioVO(ObjetoVO).Complemento := EditComplemento.Text;
      TSocioVO(ObjetoVO).Bairro := EditBairro.Text;
      TSocioVO(ObjetoVO).Municipio := EditMunicipio.Text;
      TSocioVO(ObjetoVO).Uf := EditUf.Text;
      TSocioVO(ObjetoVO).Cep := EditCep.Text;
      TSocioVO(ObjetoVO).Fone := EditFone.Text;
      TSocioVO(ObjetoVO).Celular := EditCelular.Text;
      TSocioVO(ObjetoVO).Email := EditEmail.Text;
      TSocioVO(ObjetoVO).Participacao := EditParticipacao.Value;
      TSocioVO(ObjetoVO).Quotas := EditQuotas.AsInteger;
      TSocioVO(ObjetoVO).Integralizar := EditIntegralizar.Value;
      TSocioVO(ObjetoVO).DataIngresso := EditDataIngresso.Date;
      TSocioVO(ObjetoVO).DataSaida := EditDataSaida.Date;

      // Dependentes
      TSocioVO(ObjetoVO).ListaSocioDependenteVO := TObjectList<TSocioDependenteVO>.Create;
      CDSSocioDependente.DisableControls;
      CDSSocioDependente.First;
      while not CDSSocioDependente.Eof do
      begin
        if (CDSSocioDependentePERSISTE.AsString = 'S') or (CDSSocioDependenteID.AsInteger = 0) then
        begin
          SocioDependente := TSocioDependenteVO.Create;
          SocioDependente.Id := CDSSocioDependenteID.AsInteger;
          SocioDependente.IdSocio := CDSSocioDependenteID_SOCIO.AsInteger;
          SocioDependente.IdTipoRelacionamento := CDSSocioDependenteID_TIPO_RELACIONAMENTO.AsInteger;
          SocioDependente.Nome := CDSSocioDependenteNOME.AsString;
          SocioDependente.DataNascimento := CDSSocioDependenteDATA_NASCIMENTO.AsDateTime;
          SocioDependente.DataInicioDepedencia := CDSSocioDependenteDATA_INICIO_DEPENDENCIA.AsDateTime;
          SocioDependente.DataFimDependencia := CDSSocioDependenteDATA_FIM_DEPENDENCIA.AsDateTime;
          SocioDependente.Cpf := CDSSocioDependenteCPF.AsString;
          TSocioVO(ObjetoVO).ListaSocioDependenteVO.Add(SocioDependente);
        end;
        CDSSocioDependente.Next;
      end;
      CDSSocioDependente.EnableControls;

      // Dependentes
      TSocioVO(ObjetoVO).ListaSocioParticipacaoSocietariaVO := TObjectList<TSocioParticipacaoSocietariaVO>.Create;
      CDSParticipacaoSocietaria.DisableControls;
      CDSParticipacaoSocietaria.First;
      while not CDSParticipacaoSocietaria.Eof do
      begin
        if (CDSParticipacaoSocietariaPERSISTE.AsString = 'S') or (CDSParticipacaoSocietariaID.AsInteger = 0) then
        begin
          SocioParticipacaoSocietaria := TSocioParticipacaoSocietariaVO.Create;
          SocioParticipacaoSocietaria.Id := CDSParticipacaoSocietariaID.AsInteger;
          SocioParticipacaoSocietaria.IdSocio := CDSParticipacaoSocietariaID_SOCIO.AsInteger;
          SocioParticipacaoSocietaria.Cnpj := CDSParticipacaoSocietariaCNPJ.AsString;
          SocioParticipacaoSocietaria.RazaoSocial := CDSParticipacaoSocietariaRAZAO_SOCIAL.AsString;
          SocioParticipacaoSocietaria.DataEntrada := CDSParticipacaoSocietariaDATA_ENTRADA.AsDateTime;
          SocioParticipacaoSocietaria.DataSaida := CDSParticipacaoSocietariaDATA_SAIDA.AsDateTime;
          SocioParticipacaoSocietaria.Dirigente := CDSParticipacaoSocietariaDIRIGENTE.AsString;
          TSocioVO(ObjetoVO).ListaSocioParticipacaoSocietariaVO.Add(SocioParticipacaoSocietaria);
        end;
        CDSParticipacaoSocietaria.Next;
      end;
      CDSParticipacaoSocietaria.EnableControls;

      if StatusTela = stInserindo then
      begin
        TController.ExecutarMetodo('SocioController.TSocioController', 'Insere', [TSocioVO(ObjetoVO)], 'PUT', 'Lista');
      end
      else if StatusTela = stEditando then
      begin
        if TSocioVO(ObjetoVO).ToJSONString <> StringObjetoOld then
        begin
          TController.ExecutarMetodo('SocioController.TSocioController', 'Altera', [TSocioVO(ObjetoVO)], 'POST', 'Boolean');
        end
        else
          Application.MessageBox('Nenhum dado foi alterado.', 'Mensagem do Sistema', MB_OK + MB_ICONINFORMATION);
      end;

    except
      Result := False;
    end;
  end;
end;
{$ENDREGION}

{$REGION 'Campos Transientes'}
procedure TFSocio.EditIdQuadroSocietarioKeyUp(Sender: TObject; var Key: Word; Shift: TShiftState);
var
  Filtro: String;
begin
  if Key = VK_F1 then
  begin
    if EditIdQuadroSocietario.Value <> 0 then
      Filtro := 'ID = ' + EditIdQuadroSocietario.Text
    else
      Filtro := 'ID=0';

    try
      EditIdQuadroSocietario.Clear;
      if not PopulaCamposTransientes(Filtro, TQuadroSocietarioVO, TQuadroSocietarioController) then
        PopulaCamposTransientesLookup(TQuadroSocietarioVO, TQuadroSocietarioController);
      if CDSTransiente.RecordCount > 0 then
      begin
        EditIdQuadroSocietario.Text := CDSTransiente.FieldByName('ID').AsString;
      end
      else
      begin
        Exit;
        EditCep.SetFocus;
      end;
    finally
      CDSTransiente.Close;
    end;
  end;
end;
{$ENDREGION}

{$REGION 'Controle Grid'}
procedure TFSocio.CDSParticipacaoSocietariaAfterEdit(DataSet: TDataSet);
begin
  CDSParticipacaoSocietariaPERSISTE.AsString := 'S';
end;

procedure TFSocio.CDSSocioDependenteAfterEdit(DataSet: TDataSet);
begin
  CDSSocioDependentePersiste.AsString := 'S';
end;

procedure TFSocio.GridDblClick(Sender: TObject);
begin
  inherited;
  ConfigurarLayoutTela;
end;

procedure TFSocio.GridDependenteKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  if Key = Vk_Return then
    GridDependente.SelectedIndex := GridDependente.SelectedIndex + 1;
  if Key = Vk_F1 then
  begin
    try
      PopulaCamposTransientesLookup(TTipoRelacionamentoVO, TTipoRelacionamentoController);
      if CDSTransiente.RecordCount > 0 then
      begin
        CDSSocioDependente.Edit;
        CDSSocioDependenteID_TIPO_RELACIONAMENTO.AsInteger := CDSTransiente.FieldByName('ID').AsInteger;
        CDSSocioDependenteTIPO_RELACIONAMENTONOME.AsString := CDSTransiente.FieldByName('NOME').AsString;
      end;
    finally
      CDSTransiente.Close;
    end;
  end;
end;

procedure TFSocio.GridParticipacaoSocietariaKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  if Key = Vk_Return then
    GridParticipacaoSocietaria.SelectedIndex := GridParticipacaoSocietaria.SelectedIndex + 1;
end;

procedure TFSocio.GridParaEdits;
begin
  inherited;

  if not CDSGrid.IsEmpty then
  begin
    ObjetoVO := TSocioVO(TController.BuscarObjeto('SocioController.TSocioController', 'ConsultaObjeto', ['ID=' + IdRegistroSelecionado.ToString], 'GET'));
  end;

  if Assigned(ObjetoVO) then
  begin
    EditIdQuadroSocietario.AsInteger := TSocioVO(ObjetoVO).IdQuadroSocietario;
    EditLogradouro.Text := TSocioVO(ObjetoVO).Logradouro;
    EditNumero.AsInteger := TSocioVO(ObjetoVO).Numero;
    EditComplemento.Text := TSocioVO(ObjetoVO).Complemento;
    EditBairro.Text := TSocioVO(ObjetoVO).Bairro;
    EditMunicipio.Text := TSocioVO(ObjetoVO).Municipio;
    EditUf.Text := TSocioVO(ObjetoVO).Uf;
    EditCep.Text := TSocioVO(ObjetoVO).Cep;
    EditFone.Text := TSocioVO(ObjetoVO).Fone;
    EditCelular.Text := TSocioVO(ObjetoVO).Celular;
    EditEmail.Text := TSocioVO(ObjetoVO).Email;
    EditParticipacao.Value := TSocioVO(ObjetoVO).Participacao;
    EditQuotas.AsInteger := TSocioVO(ObjetoVO).Quotas;
    EditIntegralizar.Value := TSocioVO(ObjetoVO).Integralizar;
    EditDataIngresso.Date := TSocioVO(ObjetoVO).DataIngresso;
    EditDataSaida.Date := TSocioVO(ObjetoVO).DataSaida;

    // Preenche as grids internas com os dados das Listas que vieram no objeto
    TController.TratarRetorno<TSocioDependenteVO>(TSocioVO(ObjetoVO).ListaSocioDependenteVO, True, True, CDSSocioDependente);
    TController.TratarRetorno<TSocioParticipacaoSocietariaVO>(TSocioVO(ObjetoVO).ListaSocioParticipacaoSocietariaVO, True, True, CDSParticipacaoSocietaria);

    // Limpa as listas para comparar posteriormente se houve inclus�es/altera��es e subir apenas o necess�rio para o servidor
    TSocioVO(ObjetoVO).ListaSocioDependenteVO.Clear;
    TSocioVO(ObjetoVO).ListaSocioParticipacaoSocietariaVO.Clear;

    // Serializa o objeto para consultar posteriormente se houve altera��es
    FormatSettings.DecimalSeparator := '.';
    StringObjetoOld := ObjetoVO.ToJSONString;
    FormatSettings.DecimalSeparator := ',';

  end;
  ConfigurarLayoutTela;
end;
{$ENDREGION}

end.
