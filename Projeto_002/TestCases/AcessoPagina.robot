*** Settings ***
Resource    ../Resources/AcessoPagina.robot
Resource    ../Commons/Browser.robot
Test Teardown   Fechar Navegador


*** Test Cases ***

Cenario: TST-001 - Acesso e validação a menus e sub menus
    Dado que eu esteja na tela inicial e valide que eu esteja na página
    E quando eu selecionar uma categoria, as sub categorias devem ser exibidas
    Então ao clicar na sub categoria "Summer Dresses" os produtos devem ser exibidos
