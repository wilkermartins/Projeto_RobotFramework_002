*** Settings ***
Resource    ../Resources/ContatarSuporte.robot
Resource    ../Commons/Browser.robot
Test Teardown   Fechar Navegador


*** Test Cases ***

Cenario: TST-002 - Contatar suporte para dúvidas
    Dado que eu tenha clicado na opção "Contact us"
    E que eu tenha informado um título
    E informe um e-mail
    E informe uma referencia para o suporte solicitado
    E insira um anexo
    E informe o motivo do contato
    Quando eu clicar no botão "Send"
    Então o sistema deve informar a seguinte mensagem "Your message has been successfully sent to our team"
