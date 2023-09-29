*** Settings ***
Documentation       Simple example using AppiumLibrary

Resource            ../Resource_init.robot
Library             AppiumLibrary
# Library    AppiumFlutterLibrary


*** Test Cases ***
Search Detail
    Open YouTube App
    Wait Until Page Contains Element    xpath=//android.widget.ImageView[@content-desc="Search"]
    Click Element    xpath=//android.widget.ImageView[@content-desc="Search"]
    Wait Until Page Contains Element    xpath=//*[contains(@text,'Search YouTube')]
    Input Text    xpath=//*[contains(@text,'Search YouTube')]    Mavel
    # Clear Text    xpath=//*[contains(@text,'Mavel')]
    # Press Keycode    4    # 4 represents the "Back" key event
    Press Keycode    66    # 66 represents the "Enter" key event


*** Keywords ***
Scroll Down
    # Scroll down by swiping up and down multiple times
    # You can adjust the coordinates and repeat count based on your app's layout
    Repeat Keyword
    ...    5
    ...    Swipe
    ...    500
    ...    1000
    ...    500
    ...    500

Scroll Up
    # Scroll down by swiping up and down multiple times
    # You can adjust the coordinates and repeat count based on your app's layout
    Repeat Keyword
    ...    5
    ...    Swipe
    ...    500
    ...    500
    ...    500
    ...    1000
