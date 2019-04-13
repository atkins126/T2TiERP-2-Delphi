{ *******************************************************************************
Title: T2Ti ERP
Description: Janela Plano de Sa�de para o m�dulo Folha de Pagamento

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

@author Albert Eije
@version 2.0
******************************************************************************* }

unit UFolhaPlanoSaude;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, UTelaCadastro, Menus, StdCtrls, ExtCtrls, Buttons, Grids, DBGrids,
  JvExDBGrids, JvDBGrid, JvDBUltimGrid, ComCtrls, FolhaPlanoSaudeVO, FolhaPlanoSaudeController,
  Atributos, Constantes, LabeledCtrls, Mask, JvExMask, JvToolEdit, JvBaseEdits,
  StrUtils, Controller;

type
  [TFormDescription(TConstantes.MODULO_FOLHA_PAGAMENTO, 'Plano de Sa�de')]

  TFFolhaPlanoSaude = class(TFTelaCadastro)
    BevelEdits: TBevel;
    EditIdColaborador: TLabeledCalcEdit;
    EditColaborador: TLabeledEdit;
    EditDataInicio: TLabeledDateEdit;
    ComboBoxBeneficiario: TLabeledComboBox;
    EditIdOperadoraPlanoSaude: TLabeledCalcEdit;
    EditOperadoraPlanoSaude: TLabeledEdit;
    procedure FormCreate(Sender: TObject);
    procedure EditIdColaboradorKeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure EditIdOperadoraPlanoSaudeKeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
  private
    { Private declarations }
  public
    { Public declarations }
    procedure GridParaEdits; override;
    procedure ControlaBotoes; override;
    procedure ControlaPopupMenu; override;

    // Controles CRUD
    function DoInserir: Boolean; override;
    function DoEditar: Boolean; override;
    function DoExcluir: Boolean; override;
    function DoSalvar: Boolean; override;
  end;

var
  FFolhaPlanoSaude: TFFolhaPlanoSaude;

implementation

uses ViewPessoaColaboradorVO, ViewPessoaColaboradorController,
OperadoraPlanoSaudeVO, OperadoraPlanoSaudeController;

{$R *.dfm}

{$REGION 'Controles Infra'}
procedure TFFolhaPlanoSaude.FormCreate(Sender: TObject);
begin
  ClasseObjetoGridVO := TFolhaPlanoSaudeVO;
  ObjetoController := TFolhaPlanoSaudeController.Create;

  inherited;
end;

procedure TFFolhaPlanoSaude.ControlaBotoes;
begin
  inherited;

  BotaoImprimir.Visible := False;
end;

procedure TFFolhaPlanoSaude.ControlaPopupMenu;
begin
  inherited;

  MenuImprimir.Visible := False;
end;
{$ENDREGION}

{$REGION 'Controles CRUD'}
function TFFolhaPlanoSaude.DoInserir: Boolean;
begin
  Result := inherited DoInserir;

  if Result then
  begin
    EditIdColaborador.SetFocus;
  end;
end;

function TFFolhaPlanoSaude.DoEditar: Boolean;
begin
  Result := inherited DoEditar;

  if Result then
  begin
    EditIdColaborador.SetFocus;
  end;
end;

function TFFolhaPlanoSaude.DoExcluir: Boolean;
begin
  if inherited DoExcluir then
  begin
    try
      TController.ExecutarMetodo('FolhaPlanoSaudeController.TFolhaPlanoSaudeController', 'Exclui', [IdRegistroSelecionado], 'DELETE', 'Boolean');
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
    TController.ExecutarMetodo('FolhaPlanoSaudeController.TFolhaPlanoSaudeController', 'Consulta', [Trim(Filtro), Pagina.ToString, False], 'GET', 'Lista');
end;

function TFFolhaPlanoSaude.DoSalvar: Boolean;
begin
  Result := inherited DoSalvar;

  if Result then
  begin
    try
      if not Assigned(ObjetoVO) then
        ObjetoVO := TFolhaPlanoSaudeVO.Create;

      TFolhaPlanoSaudeVO(ObjetoVO).IdColaborador := EditIdColaborador.AsInteger;
      TFolhaPlanoSaudeVO(ObjetoVO).ColaboradorNome := EditColaborador.Text;
      TFolhaPlanoSaudeVO(ObjetoVO).IdOperadoraPlanoSaude := EditIdOperadoraPlanoSaude.AsInteger;
      TFolhaPlanoSaudeVO(ObjetoVO).OperadoraNome := EditOperadoraPlanoSaude.Text;
      TFolhaPlanoSaudeVO(ObjetoVO).DataInicio := EditDataInicio.Date;
      TFolhaPlanoSaudeVO(ObjetoVO).Beneficiario := IntToStr(ComboBoxBeneficiario.ItemIndex + 1);

      if StatusTela = stInserindo then
      begin
        TController.ExecutarMetodo('FolhaPlanoSaudeController.TFolhaPlanoSaudeController', 'Insere', [TFolhaPlanoSaudeVO(ObjetoVO)], 'PUT', 'Lista');
      end
      else if StatusTela = stEditando then
      begin
        if TFolhaPlanoSaudeVO(ObjetoVO).ToJSONString <> StringObjetoOld then
        begin
          TController.ExecutarMetodo('FolhaPlanoSaudeController.TFolhaPlanoSaudeController', 'Altera', [TFolhaPlanoSaudeVO(ObjetoVO)], 'POST', 'Boolean');
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

