
;=====================================================================
;====================== Script Reading Help ==========================
;=====================================================================

; Window Width & Height = 25

; Specs & Coordinates - Start Screen = 32
; Specs & Coordinates - Test Screen = 66
; Specs & Coordinates - Pause Gui = 187
; Specs & Coordinates - Exit Gui = 236

; Gui Creation = 283
; Control Addtion - Start Screen Controls = 291
; Control Addtion - Test Controls = 313


;=====================================================================
;======================== Program Options ============================
;=====================================================================

#singleinstance force ; easier to launch, remove later

Menu, Tray, Icon, E:\Slike\HrvatskiGrb.ico ; adds cool icon


;=====================================================================
;===================== Window Width & Height =========================
;=====================================================================

gui_window_w := A_ScreenWidth
gui_window_h := A_ScreenHeight - 20


;=====================================================================
;====================== Specs & Coordinates ==========================
;=====================================================================
;========================= Start Screen ==============================
;=====================================================================
{
;======================== Hrv Zastava Pic ============================

hrv_zastava_pic_w := A_ScreenWidth ; fullscreen
hrv_zastava_pic_h := A_ScreenHeight ; fullscreen

hrv_zastava_pic_x := 0 ; fullscreen
hrv_zastava_pic_y := 0 ; fullscreen


;======================= Start Test Button ===========================

start_test_button_text := "Start Test" ; text to display

start_test_button_w := A_ScreenWidth / 2 ; 960
start_test_button_h := A_ScreenHeight / 5 ; 216

start_test_button_x := A_ScreenWidth / 4 ; 480
start_test_button_y := A_ScreenHeight / 2 - A_ScreenHeight / 5 ; 324


;======================== Settings Button =============================

settings_button_text := "Settings" ; text to display

settings_button_w := A_ScreenWidth / 4 ; 480
settings_button_h := A_ScreenHeight / 10 ; 108

settings_button_x := A_ScreenWidth / 2 - A_ScreenWidth / 8 ; 720
settings_button_y := A_ScreenHeight / 2 + A_ScreenHeight / 20 ; 594
}


;=====================================================================
;====================== Specs & Coordinates ==========================
;=====================================================================
;========================= Settings Gui ==============================
;=====================================================================
{
;=========================== Variables ===============================

number_of_questions := 555 ; number of questions in pool


settings_gui_timer_ddl_text = Countdown|Stopwatch ; text to show in settings timer ddl


settings_gui_language_ddl_text = Hrvatski|English ; text to show in settings language ddl


;======================== Controls Distance ==========================

settings_gui_distance_to_border := 25

settings_gui_distance_between_controls := 15


;====================== Gui Width & Height ===========================

settings_gui_w := 1920 / 3 ; 640, looks nice
settings_gui_h := 1080 / 3 ; 360, looks nice


;======================== Timer Text Front ===========================

settings_gui_timer_text_front_w := 80 ; just so it fits
settings_gui_timer_text_front_h := 37 ; just so it fits

settings_gui_timer_text_front_x := settings_gui_distance_to_border ; 25
settings_gui_timer_text_front_y := settings_gui_distance_to_border ; 25


;=========================== Timer DDL ===============================

settings_gui_timer_ddl_w := 175 ; just so it fits
settings_gui_timer_ddl_h := 2 * 60 ; 120, fit 2 rows

settings_gui_timer_ddl_x := settings_gui_distance_to_border + settings_gui_distance_between_controls + settings_gui_timer_text_front_w ; 120
settings_gui_timer_ddl_y := 21 ; aligned with timer text


;======================= Timer Text Middle ===========================

settings_gui_timer_text_middle_w := 70 ; just so it fits
settings_gui_timer_text_middle_h := 37 ; just so it fits

settings_gui_timer_text_middle_x := settings_gui_distance_to_border + 2 * settings_gui_distance_between_controls + settings_gui_timer_text_front_w + settings_gui_timer_ddl_w ; 310
settings_gui_timer_text_middle_y := settings_gui_distance_to_border ; 25


;========================== Timer Edit ===============================

settings_gui_timer_edit_w := 60 ; fits 2 digits
settings_gui_timer_edit_h := 44 ; just so it fits

settings_gui_timer_edit_x := settings_gui_distance_to_border + 3 * settings_gui_distance_between_controls + settings_gui_timer_text_front_w + settings_gui_timer_ddl_w + settings_gui_timer_text_middle_w ; 395
settings_gui_timer_edit_y := 23 ; aligned with timer text


;======================== Timer Text back ============================

settings_gui_timer_text_back_w := 90 ; just so it fits
settings_gui_timer_text_back_h := 37 ; just so it fits

settings_gui_timer_text_back_x := settings_gui_distance_to_border + 4 * settings_gui_distance_between_controls + settings_gui_timer_text_front_w +  settings_gui_timer_ddl_w + settings_gui_timer_text_middle_w + settings_gui_timer_edit_w ; 260 + w + w
settings_gui_timer_text_back_y := settings_gui_distance_to_border ; 25


;============== Chosen Number Of Questions Text Front ================

settings_gui_chosen_number_of_questions_text_front_w := 250 ; just so it fits
settings_gui_chosen_number_of_questions_text_front_h := 37 ; just so it fits

settings_gui_chosen_number_of_questions_text_front_x := settings_gui_distance_to_border ; 25
settings_gui_chosen_number_of_questions_text_front_y := settings_gui_distance_to_border + settings_gui_timer_text_front_h + settings_gui_distance_between_controls ; 77


;================ Chosen Number Of Questions Edit ====================

settings_gui_chosen_number_of_questions_edit_w := 80 ; fits 3 digits
settings_gui_chosen_number_of_questions_edit_h := 44 ; just so it fits

settings_gui_chosen_number_of_questions_edit_x := settings_gui_distance_to_border + settings_gui_distance_between_controls + settings_gui_chosen_number_of_questions_text_front_w ; 280
settings_gui_chosen_number_of_questions_edit_y := 74 ; aligned with chosen number of questions text


;================ Chosen Number Of Questions Text Back ===============

settings_gui_chosen_number_of_questions_text_back_w := 90 ; just so it fits
settings_gui_chosen_number_of_questions_text_back_h := 37 ; just so it fits

settings_gui_chosen_number_of_questions_text_back_x := settings_gui_distance_to_border + 2 * settings_gui_distance_between_controls + settings_gui_chosen_number_of_questions_text_front_w + settings_gui_chosen_number_of_questions_edit_w ; 360
settings_gui_chosen_number_of_questions_text_back_y := settings_gui_chosen_number_of_questions_text_front_y ; 77


;========================= Language Text =============================

settings_gui_language_text_w := 130 ; just so it fits
settings_gui_language_text_h := 37 ; just so it fits

settings_gui_language_text_x := settings_gui_distance_to_border ; 25
settings_gui_language_text_y := settings_gui_distance_to_border +  2 * settings_gui_distance_between_controls + settings_gui_timer_text_front_h + settings_gui_chosen_number_of_questions_text_front_h ; 129


;========================== Language DDl =============================

settings_gui_language_ddl_w := 120 ; just so it fits
settings_gui_language_ddl_h := 2 * 60 ; 120, fit 2 rows

settings_gui_language_ddl_x := settings_gui_distance_to_border + settings_gui_distance_between_controls + settings_gui_language_text_w ; 160
settings_gui_language_ddl_y := 124


;====================== Save And Exit Button =========================

settings_gui_save_and_exit_button_w := 200 ; just so it fits
settings_gui_save_and_exit_button_h := 50 ; just so it fits

settings_gui_save_and_exit_button_x := settings_gui_w - 2 * settings_gui_distance_to_border - 110 - settings_gui_save_and_exit_button_w ; 280
settings_gui_save_and_exit_button_y := settings_gui_h - settings_gui_distance_to_border - settings_gui_save_and_exit_button_h ; 285


;========================= Cancel Button =============================

settings_gui_cancel_button_w := 110 ; just so it fits
settings_gui_cancel_button_h := 50 ; just so it fits

settings_gui_cancel_button_x := settings_gui_w - settings_gui_distance_to_border - settings_gui_cancel_button_w ; 505
settings_gui_cancel_button_y := settings_gui_h - settings_gui_distance_to_border - settings_gui_cancel_button_h ; 285
}


