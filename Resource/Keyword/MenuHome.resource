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

Keywords Teardown For Settings
   [Documentation]    Owner: Kachain.a
   [Tags]   keyword_action
   Run Keyword If Test Failed     Capture Page Screenshot
   Run Keyword If Test Passed     Capture Page Screenshot
   Run Keyword And Ignore Error   Go Back Home Page From Settings

Go Back Home Page From Settings
   [Documentation]    Owner: Kachain.a
   [Tags]      keyword_action
   ${status_back}    Run Keyword And Return Status    Wait Until Element Is Visible      ${icn_back}          2s
   IF    ${status_back} == ${True}         Click Element               ${icn_back}
   ${status}         Run Keyword And Return Status    Wait Until Element Is Visible      ${icn_hamburger}     2s    #${lbl_title_settings}
   IF   ${status} == ${True}    Go Back To Home Page

Go Back To Home Page
   [Documentation]    Owner: Patipan.w
   [Tags]   keyword_action
   [Arguments]    ${delay_time}=2s    ${retry}=10
    WHILE   True    limit=${retry}
       Waiting For Results     time=2s
       ${status_home}       Check Element Is Visible And Return Status  ${mnu_bar_home_green_highlight}    timeout=${delay_time}
       ${status_hamburger}  Check Element Is Visible And Return Status  ${icn_hamburger}                   timeout=${delay_time}
       ${status_banner}     Check Element Is Visible And Return Status  ${pnl_banner_home}                 timeout=${delay_time}
       ${status_back}       Check Element Is Visible And Return Status  ${icn_back}                        timeout=${delay_time}
       ${status_cancel}     Check Element Is Visible And Return Status  ${btn_cancel}                      timeout=${delay_time}
       IF  (${status_home} == ${False}) and (${status_hamburger} == ${True} and ${status_banner} == ${False} and ${status_back} == ${False}) and (${status_cancel} == ${False})
                      Run Keyword And Ignore Error    Select Menu Home In Hamburger
       ELSE IF    (${status_home} == ${True}) and (${status_hamburger} == ${True} and ${status_banner} == ${False} and ${status_back} == ${False}) and (${status_cancel} == ${False})
                      Run Keyword And Ignore Error    Select Menu Home In Hamburger
                      BREAK
       ELSE IF    (${status_home} == ${False} and ${status_hamburger} == ${True} and ${status_banner} == ${True} and ${status_back} == ${False}) and (${status_cancel} == ${False})
                      Run Keyword And Ignore Error    Select Menu Home In Hamburger
       ELSE IF    (${status_home} == ${False} and ${status_hamburger} == ${True} and ${status_banner} == ${False} and ${status_back} == ${False}) and (${status_cancel} == ${False})
                      Run Keyword And Ignore Error    Select Menu Home In Hamburger
       ELSE IF    (${status_home} == ${False} and ${status_hamburger} == ${False} and ${status_banner} == ${False} and ${status_back} == ${False}) and (${status_cancel} == ${True})
                      Run Keyword And Ignore Error    Click Element    ${btn_cancel} 
       ELSE IF    (${status_home} == ${False} and ${status_hamburger} == ${False} and ${status_banner} == ${False} and ${status_back} == ${True}) and (${status_cancel} == ${False})
                      Run Keyword And Ignore Error    Click Element    ${icn_back}
       ELSE IF    (${status_home} == ${False} and ${status_hamburger} == ${True} and ${status_banner} == ${False} and ${status_back} == ${True}) and (${status_cancel} == ${False})
                      Run Keyword And Ignore Error    Click Element    ${icn_back}
       ELSE IF    (${status_home} == ${False} and ${status_hamburger} == ${False} and ${status_banner} == ${False} and ${status_back} == ${False}) and (${status_cancel} == ${False})
                      Run Keyword And Ignore Error    Tap Overlay To Active Display On Application
                      Run Keyword And Ignore Error    Wait Until Element Is Visible    ${icn_back}
                      Run Keyword And Ignore Error    Click Element                    ${icn_back}
       ELSE
            ${log_message}    Catenate
            ...    ${\n}"Home"            is visible:"${status_home}".
            ...    ${\n}"Hamburger"       is visible:"${status_hamburger}". 
            ...    ${\n}"Banner Home"     is visible:"${status_banner}".
            ...    ${\n}"Arrow Back"      is visible:"${status_back}".
            ...    ${\n}"Cancel Button"   is visible:"${status_cancel}".
            ...    ${\n}Current page is "Home".
            Log    ${log_message}    console=${True}  
           BREAK
       END
    END
    Run Keyword And Ignore Error    Mobile Capture Page Screenshot    Back To Home Page.png

Click icon hamburger
    Click Element   ${icn_hamburger}

Verify Menu AIS Play ${name}
   Wait Until Element Is Visible  ${img_ais_play} 
   ${txt_menu}  Get Text  xpath=//XCUIElementTypeStaticText[@name="${name}"]
   Element Text Should Be  xpath=//XCUIElementTypeStaticText[@name="${name}"]  ${txt_menu}
   Log  ${txt_menu}  console=${True}
    