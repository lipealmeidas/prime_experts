***Settings***
Library    AppiumLibrary
# Test Teardown   Close Application


# *** Test Cases ***
# Caso de teste 1
#     [Tags]  test_mobile
#     Abrir o aplicativo no celular
#     Buscar o canal
#     Selecionar o canal na lista de busca
#     Navegar pelo menu Playlist
#     Selecionar a primeira playlist do canal
#     Navegar por todos os botôes da barra de Menus


***Variables***

${host}               http://localhost:4723/wd/hub
${platformName}       Android
${automationName}     UiAutomator2
${platformVersion}    9.0
${appActivity}        com.google.android.apps.youtube.app.WatchWhileActivity
${appPackage}         com.google.android.youtube
${deviceName}         nexus5
${busca_canal}        adrenaline


*** Test Cases ***
Abrir o aplicativo no celular
    Open Application    ${host}
    ...                 platformName=${platformName}          
    ...                 platformVersion=${platformVersion}    
    ...                 deviceName=${deviceName}
    ...                 appPackage=${appPackage}
    ...                 appActivity=${appActivity}
    ...                 automationName=${automationName}

Buscar o canal
    # clico no icone de busca
    Wait Until Element Is Visible    accessibility_id=Search
    Click Element                    accessibility_id=Search
    # esperar que entrei na nova tela
    Wait Until Element Is Visible    search_edit_text
    Input Text                       search_edit_text           ${busca_canal}
    Press Keycode                    66

Selecionar o canal na lista de busca
    Wait Until Element Is Visible    channel_name
    Click Element                    channel_name

Navegar pelo menu Playlist
    Wait Until Element Is Visible    accessibility_id=Playlists
    Click Element                    accessibility_id=Playlists
Selecionar a primeira playlist do canal
    Wait Until Element Is Visible    playlist_item
    Click Element                    playlist_item

Navegar por todos os botôes da barra de Menus
    
    Wait Until Element Is Visible    accessibility_id=Home
    Click Element                    accessibility_id=Home

    Wait Until Element Is Visible    accessibility_id=Trending
    Click Element                    accessibility_id=Trending

    Wait Until Element Is Visible    accessibility_id=Subscriptions
    Click Element                    accessibility_id=Subscriptions

    Wait Until Element Is Visible    accessibility_id=Notifications
    Click Element                    accessibility_id=Notifications

    Wait Until Element Is Visible    accessibility_id=Library
    Click Element                    accessibility_id=Library

    Close Application