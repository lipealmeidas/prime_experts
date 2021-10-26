*** Settings ***
Documentation    Exercício IF e FOR - PrimeExperts

*** Variables ***
@{paises}   Brasil    Argentina    Portugal    Uruguai    Alemanha   

*** Test Cases ***

Contar de 0 a 10 usando FOR
    FOR    ${numeros}    IN RANGE    0    11
        Log To Console    "Estou no número: ${numeros}"
    END    

Lista de países
    FOR     ${countlist}    IN      @{paises}       
        Log To Console     "Estou no pais: ${countlist}"
    END

Contar se 5 ou 8 usando IF
    FOR    ${numeros}    IN RANGE    0    11
        IF      "${numeros}" == "5"
            Log To Console    "Estou no número: ${numeros}"
        ELSE
            IF      "${numeros}" == "8"
            Log To Console    "Estou no número: ${numeros}"
            END
        END
    END   