*** Settings ***
Resource            ../../Resource/Keyword/MenuHome.resource
#Test Teardown       Keywords Teardown For Settings

*** Test Cases ***
Open MyCar
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
   [Teardown]  Close Application
 