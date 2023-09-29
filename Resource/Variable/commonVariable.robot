*** Settings ***
Library             AppiumLibrary

*** Variables ***
${REMOTE_URL}           http://localhost:4723/wd/hub
${PLATFORM_NAME}        android
${PLATFORM_VERSION}     13
${DEVICE_NAME}          emulator-5554
${APP_PACKAGE}          com.google.android.youtube
${APP_ACTIVITY}         com.google.android.youtube.HomeActivity
${automationName}       UiAutomator2