*** Settings ***
Documentation       Simple example using AppiumLibrary

Resource            ../Resource_init.robot
Library             AppiumLibrary
Library             RequestsLibrary
Library             Collections
# Library    JsonValidator
# Library    AppiumFlutterLibrary


*** Test Cases ***
Search Detail
    Open YouTube App
    Wait Until Page Contains Element    ${search}
    Click Element    ${search}
    Wait Until Page Contains Element    xpath=//*[contains(@text,'Search YouTube')]
    Input Text    xpath=//*[contains(@text,'Search YouTube')]    Mavel
    # Clear Text    xpath=//*[contains(@text,'Mavel')]
    # Press Keycode    4    # 4 represents the "Back" key event
    Press Keycode    66    # 66 represents the "Enter" key event
    [Teardown]    Close Application

Verify menu Navigation Bar
    Open YouTube App
    Wait Until Page Contains Element    ${search}
    # Wait Until Page Contains Element    ${search}
    ${count}    Get Matching Xpath Count
    ...    xpath=//*[@resource-id='com.google.android.youtube:id/pivot_bar']/*/*/*[@resource-id='com.google.android.youtube:id/text']
    FOR    ${i}    IN RANGE    ${count}    # opt.STEPS
        Wait Until Page Contains Element
        ...    xpath=//*[@resource-id='com.google.android.youtube:id/pivot_bar']/*/*[@index='${i}']
        ${txt_menu}    Get Text
        ...    xpath=//*[@resource-id='com.google.android.youtube:id/pivot_bar']/*/*[@index='${i}']/*[@resource-id='com.google.android.youtube:id/text']
        Should Be Equal As Strings    ${txt_menu}    ${menu_data[${i}]}
        # Log    ${input_data[${i}]}
    END
    [Teardown]    Close Application

Verify click ${name_menu} menu
    Open YouTube App
    Wait Until Page Contains Element    ${search}
    ${name_menu}    Set Variable    Shorts
    Clck Manu YouTube App    ${name_menu}
    [Teardown]    Close Application                                                                                            
    
