*** Settings ***
Documentation
Resource    ../../../src/config/package.robot

Test Setup       Open Session
Test Teardown    Close Session

*** Test Cases ***
Desafio Final 1 - Pesquisar produto não existente
    Dado que esteja na tela inicial
    Quando pesquisar por produto inexistente
    Entao o site retorna mensagem de item nao encontrado

Desafio Final 2 - Listar Produtos
    Dado que esteja na tela inicial
    Quando passar o cursor por cima da categoria women no menu principal
    E clicar na sub categoria summer dresses
    Entao o site exibe os produtos da categoria solicitada

Desafio Final 3 - Adicionar Cliente
    Dado que esteja na tela inicial
    Quando clicar em Sign in e adicionar email e preencher os campos
    E clicar em submeter cadastro
    Então o cadastro será efetuado com sucesso