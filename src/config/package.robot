*** Settings ***
Documentation    Arquivo de Mapeamento de Arquivos e Bibliotecas
Library          SeleniumLibrary
Library          String
Library          DebugLibrary
Library          AppiumLibrary


### Framework ###
Resource     hooks.robot
Variables    hooks.yaml

        ### WEB ###

### Elements ###
Resource    ../auto/elements/elements_web/elements_desafio_final.robot

### Keyworks ###
Resource    ../auto/keywords/kws_web/kws_desafio_final.robot
Resource    ../auto/keywords/kws_web/kws_desafio_final_2.robot
Resource    ../auto/keywords/kws_web/kws_desafio_final_3.robot

        ### MOBILE ###

### Elements ###
Resource    ../auto/elements/elements_mobile/elements_desafio_final_mobile.robot

### Keyworks ###
Resource    ../auto/keywords/kws_mobile/kws_desafio_final_mobile.robot