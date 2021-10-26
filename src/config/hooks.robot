*** Settings ***
Documentation    Arquivo de Setup e Teardown

*** Keywords ***
Open Session
    Open Browser               about:blank              ${config.browser.name}    
    Maximize Browser Window
    Go To                      ${config.browser.url}

Close Session
    Close Browser

### MOBILE ###

Abrir Aplicacao
    Open Application    ${host}
    ...                 platformName=${platformName}          
    ...                 platformVersion=${platformVersion}    
    ...                 deviceName=${deviceName}
    ...                 appPackage=${appPackage}
    ...                 appActivity=${appActivity}
    ...                 automationName=${automationName}

Fechar Aplicacao
    Close Application
    