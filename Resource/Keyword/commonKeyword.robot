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
