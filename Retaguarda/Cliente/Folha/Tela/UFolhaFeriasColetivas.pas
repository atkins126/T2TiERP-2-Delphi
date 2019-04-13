{ *******************************************************************************
Title: T2Ti ERP
Description: Janela Cadastro de F�rias Coletivas para a Folha de Pagamento

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

@author Albert Eije (alberteije@gmail.com)
@version 2.0
******************************************************************************* }
unit UFolhaFeriasColetivas;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, UTelaCadastro, DB, DBClient, Menus, StdCtrls, ExtCtrls, Buttons, Grids,
  DBGrids, JvExDBGrids, JvDBGrid, JvDBUltimGrid, ComCtrls, FolhaFeriasColetivasVO,
  FolhaFeriasColetivasController, Tipos, Atributos, Constantes, LabeledCtrls, Mask,
  JvExMask, JvToolEdit, JvBaseEdits, StrUtils, Controller;

type
  [TFormDescription(TConstantes.MODULO_FOLHA_PAGAMENTO, 'F�rias Coletivas')]

  TFFolhaFeriasColetivas = class(TFTelaCadastro)
    BevelEdits: TBevel;
    EditDiasGozo: TLabeledCalcEdit;
    EditDataInicio: TLabeledDateEdit;
    EditDataFim: TLabeledDateEdit;
    EditAbonoPecuniarioInicio: TLabeledDateEdit;
    EditAbonoPecuniarioFim: TLabeledDateEdit;
    EditDiasAbono: TLabeledCalcEdit;
    EditDataPagamento: TLabeledDateEdit;
    procedure FormCreate(Sender: TObject);
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
  FFolhaFeriasColetivas: TFFolhaFeriasColetivas;

implementation

{$R *.dfm}

{$REGION 'Controles Infra'}
procedure TFFolhaFeriasColetivas.FormCreate(Sender: TObject);
begin
  ClasseObjetoGridVO := TFolhaFeriasColetivasVO;
  ObjetoController := TFolhaFeriasColetivasController.Create;

  inherited;
end;

procedure TFFolhaFeriasColetivas.ControlaBotoes;
begin
  inherited;

  BotaoImprimir.Visible := False;
end;

procedure TFFolhaFeriasColetivas.ControlaPopupMenu;
begin
  inherited;

  MenuImprimir.Visible := False;
end;
{$ENDREGION}

{$REGION 'Controles CRUD'}
function TFFolhaFeriasColetivas.DoInserir: Boolean;
begin
  Result := inherited DoInserir;

  if Result then
  begin
    EditDataInicio.SetFocus;
  end;
end;

function TFFolhaFeriasColetivas.DoEditar: Boolean;
begin
  Result := inherited DoEditar;

  if Result then
  begin
    EditDataInicio.SetFocus;
  end;
end;

function TFFolhaFeriasColetivas.DoExcluir: Boolean;
begin
  if inherited DoExcluir then
  begin
    try
      TController.ExecutarMetodo('FolhaFeriasColetivasController.TFolhaFeriasColetivasController', 'Exclui', [IdRegistroSelecionado], 'DELETE', 'Boolean');
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
    TController.ExecutarMetodo('FolhaFeriasColetivasController.TFolhaFeriasColetivasController', 'Consulta', [Trim(Filtro), Pagina.ToString, False], 'GET', 'Lista');
end;

function TFFolhaFeriasColetivas.DoSalvar: Boolean;
begin
  Result := inherited DoSalvar;

  if Result then
  begin
    try
      if not Assigned(ObjetoVO) then
        ObjetoVO := TFolhaFeriasColetivasVO.Create;

      TFolhaFeriasColetivasVO(ObjetoVO).IdEmpresa := Sessao.Empresa.Id;
      TFolhaFeriasColetivasVO(ObjetoVO).DataInicio := EditDataInicio.Date;
      TFolhaFeriasColetivasVO(ObjetoVO).DataFim := EditDataFim.Date;
      TFolhaFeriasColetivasVO(ObjetoVO).DiasGozo := EditDiasGozo.AsInteger;
      TFolhaFeriasColetivasVO(ObjetoVO).AbonoPecuniarioInicio := EditAbonoPecuniarioInicio.Date;
      TFolhaFeriasColetivasVO(ObjetoVO).AbonoPecuniarioFim := EditAbonoPecuniarioFim.Date;
      TFolhaFeriasColetivasVO(ObjetoVO).DiasAbono := EditDiasAbono.AsInteger;
      TFolhaFeriasColetivasVO(ObjetoVO).DataPagamento := EditDataPagamento.Date;

      if StatusTela = stInserindo then
      begin
        TController.ExecutarMetodo('FolhaFeriasColetivasController.TFolhaFeriasColetivasController', 'Insere', [TFolhaFeriasColetivasVO(ObjetoVO)], 'PUT', 'Lista');
      end
      else if StatusTela = stEditando then
      begin
        if TFolhaFeriasColetivasVO(ObjetoVO).ToJSONString <> StringObjetoOld then
        begin
          TController.ExecutarMetodo('FolhaFeriasColetivasController.TFolhaFeriasColetivasController', 'Altera', [TFolhaFeriasColetivasVO(ObjetoVO)], 'POST', 'Boolean');
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
procedure TFFolhaFeriasColetivas.GridParaEdits;
begin
  inherited;

  if not CDSGrid.IsEmpty then
  begin
    ObjetoVO := TFolhaFeriasColetivasVO(TController.BuscarObjeto('FolhaFeriasColetivasController.TFolhaFeriasColetivasController', 'ConsultaObjeto', ['ID=' + IdRegistroSelecionado.ToString], 'GET'));
  end;

  if Assigned(ObjetoVO) then
  begin
    EditDataInicio.Date := TFolhaFeriasColetivasVO(ObjetoVO).DataInicio;
    EditDataFim.Date := TFolhaFeriasColetivasVO(ObjetoVO).DataFim;
    EditDiasGozo.AsInteger := TFolhaFeriasColetivasVO(ObjetoVO).DiasGozo;
    EditAbonoPecuniarioInicio.Date := TFolhaFeriasColetivasVO(ObjetoVO).AbonoPecuniarioInicio;
    EditAbonoPecuniarioFim.Date := TFolhaFeriasColetivasVO(ObjetoVO).AbonoPecuniarioFim;
    EditDiasAbono.AsInteger := TFolhaFeriasColetivasVO(ObjetoVO).DiasAbono;
    EditDataPagamento.Date := TFolhaFeriasColetivasVO(ObjetoVO).DataPagamento;

    // Serializa o objeto para consultar posteriormente se houve altera��es
    FormatSettings.DecimalSeparator := '.';
    StringObjetoOld := ObjetoVO.ToJSONString;
    FormatSettings.DecimalSeparator := ',';
  end;
end;
{$ENDREGION}

end.
