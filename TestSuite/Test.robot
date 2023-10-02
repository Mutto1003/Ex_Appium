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

Verify menu Navigation Bar 
    Open YouTube App
    Wait Until Page Contains Element    xpath=//android.widget.ImageView[@content-desc="Search"]
    Wait Until Page Contains Element    xpath=//android.widget.Button[@content-desc="Home"]    
    FOR    ${i}    IN RANGE    0   4     #opt.STEPS
        Wait Until Page Contains Element    xpath=//*[@resource-id='com.google.android.youtube:id/pivot_bar']/*/*[@index='${i}']
        ${txt_menu}    Get Text    xpath=//*[@resource-id='com.google.android.youtube:id/pivot_bar']/*/*[@index='${i}']/*[@resource-id='com.google.android.youtube:id/text']       
        Should Be Equal As Strings    ${txt_menu}    ${input_data[${i}]}
        # Log    ${input_data[${i}]}     
    END

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
