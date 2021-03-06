{*******************************************************************************
Title: T2Ti ERP                                                                 
Description:  VO  relacionado � tabela [COMPRA_REQUISICAO] 
                                                                                
The MIT License                                                                 
                                                                                
Copyright: Copyright (C) 2014 T2Ti.COM                                          
                                                                                
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
                                                                                
@author Albert Eije (t2ti.com@gmail.com)                    
@version 2.0                                                                    
*******************************************************************************}
unit CompraRequisicaoVO;

interface

uses
  VO, Atributos, Classes, Constantes, Generics.Collections, SysUtils, DB,
  ViewPessoaColaboradorVO, CompraTipoRequisicaoVO, CompraRequisicaoDetalheVO;

type
  [TEntity]
  [TTable('COMPRA_REQUISICAO')]
  TCompraRequisicaoVO = class(TVO)
  private
    FID: Integer;
    FID_COMPRA_TIPO_REQUISICAO: Integer;
    FID_COLABORADOR: Integer;
    FDATA_REQUISICAO: TDateTime;
    FOBSERVACAO: String;

    //Transientes
    FColaboradorPessoaNome: String;
    FCompraTipoRequisicaoNome: String;

    FColaboradorVO: TViewPessoaColaboradorVO;
    FCompraTipoRequisicaoVO: TCompraTipoRequisicaoVO;

    FListaCompraRequisicaoDetalheVO: TObjectList<TCompraRequisicaoDetalheVO>;

  public
    constructor Create; override;
    destructor Destroy; override;

    [TId('ID', [ldGrid, ldLookup, ldComboBox])]
    [TGeneratedValue(sAuto)]
    [TFormatter(ftZerosAEsquerda, taCenter)]
    property Id: Integer  read FID write FID;

    [TColumn('ID_COMPRA_TIPO_REQUISICAO', 'Id Compra Tipo Requisicao', 80, [ldGrid, ldLookup, ldCombobox], False)]
    [TFormatter(ftZerosAEsquerda, taCenter)]
    property IdCompraTipoRequisicao: Integer  read FID_COMPRA_TIPO_REQUISICAO write FID_COMPRA_TIPO_REQUISICAO;
    [TColumnDisplay('COMPRA_TIPO_REQUISICAO.NOME', 'Tipo Requisi��o', 250, [ldGrid, ldLookup, ldCombobox], ftString, 'CompraTipoRequisicaoVO.TCompraTipoRequisicaoVO', True)]
    property CompraTipoRequisicaoNome: String read FCompraTipoRequisicaoNome write FCompraTipoRequisicaoNome;

    [TColumn('ID_COLABORADOR', 'Id Colaborador', 80, [ldGrid, ldLookup, ldCombobox], False)]
    [TFormatter(ftZerosAEsquerda, taCenter)]
    property IdColaborador: Integer  read FID_COLABORADOR write FID_COLABORADOR;
    [TColumnDisplay('COLABORADOR.NOME', 'Requisitante', 250, [ldGrid, ldLookup, ldCombobox], ftString, 'ViewPessoaColaboradorVO.TViewPessoaColaboradorVO', True)]
    property ColaboradorPessoaNome: String read FColaboradorPessoaNome write FColaboradorPessoaNome;

    [TColumn('DATA_REQUISICAO', 'Data Requisicao', 80, [ldGrid, ldLookup, ldCombobox], False)]
    property DataRequisicao: TDateTime  read FDATA_REQUISICAO write FDATA_REQUISICAO;
    [TColumn('OBSERVACAO', 'Observacao', 450, [ldGrid, ldLookup, ldCombobox], False)]
    property Observacao: String  read FOBSERVACAO write FOBSERVACAO;


    //Transientes
    [TAssociation('ID', 'ID_COMPRA_TIPO_REQUISICAO')]
    property CompraTipoRequisicaoVO: TCompraTipoRequisicaoVO read FCompraTipoRequisicaoVO write FCompraTipoRequisicaoVO;

    [TAssociation('ID', 'ID_COLABORADOR')]
    property ColaboradorVO: TViewPessoaColaboradorVO read FColaboradorVO write FColaboradorVO;

    [TManyValuedAssociation('ID_COMPRA_REQUISICAO', 'ID')]
    property ListaCompraRequisicaoDetalheVO: TObjectList<TCompraRequisicaoDetalheVO> read FListaCompraRequisicaoDetalheVO write FListaCompraRequisicaoDetalheVO;

  end;

implementation

constructor TCompraRequisicaoVO.Create;
begin
  inherited;

  FCompraTipoRequisicaoVO := TCompraTipoRequisicaoVO.Create;
  FColaboradorVO := TViewPessoaColaboradorVO.Create;

  FListaCompraRequisicaoDetalheVO := TObjectList<TCompraRequisicaoDetalheVO>.Create;
end;

destructor TCompraRequisicaoVO.Destroy;
begin
  FreeAndNil(FCompraTipoRequisicaoVO);
  FreeAndNil(FColaboradorVO);

  FreeAndNil(FListaCompraRequisicaoDetalheVO);

  inherited;
end;

initialization
  Classes.RegisterClass(TCompraRequisicaoVO);

finalization
  Classes.UnRegisterClass(TCompraRequisicaoVO);

end.
