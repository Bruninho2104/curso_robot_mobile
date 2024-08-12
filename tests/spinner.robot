*** Settings ***

Resource    ../resources/base.resource

*** Variables ***
${spinner}    id=com.qaxperience.yodapp:id/spinnerJob
${spinnerText}    id=android:id/text1

*** Keywords ***
Select Level
    [Arguments]    ${level}
    
    Click Element                     ${spinner}
    Wait Until Element Is Visible     class=android.widget.ListView

    Click Text                        ${level}

*** Test Cases ***
Deve escolher o nível Padawan

    Start session
    Get started

    Navigate to     Formulários
    Go to item      Cadastro        Crie sua conta

    Select Level    Padawan
    Element Text Should Be            ${spinnerText}    Padawan

    Close session

Deve escolher o nível Jedi

    Start session
    Get started

    Navigate to     Formulários
    Go to item      Cadastro        Crie sua conta

    Select Level    Jedi
    Element Text Should Be            ${spinnerText}    Jedi

    Close session

Deve escolher o nível Sith

    Start session
    Get started

    Navigate to     Formulários
    Go to item      Cadastro        Crie sua conta

    Select Level    Sith
    Element Text Should Be            ${spinnerText}    Sith

    Close session

Deve escolher o nível Outros

    Start session
    Get started

    Navigate to     Formulários
    Go to item      Cadastro        Crie sua conta

    Select Level    Outros
    Element Text Should Be            ${spinnerText}    Outros

    Close session