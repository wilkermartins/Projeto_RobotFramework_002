*** Settings ***
Library     SeleniumLibrary
Resource    ../Commons/Browser.robot


*** Variables ***
${CATEGORIA}              //*[@id="block_top_menu"]/ul/li[2]/a
${SUBCATEGORIA}           //*[@id="categories_block_left"]/div/ul/li[3]/a
${VALIDACAOSITE}          //*[@id="header_logo"]/a/img
${VALIDACAOCATEGORIA}     //*[@id="categories_block_left"]/div/ul/li[1]/a
${VALIDACAOCATEGORIA}     //*[@id="categories_block_left"]/div/ul/li[2]/a
${VALIDACAOCATEGORIA}     //*[@id="categories_block_left"]/div/ul/li[3]/a
${VALIDACAOSUBCATEGORIA}  //*[@id="center_column"]/ul/li[1]/div/div[1]/div/a[1]/img

*** Keywords ***

Dado que eu esteja na tela inicial e valide que eu esteja na página
    Acessar pagina
    Wait Until Element Is Visible   ${VALIDACAOSITE}
E quando eu selecionar uma categoria, as sub categorias devem ser exibidas
    Click Element  ${CATEGORIA}
    Wait Until Element Is Visible  ${VALIDACAOCATEGORIA}

Então ao clicar na sub categoria "Summer Dresses" os produtos devem ser exibidos
    Click Element  ${SUBCATEGORIA}
    Wait Until Element Is Visible  ${VALIDACAOSUBCATEGORIA}

Fechar Navegador
    Close All Browsers
