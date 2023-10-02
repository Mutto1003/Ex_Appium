*** Settings ***
Resource    ../../Resource_init.robot
Library     AppiumLibrary


*** Keywords ***
Open YouTube App
    Open Application
    ...    remote_url=http://localhost:4723/wd/hub
    ...    platformName=${PLATFORM_NAME}
    ...    platformVersion=${PLATFORM_VERSION}
    # ...    automationName=Appium    # เพิ่มคีย์ 'automationName' และกำหนดค่าเป็น "Appium or flutter"
    ...    deviceName=${DEVICE_NAME}
    ...    appPackage=${APP_PACKAGE}
    ...    appActivity=${APP_ACTIVITY}
    ...    automationName=${automationName}
    ...    noReset=true
    ...    unicodeKeyboard=true
    ...    newCommandTimeout=5000

Clck Manu YouTube App
    [Documentation]    Send 'txt_name_menu' to check all menu and verify click menu
    [Arguments]    ${txt_name_menu}
    ${count}    Get Matching Xpath Count    xpath=//*[@resource-id='com.google.android.youtube:id/pivot_bar']/*/*/*[@resource-id='com.google.android.youtube:id/text']
    FOR    ${i}    IN RANGE    ${count}     #opt.STEPS
        Wait Until Page Contains Element    xpath=//*[@resource-id='com.google.android.youtube:id/pivot_bar']/*/*[@index='${i}']
        ${txt_menu}    Get Text    xpath=//*[@resource-id='com.google.android.youtube:id/pivot_bar']/*/*[@index='${i}']/*[@resource-id='com.google.android.youtube:id/text']       
        ${status}    Run Keyword And Return Status    Should Be Equal As Strings    ${txt_menu}    ${txt_name_menu}
        # Log    ${status}
        Run Keyword If    '${status}' == 'True'    Click Element    xpath=//*[@resource-id='com.google.android.youtube:id/pivot_bar']/*/*[@index='${i}']/*[@resource-id='com.google.android.youtube:id/text']
        Exit For Loop If    '${status}' == 'True'            
    END

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