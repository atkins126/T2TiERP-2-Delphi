{*******************************************************************************
Title: T2Ti ERP                                                                 
Description:  VO  relacionado � tabela [WMS_ARMAZENAMENTO] 
                                                                                
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
           t2ti.com@gmail.com                                                   
                                                                                
@author Albert Eije (t2ti.com@gmail.com)                    
@version 2.0                                                                    
*******************************************************************************}
unit WmsArmazenamentoVO;

interface

uses
  VO, Atributos, Classes, Constantes, Generics.Collections, SysUtils;

type
  [TEntity]
  [TTable('WMS_ARMAZENAMENTO')]
  TWmsArmazenamentoVO = class(TVO)
  private
    FID: Integer;
    FID_WMS_CAIXA: Integer;
    FID_WMS_RECEBIMENTO_DETALHE: Integer;
    FQUANTIDADE: Integer;

    //Transientes



  public 
    [TId('ID', [ldGrid, ldLookup, ldComboBox])]
    [TGeneratedValue(sAuto)]
    [TFormatter(ftZerosAEsquerda, taCenter)]
    property Id: Integer  read FID write FID;
    [TColumn('ID_WMS_CAIXA', 'Id Wms Caixa', 80, [ldGrid, ldLookup, ldCombobox], False)]
    [TFormatter(ftZerosAEsquerda, taCenter)]
    property IdWmsCaixa: Integer  read FID_WMS_CAIXA write FID_WMS_CAIXA;
    [TColumn('ID_WMS_RECEBIMENTO_DETALHE', 'Id Wms Recebimento Detalhe', 80, [ldGrid, ldLookup, ldCombobox], False)]
    [TFormatter(ftZerosAEsquerda, taCenter)]
    property IdWmsRecebimentoDetalhe: Integer  read FID_WMS_RECEBIMENTO_DETALHE write FID_WMS_RECEBIMENTO_DETALHE;
    [TColumn('QUANTIDADE', 'Quantidade', 80, [ldGrid, ldLookup, ldCombobox], False)]
    [TFormatter(ftZerosAEsquerda, taCenter)]
    property Quantidade: Integer  read FQUANTIDADE write FQUANTIDADE;


    //Transientes



  end;

implementation


initialization
  Classes.RegisterClass(TWmsArmazenamentoVO);

finalization
  Classes.UnRegisterClass(TWmsArmazenamentoVO);

end.
