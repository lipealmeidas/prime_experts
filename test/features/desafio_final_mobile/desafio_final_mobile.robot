*** Settings ***
Documentation
Resource        ../../../src/config/package.robot

Test Setup       Abrir Aplicacao
Test Teardown    Fechar Aplicacao


*** Test Cases ***
Logar no Youtube
    Dado que esteja na tela inicial do youtube
    Quando clicar para realizar login
    # E usar swipe no menu explorar
    # E Clicar no video
    # Entao o video sera reproduzido

# Usar Método Swipe na tela
#     Dado que esteja na tela inicial do youtube
#     Quando usar swipe no menu explorar
#     E Clicar no video
#     Entao o video sera reproduzido