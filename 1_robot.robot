*** Settings ***
Library  SeleniumLibrary

*** Variables ***
${timeout}    5
${login}    RobotTests
${wrong password}     RobotFramework2
*** Keywords ***


*** Test Cases ***
Wikipedia
    Open Browser    https://pl.wikipedia.org    chrome    executable_path=C:/chromedriver/chromedriver.exe
    Sleep    1
    Run Keyword And Ignore Error    Wait Until Element Is Visible    id:L2AGLb    ${timeout}
    Run Keyword And Ignore Error    Click button    id:L2AGLb
    Wait Until Element Is Visible    id:pt-login-2    3
    Click element    id:pt-login-2
#    sleep    1
#    Click element    id:pt-login-222222   #bledny id
    input text    id:wpName1    ${login}
    input password    id:wpPassword1    ${wrong password}
    Select Checkbox    id:wpRemember
    click button    id:wpLoginAttempt
    sleep   3
    close browser