{$REGION 'Controle de Grid'}
procedure TFFolhaPlanoSaude.GridParaEdits;
begin
  inherited;

  if not CDSGrid.IsEmpty then
  begin
    ObjetoVO := TFolhaPlanoSaudeVO(TController.BuscarObjeto('FolhaPlanoSaudeController.TFolhaPlanoSaudeController', 'ConsultaObjeto', ['ID=' + IdRegistroSelecionado.ToString], 'GET'));
  end;

  if Assigned(ObjetoVO) then
  begin
    EditIdColaborador.AsInteger := TFolhaPlanoSaudeVO(ObjetoVO).IdColaborador;
    EditColaborador.Text := TFolhaPlanoSaudeVO(ObjetoVO).ColaboradorNome;
    EditIdOperadoraPlanoSaude.AsInteger := TFolhaPlanoSaudeVO(ObjetoVO).IdOperadoraPlanoSaude;
    EditOperadoraPlanoSaude.Text := TFolhaPlanoSaudeVO(ObjetoVO).OperadoraNome;
    EditDataInicio.Date := TFolhaPlanoSaudeVO(ObjetoVO).DataInicio;
    ComboBoxBeneficiario.ItemIndex := StrToInt(TFolhaPlanoSaudeVO(ObjetoVO).Beneficiario) - 1;

    // Serializa o objeto para consultar posteriormente se houve altera��es
    FormatSettings.DecimalSeparator := '.';
    StringObjetoOld := ObjetoVO.ToJSONString;
    FormatSettings.DecimalSeparator := ',';
  end;
end;
{$ENDREGION}

{$REGION 'Campos Transientes'}
procedure TFFolhaPlanoSaude.EditIdColaboradorKeyUp(Sender: TObject; var Key: Word; Shift: TShiftState);
var
  Filtro: String;
begin
  if Key = VK_F1 then
  begin
    if EditIdColaborador.Value <> 0 then
      Filtro := 'ID = ' + EditIdColaborador.Text
    else
      Filtro := 'ID=0';

    try
      EditIdColaborador.Clear;
      EditColaborador.Clear;
      if not PopulaCamposTransientes(Filtro, TViewPessoaColaboradorVO, TViewPessoaColaboradorController) then
        PopulaCamposTransientesLookup(TViewPessoaColaboradorVO, TViewPessoaColaboradorController);
      if CDSTransiente.RecordCount > 0 then
      begin
        EditIdColaborador.Text := CDSTransiente.FieldByName('ID').AsString;
        EditColaborador.Text := CDSTransiente.FieldByName('NOME').AsString;
      end
      else
      begin
        Exit;
        EditIdOperadoraPlanoSaude.SetFocus;
      end;
    finally
      CDSTransiente.Close;
    end;
  end;
end;

procedure TFFolhaPlanoSaude.EditIdOperadoraPlanoSaudeKeyUp(Sender: TObject; var Key: Word; Shift: TShiftState);
var
  Filtro: String;
begin
  if Key = VK_F1 then
  begin
    if EditIdOperadoraPlanoSaude.Value <> 0 then
      Filtro := 'ID = ' + EditIdOperadoraPlanoSaude.Text
    else
      Filtro := 'ID=0';

    try
      EditIdOperadoraPlanoSaude.Clear;
      EditOperadoraPlanoSaude.Clear;
      if not PopulaCamposTransientes(Filtro, TOperadoraPlanoSaudeVO, TOperadoraPlanoSaudeController) then
        PopulaCamposTransientesLookup(TOperadoraPlanoSaudeVO, TOperadoraPlanoSaudeController);
      if CDSTransiente.RecordCount > 0 then
      begin
        EditIdOperadoraPlanoSaude.Text := CDSTransiente.FieldByName('ID').AsString;
        EditOperadoraPlanoSaude.Text := CDSTransiente.FieldByName('NOME').AsString;
      end
      else
      begin
        Exit;
        EditDataInicio.SetFocus;
      end;
    finally
      CDSTransiente.Close;
    end;
  end;
end;
{$ENDREGION}

end.
