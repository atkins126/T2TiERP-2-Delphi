{ *******************************************************************************
Title: T2Ti ERP
Description: Janela de Recados

The MIT License

Copyright: Copyright (C) 2015 T2Ti.COM

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
t2ti.com@gmail.com

@author Albert Eije
@version 2.0
******************************************************************************* }
unit URecado;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, UTelaCadastro, Menus, StdCtrls, ExtCtrls, Buttons, Grids, DBGrids,
  JvExDBGrids, JvDBGrid, JvDBUltimGrid, ComCtrls, LabeledCtrls, Atributos, Constantes,
  Mask, JvExMask, JvToolEdit, JvBaseEdits, DB, DBClient, Generics.Collections,
  WideStrings, DBXMySql, FMTBcd, Provider, SqlExpr, StrUtils, System.Actions,
  Vcl.ActnList, Vcl.RibbonSilverStyleActnCtrls, Vcl.ActnMan, Vcl.ToolWin,
  Vcl.ActnCtrls, Controller, Biblioteca;

type
  TFRecado = class(TFTelaCadastro)
    BevelEdits: TBevel;
    EditIdColaborador: TLabeledCalcEdit;
    EditColaborador: TLabeledEdit;
    ActionManager: TActionManager;
    ActionIncluirItem: TAction;
    ActionExcluirItem: TAction;
    ActionAtualizarTotais: TAction;
    EditAssunto: TLabeledEdit;
    MemoTexto: TLabeledMemo;
    procedure FormCreate(Sender: TObject);
    procedure EditIdColaboradorKeyUp(Sender: TObject; var Key: Word; Shift: TShiftState);
  private
    { Private declarations }
  public
    { Public declarations }
    procedure GridParaEdits; override;

    // Controles CRUD
    function DoInserir: Boolean; override;
    function DoEditar: Boolean; override;
    function DoExcluir: Boolean; override;
    function DoSalvar: Boolean; override;
  end;

var
  FRecado: TFRecado;

implementation

uses RecadoRemetenteController, RecadoRemetenteVO,
  ULookup,
  ViewPessoaColaboradorVO, ViewPessoaColaboradorController;
{$R *.dfm}

{$REGION 'Infra'}
procedure TFRecado.FormCreate(Sender: TObject);
begin
  ClasseObjetoGridVO := TRecadoRemetenteVO;
  ObjetoController := TRecadoRemetenteController.Create;

  inherited;
end;
{$ENDREGION}

{$REGION 'Controles CRUD'}
function TFRecado.DoInserir: Boolean;
begin
  Result := inherited DoInserir;

  if Result then
  begin
    EditIdColaborador.SetFocus;
  end;
end;

function TFRecado.DoEditar: Boolean;
begin
  Result := inherited DoEditar;

  if Result then
  begin
    EditIdColaborador.SetFocus;
  end;
end;

function TFRecado.DoExcluir: Boolean;
begin
  if inherited DoExcluir then
  begin
    try
      TController.ExecutarMetodo('RecadoRemetenteController.TRecadoRemetenteController', 'Exclui', [IdRegistroSelecionado], 'DELETE', 'Boolean');
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
    TController.ExecutarMetodo('RecadoRemetenteController.TRecadoRemetenteController', 'Consulta', [Trim(Filtro), Pagina.ToString, False], 'GET', 'Lista');
end;

function TFRecado.DoSalvar: Boolean;
begin
  Result := inherited DoSalvar;

  if Result then
  begin
    try
      if not Assigned(ObjetoVO) then
        ObjetoVO := TRecadoRemetenteVO.Create;

      TRecadoRemetenteVO(ObjetoVO).IdColaborador := Sessao.Usuario.ColaboradorVO.Id;
      TRecadoRemetenteVO(ObjetoVO).DataEnvio := Now;
      TRecadoRemetenteVO(ObjetoVO).HoraEnvio := TimeToStr(Now);
      TRecadoRemetenteVO(ObjetoVO).Assunto := EditAssunto.Text;
      TRecadoRemetenteVO(ObjetoVO).Texto := MemoTexto.Text;

      TRecadoRemetenteVO(ObjetoVO).RecadoDestinatarioVO.IdColaborador := EditIdColaborador.AsInteger;
      TRecadoRemetenteVO(ObjetoVO).RecadoDestinatarioVO.IdRecadoRemetente := Sessao.Usuario.ColaboradorVO.Id;

      /// EXERCICIO
      ///  E se o recado fosse enviado para v�rios contatos? Implemente uma lista
      ///  dentro de RecadoRemetenteVO para enviar o recado para v�rios contatos.

      if StatusTela = stInserindo then
      begin
        TController.ExecutarMetodo('RecadoRemetenteController.TRecadoRemetenteController', 'Insere', [TRecadoRemetenteVO(ObjetoVO)], 'PUT', 'Lista');
        TController.ExecutarMetodo('RecadoDestinatarioController.TRecadoDestinatarioController', 'Insere', [TRecadoRemetenteVO(ObjetoVO).RecadoDestinatarioVO], 'PUT', 'Lista');
      end
      else if StatusTela = stEditando then
      begin
        if TRecadoRemetenteVO(ObjetoVO).ToJSONString <> StringObjetoOld then
        begin
          TController.ExecutarMetodo('RecadoRemetenteController.TRecadoRemetenteController', 'Altera', [TRecadoRemetenteVO(ObjetoVO)], 'POST', 'Boolean');
          TController.ExecutarMetodo('RecadoDestinatarioController.TRecadoDestinatarioController', 'Altera', [TRecadoRemetenteVO(ObjetoVO).RecadoDestinatarioVO], 'POST', 'Boolean');
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
procedure TFRecado.GridParaEdits;
begin
  inherited;

  if not CDSGrid.IsEmpty then
  begin
    ObjetoVO := TRecadoRemetenteVO(TController.BuscarObjeto('RecadoRemetenteController.TRecadoRemetenteController', 'ConsultaObjeto', ['ID=' + IdRegistroSelecionado.ToString], 'GET'));
  end;

  if Assigned(ObjetoVO) then
  begin

    /// EXERCICIO:
    ///  Esse ID do colaborador est� sendo carregado corretamente? Por que?
    EditIdColaborador.AsInteger := TRecadoRemetenteVO(ObjetoVO).IdColaborador;

    EditAssunto.Text := TRecadoRemetenteVO(ObjetoVO).Assunto;
    MemoTexto.Text := TRecadoRemetenteVO(ObjetoVO).Texto;

    // Serializa o objeto para consultar posteriormente se houve altera��es
    FormatSettings.DecimalSeparator := '.';
    StringObjetoOld := ObjetoVO.ToJSONString;
    FormatSettings.DecimalSeparator := ',';
  end;
end;
{$ENDREGION}

{$REGION 'Campos Transientes'}
procedure TFRecado.EditIdColaboradorKeyUp(Sender: TObject;  var Key: Word; Shift: TShiftState);
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
        EditAssunto.SetFocus;
      end;
    finally
      CDSTransiente.Close;
    end;
  end;
end;
{$ENDREGION}

/// EXERCICIO
///  Implemente uma caixa de entrada para que o colaborador destinat�rio
///  consiga enxergar todos os recados enviados para ele, como se fosse
///  uma caixa de entrada de e-mail.

end.
