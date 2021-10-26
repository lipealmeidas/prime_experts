*** Settings ***
Documentation    Exercício Variaveis - PrimeExperts

*** Variables ***
&{dicionario}       nome=Felipe     sobrenome=Almeida       idade=24        cidade=Barueri      estado=São Paulo        pais=Brasil
@{lista}            limão    tomate    abacaxi    manga    acerola
# ${email}        @gmail.com


*** Test Cases ***
Exibir Dicionario
    Log to Console     ${dicionario.nome}
    Log to Console     ${dicionario.sobrenome}
    Log to Console     ${dicionario.idade}
    Log to Console     ${dicionario.cidade}
    Log to Console     ${dicionario.estado}
    Log to Console     ${dicionario.pais}

Exibir Lista
    Log To Console     ${lista[0]}
    Log To Console     ${lista[1]}
    Log To Console     ${lista[2]}
    Log To Console     ${lista[3]}
    Log To Console     ${lista[4]}

# Formando email
#     [Arguments]     A   B

#     Log To Console    

