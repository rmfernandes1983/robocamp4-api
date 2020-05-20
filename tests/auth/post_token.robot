*** Settings ***
Documentation       Testes da Rota /auth da Pixel Api

Resource        ../../resources/services.robot


*** Test Cases ***
Request Token
    ${resp}=            Post Token      papito@ninjapixel.com        pwd123

    Status Should Be    200         ${resp}

Incorrect Password
    ${resp}=            Post Token      papito@ninjapixel.com        pwd1234

    Status Should Be    401         ${resp}