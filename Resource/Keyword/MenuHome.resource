*** Settings ***
Library        AppiumLibrary
Variables      ../../Config/buffet_config.yaml
Variables      ../../Config/default_config.yaml
Resource       ../../Resource/Repository/CommonRepository.resource
Resource       ../../Resource/Localized/${Localized}/CommomLocalized.resource

*** Keywords ***
Open AIS Play
   [Documentation]    Owner: Panithan.b
   [Tags]   keyword_action
   Open Application
   ...    remote_url=${ios_config_iphone.remote_url}
   ...    alias=${ios_config_iphone.alias}
   ...    platformName=${ios_config_iphone.platformName}
   ...    platformVersion=${ios_config_iphone.platformVersion}
   ...    deviceName=${ios_config_iphone.deviceName}
   ...    udid=${ios_config_iphone.udid}
   ...    app=${ios_config_iphone.app}
   ...    automationName=XCUITest
   ...    noReset=true
   ...    useNewWDA=true
   ...    resetKeyboard=true
   ...    unicodeKeyboard=false
   ...    newCommandTimeout=10000
   ...    ignoreHiddenApiPolicyError=true
   Waiting For Results    3s

Waiting For Results
   [Documentation]    Owner: Kachain.a
   [Tags]   keyword_command
   [Arguments]    ${time}=1s
   Sleep          ${time}