*** Variables ***
# First App
${btn_cancel_first_page}            chain=**/XCUIElementTypeButton[`label == "ยกเลิก"`]

# Pnl Overlay Application
${pnl_overlay_application}          xpath=//XCUIElementTypeApplication[@name="AIS PLAY Stage"]/XCUIElementTypeWindow[1]

# Terms and Conditions
${lbl_terms_and_conditions}         chain=**/XCUIElementTypeStaticText[`label == "Terms and Conditions"`]
${btn_accept}                       accessibility_id=Accept

# Home Page
${lbl_title_home}                   xpath=//XCUIElementTypeButton[@name="AIS ic search"]//preceding::XCUIElementTypeStaticText[@name="HOME" or @name="หน้าแรก"]
${icn_back}                         chain=**/XCUIElementTypeButton[`label == "AIS ic back"`]
${icn_hamburger}                    xpath=//XCUIElementTypeButton[@name="AIS ic hamburger"]
${icn_search}                       chain=**/XCUIElementTypeButton[`label == "AIS ic search"`]
${pnl_banner_home}                  xpath=(//XCUIElementTypeOther[3]/XCUIElementTypeScrollView/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeCollectionView)

# Guest
${btn_login_guest_mode}             chain=**/XCUIElementTypeStaticText[`label == "LOG IN" or label == "เข้าสู่ระบบ"`]
${btn_login_no_register}            xpath=//XCUIElementTypeButton[@name="I`m a Guest" or @name="เข้าใช้งานแบบไม่ลงทะเบียน"]

# Side Menu Hamberger
${pnl_side_menu}                    xpath=//XCUIElementTypeImage[@name="AISPLAY.png"]/../..//XCUIElementTypeCollectionView
${img_ais_play}                     chain=**/XCUIElementTypeImage[`name == "AISPLAY.png"`]
${mnu_home}                         xpath=//XCUIElementTypeImage[@name="AISPLAY.png"]/../..//XCUIElementTypeCollectionView//XCUIElementTypeStaticText[@name="หน้าแรก" or @name="HOME"]
${mnu_premiummember}                xpath=//XCUIElementTypeImage[@name="AISPLAY.png"]/../..//XCUIElementTypeCollectionView//XCUIElementTypeStaticText[@name="สมาชิกพรีเมียม" or @name="PREMIUM MEMBER"]
${mnu_livetv}                       xpath=//XCUIElementTypeImage[@name="AISPLAY.png"]/../..//XCUIElementTypeCollectionView//XCUIElementTypeStaticText[@name="ทีวี" or @name="LIVE TV"]
${mnu_livesports}                   xpath=//XCUIElementTypeImage[@name="AISPLAY.png"]/../..//XCUIElementTypeCollectionView//XCUIElementTypeStaticText[@name="ดูสดกีฬา" or @name="LIVE SPORTS"]
${mnu_sports}                       xpath=//XCUIElementTypeImage[@name="AISPLAY.png"]/../..//XCUIElementTypeCollectionView//XCUIElementTypeStaticText[@name="กีฬา" or @name="SPORTS"]
${mnu_movies}                       xpath=//XCUIElementTypeImage[@name="AISPLAY.png"]/../..//XCUIElementTypeCollectionView//XCUIElementTypeStaticText[@name="ภาพยนตร์" or @name="MOVIES"]
${mnu_series}                       xpath=//XCUIElementTypeImage[@name="AISPLAY.png"]/../..//XCUIElementTypeCollectionView//XCUIElementTypeStaticText[@name="ซีรีส์" or @name="SERIES"]
${mnu_anime}                        xpath=//XCUIElementTypeImage[@name="AISPLAY.png"]/../..//XCUIElementTypeCollectionView//XCUIElementTypeStaticText[@name="อนิเมะ" or @name="ANIME"]
${mnu_kids&family}                  xpath=//XCUIElementTypeImage[@name="AISPLAY.png"]/../..//XCUIElementTypeCollectionView//XCUIElementTypeStaticText[@name="เด็กและครอบครัว" or @name="KIDS & FAMILY"]
${mnu_music}                        xpath=//XCUIElementTypeImage[@name="AISPLAY.png"]/../..//XCUIElementTypeCollectionView//XCUIElementTypeStaticText[@name="ดนตรี" or @name="MUSIC"]
${mnu_inbox}                        xpath=//XCUIElementTypeImage[@name="AISPLAY.png"]/../..//XCUIElementTypeCollectionView//XCUIElementTypeStaticText[@name="กล่องข้อความ" or @name="INBOX"]
${mnu_settings}                     xpath=//XCUIElementTypeImage[@name="AISPLAY.png"]/../..//XCUIElementTypeCollectionView//XCUIElementTypeStaticText[@name="ตั้งค่า" or @name="SETTINGS"]
${mnu_monomax}                      accessibility_id=MONOMAX
${mnu_iqiyi}                        accessibility_id=iQiyi
${mnu_sports}                       accessibility_id=SPORTS
${mnu_viu}                          accessibility_id=VIU
${mnu_netflix}                      accessibility_id=NETFLIX
${mnu_we_tv}                        accessibility_id=WeTV
${mnu_allowed}                      accessibility_id=Allowed
${mnu_ais_360_channel}              chain=**/XCUIElementTypeStaticText[`label == "AIS 360 CHANNEL" OR label == "เอไอเอส 360 แชนแนล"`]

# Menu Title Page
${lbl_title_premiummember}                xpath=//XCUIElementTypeStaticText[@name="สมาชิกพรีเมียม" or @name="PREMIUM MEMBER"]
${lbl_title_sports}                       xpath=//XCUIElementTypeStaticText[@name="กีฬา" or @name="SPORTS"]
${lbl_title_movies}                       xpath=//XCUIElementTypeStaticText[@name="ภาพยนตร์" or @name="MOVIES"]
${lbl_title_series}                       xpath=//XCUIElementTypeStaticText[@name="ซีรีส์" or @name="SERIES"]
${lbl_title_anime}                        xpath=//XCUIElementTypeStaticText[@name="อนิเมะ" or @name="ANIME"]
${lbl_title_kids&family}                  xpath=//XCUIElementTypeStaticText[@name="เด็กและครอบครัว" or @name="KIDS & FAMILY"]
${lbl_title_music}                        xpath=//XCUIElementTypeStaticText[@name="ดนตรี" or @name="MUSIC"]
${lbl_title_inbox}                        xpath=//XCUIElementTypeStaticText[@name="กล่องข้อความ" or @name="INBOX"]
${lbl_title_settings}                     xpath=//XCUIElementTypeStaticText[@name="ตั้งค่า" or @name="SETTINGS"]

# Menu Bar Home
${pnl_bar_category_list}            xpath=//XCUIElementTypeOther[3]/XCUIElementTypeScrollView/XCUIElementTypeOther/XCUIElementTypeCollectionView[1]
${mnu_bar_green_highlight}          xpath=(//XCUIElementTypeOther[3]/XCUIElementTypeScrollView/XCUIElementTypeOther/XCUIElementTypeCollectionView[1])/XCUIElementTypeCell/XCUIElementTypeOther/XCUIElementTypeOther/../XCUIElementTypeStaticText
${mnu_bar_home_green_highlight}     xpath=//XCUIElementTypeButton[@name="AIS ic search"]//following::XCUIElementTypeStaticText[@name="HOME" or @name="หน้าแรก"]/../XCUIElementTypeOther
${mnu_bar_tv}                       xpath=//XCUIElementTypeStaticText[@name="ทีวี" or @name="TV"]
${mnu_bar_home}                     xpath=//XCUIElementTypeButton[@name="AIS ic search"]//following::XCUIElementTypeStaticText[@name="HOME" or @name="หน้าแรก"]
${mnu_bar_movies}                   xpath=//XCUIElementTypeStaticText[@name="ภาพยนตร์" or @name="MOVIES"]
${mnu_bar_series}                   xpath=//XCUIElementTypeStaticText[@name="ซีรีส์" or @name="SERIES"]
${mnu_bar_recommendedforyou}        xpath=//XCUIElementTypeStaticText[@name="แนะนำสำหรับคุณ" or @name="RECOMMENDED FOR YOU"]
${mnu_bar_genremovies}              xpath=//XCUIElementTypeStaticText[@name="ประเภทภาพยนตร์" or @name="GENRE"]
${mnu_bar_livetv}                   xpath=//XCUIElementTypeStaticText[@name="ทีวี" or @name="LIVE TV"]
${mnu_bar_apps}                     xpath=//XCUIElementTypeStaticText[@name="APPS"]

#Logout
${lbl_do_you_really_want_to_logout}         chain=**/XCUIElementTypeTextView[`label == "Do you really want to logout?" or label == "คุณต้องการออกจากระบบ ?"`]
${btn_ok_logout}                            chain=**/XCUIElementTypeStaticText[`label == "OK" or label == "ตกลง"`]
${btn_ok}                                   xpath=//XCUIElementTypeButton[@name="ตกลง" or @name="OK"]
${btn_cancel}                               chain=**/XCUIElementTypeStaticText[`label == "Cancel" or label == "ยกเลิก"`]
${btn_logout}                               xpath=//XCUIElementTypeStaticText[@name="Logout"]

# Login
${img_logo_ais_on_login_page}           accessibility_id=welcomeLogo
${lbl_welcome}                          xpath=//XCUIElementTypeStaticText[@name="Welcome" or @name="ยินดีต้อนรับ"]
${btn_login}                            xpath=//XCUIElementTypeButton[@name="Login" or @name="เข้าสู่ระบบ"]
${btn_login_no_register}                xpath=//XCUIElementTypeButton[@name="I`m a Guest" or @name="เข้าใช้งานแบบไม่ลงทะเบียน"]

# VOD Player
${lbl_continue_playing}              xpath=//XCUIElementTypeStaticText[@name="Start play from last position?" or @name="รับชมต่อ"]
${pnl_slider_vod_player}             xpath=//XCUIElementTypeOther/XCUIElementTypeSlider
${btn_play_and_pause_vod_player}     xpath=(//XCUIElementTypeButton[@name="-15"]//following::XCUIElementTypeButton)[1]
${btn_back_forward_15_sec}           xpath=//XCUIElementTypeButton[@name="-15"]
${btn_forward_15_sec}                xpath=//XCUIElementTypeButton[@name="+15"]
${btn_audio_output}                  xpath=//XCUIElementTypeButton[@name="AIS ic audio output"]
${btn_previous_movie}                xpath=//XCUIElementTypeButton[@name="AIS ic previous movie"]
${btn_next_movie}                    xpath=//XCUIElementTypeButton[@name="AIS ic next movie"]
${icn_muted_poster_autoplay}         chain=**/XCUIElementTypeButton[`label == "ap muted"`]
${btn_play_under_poster}             xpath=//XCUIElementTypeButton[@name="PLAY" or @name="เล่น"]
${btn_continue_playing_ok}           xpath=//XCUIElementTypeButton[@name="OK" or @name="ตกลง"]
${btn_pause_vdo}                     xpath=//XCUIElementTypeButton[@name="ic pause"]
${btn_play_vdo}                      xpath=//XCUIElementTypeButton[@name="ic play2"] 
${lbl_time_progress_vdo}             xpath=//XCUIElementTypeSlider/../XCUIElementTypeStaticText[3]

#Live TV
${pnl_live_left_list_channel}        xpath=//XCUIElementTypeButton[@name="AIS ic back"]/../XCUIElementTypeTable

#Movie Detail
${lbl_add_to_favorites}              chain=**/XCUIElementTypeButton[`label == "Add to Favorites" OR label == "เพิ่มรายการโปรด"`]
${lbl_remove_from_favorites}         chain=**/XCUIElementTypeButton[`label == "Remove from Favorites" OR label == "ลบรายการโปรด"`]
${icn_add_to_favorites}              xpath=//XCUIElementTypeButton[@name="Add to Favorites" or @name="เพิ่มรายการโปรด"]
${icn_remove_from_favorites}         xpath=//XCUIElementTypeButton[@name="Remove from Favorites" or @name="ลบรายการโปรด"]