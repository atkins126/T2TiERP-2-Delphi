//Contato = SAC
unit FormControlsEditTypes;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics,
  Controls, Forms, Dialogs, uniGUITypes, uniGUIAbstractClasses,
  uniGUIClasses, uniGUIFrame, uniEdit, uniGUIBaseClasses, uniPanel, uniSpinEdit,
  uniSyntaxEditor, uniLabel, uniButton, uniMemo, uniMultiItem, uniComboBox,
  IdSMTP, IdSSLOpenSSL, IdMessage, IdText, IdAttachmentFile,
  IdExplicitTLSClientServerBase;

type
  TUniFormControlsEditTypes = class(TUniFrame)
    UniContainerPanel1: TUniContainerPanel;
    UniEdit1: TUniEdit;
    UniLabel4: TUniLabel;
    UniMemo1: TUniMemo;
    UniButton1: TUniButton;
    UniEdit2: TUniEdit;
    UniLabel1: TUniLabel;
    UniLabel2: TUniLabel;
    UniComboBox3: TUniComboBox;
    UniLabel3: TUniLabel;
    procedure UniButton1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

implementation

uses
  uniGUIForm;

{$R *.dfm}


/// EXERCICIO
///  Implemente o que for preciso para que o envio do e-mail fique funcional

// m�todo adaptado de um exemplo da internet. veja detalhes em:
// http://www.andrecelestino.com/delphi-xe-envio-de-e-mail-com-componentes-indy/
procedure TUniFormControlsEditTypes.UniButton1Click(Sender: TObject);
var
  // vari�veis e objetos necess�rios para o envio
  IdSSLIOHandlerSocket: TIdSSLIOHandlerSocketOpenSSL;
  IdSMTP: TIdSMTP;
  IdMessage: TIdMessage;
  IdText: TIdText;
  sAnexo: string;
begin
  // instancia��o dos objetos
  IdSSLIOHandlerSocket := TIdSSLIOHandlerSocketOpenSSL.Create(Self);
  IdSMTP := TIdSMTP.Create(Self);
  IdMessage := TIdMessage.Create(Self);

  try
    // Configura��o do protocolo SSL (TIdSSLIOHandlerSocketOpenSSL)
    IdSSLIOHandlerSocket.SSLOptions.Method := sslvSSLv23;
    IdSSLIOHandlerSocket.SSLOptions.Mode := sslmClient;

    // Configura��o do servidor SMTP (TIdSMTP)
    IdSMTP.IOHandler := IdSSLIOHandlerSocket;
    IdSMTP.UseTLS := utUseImplicitTLS;
    IdSMTP.AuthType := satDefault;
    IdSMTP.Port := 465;
    IdSMTP.Host := 'smtp.gmail.com';
    IdSMTP.Username := 'usuario@gmail.com';
    IdSMTP.Password := 'senha';

    // Configura��o da mensagem (TIdMessage)
    IdMessage.From.Address := uniedit2.text;
    IdMessage.From.Name := uniedit1.text;
    IdMessage.ReplyTo.EMailAddresses := IdMessage.From.Address;
    IdMessage.Recipients.Add.Text := 'destinatario1@email.com';
    IdMessage.Recipients.Add.Text := 'destinatario2@email.com'; // opcional
    IdMessage.Recipients.Add.Text := 'destinatario3@email.com'; // opcional
    IdMessage.Subject := UniCombobox3.Text;
    IdMessage.Encoding := meMIME;

    // Configura��o do corpo do email (TIdText)
    IdText := TIdText.Create(IdMessage.MessageParts);
    IdText.Body.Add('Corpo do e-mail');
    IdText.ContentType := 'text/plain; charset=iso-8859-1';

    // Opcional - Anexo da mensagem (TIdAttachmentFile)
    sAnexo := 'C:\Anexo.pdf';
    if FileExists(sAnexo) then
    begin
      TIdAttachmentFile.Create(IdMessage.MessageParts, sAnexo);
    end;

    // Conex�o e autentica��o
    try
      IdSMTP.Connect;
      IdSMTP.Authenticate;
    except
      on E:Exception do
      begin
        ShowMessage('Erro na conex�o ou autentica��o: ' +
          E.Message);
        Exit;
      end;
    end;

    // Envio da mensagem
    try
      IdSMTP.Send(IdMessage);
      ShowMessage('Mensagem enviada com sucesso!');
    except
      On E:Exception do
      begin
        ShowMessage('Erro ao enviar a mensagem: ' +
          E.Message);
      end;
    end;
  finally
    // desconecta do servidor
    IdSMTP.Disconnect;
    // libera��o da DLL
    UnLoadOpenSSLLibrary;
    // libera��o dos objetos da mem�ria
    FreeAndNil(IdMessage);
    FreeAndNil(IdSSLIOHandlerSocket);
    FreeAndNil(IdSMTP);
  end;
end;

initialization
  RegisterClass(TUniFormControlsEditTypes);

end.
