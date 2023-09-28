*** Settings ***
Library     AppiumLibrary


*** Test Cases ***
Open App and Verify Title
    # Open Application    platformName=Android    platformVersion=10    deviceName=emulator-5554    appPackage=com.example.myapp    appActivity=.MainActivity
    Open Application
    ...    remote_url=http://127.0.0.1:4723/wd/hub
    ...    platformName=android
    ...    platformVersion=13
    ...    deviceName=emulator-5554
    ...    appPackage=appPackage=com.google.android.youtube
    ...    appActivity=com.google.android.youtube.HomeActivity    
    ...    noReset=true
    ...    unicodeKeyboard=true
    ...    automationName=UiAutomator2
    ...    newCommandTimeout=5000
