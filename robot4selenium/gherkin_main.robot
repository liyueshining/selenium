*** Settings ***
Documentation     A test suite with a single Gherkin style test.
...
...               This test is functionally identical to the example in
...               valid_login.robot file.
Resource          resource.robot
Test Teardown     Close Browser

*** Test Cases ***
Open Main Page
    browser is opened to main page

Choose UME
    Given browser is opened to main page
    When choose component
    Then ume page should be open

*** Keywords ***
Browser is opened to main page
    Open browser to main page
