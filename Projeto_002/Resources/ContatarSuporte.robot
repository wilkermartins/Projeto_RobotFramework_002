*** Settings ***
Library     SeleniumLibrary
Resource    ../Commons/Browser.robot


*** Variables ***
${CONTATAR}                 //*[@id="contact-link"]/a
${CATEGORIA}                //*[@id="id_contact"]/option[2]
${EMAIL}                    //*[@id="email"]
${EMAIL_TEXTO}              wilkersmartins@gmail.com
${REFERENCIA}               //*[@id="id_order"]
${REFERENCIA_TEXTO}         Preço do produto 012525
${ANEXO}                    id=fileUpload
${MENSAGEM}                 //*[@id="message"]
${MENSAGEM_STRING}           Ao acessar o preço não está sendo exibido na moeda corrente
${ENVIAR}                   //*[@id="submitMessage"]/span
${FILE}                     /Anexo/PrecoProduto.png

*** Keywords ***

Dado que eu tenha clicado na opção "Contact us"
    Acessar pagina
    Wait Until Page Contains Element      ${CONTATAR}
    Click Element        ${CONTATAR}
E que eu tenha informado um título
    Wait Until Page Contains Element      ${CATEGORIA}
    Click Element        ${CATEGORIA}
E informe um e-mail
    Wait Until Page Contains Element      ${EMAIL}
    Input Text    ${EMAIL}      ${EMAIL_TEXTO}
E informe uma referencia para o suporte solicitado
    Wait Until Page Contains Element      ${REFERENCIA}
    Input Text    ${REFERENCIA}      ${REFERENCIA_TEXTO}
    Press Keys    ${REFERENCIA}    \ue004
E insira um anexo
    Wait Until Page Contains Element      ${ANEXO}
    Choose File     ${ANEXO}         ${EXECDIR}\\Anexo\\PrecoProduto.png
E informe o motivo do contato
    Wait Until Page Contains Element      ${MENSAGEM}
    Input Text    ${MENSAGEM}      ${MENSAGEM_STRING}
Quando eu clicar no botão "Send"
    Wait Until Page Contains Element      ${ENVIAR}
    Click Element        ${ENVIAR}
Então o sistema deve informar a seguinte mensagem "${MENSAGEM_VALIDACAO}"
    Page Should Contain      ${MENSAGEM_VALIDACAO}
Fechar Navegador
    Close All Browsers
