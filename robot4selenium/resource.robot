*** Settings ***
Documentation     A resource file with reusable keywords and variables.
...
...               The system specific keywords created here form our own
...               domain specific language. They utilize keywords provided
...               by the imported Selenium2Library.
Library           Selenium2Library

*** Variables ***
${SERVER}         10.63.240.159:8080
${BROWSER}        Chrome
${DELAY}          0
${BASE URL}      http://${SERVER}/
${COMPONENT URL}    http://${SERVER}/component
${COMPONENT INSTALL URL}      http://${SERVER}/component/install

*** Keywords ***
Open Browser To Main Page
    Open Browser    ${BASE URL}    ${BROWSER}
    Maximize Browser Window
    Set Selenium Speed    ${DELAY}
    Main Page Should Be Open

Main Page Should Be Open
    Title Should Be    DDDD

Component Page Should Be Open
    Location Should Be    ${COMPONENT URL}
    Title Should Be    DDDD

Choose Component
    Click Element    id=component

