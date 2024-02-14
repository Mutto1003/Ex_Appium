*** Settings ***
Resource            ../../Resource/Keyword/MenuHome.resource
#Test Teardown       Keywords Teardown For Settings

*** Test Cases ***
Check Menu PREMIUM MEMBER AIS Play
   [Documentation]    *** Owner: Panithan.b ***
   ...    *** Condition ***
   ...    - iPad Mini6
   ...    ==>
   ...    *** Test Step ***
   ...    1. Open the Side menu and press "SETTINGS" button.
   ...    ==>
   ...    *** Expect Result ***
   ...    [1] SETTINGS page is show with following button under "My Profile" tab
   ...     - Phone number/Internet Number
   ...     - Login via AIS Internet Number
   ...     - My Profile ข้อมูลผู้ใช้งาน
   ...     - My account บัญชีของฉัน
   ...     - Recent
   ...     - Favorites
   ...    ==>
   [Tags]    scn001
   Open AIS Play
   Click icon hamburger
   Verify Menu AIS Play PREMIUM MEMBER
   [Teardown]  Close All Applications

Check Menu LIVE TV AIS Play
   [Documentation]    *** Owner: Panithan.b ***
   ...    *** Condition ***
   ...    - iPad Mini6
   ...    ==>
   ...    *** Test Step ***
   ...    1. Open the Side menu and press "SETTINGS" button.
   ...    ==>
   ...    *** Expect Result ***
   ...    [1] SETTINGS page is show with following button under "My Profile" tab
   ...     - Phone number/Internet Number
   ...     - Login via AIS Internet Number
   ...     - My Profile ข้อมูลผู้ใช้งาน
   ...     - My account บัญชีของฉัน
   ...     - Recent
   ...     - Favorites
   ...    ==>
   [Tags]    scn001
   Open AIS Play
   Click icon hamburger
   Verify Menu AIS Play LIVE TV
   [Teardown]  Close All Applications