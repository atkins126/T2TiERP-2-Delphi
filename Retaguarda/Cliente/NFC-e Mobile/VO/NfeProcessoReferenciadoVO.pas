{*******************************************************************************
Title: T2Ti ERP                                                                 
Description:  VO  relacionado � tabela [NFE_PROCESSO_REFERENCIADO] 
                                                                                
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
unit NfeProcessoReferenciadoVO;

interface

uses
  VO, Atributos, Classes, Constantes, Generics.Collections, SysUtils;

type
  [TEntity]
  [TTable('NFE_PROCESSO_REFERENCIADO')]
  TNfeProcessoReferenciadoVO = class(TVO)
  private
    FID: Integer;
    FID_NFE_CABECALHO: Integer;
    FIDENTIFICADOR: String;
    FORIGEM: String;

    //Usado no lado cliente para controlar quais registros ser�o persistidos
    FPersiste: String;

  public 
    [TId('ID')]
    [TGeneratedValue(sAuto)]
    [TFormatter(ftZerosAEsquerda, taCenter)]
    property Id: Integer  read FID write FID;
    [TColumn('ID_NFE_CABECALHO', 'Id Nfe Cabecalho', 80, [ldGrid, ldLookup, ldCombobox], False)]
    [TFormatter(ftZerosAEsquerda, taCenter)]
    property IdNfeCabecalho: Integer  read FID_NFE_CABECALHO write FID_NFE_CABECALHO;
    [TColumn('IDENTIFICADOR', 'Identificador', 450, [ldGrid, ldLookup, ldCombobox], False)]
    property Identificador: String  read FIDENTIFICADOR write FIDENTIFICADOR;
    [TColumn('ORIGEM', 'Origem', 8, [ldGrid, ldLookup, ldCombobox], False)]
    property Origem: String  read FORIGEM write FORIGEM;

    [TColumn('PERSISTE', 'Persiste', 60, [], True)]
    property Persiste: String  read FPersiste write FPersiste;

  end;

implementation


initialization
  Classes.RegisterClass(TNfeProcessoReferenciadoVO);

finalization
  Classes.UnRegisterClass(TNfeProcessoReferenciadoVO);

end.
