*** Settings ***
Library  SeleniumLibrary

*** Variables ***


*** Keywords ***


*** Test Cases ***
Wikipedia
    Open Browser    https://pl.wikipedia.org    chrome    executable_path=C:/chromedriver/chromedriver.exe
    Sleep    1
    Click element    id:pt-login-2
#    sleep    1
#    Click element    id:pt-login-222222   #bledny id
    input text    id:wpName1    RobotTests
    input text    id:wpPassword1    RobotFramework
    Select Checkbox    id:wpRemember
    sleep   3
    close browser