;=====================================================================
;====================== Specs & Coordinates ==========================
;=====================================================================
;========================== Test Screen ==============================
;=====================================================================
{
;======================= Controls Distance ===========================

distance_to_border := 69

distance_between_groupboxes := 41


;======================== Side Groupboxes ============================

side_groupboxes_w := (A_ScreenWidth - 2 * distance_to_border - 2 * distance_between_groupboxes - 900) / 2 ; 400
side_groupboxes_h := A_ScreenHeight - 2 * distance_to_border ; 942

;========================= Left Groupbox =============================

left_groupbox_x := distance_to_border ; 69
left_groupbox_y := distance_to_border ; 69


;========================== Hrv Grb Pic ==============================

hrv_grb_w := side_groupboxes_w - 2 * 10 ; 380
hrv_grb_h := side_groupboxes_h - 2 * 201 ; 550

hrv_grb_x := left_groupbox_x + 10 ; 79
hrv_grb_y := left_groupbox_y + 201 ; 270


;======================== Middle Groupbox ============================

middle_groupbox_w := A_ScreenWidth - 2 * distance_to_border - 2 * distance_between_groupboxes - 2 * side_groupboxes_w ; 900
middle_groupbox_h := side_groupboxes_h - distance_between_groupboxes - 100 ; 801

middle_groupbox_x := A_ScreenWidth - distance_to_border - side_groupboxes_w - distance_between_groupboxes - middle_groupbox_w ; 510
middle_groupbox_y := distance_to_border ; 69


;========================= Question Text =============================

question_text_w := middle_groupbox_w - 2 * 35 ; 830
question_text_h := middle_groupbox_h - 75 - 25 - 250 - 201 ; 250

question_text_x := middle_groupbox_x + 35 ; 545
question_text_y := middle_groupbox_y + 75 ; 144


;======================= Answers Groupbox ============================

answers_groupbox_w := middle_groupbox_w - 2 * 35 - 200 - 140 ; 525
answers_groupbox_h := 2 * 50 + 4 * 50 ; 250

answers_groupbox_x := middle_groupbox_x + 35 ; 545
answers_groupbox_y := middle_groupbox_y + 75 + question_text_h + 25 ; 419


;========================= Answers Radio =============================

answer_a_x := answers_groupbox_x + 25 ; 570
answer_a_y := answers_groupbox_y + 50 ; 469

answer_abcd_w := answers_groupbox_w - 2 * 25 ; 475
answer_abcd_h := answers_groupbox_h / 4 / 2 ; 25


;====================== Next Question Button =========================

next_question_button_w := 200 ; just so it fits
next_question_button_h := 200 / 4 ; 50, just so it fits

next_question_button_x := middle_groupbox_x + middle_groupbox_w - next_question_button_w - 60 ; 1150
next_question_button_y := middle_groupbox_y + middle_groupbox_h- next_question_button_h - 60 ; 760


;======================== Bottom Groupbox ============================

bottom_groupbox_w := middle_groupbox_w ; 900
bottom_groupbox_h := side_groupboxes_h - middle_groupbox_h - 41  ; 58

bottom_groupbox_x := middle_groupbox_x ; 510
bottom_groupbox_y := distance_to_border + middle_groupbox_h + 41 ; 911


;========================= Progress Bar ==============================

question_bar_w := bottom_groupbox_w - 2 * 35 ; 830
question_bar_h := bottom_groupbox_h - 2 * 35 ; 30

question_bar_x := bottom_groupbox_x + 35 ; 545
question_bar_y := bottom_groupbox_y + 35 ; 946


;========================= Right Groupbox ============================

right_groupbox_x := A_ScreenWidth - distance_to_border - side_groupboxes_w ; 1451
right_groupbox_y := distance_to_border ; 69


;============================= Timer =================================

timer_w := side_groupboxes_w - 2 * 25 ; 300
timer_h := 180 ; just so it fits

timer_x := right_groupbox_x + 25 ; 1501
timer_y := question_text_y ; 144


;========================== Pause Button =============================

pause_button_w := side_groupboxes_w - 2 * 50 ; 300
pause_button_h := 100 ; just so it fits

pause_button_x := right_groupbox_x + 50 ; 1501
pause_button_y := distance_to_border + side_groupboxes_h - 50 - 100 - 25 - pause_button_h ; 774


;========================== Exit Button ==============================

exit_button_w := side_groupboxes_w - 2 * 50 ; 300
exit_button_h := 100 ; just so it fits

exit_button_x := right_groupbox_x + 50 ; 1501
exit_button_y := distance_to_border + side_groupboxes_h - 50 - exit_button_h ; 861
}


;=====================================================================
;====================== Specs & Coordinates ==========================
;=====================================================================
;=========================== Pause Gui ===============================
;=====================================================================
{
pause_gui_w := 1920 / 5 ; 384, looks nice
pause_gui_h := 1080 / 5 ; 216, looks nice


;======================= Controls Distance ===========================

pause_gui_distance_to_border := 16

pause_gui_distance_between_controls := 14


;============================ Info Pic ===============================

pause_gui_info_pic_w := pause_gui_w / 8 ; 48
pause_gui_info_pic_h := pause_gui_w / 8 ; 48

pause_gui_info_pic_x := pause_gui_distance_to_border ; 16
pause_gui_info_pic_y := pause_gui_distance_to_border ; 16


;=========================== Pause Text ==============================

pause_gui_text_w := pause_gui_w - 2 * pause_gui_distance_to_border - pause_gui_info_pic_w - pause_gui_distance_between_controls ; 290
pause_gui_text_h := 30 * 3 ; 90, just so it fits 3 rows of 16-sized letters

pause_gui_text_x := pause_gui_info_pic_x + pause_gui_info_pic_w + pause_gui_distance_between_controls ;78
pause_gui_text_y := pause_gui_distance_to_border ; 16


;========================= Continue Button ===========================

pause_gui_continue_button_w := pause_gui_w - 2 * pause_gui_distance_to_border - pause_gui_info_pic_w ; 304
pause_gui_continue_button_h := pause_gui_h / 3 ; 72

pause_gui_continue_button_x := pause_gui_distance_to_border + (pause_gui_info_pic_w / 2) ; 40
pause_gui_continue_button_y := pause_gui_h - pause_gui_distance_to_border - pause_gui_continue_button_h ; 138
}


