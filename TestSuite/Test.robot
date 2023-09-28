*** Settings ***
Documentation       Simple example using AppiumLibrary

Library             AppiumLibrary
# Library    AppiumFlutterLibrary


*** Variables ***
${REMOTE_URL}           http://localhost:4723/wd/hub
${PLATFORM_NAME}        android
${PLATFORM_VERSION}     13
${DEVICE_NAME}          emulator-5554
${APP_PACKAGE}          com.google.android.youtube
${APP_ACTIVITY}         com.google.android.youtube.HomeActivity
${automationName}       UiAutomator2


*** Test Cases ***
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
    # Wait For Element Absent    com.android.permissioncontroller:id/permission_allow_button
    # Click Element    com.android.permissioncontroller:id/permission_allow_button
    # Set Appium Timeout    30s
    # Wait Until Page Contains Element    com.google.android.youtube:id/youtube_logo
    # Scroll Down
    # Scroll Up
    # Wait Until Page Contains Element    com.google.android.youtube:id/filter_bar
    # Swipe    500    100    100    0    1000
    # Swipe    500    500    100    500
    # Wait Until Page Contains Element    com.google.android.youtube:id/pane_fragment_container
    # Swipe    500    100    100    0    1000
    # Wait For Element Absent    com.google.android.youtube:id/youtube_logo
    # Wait For Element Absent    com.google.android.youtube:id/pane_fragment_container
    # Scroll To Element    id=com.google.android.youtube:id/pane_fragment_container
    # Scroll Down    com.google.android.youtube:id/pane_fragment_container
    # Scroll Down
    # Close Application


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
