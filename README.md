## Projeto Testes 

Para a automação de testes utilizei o Robot Framework com ATDD.

### Objetivo

- O objetivo deste projeto é validar o acesso e verificações de componentes ao site http://automationpractice.com/index.php.
- Posteriormemte foi realizado um cadastro ao suporte do site.


### Planejamento/Cenário dos testes

Para este projeto foram desenvolvidos dois cenários de testes do tipo ATDD, inseridos juntos a codificação.

- TST-001: Acessar o página e validar os menus e sub-menus.
- TST-002: Contatar o suporte do site visitado.

### Execução dos testes automatizados

Para executar o projeto de automação é necessário configurar o ambiente seguindo os passos a seguir:

- Ter o Python instalado (utilizei a versão 3.9.0).
- PIP instalado e atualizado.

#### Instalar as seguintes bibliotecas:

- pip install robot-framework
- pip install robotframework-seleniumlibrary
- pip install selenium
- Baixar e inserir na pasta "Python27/Scripts" o driver do navegador Chrome
- Inserir na variavel de ambiente o caminho da instalação do Python "[SEU_REPOSITORIO]/Python27/Scripts"

Após estes passos os scripts de testes automatizados podem ser executados.

Para executar os testes pode ser utilizado a seguinte comando:
- [SEU_REPOSITORIO]\Projeto_01> robot -d ..\..\Results .\TestCases\