;=====================================================================
;====================== Specs & Coordinates ==========================
;=====================================================================
;=========================== Exit Gui ================================
;=====================================================================
{
exit_gui_w := 1920 / 5 ; 384, looks nice
exit_gui_h := 1080 / 5 ; 216, looks nice


;======================= Controls Distance ===========================

exit_gui_distance_to_border := 16

exit_gui_distance_between_controls := 14


;======================== Exclamation Pic ============================

exit_gui_exclamation_pic_w := exit_gui_w / 8 ; 48
exit_gui_exclamation_pic_h := exit_gui_w / 8 ; 48

exit_gui_exclamation_pic_x := exit_gui_distance_to_border ; 16
exit_gui_exclamation_pic_y := exit_gui_distance_to_border ; 16


;=========================== Exit Text ===============================

exit_gui_text_w := exit_gui_w - 2 * exit_gui_distance_to_border - exit_gui_exclamation_pic_w - exit_gui_distance_between_controls ; 290
exit_gui_text_h := 30 * 3 ; 90, just so it fits 3 rows of 16-sized letters

exit_gui_text_x := exit_gui_exclamation_pic_x + exit_gui_exclamation_pic_w + exit_gui_distance_between_controls ;78
exit_gui_text_y := exit_gui_distance_to_border ; 16


;=========================== Yes Button ==============================

exit_gui_yes_button_w := (exit_gui_w - 2 * exit_gui_distance_to_border) / 2 - exit_gui_distance_between_controls - 18 ; 144
exit_gui_yes_button_h := exit_gui_h / 3 ; 72

exit_gui_yes_button_x := exit_gui_distance_to_border ; 16
exit_gui_yes_button_y := exit_gui_h - exit_gui_distance_to_border - exit_gui_yes_button_h  ; 128


;=========================== No Button ===============================

exit_gui_no_button_w := (exit_gui_w - 2 * exit_gui_distance_to_border) / 2 - exit_gui_distance_between_controls - 18 ; 144
exit_gui_no_button_h := exit_gui_h / 3 ; 72

exit_gui_no_button_x := exit_gui_w - exit_gui_distance_to_border - exit_gui_no_button_w
exit_gui_no_button_y := exit_gui_h - exit_gui_distance_to_border - exit_gui_yes_button_h  ; 128
}


;=====================================================================
;====================== Specs & Coordinates ==========================
;=====================================================================
;======================== Transition Gui =============================
;=====================================================================
{
transition_gui_window_w := A_ScreenWidth
transition_gui_window_h := A_ScreenHeight - 20

transition_gui_window_x := 0
transition_gui_window_y := 20
	
	
;=========================== Variables ===============================
	
black_trans := 0

black_trans_speed := 25

do_transition_screen := 0


;=========================== Black Pic ===============================

transition_gui_black_pic_w := A_ScreenWidth
transition_gui_black_pic_h := A_ScreenHeight

transition_gui_black_pic_x := 0
transition_gui_black_pic_y := 0
}


;=====================================================================
;=====================================================================
;========================= Gui Creation ==============================
;=====================================================================
;=====================================================================
{
Gui, Ponos_Domovine: New, , Ponos Domovine ; make a Gui

Gui, Settings_Gui: New, , Settings

Gui, Pause_Gui: New, , Paused

Gui, Exit_Gui: New, , Exit

Gui, Transition_Gui: New, , Transition Gui

}


;=====================================================================
;======================== Control Addition ===========================
;=====================================================================
;====================== Start Screen Controls ========================
;=====================================================================
{
;======================== Hrv Zastava Pic ============================

Gui, Ponos_Domovine: Add, Picture, BackgroundTrans Vhrv_zastava_pic x%hrv_zastava_pic_x% y%hrv_zastava_pic_y% w%hrv_zastava_pic_w% h%hrv_zastava_pic_h%, E:\Slike\HrvatskaZastava.jpg ; add background picture


;======================= Start Test Button ===========================

Gui, Ponos_Domovine: Font, s90, Snap ITC ; size and font

Gui, Ponos_Domovine: Add, Button, Vstart_test_button Gponos_start_screen_toggle w%start_test_button_w% h%start_test_button_h% x%start_test_button_x% y%start_test_button_y%, %start_test_button_text% ; add start test button


;======================== Settings Button ============================

Gui, Ponos_Domovine: Font, s45, Snap ITC

Gui, Ponos_Domovine: Add, Button, Vsettings_button Gponos_settings_button x%settings_button_x% y%settings_button_y% w%settings_button_w% h%settings_button_h%, %settings_button_text% ; add settings button
}


;=====================================================================
;======================== Control Addition ===========================
;=====================================================================
;======================== Settings Controls ==========================
;=====================================================================
{
;========================== Gui Options ==============================

Gui, Settings_Gui: -SysMenu +OwnerPonos_Domovine


;========================= Timer Settings ============================

Gui, Settings_Gui: Font, s19, Segoe UI


Gui, Settings_Gui: Add, Text, Vsettings_gui_timer_text_front w%settings_gui_timer_text_front_w% h%settings_gui_timer_text_front_h% x%settings_gui_timer_text_front_x% y%settings_gui_timer_text_front_y%, Timer : ; add front timer text


Gui, Settings_Gui: Add, DropDownList, Sort Vsettings_gui_timer_ddl Gsettings_gui_update_settings w%settings_gui_timer_ddl_w% h%settings_gui_timer_ddl_h% x%settings_gui_timer_ddl_x% y%settings_gui_timer_ddl_y%, %settings_gui_timer_ddl_text% ; add timer ddl


Gui, Settings_Gui: Add, Text, Vsettings_gui_timer_text_middle w%settings_gui_timer_text_middle_w% h%settings_gui_timer_text_middle_h% x%settings_gui_timer_text_middle_x% y%settings_gui_timer_text_middle_y%, Mins : ; add middle timer text


Gui, Settings_Gui: Add, Edit, Center Number Vsettings_gui_timer_edit Gsettings_gui_update_settings w%settings_gui_timer_edit_w% h%settings_gui_timer_edit_h% x%settings_gui_timer_edit_x% y%settings_gui_timer_edit_y% ; add timer edit

Gui, Settings_Gui: Add, UpDown, Range1-60 Wrap Vsettings_gui_timer_updown ; add updown to timer edit


Gui, Settings_Gui: Add, Text, cGreen Vsettings_gui_timer_text_back w%settings_gui_timer_text_back_w% h%settings_gui_timer_text_back_h% x%settings_gui_timer_text_back_x% y%settings_gui_timer_text_back_y%, (def. 16) ; add back timer text


;================== Number Of Questions Settings =====================

Gui, Settings_Gui: Font, s19


Gui, Settings_Gui: Add, Text, Vsettings_gui_chosen_number_of_questions_text_front w%settings_gui_chosen_number_of_questions_text_front_w% h%settings_gui_chosen_number_of_questions_text_front_h% x%settings_gui_chosen_number_of_questions_text_front_x% y%settings_gui_chosen_number_of_questions_text_front_y%, Number of questions :


Gui, Settings_Gui: Add, Edit, Center Number Vsettings_gui_chosen_number_of_questions_edit Gsettings_gui_update_settings w%settings_gui_chosen_number_of_questions_edit_w% h%settings_gui_chosen_number_of_questions_edit_h% x%settings_gui_chosen_number_of_questions_edit_x% y%settings_gui_chosen_number_of_questions_edit_y%

Gui, Settings_Gui: Add, UpDown, Range1-%number_of_questions% Wrap Vsettings_gui_chosen_number_of_questions_updown


Gui, Settings_Gui: Add, Text, cGreen Vsettings_gui_chosen_number_of_questions_text_back w%settings_gui_chosen_number_of_questions_text_back_w% h%settings_gui_chosen_number_of_questions_text_back_h% x%settings_gui_chosen_number_of_questions_text_back_x% y%settings_gui_chosen_number_of_questions_text_back_y%, (def. 40)


;======================= Language Settings ===========================

Gui, Settings_Gui: Font, s19


Gui, Settings_Gui: Add, Text, Vsettings_gui_language_text w%settings_gui_language_text_w% h%settings_gui_language_text_h% x%settings_gui_language_text_x% y%settings_gui_language_text_y%, Language :


Gui, Settings_Gui: Add, DropDownList, Sort Vsettings_gui_language_ddl w%settings_gui_language_ddl_w% h%settings_gui_language_ddl_h% x%settings_gui_language_ddl_x% y%settings_gui_language_ddl_y%, %settings_gui_language_ddl_text%


;========================== Exit Buttons =============================

Gui, Settings_Gui: Font, s22


Gui, Settings_Gui: Add, Button, Vsettings_gui_save_and_exit_button Gsettings_gui_save_settings w%settings_gui_save_and_exit_button_w% h%settings_gui_save_and_exit_button_h% x%settings_gui_save_and_exit_button_x% y%settings_gui_save_and_exit_button_y%, Save And Exit


Gui, Settings_Gui: Add, Button, Vsettings_gui_cancel_button Gsettings_gui_cancel_button w%settings_gui_cancel_button_w% h%settings_gui_cancel_button_h% x%settings_gui_cancel_button_x% y%settings_gui_cancel_button_y%, Cancel
}


