*** Settings ***
Documentation    Keywords Desafio Final 3 - PrimeExperts

*** Keywords ***
Quando clicar em Sign in e adicionar email e preencher os campos

    ${random}            String.Generate Random String    3                                    [NUMBERS]
    Set Test Variable    ${mail}                          testrobotprime${random}@gmail.com

    SeleniumLibrary.Click Element                    ${Sign_in}
    SeleniumLibrary.Wait Until Element Is Visible    ${campo_email_sign}
    SeleniumLibrary.Input Text                       ${campo_email_sign}      ${mail}
    SeleniumLibrary.Click Button                     ${create_new_account}


    SeleniumLibrary.Wait Until Element Is Visible    ${title}
    SeleniumLibrary.Click Element                    ${title}

    SeleniumLibrary.Input Text    ${first_name}    Mr
    SeleniumLibrary.Input Text    ${last_name}     Robot
    SeleniumLibrary.Input Text    ${email}         ${mail}
    SeleniumLibrary.Input Text    ${password}      ab54321ab
    Select From List By Value     id:days          2
    Select From List By Value     id:months        1
    Select From List By Value     id:years         1997
    SeleniumLibrary.Input Text    ${firstname}     Mr
    SeleniumLibrary.Input Text    ${lastname}      Robot
    SeleniumLibrary.Input Text    ${address}       89 Luckie St NW
    SeleniumLibrary.Input Text    ${city}          Atlanta
    Select From List By Value     id:id_state      10
    SeleniumLibrary.Input Text    ${postcode}      30303
    SeleniumLibrary.Input Text    ${phone}         +5511911345768
    SeleniumLibrary.Input Text    ${2_address}     Rua Lorena, 345

E clicar em submeter cadastro
    SeleniumLibrary.Click Button    ${botao_register}

Então o cadastro será efetuado com sucesso
    SeleniumLibrary.Page Should Contain    Welcome to your account. Here you can manage all of your personal information and orders.