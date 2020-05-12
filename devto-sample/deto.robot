*** Settings ***
Documentation    Example using the space separated plain text format.
Library          OperatingSystem

*** Variables ***
${MESSAGE}       Hello, i am robo!

*** Test Cases ***
My Test
    [Documentation]    Example robot test
    Log    ${MESSAGE}
    My keyword    /tmp/clip.txt

Another Test
    Should Be Equal    ${MESSAGE}    Hello, i am robo!

*** Keywords ***
My Keyword
    [Arguments]    ${path}
    File Should Exist    ${path}