;=====================================================================
;======================== Control Addition ===========================
;=====================================================================
;========================== Test Controls ============================
;=====================================================================
{
;========================= Left Groupbox =============================

Gui, Ponos_Domovine: Font, s18, Segoe UI

Gui, Ponos_Domovine: Add, Groupbox, Vleft_groupbox x%left_groupbox_x% y%left_groupbox_y% w%side_groupboxes_w% h%side_groupboxes_h% ; add left groupbox


Gui, Ponos_Domovine: Add, Picture, Vhrv_grb_pic Gponos_hrv_grb x%hrv_grb_x% y%hrv_grb_y% w%hrv_grb_w% h%hrv_grb_h%, E:\Slike\HrvatskiGrb.png ; add grb picture


;======================== Middle Groupbox ============================

Gui, Ponos_Domovine: Add, Groupbox, Vmiddle_groupbox x%middle_groupbox_x% y%middle_groupbox_y% w%middle_groupbox_w% h%middle_groupbox_h% ; add middle groupbox


Gui, Ponos_Domovine: Font, s18

Gui, Ponos_Domovine: Add, Text, Vquestion_text x%question_text_x% y%question_text_y% w%question_text_w% h%question_text_h%, %Question% ; add question text


Gui, Ponos_Domovine: Font, s21

Gui, Ponos_Domovine: Add, Button, Vnext_question_button Gponos_next_question x%next_question_button_x% y%next_question_button_y% w%next_question_button_w% h%next_question_button_h%, Next Question ; add next question button


;======================= Answers Groupbox ============================

Gui, Ponos_Domovine: Font, s15

Gui, Ponos_Domovine: Add, Groupbox, Vanswers_groupbox x%answers_groupbox_x% y%answers_groupbox_y% w%answers_groupbox_w% h%answers_groupbox_h%, Answers ; add answers groupbox


Gui, Ponos_Domovine: Add, Radio, 0x1000 Choose_Answer Vuser_answer_a x%answer_a_x% y%answer_a_y% w%answer_abcd_w% h%answer_abcd_h%, %Answer_A% ; add answer a
Gui, Ponos_Domovine: Add, Radio, 0x1000 Choose_Answer Vuser_answer_b Y+25 w%answer_abcd_w% h%answer_abcd_h%, %Answer_B% ; add answer b
Gui, Ponos_Domovine: Add, Radio, 0x1000 Choose_Answer Vuser_answer_c Y+25 w%answer_abcd_w% h%answer_abcd_h%, %Answer_C% ; add answer c
Gui, Ponos_Domovine: Add, Radio, 0x1000 Choose_Answer Vuser_answer_d Y+25 w%answer_abcd_w% h%answer_abcd_h%, %Answer_D% ; add answer d


;======================== Bottom Groupbox ============================

Gui, Ponos_Domovine: Font, s19

Gui, Ponos_Domovine: Add, Groupbox, Center Vbottom_groupbox x%bottom_groupbox_x% y%bottom_groupbox_y% w%bottom_groupbox_w% h%bottom_groupbox_h%,  ; add bottom groupbox


Gui, Ponos_Domovine: Add, Progress, Vquestion_bar -0x00000001 0x1 Range0-1000 w%question_bar_w% h%question_bar_h% x%question_bar_x% y%question_bar_y%  ; add progress bar


;======================== Right Groupbox =============================

Gui, Ponos_Domovine: Add, Groupbox, Vright_groupbox x%right_groupbox_x% y%right_groupbox_y% w%side_groupboxes_w% h%side_groupboxes_h% ; add right groupbox
	

Gui, Ponos_Domovine: Font, s94

Gui, Ponos_Domovine: Add, Text, 0x1000 0x1 Vcountdown x%timer_x% y%timer_y% w%timer_w% h%timer_h%, %mmss% ; add timer text


Gui, Ponos_Domovine: Font, s52

Gui, Ponos_Domovine: Add, Button, -TabStop Vpause_button Gponos_pause_button x%pause_button_x% y%pause_button_y% w%pause_button_w% h%pause_button_h%, Pause ; add pause button


Gui, Ponos_Domovine: Add, Button, -TabStop Vexit_button Gponos_exit_button x%exit_button_x% y%exit_button_y% w%exit_button_w% h%exit_button_h%, Exit ; add stop test button
}


