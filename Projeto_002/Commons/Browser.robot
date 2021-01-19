*** Settings ***
Library     SeleniumLibrary

*** Variables ***

${BROWSER}                Chrome
${URL}                    http://automationpractice.com/index.php

*** Keywords ***

Acessar pagina
    Open Browser    ${URL}  ${BROWSER}
