*** Settings ***
Documentation    Exercício Test Web - PrimeExperts
Library    SeleniumLibrary

*** Variables ***
${url}      http://automationpractice.com/index.php
${busca}    Blouse

# Elementos
${campo_busca}    //*[@id="search_query_top"]
${botao_busca}    //*[@name="submit_search"]
${produto}        //*[@class="product-name" and @title="Blouse"]

*** Test Cases ***
Abrir browser
    Open Browser               about:blank    Chrome    
    Maximize Browser Window

Navegar para pagina
    Go To    ${url}

Aguardar elemento visivel
    Wait Until Element Is Visible    ${campo_busca}


Realizar busca
    Input Text                       ${campo_busca}     ${busca}
    Click Element                    ${botao_busca} 
    Wait Until Element Is Visible    ${produto}

Fechar browser
    Close Browser