;=====================================================================
;======================== Control Addition ===========================
;=====================================================================
;======================= Pause Gui Controls ==========================
;=====================================================================
{
;========================== Gui Options ==============================

Gui, Pause_Gui: -SysMenu +OwnerPonos_Domovine ; removes close option top right etc., makes Ponos_Domovine its parent so it minimizes with him


;======================= Windows Info Icon ===========================

Gui, Pause_Gui: Add, Picture, icon5 Vpause_gui_info_pic w%pause_gui_info_pic_w% h%pause_gui_info_pic_h% x%pause_gui_info_pic_x% y%pause_gui_info_pic_y%, %A_WinDir%\system32\user32.dll ; add windows info icon


;========================== Pause Text ===============================

Gui, Pause_Gui: Font, s16, Segoe UI

Gui, Pause_Gui: Add, Text, Vpause_gui_text w%pause_gui_text_w% h%pause_gui_text_h% x%pause_gui_text_x% y%pause_gui_text_y%, The test has been paused. `nPress Continue when ready. ; add pause text


;======================== Continue Button ============================

Gui, Pause_Gui: Font, s36

Gui, Pause_Gui: Add, Button, Vpause_gui_continue_button Gponos_pause_button w%pause_gui_continue_button_w% h%pause_gui_continue_button_h% x%pause_gui_continue_button_x% y%pause_gui_continue_button_y%, Continue ; add continue button
}


;=====================================================================
;======================== Control Addition ===========================
;=====================================================================
;======================== Exit Gui Controls ==========================
;=====================================================================
{
;========================== Gui Options ==============================

Gui, Exit_Gui: -SysMenu +OwnerPonos_Domovine ; removes close option top right etc., makes Ponos_Domovine its parent so it minimizes with him


;==================== Windows Exclamation Icon =======================

Gui, Exit_Gui: Add, Picture, icon2 Vexit_gui_excalamation_pic w%exit_gui_exclamation_pic_w% h%exit_gui_exclamation_pic_h% x%exit_gui_exclamation_pic_x% y%exit_gui_exclamation_pic_y%, %A_WinDir%\system32\user32.dll ; add windows exlamation icon


;=========================== Exit Text ===============================

Gui, Exit_Gui: Font, s16, Segoe UI

Gui, Exit_Gui: Add, Text, Vexit_gui_text w%exit_gui_text_w% h%exit_gui_text_h% x%exit_gui_text_x% y%exit_gui_text_y%, Are you sure you want to stop the test? ; add exit text


;=========================== Yes Button ==============================

Gui, Exit_Gui: Font, s36

Gui, Exit_Gui: Add, Button, Vexit_gui_yes_button Gexit_gui_stop_test w%exit_gui_yes_button_w% h%exit_gui_yes_button_h% x%exit_gui_yes_button_x% y%exit_gui_yes_button_y%, Yes ; add yes button


;=========================== No Button ===============================

Gui, Exit_Gui: Font, s36

Gui, Exit_Gui: Add, Button, Vexit_gui_no_button Gponos_exit_button w%exit_gui_no_button_w% h%exit_gui_no_button_h% x%exit_gui_no_button_x% y%exit_gui_no_button_y%, No ; add no button
}


;=====================================================================
;======================== Control Addition ===========================
;=====================================================================
;===================== Transition Gui Controls =======================
;=====================================================================
{
;========================== Gui Options ==============================

Gui, Transition_Gui: -caption +Disabled +OwnerPonos_Domovine


;=========================== Black Pic ===============================

Gui, Transition_Gui: Add, Picture, Vtransition_gui_black_pic w%transition_gui_black_pic_w% h%transition_gui_black_pic_h% x%transition_gui_black_pic_x% y%transition_gui_black_pic_y%, E:\Slike\Black.jpg
}


;=====================================================================
;========================== Show Program =============================
;=====================================================================

gosub, reset_variables

gosub, default_variables

gosub, apply_settings


gosub, ponos_start_screen_toggle


extra_gui_addition_toggle := 1
gosub, extra_gui_addition_toggle


gosub, ponos_startup_animation


;=====================================================================
;=====================================================================
;====================== Math & Control Edits =========================
;=====================================================================
;=====================================================================

question_maker:
{
	Random, Question_Number, 1, %chosen_number_of_questions% ; pick a number for question REMOVE CHOSEN_ WHEN ALL QUESTIONS ARE IN
	
	Use_Number := True
	
	Loop % Used_Questions.Length() ; repeat until whole list tested
	{
		Last_Used_Question := Used_Questions[A_Index] ; store the number used
		
		if Question_Number = %Last_Used_Question% ; if already in list
		{
			Use_Number := false
			break
		}
	}
	

	if Use_Number
	{
		Used_Questions.Push(Question_Number) ; add that number to used questions list
		
		Used_Questions_Array_Length := Used_Questions.Length()
		
		
		gosub, question_texter
		
		
		GuiControl, Ponos_Domovine: Text, question_text, %Question%
		
		GuiControl, Ponos_Domovine: Text, user_answer_a, %Answer_A%
		GuiControl, Ponos_Domovine: Text, user_answer_b, %Answer_B%
		GuiControl, Ponos_Domovine: Text, user_answer_c, %Answer_C%
		GuiControl, Ponos_Domovine: Text, user_answer_d, %Answer_D%
		
		if Used_Questions_Array_Length != 1
			loop, % 1000 / chosen_number_of_questions
				GuiControl, Ponos_Domovine: , question_bar, + 1
		
		GuiControl, Ponos_Domovine: , bottom_groupbox, %Used_Questions_Array_Length% / %chosen_number_of_questions%
		
	}else
		gosub, question_maker
}
return


question_texter:
{
	if Question_Number = 1
	{
		Question := "1. Na kraju Drugog svjetskog rata stvorena je Federalna Država Hrvatska koja je od 1945. federalna jedinica u sastavu Federativne Narodne Republike Jugoslavije (FNRJ) odnosno Socijalistièke Federativne Republike Jugoslavije (SFRJ). Raspadom socijalistièkog i komunistièkog sustava u Europi, politièka i socijalna gibanja u Hrvatskoj omoguæila su temeljne ustavne promjene. Tko je bio na èelu Saveza komunista Hrvatske (SKH) poèetkom 1990-ih godina kada je dozvoljena registracija politièkih stranaka?" ;the question
		
		Answer_A := "1 od listopada 1991. do studenog 1992." ;answer 1
		Answer_B := "2" ;answer 2
		Answer_C := "3" ;answer 3
		Answer_D := "4" ;answer 4
		
		Answer := 1 ;correct answer to the question
	}
	else if Question_Number = 2
	{
		Question := "2. Question number?"
		
		Answer_A := "1"
		Answer_B := "2"
		Answer_C := "3"
		Answer_D := "4"
		
		Answer := 2
	}
	else if Question_Number = 3
	{
		Question := "3. Question number?"
		
		Answer_A := "1"
		Answer_B := "2"
		Answer_C := "3"
		Answer_D := "4"
		
		Answer := 3
	}
	else if Question_Number = 4
	{
		Question := "4. Question number?"
		
		Answer_A := "1"
		Answer_B := "2"
		Answer_C := "3"
		Answer_D := "4"
		
		Answer := 4
	}
}
return


reset_variables:
{	
	timer_miliseconds := 0 ; so not sleep at the beggining of the test


	ponos_enable_disable_controls := 1 ; toggle test controls for pause and exit gui
	ponos_start_screen_toggle := 1 ; which screen to start with
	
	GuiControl, Ponos_Domovine: , question_bar, 0 ; set the progress of question bar to 0 at the start of test

	Used_Questions := [] ; array of used question
	Wrong_Questions := [] ; array of wrongly answered questions
	
	
	reset_variables_count := 0
}
return


middle_cords:
{
	middle_w := 0
	middle_h := 0

	middle_x := A_ScreenWidth / 2
	middle_y := (A_ScreenHeight - 20) / 2
}
return


default_variables:
{
	default_timer_option := "Countdown" ; Countdown or Stopwatch

	GuiControl, Settings_Gui: Choose, settings_gui_timer_ddl, %default_timer_option%


	default_timer_time := 16 ; amount of time given to finish the test

	GuiControl, Settings_Gui: , settings_gui_timer_edit, %default_timer_time%



	default_number_of_questions := 4 ; CHANGE TO 40 ; number of questions in test


	GuiControl, Settings_Gui: , settings_gui_chosen_number_of_questions_edit, %default_number_of_questions%



	default_language_option := "English" ; English or Hrvatski

	GuiControl, Settings_Gui: Choose, settings_gui_language_ddl, %default_language_option%
}
return


;=====================================================================
;=====================================================================
;============================= Lables ================================
;=====================================================================
;=====================================================================
	
ponos_start_screen_toggle:
{
	;===================== Start Transition Screen =========================
	
	if do_transition_screen ; so it doesnt show on program startup
		gosub, transition_screen
	
	
	;================== Reset Variables For New Test =======================
	
	if reset_variables_count = 2
	{
		gosub, reset_variables
		gosub, apply_settings
		
		gosub, question_maker
	}
	
	reset_variables_count++
	
	
	;======================== Start / Stop Timer ===========================
	
	if ponos_start_screen_toggle
	{
		SetTimer, ponos_minitimer, Off
		SetTimer, ponos_timer, Off
	}
	else
	{
		gosub, ponos_minitimer_sleep
		SetTimer, ponos_minitimer, 200
		
		gosub, ponos_timer
		SetTimer, ponos_timer, 1000
		
		loop, % 1000 / chosen_number_of_questions ; shows progress on question bar, progress is delayed cause of calculations
			GuiControl, Ponos_Domovine: , question_bar, + 1
		
		GuiControl, Ponos_Domovine: , bottom_groupbox, %Used_Questions_Array_Length% / %chosen_number_of_questions%
	}
	

	;===================== Show Start / Test Screen ========================
	
	;GuiControl, Gui_ID: Show%var_0_or_1%, ControlName ; chooses which controls it shows aka. which screen

	GuiControl, Ponos_Domovine: Show%ponos_start_screen_toggle%, start_test_button
	GuiControl, Ponos_Domovine: Show%ponos_start_screen_toggle%, settings_button
	GuiControl, Ponos_Domovine: Show%ponos_start_screen_toggle%, hrv_zastava_pic


	ponos_start_screen_toggle := !ponos_start_screen_toggle

	GuiControl, Ponos_Domovine: Show%ponos_start_screen_toggle%, left_groupbox
	GuiControl, Ponos_Domovine: Show%ponos_start_screen_toggle%, hrv_grb_pic


	GuiControl, Ponos_Domovine: Show%ponos_start_screen_toggle%, middle_groupbox

	GuiControl, Ponos_Domovine: Show%ponos_start_screen_toggle%, question_text

	GuiControl, Ponos_Domovine: Show%ponos_start_screen_toggle%, next_question_button


	GuiControl, Ponos_Domovine: Show%ponos_start_screen_toggle%, answers_groupbox

	GuiControl, Ponos_Domovine: Show%ponos_start_screen_toggle%, user_answer_a
	GuiControl, Ponos_Domovine: Show%ponos_start_screen_toggle%, user_answer_b
	GuiControl, Ponos_Domovine: Show%ponos_start_screen_toggle%, user_answer_c
	GuiControl, Ponos_Domovine: Show%ponos_start_screen_toggle%, user_answer_d


	GuiControl, Ponos_Domovine: Show%ponos_start_screen_toggle%, bottom_groupbox

	GuiControl, Ponos_Domovine: Show%ponos_start_screen_toggle%, question_bar


	GuiControl, Ponos_Domovine: Show%ponos_start_screen_toggle%, right_groupbox

	GuiControl, Ponos_Domovine: Show%ponos_start_screen_toggle%, countdown
	GuiControl, Ponos_Domovine: Show%ponos_start_screen_toggle%, pause_button
	GuiControl, Ponos_Domovine: Show%ponos_start_screen_toggle%, exit_button
	
	
	if do_transition_screen ; so it doesnt show on program startup
		gosub, transition_screen
	
	else
		do_transition_screen := 1
	
	
}
return
	
	
ponos_enable_disable_controls:
{

	ponos_enable_disable_controls := !ponos_enable_disable_controls
	
	
	if reset_variables_count = 1
	{
		GuiControl, Ponos_Domovine: Enable%ponos_enable_disable_controls%, start_test_button
		
		GuiControl, Ponos_Domovine: Enable%ponos_enable_disable_controls%, settings_button
		
		;GuiControl, Ponos_Domovine: Enable%ponos_enable_disable_controls%, hrv_zastava_pic ; disabled cause of the control flickering
	}
	else if reset_variables_count = 2
	{
		
		GuiControl, Ponos_Domovine: Enable%ponos_enable_disable_controls%, user_answer_a
		GuiControl, Ponos_Domovine: Enable%ponos_enable_disable_controls%, user_answer_b
		GuiControl, Ponos_Domovine: Enable%ponos_enable_disable_controls%, user_answer_c
		GuiControl, Ponos_Domovine: Enable%ponos_enable_disable_controls%, user_answer_d
		
		GuiControl, Ponos_Domovine: Enable%ponos_enable_disable_controls%, next_question_button
		
		GuiControl, Ponos_Domovine: Enable%ponos_enable_disable_controls%, pause_button
		GuiControl, Ponos_Domovine: Enable%ponos_enable_disable_controls%, exit_button
		
		
		GuiControl, Ponos_Domovine: Enable%ponos_enable_disable_controls%, question_text
		
		GuiControl, Ponos_Domovine: Enable%ponos_enable_disable_controls%, countdown
		
		GuiControl, Ponos_Domovine: Enable%ponos_enable_disable_controls%, hrv_grb_pic
	}
	
}
return


extra_gui_addition_toggle:
{	
	extra_gui_addition_toggle := !extra_gui_addition_toggle
	
	GuiControl, Settings_Gui: Show%extra_gui_addition_toggle%, settings_gui_timer_text_front
	GuiControl, Settings_Gui: Show%extra_gui_addition_toggle%, settings_gui_timer_ddl
	GuiControl, Settings_Gui: Show%extra_gui_addition_toggle%, settings_gui_timer_text_middle
	GuiControl, Settings_Gui: Show%extra_gui_addition_toggle%, settings_gui_timer_edit
	GuiControl, Settings_Gui: Show%extra_gui_addition_toggle%, settings_gui_timer_updown
	GuiControl, Settings_Gui: Show%extra_gui_addition_toggle%, settings_gui_timer_text_back
	
	if (settings_gui_timer_ddl = "Countdown") or (settings_gui_timer_ddl = "Odbrojavanje")
	{
		GuiControl, Settings_Gui: Show, settings_gui_timer_text_middle
		GuiControl, Settings_Gui: Show, settings_gui_timer_edit
		GuiControl, Settings_Gui: Show, settings_gui_timer_updown
		GuiControl, Settings_Gui: Show, settings_gui_timer_text_back
	}
	else if (settings_gui_timer_ddl = "Stopwatch") or (settings_gui_timer_ddl = "Štoperica")
	{
		GuiControl, Settings_Gui: Hide, settings_gui_timer_text_middle
		GuiControl, Settings_Gui: Hide, settings_gui_timer_edit
		GuiControl, Settings_Gui: Hide, settings_gui_timer_updown
		GuiControl, Settings_Gui: Hide, settings_gui_timer_text_back
	}
	
	GuiControl, Settings_Gui: Show%extra_gui_addition_toggle%, settings_gui_chosen_number_of_questions_text_front
	GuiControl, Settings_Gui: Show%extra_gui_addition_toggle%, settings_gui_chosen_number_of_questions_edit
	GuiControl, Settings_Gui: Show%extra_gui_addition_toggle%, settings_gui_chosen_number_of_questions_updown
	GuiControl, Settings_Gui: Show%extra_gui_addition_toggle%, settings_gui_chosen_number_of_questions_text_back
	
	GuiControl, Settings_Gui: Show%extra_gui_addition_toggle%, settings_gui_language_text
	GuiControl, Settings_Gui: Show%extra_gui_addition_toggle%, settings_gui_language_ddl
	
	GuiControl, Settings_Gui: Show%extra_gui_addition_toggle%, settings_gui_save_and_exit_button
	GuiControl, Settings_Gui: Show%extra_gui_addition_toggle%, settings_gui_cancel_button
	
	
	
	GuiControl, Pause_Gui: Show%extra_gui_addition_toggle%, pause_gui_info_pic
	
	GuiControl, Pause_Gui: Show%extra_gui_addition_toggle%, pause_gui_text
	
	GuiControl, Pause_Gui: Show%extra_gui_addition_toggle%, pause_gui_continue_button
	
	
	
	GuiControl, Exit_Gui: Show%extra_gui_addition_toggle%, exit_gui_excalamation_pic
	
	GuiControl, Exit_Gui: Show%extra_gui_addition_toggle%, exit_gui_text
	
	GuiControl, Exit_Gui: Show%extra_gui_addition_toggle%, exit_gui_yes_button
	
	GuiControl, Exit_Gui: Show%extra_gui_addition_toggle%, exit_gui_no_button
}
return


apply_settings:
{
	IfWinExist, Settings
		Gui, Settings_Gui: Submit, NoHide
	
	else
		Gui, Settings_Gui: Submit
	

	if (settings_gui_timer_ddl = "Countdown") or (settings_gui_timer_ddl = "Odbrojavanje")
		timer_time := settings_gui_timer_edit * 60
	
	else if (settings_gui_timer_ddl = "Stopwatch") or (settings_gui_timer_ddl = "Štoperica")
		timer_time := 0
	
		
		

	chosen_number_of_questions := settings_gui_chosen_number_of_questions_edit



	if settings_gui_language_ddl = English
	{
		; change every name to english
		
	}
	else if settings_gui_language_ddl = Hrvatski
	{
		; change every name to croatian
		
	}

}
return


;=====================================================================
;============================ Start Gui ==============================
;=====================================================================

ponos_startup_animation:
{
	GuiControl, Ponos_Domovine: Hide, start_test_button ; to not show buttons
	GuiControl, Ponos_Domovine: Hide, settings_button ; to not show buttons
	
	gosub, middle_cords
	middle_x := -5 ; so it starts to the left
	
	Gui, Ponos_Domovine: Show, w%middle_w% h%middle_h% x%middle_x% y%middle_y%
	Gui, Ponos_Domovine: +AlwaysOnTop
	
	GuiControl, Ponos_Domovine: , hrv_zastava_pic, *x%middle_x% *y%middle_y% E:\Slike\HrvatskaZastava.jpg

	while gui_window_h > middle_h ; loop until reached desired height
		{
			middle_h := middle_h + 6
			middle_y := middle_y - 3
			Gui, Ponos_Domovine: Show, w%middle_w% h%middle_h% x%middle_x% y%middle_y%
		}

	while gui_window_w > middle_w
		{
			middle_w := middle_w + 60 ; CHANGE BACK TO 24
			Gui, Ponos_Domovine: Show, w%middle_w% h%middle_h% x%middle_x% y%middle_y%	
		}

	Gui, Ponos_Domovine: Maximize

	GuiControl, Ponos_Domovine: Show, start_test_button
	GuiControl, Ponos_Domovine: Show, settings_button
	
	Gui, Ponos_Domovine: -AlwaysOnTop
}
return


ponos_settings_button:
{
	settings_gui := !settings_gui
	
	gosub, semi_transition_screen


	if settings_gui
	{
		gosub, ponos_enable_disable_controls
		
		
		gosub, settings_gui_old_settings
		
		gosub, apply_settings

		
		
		gosub, middle_cords
		
		Gui, Settings_Gui: Show, w%middle_w% h%middle_h% x%middle_x% y%middle_y%
		
		while settings_gui_h > middle_h ; loop until reached desired height
		{
			middle_h := middle_h + 2
			middle_y := middle_y - 1
			Gui, Settings_Gui: Show, w%middle_w% h%middle_h% x%middle_x% y%middle_y%
		}
		
		while settings_gui_w > middle_w ; loop until reached desired width
		{
			middle_w := middle_w + 4
			middle_x := middle_x - 2
			Gui, Settings_Gui: Show, w%middle_w% h%middle_h% x%middle_x% y%middle_y%	
		}
		
		sleep, 75		
		gosub, extra_gui_addition_toggle
	}
		
	else
	{
		gosub, extra_gui_addition_toggle
		
		while middle_w > 0 ; loop until reached desired width
		{
			middle_w := middle_w - 4
			middle_x := middle_x + 2
			Gui, Settings_Gui: Show, w%middle_w% h%middle_h% x%middle_x% y%middle_y%	
		}
		
		while middle_h > 0 ; loop until reached desired height
		{
			middle_h := middle_h - 2
			middle_y := middle_y + 1
			Gui, Settings_Gui: Show, w%middle_w% h%middle_h% x%middle_x% y%middle_y%
		}
		
		Gui, Settings_Gui: Hide
		
		
		gosub, ponos_enable_disable_controls
	}
	
}
return


;=====================================================================
;============================ Test Gui ===============================
;=====================================================================

ponos_timer:
{
	minutes_left := timer_time // 60
	seconds_left := mod(timer_time, 60)

	if minutes_left = 0 ; if 0 minutes left
		time_left := "000000000000" . mod(timer_time, 60)

	else if minutes_left between 0 and 9  ; if 1 to 9 minutes left
		time_left := "00000000000" . timer_time // 60 . mod(timer_time, 60)

	else if minutes_left >= 10 ; if 10 + minutes left
		time_left := "0000000000" . timer_time // 60 . mod(timer_time, 60)
	
	FormatTime, mmss, %time_left%, mm:ss
	
	GuiControl, Ponos_Domovine:, countdown, %mmss%
	
	
	if (settings_gui_timer_ddl = "Countdown") or (settings_gui_timer_ddl = "Odbrojavanje")
	{
		if timer_time = 0
			gosub, finish_test
		
		timer_time := timer_time - 1
	}
	else if (settings_gui_timer_ddl = "Stopwatch") or (settings_gui_timer_ddl = "Štoperica")
	{
		timer_time := timer_time + 1
	}
	
}
return

ponos_minitimer:
{
	timer_miliseconds := timer_miliseconds + 200
}
return

ponos_minitimer_sleep:
{
	miliseconds := 1000 - mod(timer_miliseconds, 1000)

	
	if (miliseconds != 0) and (miliseconds != 1000)
	{
		Sleep, % miliseconds
		
		gosub, ponos_timer
	}
	
	timer_miliseconds := 0
}
return


ponos_hrv_grb:
	MsgBox, Easter Egg
return


ponos_next_question:
{
	Gui, submit, NoHide ; add values to variables
	
	if user_answer_a = 1
		user_answer := 1
	
	else if user_answer_b = 1
		user_answer := 2

	else if user_answer_c = 1
		user_answer := 3

	else if user_answer_d = 1
		user_answer := 4

	
	if user_answer ; if answer picked
	{
		if user_answer != %Answer% ; if user choose wrong answer
			Wrong_Questions.Push(Question_Number)

		if Used_Questions_Array_Length != %chosen_number_of_questions% ; if not at last question
			gosub, question_maker ; go make next question
		else
			gosub, finish_test ; else finish test
	}			
}
return


ponos_pause_button:
{
	pause_gui :=  !pause_gui
	
	gosub, semi_transition_screen
	
	
	if pause_gui
	{
		gosub, ponos_enable_disable_controls
	

		
		
		SetTimer, ponos_minitimer, Off
		SetTimer, ponos_timer, Off
		
		
		gosub, middle_cords
		
		Gui, Pause_Gui: Show, w%middle_w% h%middle_h% x%middle_x% y%middle_y%
		
		while pause_gui_h > middle_h ; loop until reached desired height
		{
			middle_h := middle_h + 1
			middle_y := middle_y - 0.5
			Gui, Pause_Gui: Show, w%middle_w% h%middle_h% x%middle_x% y%middle_y%
		}
		
		while pause_gui_w > middle_w ; loop until reached desired width
		{
			middle_w := middle_w + 4
			middle_x := middle_x - 2
			Gui, Pause_Gui: Show, w%middle_w% h%middle_h% x%middle_x% y%middle_y%	
		}
		
		
		sleep, 75		
		gosub, extra_gui_addition_toggle
	}
		
	else
	{
		gosub, extra_gui_addition_toggle
		
		
		while middle_w > 0 ; loop until reached desired width
		{
			middle_w := middle_w - 4
			middle_x := middle_x + 2
			Gui, Pause_Gui: Show, w%middle_w% h%middle_h% x%middle_x% y%middle_y%	
		}
		
		while middle_h > 0 ; loop until reached desired height
		{
			middle_h := middle_h - 1
			middle_y := middle_y + 0.5
			Gui, Pause_Gui: Show, w%middle_w% h%middle_h% x%middle_x% y%middle_y%
		}
		
		Gui, Pause_Gui: Hide
		
		
		gosub, ponos_minitimer_sleep
		SetTimer, ponos_minitimer, 200
	
		SetTimer, ponos_timer, on
		
		
		gosub, ponos_enable_disable_controls
		
	}
	
}
return


ponos_exit_button:
{
	exit_gui :=  !exit_gui

	gosub, semi_transition_screen
	

	if exit_gui
	{
		gosub, ponos_enable_disable_controls
		
		
		SetTimer, ponos_minitimer, Off
		SetTimer, ponos_timer, Off
		
		
		gosub, middle_cords
		
		Gui, Exit_Gui: Show, w%middle_w% h%middle_h% x%middle_x% y%middle_y%
		
		while exit_gui_h > middle_h ; loop until reached desired height
		{
			middle_h := middle_h + 1
			middle_y := middle_y - 0.5
			Gui, Exit_Gui: Show, w%middle_w% h%middle_h% x%middle_x% y%middle_y%
		}
		
		while exit_gui_w > middle_w ; loop until reached desired width
		{
			middle_w := middle_w + 4
			middle_x := middle_x - 2
			Gui, Exit_Gui: Show, w%middle_w% h%middle_h% x%middle_x% y%middle_y%	
		}
		
		
		sleep, 75		
		gosub, extra_gui_addition_toggle
	}
		
	else
	{
		gosub, extra_gui_addition_toggle
		
		
		while middle_w > 0 ; loop until reached desired width
		{
			middle_w := middle_w - 4
			middle_x := middle_x + 2
			Gui, Exit_Gui: Show, w%middle_w% h%middle_h% x%middle_x% y%middle_y%	
		}
		
		while middle_h > 0 ; loop until reached desired height
		{
			middle_h := middle_h - 1
			middle_y := middle_y + 0.5
			Gui, Exit_Gui: Show, w%middle_w% h%middle_h% x%middle_x% y%middle_y%
		}
		
		Gui, Exit_Gui: Hide
		
		gosub, ponos_minitimer_sleep
		SetTimer, ponos_minitimer, 200
	
		SetTimer, ponos_timer, on
		
		
		gosub, ponos_enable_disable_controls
		
	}
}
return


;=====================================================================
;============================ Exit Gui ===============================
;=====================================================================

exit_gui_stop_test:
{	
	gosub, ponos_exit_button
	
	gosub, ponos_start_screen_toggle
}
return


;=====================================================================
;========================== Settings Gui =============================
;=====================================================================


settings_gui_old_settings:
{
	old_settings_gui_timer_ddl := settings_gui_timer_ddl

	if old_settings_gui_timer_ddl = Countdown
		old_timer_time := settings_gui_timer_edit

	old_chosen_number_of_questions := chosen_number_of_questions


	old_settings_gui_language_ddl := settings_gui_language_ddl
}
return


settings_gui_update_settings:
{
	Gui, Settings_Gui: Submit, NoHide


	if (settings_gui_timer_ddl = "Countdown") or (settings_gui_timer_ddl = "Odbrojavanje")
	{
		GuiControl, Settings_Gui: Show, settings_gui_timer_text_back
		GuiControl, Settings_Gui: Show, settings_gui_timer_edit
		GuiControl, Settings_Gui: Show, settings_gui_timer_updown
		GuiControl, Settings_Gui: Show, settings_gui_timer_text_middle
	}
	else if (settings_gui_timer_ddl = "Stopwatch") or (settings_gui_timer_ddl = "Štoperica")
	{
		GuiControl, Settings_Gui: Hide, settings_gui_timer_text_back
		GuiControl, Settings_Gui: Hide, settings_gui_timer_edit
		GuiControl, Settings_Gui: Hide, settings_gui_timer_updown
		GuiControl, Settings_Gui: Hide, settings_gui_timer_text_middle
	}


	settings_gui_timer_edit_str_len := StrLen(settings_gui_timer_edit) ; measures the lenght of timer mins option

	if settings_gui_timer_edit_str_len > 2 ; if mins 3 characters, make it 60 (max)
		GuiControl, Settings_Gui: , settings_gui_timer_edit, 60
		
		

	settings_gui_chosen_number_of_questions_edit_str_len := StrLen(settings_gui_chosen_number_of_questions_edit)
		
	if settings_gui_chosen_number_of_questions_edit_str_len > 3 ; if questions edit more then 3 digits, set to 555 (max)
		GuiControl, Settings_Gui: , settings_gui_chosen_number_of_questions_edit, %number_of_questions%	
}
return


settings_gui_save_settings:
{
	Gui, Settings_Gui: Submit, NoHide



	if (settings_gui_timer_edit = "") or (settings_gui_timer_edit = 0) ; if time is left blank or 0, set it to default
		
		GuiControl, Settings_Gui: , settings_gui_timer_edit, %default_timer_time%


	if (settings_gui_chosen_number_of_questions_edit = "") or (settings_gui_chosen_number_of_questions_edit = 0) ; if number of questions is left blank or 0, set it to default
		
		GuiControl, Settings_Gui: , settings_gui_chosen_number_of_questions_edit, %default_number_of_questions%


	gosub, apply_settings



	gosub, ponos_settings_button ; close settings gui
}
	return


settings_gui_cancel_button:
{
	if (old_settings_gui_timer_ddl = "Countdown") or (old_settings_gui_timer_ddl = "Odbrojavanje")
		GuiControl, Settings_Gui: Choose, settings_gui_timer_ddl, 1
	
	else if (old_settings_gui_timer_ddl = "Stopwatch") or (old_settings_gui_timer_ddl = "Štoperica")
		GuiControl, Settings_Gui: Choose, settings_gui_timer_ddl, 2
	

	GuiControl, Settings_Gui: , settings_gui_timer_edit, %old_timer_time%


	GuiControl, Settings_Gui: , settings_gui_chosen_number_of_questions_edit, %old_chosen_number_of_questions%


	if old_settings_gui_language_ddl = English
		GuiControl, Settings_Gui: Choose, settings_gui_language_ddl, 1
	
	else if old_settings_gui_language_ddl = Hrvatski
		GuiControl, Settings_Gui: Choose, settings_gui_language_ddl, 2
	

	gosub, apply_settings

	gosub, ponos_settings_button ; close settings gui
}
return


;=====================================================================
;========================= Transition Gui ============================
;=====================================================================

transition_screen:
{
	GuiControl, Hide, transition_gui_black_pic


	Gui, Transition_Gui: Show, w%transition_gui_window_w% h%transition_gui_window_h% x%transition_gui_window_x% y%transition_gui_window_y%
	
	WinSet, Trans, %black_trans%, Transition Gui
	
	
	GuiControl, Show, transition_gui_black_pic
	
	
	
	transition_screen_toggle := !transition_screen_toggle 
	
	if transition_screen_toggle
		
		loop,  % 255 // black_trans_speed + 1
		{
			WinSet, Trans, %black_trans%, Transition Gui
			
			black_trans := black_trans + black_trans_speed
			sleep, 1
		}

	else
	{
		loop, % 255 // black_trans_speed + 1
		{
			WinSet, Trans, %black_trans%, Transition Gui
			
			black_trans := black_trans - black_trans_speed
			sleep, 1
		}
		
		Gui, Transition_Gui: Hide
	}

}
return


semi_transition_screen:
{
	GuiControl, Hide, transition_gui_black_pic


	Gui, Transition_Gui: Show, w%transition_gui_window_w% h%transition_gui_window_h% x%transition_gui_window_x% y%transition_gui_window_y%
	
	WinSet, Trans, %black_trans%, Transition Gui
	
	
	GuiControl, Show, transition_gui_black_pic
	
	
	
	transition_screen_toggle := !transition_screen_toggle 
	
	if transition_screen_toggle
		
		loop,  % 255 // black_trans_speed // 2 + 1
		{
			WinSet, Trans, %black_trans%, Transition Gui
			
			black_trans := black_trans + black_trans_speed
			sleep, 1
		}

	else
	{
		loop, % 255 // black_trans_speed // 2 + 1
		{
			WinSet, Trans, %black_trans%, Transition Gui
			
			black_trans := black_trans - black_trans_speed
			sleep, 1
		}
		
		Gui, Transition_Gui: Hide
	}

}
return


;=====================================================================
;============================ End Gui ================================
;=====================================================================

finish_test:
{	
	correct_answers := Used_Questions.Length() - Wrong_Questions.Length()
	
	SetTimer, ponos_minitimer, Off
	SetTimer, ponos_timer, Off
	
	if correct_answers != 1
		MsgBox, 4096, , You answered correctly to %correct_answers% questions! ;grammar fix
	else
		MsgBox, 4096, , You answered correctly to %correct_answers% question! ;grammar fix
		
	;ponos_enable_disable_controls ; disable controls when showing end test gui
	
	gosub, ponos_start_screen_toggle
}
return





; remove when done = reload, exitgui
{ 
F9::
Reload
return


Ponos_DomovineGuiClose:
ExitApp
return
}



