*** Settings ***
Documentation    Keywords Desafio Final - PrimeExperts

*** Keywords ***
Dado que esteja na tela inicial
    SeleniumLibrary.Wait Until Element Is Visible    ${campo_busca}

Quando pesquisar por produto inexistente
    SeleniumLibrary.Input Text       ${campo_busca}    itemNãoExistente
    SeleniumLibrary.Click Element    ${botao_busca}

Entao o site retorna mensagem de item nao encontrado
    SeleniumLibrary.Element Text Should Be    ${mensagem_no_found}    ${mensagem_item_nao_encontrado}

