
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

SetTitleMatchMode, 3

number_of_questions := 5 ; number of questions in pool

#SingleInstance Force ; easier to launch, ignore later

Menu, Tray, Icon, %A_ScriptDir%\Icons\HrvatskiGrb.ico ; adds cool icon, A_ScriptDir later


;=====================================================================
;===================== Window Width & Height =========================
;=====================================================================

gui_window_w := A_ScreenWidth
gui_window_h := A_ScreenHeight - 65 ; to compensate for the title bar and menu


;=====================================================================
;====================== Specs & Coordinates ==========================
;=====================================================================
;========================= Start Screen ==============================
;=====================================================================
{
;======================== Hrv Zastava Pic ============================

hrv_zastava_pic_w := A_ScreenWidth ; 1920, fullscreen
hrv_zastava_pic_h :=  A_ScreenHeight ; 1080, fullscreen

hrv_zastava_pic_x := 0 ; fullscreen
hrv_zastava_pic_y := 0 ; fullscreen


;======================= Start Test Button ===========================

start_test_button_w := 1920 / 2 ; 960
start_test_button_h := 1080 / 5 ; 216

start_test_button_x := A_ScreenWidth / 2 - start_test_button_w / 2 ; 480
start_test_button_y := A_ScreenHeight / 2 - start_test_button_h ; 324


;======================== Settings Button =============================

settings_button_w := 1920 / 4 ; 480
settings_button_h := 1080 / 10 ; 108

settings_button_x := A_ScreenWidth / 2 - settings_button_w / 2 ; 720
settings_button_y := A_ScreenHeight / 2 + settings_button_h / 2 ; 594
}


;=====================================================================
;====================== Specs & Coordinates ==========================
;=====================================================================
;========================= Settings Gui ==============================
;=====================================================================
{
;=========================== Variables ===============================

settings_gui_timer_ddl_text = Countdown|Stopwatch ; text to show in settings timer ddl


settings_gui_language_ddl_text = Hrvatski|English ; text to show in settings language ddl


;======================== Controls Distance ==========================

settings_gui_distance_to_border := 25

settings_gui_distance_between_controls := 15


;====================== Gui Width & Height ===========================

settings_gui_w := 1920 / 3 ; 640, looks nice
settings_gui_h := 1080 / 3 ; 360, looks nice


;======================== Timer Text Front ===========================

settings_gui_timer_text_front_w := 75 ; just so it fits
settings_gui_timer_text_front_h := 37 ; just so it fits

settings_gui_timer_text_front_x := settings_gui_distance_to_border ; 25
settings_gui_timer_text_front_y := settings_gui_distance_to_border ; 25


;=========================== Timer DDL ===============================

settings_gui_timer_ddl_w := 175 ; just so it fits
settings_gui_timer_ddl_h := 2 * 60 ; 120, fit 2 rows

settings_gui_timer_ddl_x := settings_gui_distance_to_border + settings_gui_distance_between_controls + settings_gui_timer_text_front_w ; 115
settings_gui_timer_ddl_y := 21 ; aligned with timer text


;======================= Timer Text Middle ===========================

settings_gui_timer_text_middle_w := 55 ; just so it fits
settings_gui_timer_text_middle_h := 37 ; just so it fits

settings_gui_timer_text_middle_x := settings_gui_distance_to_border + 2 * settings_gui_distance_between_controls + settings_gui_timer_text_front_w + settings_gui_timer_ddl_w ; 310
settings_gui_timer_text_middle_y := settings_gui_distance_to_border ; 25


;========================== Timer Edit ===============================

settings_gui_timer_edit_w := 60 ; fits 2 digits
settings_gui_timer_edit_h := 44 ; just so it fits

settings_gui_timer_edit_x := settings_gui_distance_to_border + 3 * settings_gui_distance_between_controls + settings_gui_timer_text_front_w + settings_gui_timer_ddl_w + settings_gui_timer_text_middle_w ; 375
settings_gui_timer_edit_y := 23 ; aligned with timer text


;======================== Timer Text back ============================

settings_gui_timer_text_back_w := 90 ; just so it fits
settings_gui_timer_text_back_h := 37 ; just so it fits

settings_gui_timer_text_back_x := settings_gui_distance_to_border + 4 * settings_gui_distance_between_controls + settings_gui_timer_text_front_w +  settings_gui_timer_ddl_w + settings_gui_timer_text_middle_w + settings_gui_timer_edit_w ; 450
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

settings_gui_language_text_w := 125 ; just so it fits
settings_gui_language_text_h := 37 ; just so it fits

settings_gui_language_text_x := settings_gui_distance_to_border ; 25
settings_gui_language_text_y := settings_gui_distance_to_border +  2 * settings_gui_distance_between_controls + settings_gui_timer_text_front_h + settings_gui_chosen_number_of_questions_text_front_h ; 129


;========================== Language DDl =============================

settings_gui_language_ddl_w := 120 ; just so it fits
settings_gui_language_ddl_h := 2 * 60 ; 120, fit 2 rows

settings_gui_language_ddl_x := settings_gui_distance_to_border + settings_gui_distance_between_controls + settings_gui_language_text_w ; 160
settings_gui_language_ddl_y := 124

/*
;=========================== Shield Icon =============================

settings_gui_shield_icon_w := 48 ; cant go bigger
settings_gui_shield_icon_h := 48 ;  cant go bigger

settings_gui_shield_icon_x := settings_gui_distance_to_border ; settings_gui_w - settings_gui_distance_to_border - settings_gui_shield_icon_w
settings_gui_shield_icon_y := settings_gui_distance_to_border +  3 * settings_gui_distance_between_controls + settings_gui_timer_text_front_h + settings_gui_chosen_number_of_questions_text_front_h + settings_gui_language_text_h + 10 ; 25
*/

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
left_groupbox_y := distance_to_border - 20 ; 49


;========================== Hrv Grb Pic ==============================

hrv_grb_w := side_groupboxes_w - 2 * 10 ; 380
hrv_grb_h := side_groupboxes_h - 2 * 201 ; 540

hrv_grb_x := left_groupbox_x + 10 ; 79
hrv_grb_y := left_groupbox_y + 201 ; 270


;======================== Middle Groupbox ============================

middle_groupbox_w := A_ScreenWidth - 2 * distance_to_border - 2 * distance_between_groupboxes - 2 * side_groupboxes_w ; 900
middle_groupbox_h := side_groupboxes_h - distance_between_groupboxes - 100 ; 801

middle_groupbox_x := A_ScreenWidth - distance_to_border - side_groupboxes_w - distance_between_groupboxes - middle_groupbox_w ; 510
middle_groupbox_y := distance_to_border - 20 ; 49


;========================= Question Text =============================

question_text_w := middle_groupbox_w - 2 * 35 ; 830
question_text_h := middle_groupbox_h - 60 - 50 - 300 - 10 - 35 ; 381

question_text_x := middle_groupbox_x + 35 ; 545
question_text_y := middle_groupbox_y + 35 ; 104


;======================= Answers Groupbox ============================

answers_groupbox_w := A_ScreenWidth * 0.3802 ; "middle_groupbox_w - 2 * 40 - 225" ; 730
answers_groupbox_h := A_ScreenHeight * 0.2778 ; 2 * 50 + 4 * 50 ; 300 ; decided in question_texter

answers_groupbox_x := middle_groupbox_x + 35 ; 545
answers_groupbox_y := middle_groupbox_y + middle_groupbox_h - 60 - 50 - answers_groupbox_h ; 460


;========================= Answers Radio =============================

answer_a_x := answers_groupbox_x + 25 ; 570
answer_a_y := answers_groupbox_y + 50 ; 469

distance_between_answers := answers_groupbox_h * 0.0833 ; 25

answer_abcd_w := answers_groupbox_w - 2 * 25 ; 475
answer_abcd_h := answers_groupbox_h / 4 / 2 ; 37.5


;====================== Next Question Button =========================

next_question_button_w := A_ScreenWidth * 0.1172 ; 225 ; just so it fits
next_question_button_h := A_ScreenHeight * 0.0463 ; 50 ; just so it fits

next_question_button_x := middle_groupbox_x + middle_groupbox_w - next_question_button_w - 35 ; 1150
next_question_button_y := middle_groupbox_y + middle_groupbox_h - next_question_button_h - 35 ; 760


;======================== Bottom Groupbox ============================

bottom_groupbox_w := middle_groupbox_w ; 900
bottom_groupbox_h := side_groupboxes_h - middle_groupbox_h - distance_between_groupboxes + 15 ; 115

bottom_groupbox_x := middle_groupbox_x ; 510
bottom_groupbox_y := distance_to_border + middle_groupbox_h + distance_between_groupboxes - 15 - 20 ; 876


;========================= Progress Bar ==============================

question_bar_w := bottom_groupbox_w - 2 * 35 ; 830
question_bar_h := bottom_groupbox_h - 2 * 35 - 15 ; 30

question_bar_x := bottom_groupbox_x + 35 ; 545
question_bar_y := bottom_groupbox_y + 35 + 15 ; 946


;========================= Right Groupbox ============================

right_groupbox_x := A_ScreenWidth - distance_to_border - side_groupboxes_w ; 1451
right_groupbox_y := distance_to_border - 20 ; 49


;============================= Timer =================================

timer_w := A_ScreenHeight * 0.1667 * 2 ;side_groupboxes_w - 2 * 25 ; 360
timer_h := A_ScreenHeight * 0.1667 ; just so it fits, 16.67% 180

timer_x := right_groupbox_x + 25 ; 1501
timer_y := question_text_y ; 144


;========================== Exit Button ==============================

exit_button_w := side_groupboxes_w - 2 * 50 ; 300, 15.63%
exit_button_h := A_ScreenHeight * 0.0926 ; just so it fits, 9.26% 100

exit_button_x := right_groupbox_x + 50 ; 1501
exit_button_y := distance_to_border + side_groupboxes_h - 50 - exit_button_h ; 861


;========================== Pause Button =============================

pause_button_w := side_groupboxes_w - 2 * 50 ; 300, 15.63%
pause_button_h := A_ScreenHeight * 0.0926 ; just so it fits, 9.26% 100

pause_button_x := right_groupbox_x + 50 ; 1501
pause_button_y := distance_to_border + side_groupboxes_h - 50 - exit_button_h - 25 - pause_button_h ; 774
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

pause_gui_distance_between_controls := 10


;============================ Info Pic ===============================

pause_gui_info_pic_w := pause_gui_w / 8 ; 48
pause_gui_info_pic_h := pause_gui_w / 8 ; 48

pause_gui_info_pic_x := pause_gui_distance_to_border ; 16
pause_gui_info_pic_y := pause_gui_distance_to_border + 8 ; 24, centered


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

exit_gui_distance_between_controls := 10


;======================== Exclamation Pic ============================

exit_gui_exclamation_pic_w := exit_gui_w / 8 ; 48
exit_gui_exclamation_pic_h := exit_gui_w / 8 ; 48

exit_gui_exclamation_pic_x := exit_gui_distance_to_border ; 16
exit_gui_exclamation_pic_y := exit_gui_distance_to_border + 8 ; 24, centered


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
transition_gui_window_h := A_ScreenHeight - 22

transition_gui_window_x := 0
transition_gui_window_y := 22
	
	
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
;====================== Specs & Coordinates ==========================
;=====================================================================
;=========================== End Gui =================================
;=====================================================================
{
end_gui_w := 1920 / 2 + 160 ; 1120
end_gui_h := 1080 / 2 + 90 ; 630


;======================= Controls Distance ===========================
	
end_gui_distance_between_controls := 5

end_gui_distance_to_border := 30


;====================== Correct/Wrong Icon ===========================

end_gui_correct_icon_w := 48 ; cant go bigger
end_gui_correct_icon_h := 48 ; cant go bigger

end_gui_correct_icon_x := end_gui_w - end_gui_distance_to_border - 20 - end_gui_correct_icon_w ; 1022
end_gui_correct_icon_y := end_gui_distance_to_border + 20 ; 50


end_gui_wrong_icon_w := 48 ; cant go bigger
end_gui_wrong_icon_h := 48 ; cant go bigger

end_gui_wrong_icon_x := end_gui_w - end_gui_distance_to_border - 20 - end_gui_wrong_icon_w ; 1022
end_gui_wrong_icon_y := end_gui_distance_to_border + 20 ; 50


;======================== Correct Answers ============================

end_gui_correct_answers_w := 420 ; just so it fits
end_gui_correct_answers_h := 45 ; just so it fits

end_gui_correct_answers_x := end_gui_distance_to_border ; 30
end_gui_correct_answers_y := end_gui_distance_to_border ; 30


;============================ End Time ===============================

end_gui_time_w := 225 ; just so it fits
end_gui_time_h := 45 ; just so it fits

end_gui_time_x := end_gui_distance_to_border ; 30
end_gui_time_y := end_gui_distance_to_border + end_gui_correct_answers_h + end_gui_distance_between_controls ; 80


;======================= Wrong Answers Text ==========================

end_gui_wrong_answers_w := 300 ; just so it fits
end_gui_wrong_answers_h := 35 ; just so it fits

end_gui_wrong_answers_x := end_gui_distance_to_border ; 30
end_gui_wrong_answers_y := end_gui_distance_to_border + end_gui_correct_answers_h + end_gui_distance_between_controls * 2 + end_gui_time_h ; 130


;====================== Wrong Answers Number =========================

end_gui_wrong_answers_num_w := 100 ; just so it fits
end_gui_wrong_answers_num_h := 35 ; just so it fits

end_gui_wrong_answers_num_x := end_gui_w - end_gui_distance_to_border - end_gui_wrong_answers_num_w ; 830
end_gui_wrong_answers_num_y := end_gui_distance_to_border + end_gui_correct_answers_h + end_gui_distance_between_controls * 2 + end_gui_time_h ; 130


;========================= Question Text =============================

end_gui_question_w := end_gui_w - 2 * end_gui_distance_to_border ; 900
end_gui_question_h := 31 * 10 ; 310, fits 10 rows

end_gui_question_x := end_gui_distance_to_border ; 30
end_gui_question_y := end_gui_distance_to_border + end_gui_correct_answers_h + end_gui_distance_between_controls * 2 + end_gui_time_h + end_gui_wrong_answers_h + 20 ; 185


;====================== Correct Answer Text ==========================

end_gui_correct_answer_w := 150 ; just so it fits
end_gui_correct_answer_h := 35 ; just so it fits

end_gui_correct_answer_x := end_gui_distance_to_border ; 30
end_gui_correct_answer_y := end_gui_distance_to_border + end_gui_correct_answers_h + end_gui_distance_between_controls * 2 + end_gui_time_h + end_gui_wrong_answers_h + 20 + end_gui_question_h + 10


;====================== Correct Answer Answer Text ==========================

end_gui_correct_answer_answer_w := end_gui_w - 2 * end_gui_distance_to_border - end_gui_correct_answer_w - end_gui_distance_between_controls - 15 ; 730
end_gui_correct_answer_answer_h := 35 ; just so it fits

end_gui_correct_answer_answer_x := end_gui_distance_to_border + end_gui_correct_answer_w + end_gui_distance_between_controls + 15 ; 200
end_gui_correct_answer_answer_y := end_gui_distance_to_border + end_gui_correct_answers_h + end_gui_distance_between_controls * 2 + end_gui_time_h + end_gui_wrong_answers_h + 20 + end_gui_question_h + 10


;========================== Done Button ==============================

end_gui_done_button_w := 100 ; just so it fits
end_gui_done_button_h := 50 ; just so it fits

end_gui_done_button_x := end_gui_w - end_gui_distance_to_border - end_gui_done_button_w ; 830
end_gui_done_button_y := end_gui_h - end_gui_distance_to_border - end_gui_done_button_h ; 460


;===================== Next Question Button ==========================

end_gui_next_question_button_w := 185 ; just so it fits
end_gui_next_question_button_h := 50 ; just so it fits

end_gui_next_question_button_x := end_gui_w - end_gui_distance_to_border - end_gui_done_button_w - 20 - end_gui_next_question_button_w ; 640
end_gui_next_question_button_y := end_gui_h - end_gui_distance_to_border - end_gui_done_button_h ; 460
}



;=====================================================================
;=====================================================================
;========================= Gui Creation ==============================
;=====================================================================
;=====================================================================
{
Gui, Ponos_Domovine: New, , Ponos Domovine ; make a Gui

Gui, Settings_Gui: New, , Ponos Domovine Settings

Gui, Pause_Gui: New, , Ponos Domovine Paused

Gui, Exit_Gui: New, , Ponos Domovine Exit Test

Gui, Transition_Gui: New, , Transition Gui

Gui, End_Gui: New, , Ponos Domovine Test Finished
}



;=====================================================================
;======================== Control Addition ===========================
;=====================================================================
;====================== Start Screen Controls ========================
;=====================================================================
{
;======================== Hrv Zastava Pic ============================

Gui, Ponos_Domovine: Add, Picture, Vhrv_zastava_pic x%hrv_zastava_pic_x% y%hrv_zastava_pic_y% w%hrv_zastava_pic_w% h%hrv_zastava_pic_h%, %A_ScriptDir%\Pictures\HrvatskaZastava.jpg ; add background picture


;======================= Start Test Button ===========================

Gui, Ponos_Domovine: Font, s90, Snap ITC ; size and font

Gui, Ponos_Domovine: Add, Button, Vstart_test_button Gponos_start_screen_toggle w%start_test_button_w% h%start_test_button_h% x%start_test_button_x% y%start_test_button_y% ; add start test button


;======================== Settings Button ============================

Gui, Ponos_Domovine: Font, s45, Snap ITC

Gui, Ponos_Domovine: Add, Button, Vsettings_button Gponos_settings_button x%settings_button_x% y%settings_button_y% w%settings_button_w% h%settings_button_h% ; add settings button
}


;=====================================================================
;======================== Control Addition ===========================
;=====================================================================
;======================== Settings Controls ==========================
;=====================================================================
{
;========================== Gui Options ==============================

Gui, Settings_Gui: -SysMenu +OwnerPonos_Domovine


;========================== Shield Icon ==============================

;Gui, Settings_Gui: Add, Picture, icon7 Vsettings_gui_shield_icon w%settings_gui_shield_icon_w% h%settings_gui_shield_icon_h% x%settings_gui_shield_icon_x% y%settings_gui_shield_icon_y%, %A_WinDir%\system32\user32.dll ; add shield icon


;========================= Timer Settings ============================

Gui, Settings_Gui: Font, s19, Segoe UI


Gui, Settings_Gui: Add, Text, Vsettings_gui_timer_text_front w%settings_gui_timer_text_front_w% h%settings_gui_timer_text_front_h% x%settings_gui_timer_text_front_x% y%settings_gui_timer_text_front_y% ; add front timer text


Gui, Settings_Gui: Add, DropDownList, Sort Choose1 Vsettings_gui_timer_ddl Gsettings_gui_update_settings w%settings_gui_timer_ddl_w% h%settings_gui_timer_ddl_h% x%settings_gui_timer_ddl_x% y%settings_gui_timer_ddl_y%, %settings_gui_timer_ddl_text% ; add timer ddl


Gui, Settings_Gui: Add, Text, Vsettings_gui_timer_text_middle w%settings_gui_timer_text_middle_w% h%settings_gui_timer_text_middle_h% x%settings_gui_timer_text_middle_x% y%settings_gui_timer_text_middle_y%, Min : ; add middle timer text


Gui, Settings_Gui: Add, Edit, Center Number Vsettings_gui_timer_edit Gsettings_gui_update_settings w%settings_gui_timer_edit_w% h%settings_gui_timer_edit_h% x%settings_gui_timer_edit_x% y%settings_gui_timer_edit_y% ; add timer edit

Gui, Settings_Gui: Add, UpDown, Range1-60 Wrap Vsettings_gui_timer_updown ; add updown to timer edit


Gui, Settings_Gui: Add, Text, cGreen Vsettings_gui_timer_text_back w%settings_gui_timer_text_back_w% h%settings_gui_timer_text_back_h% x%settings_gui_timer_text_back_x% y%settings_gui_timer_text_back_y%, (def. 16) ; add back timer text


;================== Number Of Questions Settings =====================

Gui, Settings_Gui: Font, s19


Gui, Settings_Gui: Add, Text, Vsettings_gui_chosen_number_of_questions_text_front w%settings_gui_chosen_number_of_questions_text_front_w% h%settings_gui_chosen_number_of_questions_text_front_h% x%settings_gui_chosen_number_of_questions_text_front_x% y%settings_gui_chosen_number_of_questions_text_front_y% ; adds number of questions front text


Gui, Settings_Gui: Add, Edit, Center Number Vsettings_gui_chosen_number_of_questions_edit Gsettings_gui_update_settings w%settings_gui_chosen_number_of_questions_edit_w% h%settings_gui_chosen_number_of_questions_edit_h% x%settings_gui_chosen_number_of_questions_edit_x% y%settings_gui_chosen_number_of_questions_edit_y% ; add number of questions edit

Gui, Settings_Gui: Add, UpDown, Range1-%number_of_questions% Wrap Vsettings_gui_chosen_number_of_questions_updown ; add updown option to edit control


Gui, Settings_Gui: Add, Text, cGreen Vsettings_gui_chosen_number_of_questions_text_back w%settings_gui_chosen_number_of_questions_text_back_w% h%settings_gui_chosen_number_of_questions_text_back_h% x%settings_gui_chosen_number_of_questions_text_back_x% y%settings_gui_chosen_number_of_questions_text_back_y%, (def. 40) ; adds number of questions back text


;======================= Language Settings ===========================

Gui, Settings_Gui: Font, s19


Gui, Settings_Gui: Add, Text, Vsettings_gui_language_text w%settings_gui_language_text_w% h%settings_gui_language_text_h% x%settings_gui_language_text_x% y%settings_gui_language_text_y% ; add language text


Gui, Settings_Gui: Add, DropDownList, Sort Vsettings_gui_language_ddl w%settings_gui_language_ddl_w% h%settings_gui_language_ddl_h% x%settings_gui_language_ddl_x% y%settings_gui_language_ddl_y%, %settings_gui_language_ddl_text% ; add language drop down list


;========================== Exit Buttons =============================

Gui, Settings_Gui: Font, s22


Gui, Settings_Gui: Add, Button, Vsettings_gui_save_and_exit_button Gsettings_gui_save_settings w%settings_gui_save_and_exit_button_w% h%settings_gui_save_and_exit_button_h% x%settings_gui_save_and_exit_button_x% y%settings_gui_save_and_exit_button_y% ; add save and exit button


Gui, Settings_Gui: Add, Button, Vsettings_gui_cancel_button Gsettings_gui_cancel_button w%settings_gui_cancel_button_w% h%settings_gui_cancel_button_h% x%settings_gui_cancel_button_x% y%settings_gui_cancel_button_y% ; add cancel button

GuiControl, Settings_Gui: Focus, settings_gui_save_and_exit_button ; sets focus so the edit is not selected
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


Gui, Ponos_Domovine: Add, Picture, Vhrv_grb_pic Gponos_hrv_grb x%hrv_grb_x% y%hrv_grb_y% w%hrv_grb_w% h%hrv_grb_h%, %A_ScriptDir%\Pictures\\HrvatskiGrb.png ; add grb picture


;======================== Middle Groupbox ============================

Gui, Ponos_Domovine: Add, Groupbox, Vmiddle_groupbox x%middle_groupbox_x% y%middle_groupbox_y% w%middle_groupbox_w% h%middle_groupbox_h% ; add middle groupbox


Gui, Ponos_Domovine: Font, s15

Gui, Ponos_Domovine: Add, Text, Vquestion_text x%question_text_x% y%question_text_y% w%question_text_w% h%question_text_h% ; add question text


Gui, Ponos_Domovine: Font, % "s" . next_question_button_h / 2 - next_question_button_h / 10 ; 20

Gui, Ponos_Domovine: Add, Button, Vnext_question_button Gponos_next_question x%next_question_button_x% y%next_question_button_y% w%next_question_button_w% h%next_question_button_h% ; add next question button


;======================= Answers Groupbox ============================

Gui, Ponos_Domovine: Font, % "s" . answer_abcd_h / 2 - answer_abcd_h / 10 ; 15

Gui, Ponos_Domovine: Add, Groupbox, Vanswers_groupbox x%answers_groupbox_x% y%answers_groupbox_y% w%answers_groupbox_w% h%answers_groupbox_h% ; add answers groupbox


Gui, Ponos_Domovine: Add, Radio, 0x1000 Choose_Answer Vuser_answer_a x%answer_a_x% y%answer_a_y% w%answer_abcd_w% h%answer_abcd_h% ; add answer a
Gui, Ponos_Domovine: Add, Radio, 0x1000 Choose_Answer Vuser_answer_b y+%distance_between_answers% w%answer_abcd_w% h%answer_abcd_h% ; add answer b
Gui, Ponos_Domovine: Add, Radio, 0x1000 Choose_Answer Vuser_answer_c y+%distance_between_answers% w%answer_abcd_w% h%answer_abcd_h% ; add answer c
Gui, Ponos_Domovine: Add, Radio, 0x1000 Choose_Answer Vuser_answer_d y+%distance_between_answers% w%answer_abcd_w% h%answer_abcd_h% ; add answer d

Gui, Ponos_Domovine: Add, Edit, Vuser_answer_edit x%answer_a_x% y%answer_a_y% w%answer_abcd_w% h%answer_abcd_h% ; add answer edit


;======================== Bottom Groupbox ============================

Gui, Ponos_Domovine: Font, s19

Gui, Ponos_Domovine: Add, Groupbox, Center Vbottom_groupbox x%bottom_groupbox_x% y%bottom_groupbox_y% w%bottom_groupbox_w% h%bottom_groupbox_h% ; add bottom groupbox


Gui, Ponos_Domovine: Add, Progress, Vquestion_bar -0x00000001 0x1 w%question_bar_w% h%question_bar_h% x%question_bar_x% y%question_bar_y% ; add progress bar


;======================== Right Groupbox =============================

Gui, Ponos_Domovine: Font, s18 ; needed for groupbox aligment

Gui, Ponos_Domovine: Add, Groupbox, Vright_groupbox x%right_groupbox_x% y%right_groupbox_y% w%side_groupboxes_w% h%side_groupboxes_h% ; add right groupbox
	

Gui, Ponos_Domovine: Font, % "s" . timer_h / 2 + timer_h / 40 ; 94.5

Gui, Ponos_Domovine: Add, Text, 0x1000 0x1 Vcountdown x%timer_x% y%timer_y% w%timer_w% h%timer_h% ; add timer text


Gui, Ponos_Domovine: Font, % "s" . pause_button_h / 2 + pause_button_h / 40 ; 52.5

Gui, Ponos_Domovine: Add, Button, -TabStop Vpause_button Gponos_pause_button x%pause_button_x% y%pause_button_y% w%pause_button_w% h%pause_button_h% ; add pause button


Gui, Ponos_Domovine: Add, Button, -TabStop Vexit_button Gponos_exit_button x%exit_button_x% y%exit_button_y% w%exit_button_w% h%exit_button_h% ; add stop test button
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

Gui, Pause_Gui: Add, Picture, icon103 Vpause_gui_info_pic w%pause_gui_info_pic_w% h%pause_gui_info_pic_h% x%pause_gui_info_pic_x% y%pause_gui_info_pic_y%, %A_WinDir%\system32\imageres.dll ; add windows info icon


;========================== Pause Text ===============================

Gui, Pause_Gui: Font, s16, Segoe UI

Gui, Pause_Gui: Add, Text, Vpause_gui_text w%pause_gui_text_w% h%pause_gui_text_h% x%pause_gui_text_x% y%pause_gui_text_y% ; add pause text


;======================== Continue Button ============================

Gui, Pause_Gui: Font, s36

Gui, Pause_Gui: Add, Button, Vpause_gui_continue_button Gponos_pause_button w%pause_gui_continue_button_w% h%pause_gui_continue_button_h% x%pause_gui_continue_button_x% y%pause_gui_continue_button_y% ; add continue button
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

Gui, Exit_Gui: Add, Picture, icon100 Vexit_gui_excalamation_pic w%exit_gui_exclamation_pic_w% h%exit_gui_exclamation_pic_h% x%exit_gui_exclamation_pic_x% y%exit_gui_exclamation_pic_y%, %A_WinDir%\system32\imageres.dll ; add windows question icon


;=========================== Exit Text ===============================

Gui, Exit_Gui: Font, s16, Segoe UI

Gui, Exit_Gui: Add, Text, Vexit_gui_text w%exit_gui_text_w% h%exit_gui_text_h% x%exit_gui_text_x% y%exit_gui_text_y% ; add exit text


;=========================== Yes Button ==============================

Gui, Exit_Gui: Font, s36

Gui, Exit_Gui: Add, Button, Vexit_gui_yes_button Gexit_gui_stop_test w%exit_gui_yes_button_w% h%exit_gui_yes_button_h% x%exit_gui_yes_button_x% y%exit_gui_yes_button_y% ; add yes button


;=========================== No Button ===============================

Gui, Exit_Gui: Font, s36

Gui, Exit_Gui: Add, Button, Vexit_gui_no_button Gponos_exit_button w%exit_gui_no_button_w% h%exit_gui_no_button_h% x%exit_gui_no_button_x% y%exit_gui_no_button_y% ; add no button
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

Gui, Transition_Gui: Add, Picture, Vtransition_gui_black_pic w%transition_gui_black_pic_w% h%transition_gui_black_pic_h% x%transition_gui_black_pic_x% y%transition_gui_black_pic_y%, %A_ScriptDir%\Pictures\\Black.jpg
}


;=====================================================================
;======================== Control Addition ===========================
;=====================================================================
;======================== End Gui Controls ===========================
;=====================================================================
{
;========================== Gui Options ==============================

Gui, End_Gui: -Sysmenu +OwnerPonos_Domovine


;====================== Correct/Wrong Icons ==========================

Gui, End_Gui: Add, Picture, icon102 Vend_gui_correct_icon w%end_gui_correct_icon_w% h%end_gui_correct_icon_h% x%end_gui_correct_icon_x% y%end_gui_correct_icon_y%,  %A_WinDir%\system32\imageres.dll ; add windows correct icon

GuiControl, End_Gui: Hide, end_gui_correct_icon ; hides the icon


Gui, End_Gui: Add, Picture, icon101 Vend_gui_wrong_icon w%end_gui_wrong_icon_w% h%end_gui_wrong_icon_h% x%end_gui_wrong_icon_x% y%end_gui_wrong_icon_y%,  %A_WinDir%\system32\imageres.dll ; add windows wrong icon

GuiControl, End_Gui: Hide, end_gui_wrong_icon ; hides the icon


;======================== Correct Answers ============================

Gui, End_Gui: Font, s20, Segoe UI bold

Gui, End_Gui: Add, Text, Vend_gui_correct_answers w%end_gui_correct_answers_w% h%end_gui_correct_answers_h% x%end_gui_correct_answers_x% y%end_gui_correct_answers_y% ; add correct answers number text


;=========================== End Time ================================

Gui, End_Gui: Font, s20, Segoe UI bold

Gui, End_Gui: Add, Text, Vend_gui_time w%end_gui_time_w% h%end_gui_time_h% x%end_gui_time_x% y%end_gui_time_y% ; add time text


;====================== Wrong Answer Shower ==========================

Gui, End_Gui: Font, s16, Segoe UI

Gui, End_Gui: Add, Text, Vend_gui_wrong_answers w%end_gui_wrong_answers_w% h%end_gui_wrong_answers_h% x%end_gui_wrong_answers_x% y%end_gui_wrong_answers_y% ; add "wrongly answered questions" text


Gui, End_Gui: Add, Text, Vend_gui_wrong_answers_num Right w%end_gui_wrong_answers_num_w% h%end_gui_wrong_answers_num_h% x%end_gui_wrong_answers_num_x% y%end_gui_wrong_answers_num_y% ; add wrongly answered quesitons number text


;========================= Question Text =============================

Gui, End_Gui: Font, s16, Segoe UI

Gui, End_Gui: Add, Text, Vend_gui_question w%end_gui_question_w% h%end_gui_question_h% x%end_gui_question_x% y%end_gui_question_y% ; add question text


;====================== Correct Answer Text ===========================

Gui, End_Gui: Font, s16, Segoe UI

Gui, End_Gui: Add, Text, Vend_gui_correct_answer w%end_gui_correct_answer_w% h%end_gui_correct_answer_h% x%end_gui_correct_answer_x% y%end_gui_correct_answer_y% ; add "correct answer" text


;================== Correct Answer Answer Text =======================

Gui, End_Gui: Font, s16, Segoe UI

Gui, End_Gui: Add, Text, Vend_gui_correct_answer_answer w%end_gui_correct_answer_answer_w% h%end_gui_correct_answer_answer_h% x%end_gui_correct_answer_answer_x% y%end_gui_correct_answer_answer_y% ; add correct answer text


;========================== Done Button ==============================

Gui, End_Gui: Font, s18, Segoe UI

Gui, End_Gui: Add, Button, Vend_gui_done_button Gend_gui_finish_test w%end_gui_done_button_w% h%end_gui_done_button_h% x%end_gui_done_button_x% y%end_gui_done_button_y% ; add done button

;====================== Next Question Button =========================

Gui, End_Gui: Add, Button, Vend_gui_next_question_button Gend_gui_next_question_button w%end_gui_next_question_button_w% h%end_gui_next_question_button_h% x%end_gui_next_question_button_x% y%end_gui_next_question_button_y% ; add next question button
}



;=====================================================================
;========================== Show Program =============================
;=====================================================================

gosub, resolution_check ; change the resolution for smaller monitors


gosub, reset_variables ; before every test

gosub, default_variables ; default program/test options

gosub, apply_settings ; applies options to the program


gosub, question_maker


gosub, ponos_start_screen_toggle ; chooses which screen to show (start/test)


extra_gui_addition_toggle := False ; define for Show%var%
gosub, extra_gui_addition_toggle ; hides controls in extra gui


gosub, ponos_startup_animation ; start program animation

return ; end of autoexec section



;=====================================================================
;=====================================================================
;====================== Math & Control Edits =========================
;=====================================================================
;=====================================================================

question_maker: ; choose number and change text
{	
	
	if Used_Questions_Array_Length <= 500 ; safezone before it breaks
	{
		Random, Question_Number, 1, %number_of_questions% ; pick a number for question
		
		
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
	}
	else if Used_Questions_Array_Length > 500 ; choose questions in order
	{
		if Used_Questions_Array_Length = 501
			Question_Number := 1 ; this only activates once when i switch to serial numbers
		
		loop ; loop until question number is available
		{
			Use_Number := True
			
			loop, % Used_Questions_Array_Length
			{
				Last_Used_Question := Used_Questions[A_Index] ; store the number used
			
				if Question_Number = %Last_Used_Question% ; if already in list
				{
					Use_Number := false
					break
				}
				
			}
			
			if Use_Number
				break
			
			else ; if number is used add + 1 to the number
				Question_Number++
			
		}
		
	}
	
	if Use_Number
	{
		Used_Questions.Push(Question_Number) ; add that number to used questions list
		
		Used_Questions_Array_Length := Used_Questions.Length()
		
		
		Question_Number := "Question number: " . Question_Number ; make this a variable for later array use
		
		Use_Question := False
		
		Loop, Read, %A_ScriptDir%\Extras\Questions Template.txt
		{
			If InStr(A_LoopReadLine, Question_Number) ; if question found
			{
				Loop, Read, 
				
				
				If InStr (A_LoopReadLine, "Type: ")
				{
					Question_Type_Array := StrSplit(A_LoopReadLine, ":", A_Space)
					
					Question_Type := Question_Type_Array[2]
					
					gosub, change_question_controls
				}
				
				
				
			}
			
			
			
			
			
		}
		
		
		
		
		GuiControl, Ponos_Domovine: Text, question_text, %Question%
		
		
		if Used_Questions_Array_Length != 1
			loop, % question_bar_lenght / chosen_number_of_questions
				GuiControl, Ponos_Domovine: , question_bar, + 1
		
		GuiControl, Ponos_Domovine: , bottom_groupbox, %Used_Questions_Array_Length% / %chosen_number_of_questions%
		
	}else
		gosub, question_maker
	
}
return


change_question_controls:
{
	If Question_Type = choose1
	{
		
		
		
		
		
		
	}
	
	
	
	
	
	
	
	
}




question_texter: ; defines questions and answers
{	
	if !WinExist("Test Finished") or !WinExist("Test Završen") ; so it doesnt change the font in case the last question has a larger answer
	{
		Gui, Ponos_Domovine: Font, % "s" . answer_abcd_h / 2 - answer_abcd_h / 10 ; 15 ; so it fits all answers back to normal
		GuiControl, Ponos_Domovine: Font, user_answer_a
		GuiControl, Ponos_Domovine: Font, user_answer_b
		GuiControl, Ponos_Domovine: Font, user_answer_c
		GuiControl, Ponos_Domovine: Font, user_answer_d
	}
	
	
	if Question_Number = 0
	{
		Question = Na zasjedanju Ugarskog sabora 1847./48. prihvaæena je Zakonska osnova o maðarskom jeziku i narodnosti kojim su se hrvatski uredi i sudovi u službenom saobraæaju s ugarskim oblastima trebali obavljati na maðarskom jeziku, tražilo se obvezatno uèenje maðarskog jezika u svim hrvatskim školama, da graðanski komorski i vojnièki zavodi, brodovi i luke trebaju upotrebljavati jedino ugarsku državnu zastavu i ugarski državni grb. Lajos Kossuth, predstavnik Reformne stranke maðarskog srednjeg plemstva i ministar financija poricao je hrvatsko ime i narodnost. Nakon revolucije u Beèu (13. ožujak 1848.) i pada Metternichovog apsolutizma, kralj je imenovao za bana pukovnika Josipa Jelaèiæa. Kada je u Zagrebu 25. ožujka sazvana Skupština trojedne kraljevine Dalmacije, Hrvatske i Slavonije, Jelaèiæ je izabran za bana. Donijeti su zakljuèci znani kao Zahtjevanja naroda (radna verzija Želje naroda). Navedena zbivanja odjeknula su i diljem istoène obale Jadrana. U Zori dalmatinskoj, èasopisu koji je izlazio u Zadru isticalo se:
		
		Answer_A = De regno Dalmatiae et Croatiae libri sex (O kraljevstvu Hrvatske i Dalmacije u šest knjiga)
		Answer_B = De regno Dalmatiae et Croatiae libri sex (O kraljevstvu Hrvatske i Dalmacije u šest knjiga)
		Answer_C = De regno Dalmatiae et Croatiae libri sex (O kraljevstvu Hrvatske i Dalmacije u šest knjiga)
		Answer_D = Krsto Hegedušiæ
		
		Answer = De regno Dalmatiae et Croatiae libri sex (O kraljevstvu Hrvatske i Dalmacije u šest knjiga)
		
		Gui, Ponos_Domovine: Font, % "s" . answer_abcd_h / 2 - answer_abcd_h / 3.8461 ; 9
		GuiControl, Ponos_Domovine: Font, user_answer_a
		Gui, Ponos_Domovine: Font, % "s" . answer_abcd_h / 2 - answer_abcd_h / 4.2857 ; 10
		GuiControl, Ponos_Domovine: Font, user_answer_b
		Gui, Ponos_Domovine: Font, % "s" . answer_abcd_h / 2 - answer_abcd_h / 4.8387 ; 11
		GuiControl, Ponos_Domovine: Font, user_answer_c
		Gui, Ponos_Domovine: Font, % "s" . answer_abcd_h / 2 - answer_abcd_h / 10 ; 15
		GuiControl, Ponos_Domovine: Font, user_answer_d
	}
	
	
}
return


reset_variables: ; before every test
{	
	timer_miliseconds := 0 ; so not sleep at the beggining of the test


	ponos_enable_disable_controls := 1 ; toggle test controls for pause and exit gui
	ponos_start_screen_toggle := 1 ; which screen to start with
	
	GuiControl, Ponos_Domovine: , question_bar, 0 ; set the progress of question bar to 0 at the start of test

	Used_Questions := [] ; array of used question
	Used_Questions_Array_Length := Used_Questions.Length()
	Wrong_Questions := [] ; array of wrongly answered questions
	
	stop_test := False ; so the timer keeps ticking (exit_gui)
	
	end_gui_question_number := 0 ; display question in end gui
	
	
	reset_variables_count := 0 ; reset variables only before every test
}
return


middle_cords: ; for extra gui animation
{
	middle_w := 0
	middle_h := 0

	middle_x := A_ScreenWidth / 2
	middle_y := (A_ScreenHeight - 20) / 2
}
return


default_variables: ; default program/test options
{
	GuiControl, Settings_Gui: Choose, settings_gui_timer_ddl, 1 ; 1 for countdown, 2 for stopwatch


	default_timer_time := 16 ; amount of time given to finish the test

	GuiControl, Settings_Gui: , settings_gui_timer_edit, %default_timer_time%



	default_number_of_questions := 5 ; number of questions in test


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
	
ponos_start_screen_toggle: ; chooses which screen to show (start/test), starts timer
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
		GuiControl, Ponos_Domovine: Focus, hrv_zastava_pic ; removes the focus from "start_test_button"
		
		
		gosub, ponos_timer ; to show the time at the beginning of the test
		
		SetTimer, ponos_minitimer, 200
		
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
	
	
	GuiControl, Ponos_Domovine: Hide, user_answer_a
	GuiControl, Ponos_Domovine: Hide, user_answer_b
	GuiControl, Ponos_Domovine: Hide, user_answer_c
	GuiControl, Ponos_Domovine: Hide, user_answer_d
	
	GuiControl, Ponos_Domovine: Hide, user_answer_edit
	
	
	if ponos_start_screen_toggle
		gosub, answer_display ; shows answers only if test screen


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
	
	
ponos_enable_disable_controls: ; enables/disables controls cause of the extra gui
{

	ponos_enable_disable_controls := !ponos_enable_disable_controls
	
	
	if reset_variables_count = 1
	{
		GuiControl, Ponos_Domovine: Enable%ponos_enable_disable_controls%, start_test_button
		
		GuiControl, Ponos_Domovine: Enable%ponos_enable_disable_controls%, settings_button
		
		;GuiControl, Ponos_Domovine: Enable%ponos_enable_disable_controls%, hrv_zastava_pic ; disabled cause of the controls flickering
	}
	else if reset_variables_count = 2
	{
		
		GuiControl, Ponos_Domovine: Enable%ponos_enable_disable_controls%, user_answer_a
		GuiControl, Ponos_Domovine: Enable%ponos_enable_disable_controls%, user_answer_b
		GuiControl, Ponos_Domovine: Enable%ponos_enable_disable_controls%, user_answer_c
		GuiControl, Ponos_Domovine: Enable%ponos_enable_disable_controls%, user_answer_d
		
		GuiControl, Ponos_Domovine: Enable%ponos_enable_disable_controls%, user_answer_edit
		
		GuiControl, Ponos_Domovine: Enable%ponos_enable_disable_controls%, next_question_button
		
		GuiControl, Ponos_Domovine: Enable%ponos_enable_disable_controls%, pause_button
		GuiControl, Ponos_Domovine: Enable%ponos_enable_disable_controls%, exit_button
		
		
		GuiControl, Ponos_Domovine: Enable%ponos_enable_disable_controls%, question_text
		
		GuiControl, Ponos_Domovine: Enable%ponos_enable_disable_controls%, countdown
		
		GuiControl, Ponos_Domovine: Enable%ponos_enable_disable_controls%, hrv_grb_pic
	}
	
}
return


extra_gui_addition_toggle: ; shows/hides controls in extra gui
{	
	
	GuiControl, Settings_Gui: Show%extra_gui_addition_toggle%, settings_gui_timer_text_front
	GuiControl, Settings_Gui: Show%extra_gui_addition_toggle%, settings_gui_timer_ddl
	GuiControl, Settings_Gui: Show%extra_gui_addition_toggle%, settings_gui_timer_text_middle
	GuiControl, Settings_Gui: Show%extra_gui_addition_toggle%, settings_gui_timer_edit
	GuiControl, Settings_Gui: Show%extra_gui_addition_toggle%, settings_gui_timer_updown
	GuiControl, Settings_Gui: Show%extra_gui_addition_toggle%, settings_gui_timer_text_back
	
	if (settings_gui_timer_ddl = "Countdown") or (settings_gui_timer_ddl = "Odbrojavanje")
	{
		GuiControl, Settings_Gui: Show%extra_gui_addition_toggle%, settings_gui_timer_text_middle
		GuiControl, Settings_Gui: Show%extra_gui_addition_toggle%, settings_gui_timer_edit
		GuiControl, Settings_Gui: Show%extra_gui_addition_toggle%, settings_gui_timer_updown
		GuiControl, Settings_Gui: Show%extra_gui_addition_toggle%, settings_gui_timer_text_back
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
	
	;GuiControl, Settings_Gui: Show%extra_gui_addition_toggle%, settings_gui_shield_icon
	
	GuiControl, Settings_Gui: Show%extra_gui_addition_toggle%, settings_gui_save_and_exit_button
	GuiControl, Settings_Gui: Show%extra_gui_addition_toggle%, settings_gui_cancel_button
	
	
	
	GuiControl, Pause_Gui: Show%extra_gui_addition_toggle%, pause_gui_info_pic
	GuiControl, Pause_Gui: Show%extra_gui_addition_toggle%, pause_gui_text
	
	GuiControl, Pause_Gui: Show%extra_gui_addition_toggle%, pause_gui_continue_button
	
	
	
	GuiControl, Exit_Gui: Show%extra_gui_addition_toggle%, exit_gui_excalamation_pic
	GuiControl, Exit_Gui: Show%extra_gui_addition_toggle%, exit_gui_text
	
	GuiControl, Exit_Gui: Show%extra_gui_addition_toggle%, exit_gui_yes_button
	GuiControl, Exit_Gui: Show%extra_gui_addition_toggle%, exit_gui_no_button
	
	
	
	GuiControl, End_Gui: Show%extra_gui_addition_toggle%, end_gui_correct_answers
	
	GuiControl, End_Gui: Show%extra_gui_addition_toggle%, end_gui_time
	
	GuiControl, End_Gui: Show%extra_gui_addition_toggle%, end_gui_wrong_answers
	GuiControl, End_Gui: Show%extra_gui_addition_toggle%, end_gui_wrong_answers_num
	
	GuiControl, End_Gui: Show%extra_gui_addition_toggle%, end_gui_question
	GuiControl, End_Gui: Show%extra_gui_addition_toggle%, end_gui_correct_answer
	GuiControl, End_Gui: Show%extra_gui_addition_toggle%, end_gui_correct_answer_answer
	
	GuiControl, End_Gui: Show%extra_gui_addition_toggle%, end_gui_done_button
	GuiControl, End_Gui: Show%extra_gui_addition_toggle%, end_gui_next_question_button
	
	GuiControl, End_Gui: Hide, end_gui_correct_icon ; always hide icon, show in different part of code (finish_test)
	GuiControl, End_Gui: Hide, end_gui_wrong_icon ; always hide icon, show in different part of code (finish_test)
	
	
	extra_gui_addition_toggle := !extra_gui_addition_toggle
}
return


apply_settings: ; applies options to the program
{	
	if WinExist("Ponos Domovine Settings") or WinExist("Ponos Domovine Postavke")
		Gui, Settings_Gui: Submit, NoHide
		
	else
		Gui, Settings_Gui: Submit
	
	
	if (settings_gui_timer_ddl = "Countdown") or (settings_gui_timer_ddl = "Odbrojavanje")
		timer_time := settings_gui_timer_edit * 60
	
	else if (settings_gui_timer_ddl = "Stopwatch") or (settings_gui_timer_ddl = "Štoperica")
		timer_time := 0
	
	
	
	chosen_number_of_questions := settings_gui_chosen_number_of_questions_edit
	
	
	question_bar_lenght := 0
	
	while question_bar_lenght < 1000
		question_bar_lenght := chosen_number_of_questions * A_Index ; change lenght of question bar so the progress is accurate
	
	GuiControl, Ponos_Domovine: +Range0-%question_bar_lenght%, question_bar ; change the lenght of question bar so it matches up
	
	
	
	
	if settings_gui_language_ddl = English ; change every name to english and resize if needed
	{
		GuiControl, Ponos_Domovine: Text, start_test_button, Start Test
		GuiControl, Ponos_Domovine: Text, settings_button, Settings
		
		
		GuiControl, Ponos_Domovine: Text, answers_groupbox, Answers
		GuiControl, Ponos_Domovine: Text, next_question_button, Next Question
		
		GuiControl, Ponos_Domovine: Text, pause_button, Pause
		GuiControl, Ponos_Domovine: Text, exit_button, Exit
		
		
		if WinExist("Ponos Domovine Settings") or WinExist("Ponos Domovine Postavke")
			Gui, Settings_Gui: Show, , Ponos Domovine Settings
		
		else
			Gui, Settings_Gui: Show, Hide, Ponos Domovine Settings
		
		GuiControl, Settings_Gui: Text, settings_gui_timer_text_front, Timer :
		GuiControl, Settings_Gui: Move, settings_gui_timer_text_front, w75
		
		GuiControl, Settings_Gui: Text, settings_gui_timer_ddl, |Countdown|Stopwatch
		
		if (settings_gui_timer_ddl = "Countdown") or (settings_gui_timer_ddl = "Odbrojavanje")
			GuiControl, Settings_Gui: Choose, settings_gui_timer_ddl, 1
		else if (settings_gui_timer_ddl = "Stopwatch") or (settings_gui_timer_ddl = "Štoperica")
			GuiControl, Settings_Gui: Choose, settings_gui_timer_ddl, 2
		
		GuiControl, Settings_Gui: Text, settings_gui_chosen_number_of_questions_text_front, Number of questions :
		GuiControl, Settings_Gui: Move, settings_gui_chosen_number_of_questions_text_front, % "w"settings_gui_chosen_number_of_questions_text_front_w
		
		GuiControl, Settings_Gui: Move, settings_gui_chosen_number_of_questions_edit, % "x"settings_gui_chosen_number_of_questions_edit_x
		GuiControl, Settings_Gui: Move, settings_gui_chosen_number_of_questions_updown, % "x"settings_gui_chosen_number_of_questions_edit_x+63
		GuiControl, Settings_Gui: Move, settings_gui_chosen_number_of_questions_text_back, % "x"settings_gui_chosen_number_of_questions_text_back_x
		
		GuiControl, Settings_Gui: Text, settings_gui_language_text, Language :
		GuiControl, Settings_Gui: Move, settings_gui_language_text, % "w"settings_gui_language_text_w
		
		GuiControl, Settings_Gui: Move, settings_gui_language_ddl, % "x"settings_gui_language_ddl_x
		
		GuiControl, Settings_Gui: Text, settings_gui_save_and_exit_button, Save and Exit
		GuiControl, Settings_Gui: Text, settings_gui_cancel_button, Cancel
		
		
		if WinExist("Ponos Domovine Paused") or WinExist("Ponos Domovine Pauzirano")
			Gui, Pause_Gui: Show, , Ponos Domovine Paused

		else
			Gui, Pause_Gui: Show, Hide, Ponos Domovine Paused
		
		GuiControl, Pause_Gui: Text, pause_gui_text, The test has been paused. Press Continue when ready.
		GuiControl, Pause_Gui: Text, pause_gui_continue_button, Continue
		
		
		if WinExist("Ponos Domovine Exit Test") or WinExist("Ponos Domovine Prekini Test")
			Gui, Exit_Gui: Show, , Ponos Domovine Exit Test
		
		else
			Gui, Exit_Gui: Show, Hide, Ponos Domovine Exit Test
		
		GuiControl, Exit_Gui: Text, exit_gui_text, Are you sure you want to stop the test?
		GuiControl, Exit_Gui: Text, exit_gui_yes_button, Yes
		GuiControl, Exit_Gui: Text, exit_gui_no_button, No
		
		
		GuiControl, End_Gui: Text, end_gui_correct_answers, Correct answers :
		GuiControl, End_Gui: Text, end_gui_time, Time :
		
		
		if WinExist("Ponos Domovine Test Finished") or WinExist("Ponos Domovine Test Završen")
			Gui, End_Gui: Show, , Ponos Domovine Test Finished
		
		else
			Gui, End_Gui: Show, Hide, Ponos Domovine Test Finished
		
		GuiControl, End_Gui: Text, end_gui_correct_answers, Correct answers :
		GuiControl, End_Gui: Text, end_gui_time, Time :

		GuiControl, End_Gui: Text, end_gui_wrong_answers, Wrongly answered questions :
		
		GuiControl, End_Gui: Text, end_gui_correct_answer, Correct answer :
		
		GuiControl, End_Gui: Text, end_gui_next_question_button, Next Question
		GuiControl, End_Gui: Text, end_gui_done_button, Done
		
	}
	else if settings_gui_language_ddl = Hrvatski ; change every name to croatian and resize controls if needed
	{

		GuiControl, Ponos_Domovine: Text, start_test_button, Zapoèni Test
		GuiControl, Ponos_Domovine: Text, settings_button, Postavke
		
		
		GuiControl, Ponos_Domovine: Text, answers_groupbox, Odgovori
		GuiControl, Ponos_Domovine: Text, next_question_button, Sljedeæe Pitanje
		
		GuiControl, Ponos_Domovine: Text, pause_button, Pauza
		GuiControl, Ponos_Domovine: Text, exit_button, Izlaz
		
		
		if WinExist("Ponos Domovine Settings") or WinExist("Ponos Domovine Postavke")
			Gui, Settings_Gui: Show, , Ponos Domovine Postavke
		
		else
			Gui, Settings_Gui: Show, Hide, Ponos Domovine Postavke
		
		GuiControl, Settings_Gui: Text, settings_gui_timer_text_front, Brojaè :
		GuiControl, Settings_Gui: Move, settings_gui_timer_text_front, w90
		
		GuiControl, Settings_Gui: Text, settings_gui_timer_ddl, |Odbrojavanje|Štoperica
		
		if (settings_gui_timer_ddl = "Countdown") or (settings_gui_timer_ddl = "Odbrojavanje")
			GuiControl, Settings_Gui: Choose, settings_gui_timer_ddl, 1
		else if (settings_gui_timer_ddl = "Stopwatch") or (settings_gui_timer_ddl = "Štoperica")
			GuiControl, Settings_Gui: Choose, settings_gui_timer_ddl, 2
		
		GuiControl, Settings_Gui: Text, settings_gui_chosen_number_of_questions_text_front, Broj pitanja :
		GuiControl, Settings_Gui: Move, settings_gui_chosen_number_of_questions_text_front, % "w"settings_gui_chosen_number_of_questions_text_front_w-110
		
		GuiControl, Settings_Gui: Move, settings_gui_chosen_number_of_questions_edit, % "x"settings_gui_chosen_number_of_questions_edit_x-110
		GuiControl, Settings_Gui: Move, settings_gui_chosen_number_of_questions_updown, % "x"settings_gui_chosen_number_of_questions_edit_x-47
		GuiControl, Settings_Gui: Move, settings_gui_chosen_number_of_questions_text_back, % "x"settings_gui_chosen_number_of_questions_text_back_x-110
		
		GuiControl, Settings_Gui: Text, settings_gui_language_text, Jezik :
		GuiControl, Settings_Gui: Move, settings_gui_language_text, % "w"settings_gui_language_text_w-60
		
		GuiControl, Settings_Gui: Move, settings_gui_language_ddl, % "x"settings_gui_language_ddl_x-60
		
		GuiControl, Settings_Gui: Text, settings_gui_save_and_exit_button, Spremi i Izaði
		GuiControl, Settings_Gui: Text, settings_gui_cancel_button, Poništi
		
		
		if WinExist("Ponos Domovine Paused") or WinExist("Ponos Domovine Pauzirano")
			Gui, Pause_Gui: Show, , Ponos Domovine Pauzirano
		
		else
			Gui, Pause_Gui: Show, Hide, Ponos Domovine Pauzirano
		
		GuiControl, Pause_Gui: Text, pause_gui_text, Test je pauziran. Prisitsnite Nastavi za nastavak.
		GuiControl, Pause_Gui: Text, pause_gui_continue_button, Nastavi
		
		
		if WinExist("Ponos Domovine Exit Test") or WinExist("Ponos Domovine Prekini Test")
			Gui, Exit_Gui: Show, , Ponos Domovine Prekini Test
		
		else
			Gui, Exit_Gui: Show, Hide, Ponos Domovine Prekini Test
		
		GuiControl, Exit_Gui: Text, exit_gui_text, Jeste li sigurni da želite zaustaviti test?
		GuiControl, Exit_Gui: Text, exit_gui_yes_button, Da
		GuiControl, Exit_Gui: Text, exit_gui_no_button, Ne
		
		
		if WinExist("Ponos Domovine Test Finished") or WinExist("Ponos Domovine Test Završen")
			Gui, End_Gui: Show, , Ponos Domovine Test Završen
		
		else
			Gui, End_Gui: Show, Hide, Ponos Domovine Test Završen
		
		GuiControl, End_Gui: Text, end_gui_correct_answers, Broj toènih odgovora :
		GuiControl, End_Gui: Text, end_gui_time, Vrijeme :

		GuiControl, End_Gui: Text, end_gui_wrong_answers, Netoèni odgovori na pitanja :
		
		GuiControl, End_Gui: Text, end_gui_correct_answer, Toèan odgovor :
		
		GuiControl, End_Gui: Text, end_gui_next_question_button, Sljedeæe Pitanje
		GuiControl, End_Gui: Text, end_gui_done_button, Završi
	}

}
return


;=====================================================================
;============================ Start Gui ==============================
;=====================================================================

ponos_startup_animation: ; start program animation
{	
	GuiControl, Ponos_Domovine: Hide, start_test_button ; to not show buttons
	GuiControl, Ponos_Domovine: Hide, settings_button ; to not show buttons
	
	gosub, middle_cords
	middle_x := - 2 ; so it starts to the left
	middle_y := middle_y - 20 ; 515
	
	Gui, Ponos_Domovine: Show, w%middle_w% h%middle_h% x%middle_x% y%middle_y%
	Gui, Ponos_Domovine: +MaximizeBox
	

	while gui_window_h > middle_h ; loop until reached desired height
		{
			middle_h := middle_h + 6
			middle_y := middle_y - 3
			Gui, Ponos_Domovine: Show, w%middle_w% h%middle_h% x%middle_x% y%middle_y%
		}

	while gui_window_w > middle_w
		{
			middle_w := middle_w + 24 ; good speed
			Gui, Ponos_Domovine: Show, w%middle_w% h%middle_h% x%middle_x% y%middle_y%	
		}

	Gui, Ponos_Domovine: Maximize

	GuiControl, Ponos_Domovine: Show, start_test_button
	GuiControl, Ponos_Domovine: Show, settings_button
}
return


ponos_settings_button: ; settings gui animation
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
			middle_h := middle_h + 4
			middle_y := middle_y - 2
			Gui, Settings_Gui: Show, w%middle_w% h%middle_h% x%middle_x% y%middle_y%
		}
		
		while settings_gui_w > middle_w ; loop until reached desired width
		{
			middle_w := middle_w + 6
			middle_x := middle_x - 3
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
			middle_w := middle_w - 6
			middle_x := middle_x + 3
			Gui, Settings_Gui: Show, w%middle_w% h%middle_h% x%middle_x% y%middle_y%
		}
		
		while middle_h > 0 ; loop until reached desired height
		{
			middle_h := middle_h - 4
			middle_y := middle_y + 2
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

ponos_timer: ; timer counter
{
	minutes_left := timer_time // 60
	seconds_left := mod(timer_time, 60)
	
	
	if (minutes_left = 1) and (seconds_left = 0) or (minutes_left = 5) and (seconds_left = 0) or (minutes_left = 15) and (seconds_left = 0)
		GuiControl, Ponos_Domovine: +cRed, countdown ; flashes timer red for warning
	
	else
		GuiControl, Ponos_Domovine: +cBlack, countdown ; timer color usually black
	
	if minutes_left between -1 and 9
		minutes_left := "0" . minutes_left
	
	if seconds_left between -1 and 9
		seconds_left := "0" . seconds_left
	
	GuiControl, Ponos_Domovine: Text, countdown, %minutes_left%:%seconds_left%
	
	if (settings_gui_timer_ddl = "Countdown") or (settings_gui_timer_ddl = "Odbrojavanje")
	{
		if timer_time = 0
			gosub, end_gui_finish_test
		
		timer_time := timer_time - 1
	}
	else if (settings_gui_timer_ddl = "Stopwatch") or (settings_gui_timer_ddl = "Štoperica")
	{
		timer_time := timer_time + 1
	}
	
}
return

ponos_minitimer: ; minitimer counter for extra precision
{
	timer_miliseconds := timer_miliseconds + 200
}
return

ponos_minitimer_sleep: ; minitimer sleep at continuation
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
	;MsgBox, Easter Egg
return


ponos_next_question: ; submits answer, add to wrong array if answer wrong, go make new question
{
	Gui, Ponos_Domovine: Submit, NoHide ; add values to variables
	
	
	
	user_answer := False
	
	if Question_Number between 0 and 501
	{
		if user_answer_a = 1 ; each button has to have a variable so i can change the answers
		{
			GuiControlGet, user_answer, Ponos_Domovine: , user_answer_a, Text ; gets the text from the chosen answer
			GuiControl, Ponos_Domovine: , user_answer_a, 0 ; removes the selected appearence from the chosen answer
		}
		else if user_answer_b = 1
		{
			GuiControlGet, user_answer, Ponos_Domovine: , user_answer_b, Text
			GuiControl, Ponos_Domovine: , user_answer_b, 0
		}
		else if user_answer_c = 1
		{
			GuiControlGet, user_answer, Ponos_Domovine: , user_answer_c, Text
			GuiControl, Ponos_Domovine: , user_answer_c, 0
		}
		else if user_answer_d = 1
		{
			GuiControlGet, user_answer, Ponos_Domovine: , user_answer_d, Text
			GuiControl, Ponos_Domovine: , user_answer_d, 0
		}
	}
	else if Question_Number between 501 and 520
	{
		if (user_answer_edit != "")
		{
			user_answer := user_answer_edit ; instead of GuiControlGet, user_answer, Ponos_Domovine: , user_answer_edit, Text
			GuiControl, Ponos_Domovine: Text, user_answer_edit, ; clears edit box
		}
		
	}
	else if Question_Number between 520 and 555
	{
		if double_answer_counter = 2
		{
			if double_user_answer_a = 1
			{
				user_answer := user_answer . double_user_answer_a_text
				
				GuiControl, Ponos_Domovine: , double_user_answer_a, 0 ; turn off the checkbox
			}
			else if double_user_answer_b = 1
			{
				user_answer := user_answer . double_user_answer_b_text
				
				GuiControl, Ponos_Domovine: , double_user_answer_b, 0
			}
			else if double_user_answer_c = 1
			{
				user_answer := user_answer . double_user_answer_c_text
				
				GuiControl, Ponos_Domovine: , double_user_answer_c, 0
			}
			else if double_user_answer_d = 1
			{
				user_answer := user_answer . double_user_answer_d_text
				
				GuiControl, Ponos_Domovine: , double_user_answer_d, 0
			}
			
			double_answer_counter := 0 ; counter for how many answers chosen
		}
		
	}
	
	
	if user_answer ; if answer picked
	{
		if user_answer != %Answer% ; if user choose wrong answer
			Wrong_Questions.Push(Question_Number)

		if Used_Questions_Array_Length != %chosen_number_of_questions% ; if not at last question
		{
			gosub, question_maker ; go make next question
			
			gosub, answer_display
		}
		else
			gosub, end_gui_finish_test ; else finish test
	}
	
}
return


ponos_pause_button: ; stops timer, show pause gui
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
			middle_h := middle_h + 2
			middle_y := middle_y - 1
			Gui, Pause_Gui: Show, w%middle_w% h%middle_h% x%middle_x% y%middle_y%
		}
		
		while pause_gui_w > middle_w ; loop until reached desired width
		{
			middle_w := middle_w + 4
			middle_x := middle_x - 2
			Gui, Pause_Gui: Show, w%middle_w% h%middle_h% x%middle_x% y%middle_y%	
		}
		
			
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
			middle_h := middle_h - 2
			middle_y := middle_y + 1
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


ponos_exit_button: ; stops timer, show exit gui
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
			middle_h := middle_h + 2
			middle_y := middle_y - 1
			Gui, Exit_Gui: Show, w%middle_w% h%middle_h% x%middle_x% y%middle_y%
		}
		
		while exit_gui_w > middle_w ; loop until reached desired width
		{
			middle_w := middle_w + 4
			middle_x := middle_x - 2
			Gui, Exit_Gui: Show, w%middle_w% h%middle_h% x%middle_x% y%middle_y%	
		}
		
			
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
			middle_h := middle_h - 2
			middle_y := middle_y + 1
			Gui, Exit_Gui: Show, w%middle_w% h%middle_h% x%middle_x% y%middle_y%
		}
		
		Gui, Exit_Gui: Hide
		
		
		
		gosub, ponos_enable_disable_controls
	}
	
}
return


answer_display:
{
	; hides all answer options so it shows only the needed ones, move inside later cause of unwanted flickering
	GuiControl, Ponos_Domovine: Hide, user_answer_a
	GuiControl, Ponos_Domovine: Hide, user_answer_b
	GuiControl, Ponos_Domovine: Hide, user_answer_c
	GuiControl, Ponos_Domovine: Hide, user_answer_d
	
	GuiControl, Ponos_Domovine: Hide, user_answer_edit
	
	
	if Question_Number between 0 and 452
	{
		; changes the text of viable answers
		GuiControl, Ponos_Domovine: Text, user_answer_a, %Answer_A%
		GuiControl, Ponos_Domovine: Text, user_answer_b, %Answer_B%
		GuiControl, Ponos_Domovine: Text, user_answer_c, %Answer_C%
		GuiControl, Ponos_Domovine: Text, user_answer_d, %Answer_D%
		
		answers_groupbox_h := A_ScreenHeight * 0.2778 ; 2 * 50 + 4 * 50 ; 300 ; abcd answers
		
		; shows viable answers
		GuiControl, Ponos_Domovine: Show, user_answer_a
		GuiControl, Ponos_Domovine: Show, user_answer_b
		GuiControl, Ponos_Domovine: Show, user_answer_c
		GuiControl, Ponos_Domovine: Show, user_answer_d
	}
	else if Question_Number between 452 and 501
	{
		; changes the text of viable answers
		GuiControl, Ponos_Domovine: Text, user_answer_a, %Answer_A%
		GuiControl, Ponos_Domovine: Text, user_answer_b, %Answer_B%
		
		answers_groupbox_h := A_ScreenHeight * 0.1667 ; 2 * 40 + 2 * 50 ; 180 ; t/n answers
		
		; shows viable answers
		GuiControl, Ponos_Domovine: Show, user_answer_a
		GuiControl, Ponos_Domovine: Show, user_answer_b
	}
	else if Question_Number between 501 and 555
	{
		answers_groupbox_h := A_ScreenHeight * 0.1111 ; 2 * 35 + 50 ; 120 ; edit answer
		
		GuiControl, Ponos_Domovine: Show, user_answer_edit ; shows viable answer
		
		GuiControl, Ponos_Domovine: Focus, user_answer_edit ; focuses the edit so user can immediately write answer
	}
	
	
	GuiControl, Ponos_Domovine: Move, answers_groupbox, h%answers_groupbox_h% ; change the height of the groupbox depending on answer option


}
return


double_answer_detector:
{
	double_answer_counter++

	if double_answer_counter > 2
	{
		if last_pressed_double_answer = "answer A"
		{
			user_answer := StrReplace(user_answer, double_user_answer_a_text)
			
			GuiControl, Ponos_Domovine: , double_user_answer_a, 0
		}
		else if last_pressed_double_answer = "answer B"
		{
			user_answer := StrReplace(user_answer, double_user_answer_b_text)
			
			GuiControl, Ponos_Domovine: , double_user_answer_b, 0
		}	
		else if last_pressed_double_answer = "answer C"
		{
			user_answer := StrReplace(user_answer, double_user_answer_c_text)
			
			GuiControl, Ponos_Domovine: , double_user_answer_c, 0
		}
		else if last_pressed_double_answer = "answer D"
		{
			user_answer := StrReplace(user_answer, double_user_answer_d_text)
			
			GuiControl, Ponos_Domovine: , double_user_answer_d, 0
		}
		
		double_answer_counter := 2
	}
	
}
return


double_user_answer_a:
{
	Gui, Ponos_Domovine: Submit, NoHide
	
	if double_user_answer_a = 1
	{
		GuiControlGet, double_user_answer_a_text, Ponos_Domovine: , double_user_answer_a, Text ; get the text from the control for use in final answer
		
		gosub, double_answer_detector
		
		last_pressed_double_answer := "answer A"
	}
	
}
return

double_user_answer_b:
{
	Gui, Ponos_Domovine: Submit, NoHide
	
	if double_user_answer_b = 1
	{
		GuiControlGet, double_user_answer_b_text, Ponos_Domovine: , double_user_answer_b, Text ; get the text from the control for use in final answer
		
		gosub, double_answer_detector
		
		last_pressed_double_answer := "answer B"
	}
	
}
return

double_user_answer_c:
{
	Gui, Ponos_Domovine: Submit, NoHide
	
	if double_user_answer_c = 1
	{
		GuiControlGet, double_user_answer_c_text, Ponos_Domovine: , double_user_answer_c, Text ; get the text from the control for use in final answer
		
		gosub, double_answer_detector
		
		last_pressed_double_answer := "answer C"
	}
	
}
return

double_user_answer_d:
{
	Gui, Ponos_Domovine: Submit, NoHide
	
	if double_user_answer_d = 1
	{
		GuiControlGet, double_user_answer_d_text, Ponos_Domovine: , double_user_answer_d, Text ; get the text from the control for use in final answer
		
		gosub, double_answer_detector
		
		last_pressed_double_answer := "answer D"
	}
	
}
return


;=====================================================================
;============================ Exit Gui ===============================
;=====================================================================

exit_gui_stop_test: ; if do stop test option chosen, hide exit gui, show start screen
{	
	stop_test := True ; so the timer doesnt change
	gosub, ponos_exit_button
	
	if stop_test ; if not chosen stop test yes button
	{
		GuiControl, Ponos_Domovine: , user_answer_a, 0 ; remove picked answer appearence
		GuiControl, Ponos_Domovine: , user_answer_b, 0
		GuiControl, Ponos_Domovine: , user_answer_c, 0
		GuiControl, Ponos_Domovine: , user_answer_d, 0
		
		GuiControl, Ponos_Domovine: Text, user_answer_edit, ; clears edit box
		
		GuiControl, Ponos_Domovine: , double_user_answer_a, 0 ; remove picked answer appearence
		GuiControl, Ponos_Domovine: , double_user_answer_b, 0
		GuiControl, Ponos_Domovine: , double_user_answer_c, 0
		GuiControl, Ponos_Domovine: , double_user_answer_d, 0
		
		
		gosub, ponos_start_screen_toggle ; show start screen
	}
	else
	{
		gosub, ponos_minitimer_sleep
		SetTimer, ponos_minitimer, 200
	
		SetTimer, ponos_timer, on
	}
		
}
return


;=====================================================================
;========================== Settings Gui =============================
;=====================================================================


settings_gui_old_settings: ; get old settings for cancel button
{
	old_settings_gui_timer_ddl := settings_gui_timer_ddl

	if (old_settings_gui_timer_ddl = "Countdown") or (old_settings_gui_timer_ddl = "Odbrojavanje")
		old_timer_time := settings_gui_timer_edit

	old_chosen_number_of_questions := chosen_number_of_questions


	old_settings_gui_language_ddl := settings_gui_language_ddl
}
return


settings_gui_update_settings: ; update settings gui real time (timer option etc.)
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


	if settings_gui_timer_edit > 60 ; if mins over 60, make it 60 (max)
		GuiControl, Settings_Gui: Text, settings_gui_timer_edit, 60
		
	
	if settings_gui_chosen_number_of_questions_edit > %number_of_questions% ; if questions edit more then 519, set to 519 (max)
		GuiControl, Settings_Gui: Text, settings_gui_chosen_number_of_questions_edit, %number_of_questions%
}
return


settings_gui_save_settings: ; confirm new settings
{
	Gui, Settings_Gui: Submit, NoHide



	if (settings_gui_timer_edit = "") or (settings_gui_timer_edit = 0) ; if time is left blank or 0, set it to default
		
		GuiControl, Settings_Gui: , settings_gui_timer_edit, %default_timer_time%


	if (settings_gui_chosen_number_of_questions_edit = "") or (settings_gui_chosen_number_of_questions_edit = 0) ; if number of questions is left blank or 0, set it to default
		
		GuiControl, Settings_Gui: , settings_gui_chosen_number_of_questions_edit, %default_number_of_questions%


	gosub, apply_settings ; apply settings to test



	gosub, ponos_settings_button ; close settings gui
}
return


settings_gui_cancel_button: ; discard changes; set settings to old ones
{
	if (old_settings_gui_timer_ddl = "Countdown") or (old_settings_gui_timer_ddl = "Odbrojavanje") ; timer ddl and/not timer edit
	{
		GuiControl, Settings_Gui: Choose, settings_gui_timer_ddl, 1
		GuiControl, Settings_Gui: , settings_gui_timer_edit, %old_timer_time%
	}
	else if (old_settings_gui_timer_ddl = "Stopwatch") or (old_settings_gui_timer_ddl = "Štoperica")
		GuiControl, Settings_Gui: Choose, settings_gui_timer_ddl, 2
	
	
	GuiControl, Settings_Gui: , settings_gui_chosen_number_of_questions_edit, %old_chosen_number_of_questions% ; number of questions


	if old_settings_gui_language_ddl = English ; language ddl
		GuiControl, Settings_Gui: Choose, settings_gui_language_ddl, 1
	
	else if old_settings_gui_language_ddl = Hrvatski
		GuiControl, Settings_Gui: Choose, settings_gui_language_ddl, 2
	

	gosub, apply_settings ; apply settings to program

	gosub, ponos_settings_button ; close settings gui
}
return


;=====================================================================
;========================= Transition Gui ============================
;=====================================================================

transition_screen: ; completly darkens and undarkens the screen for control transtion
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


semi_transition_screen: ; darkens and undarkens the screen for extra gui
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

end_gui_finish_test: ; stops timer, shows correct answer number and time, shows/hides end gui
{
	end_gui := !end_gui ; on/off end gui

	gosub, semi_transition_screen
	

	if end_gui
	{
		SetTimer, ponos_minitimer, Off
		SetTimer, ponos_timer, Off
		
		if Used_Questions_Array_Length = %chosen_number_of_questions% ; if all questions passed (time limit not reached)
			correctly_answered_questions := chosen_number_of_questions - Wrong_Questions.Length() ; show exact number
		
		else if Used_Questions_Array_Length != %chosen_number_of_questions%
			correctly_answered_questions := Used_Questions.Length() - Wrong_Questions.Length() - 1 ; show 1 lower as the last question answer is not picked
		
		GuiControlGet, end_gui_correct_answers_text, End_Gui: , end_gui_correct_answers ; get control text so it displays right language
		
		GuiControl, End_Gui: Text, end_gui_correct_answers,  %end_gui_correct_answers_text% %correctly_answered_questions% / %chosen_number_of_questions%
		
		
		
		if (settings_gui_timer_ddl = "Countdown") or (settings_gui_timer_ddl = "Odbrojavanje")
		{
			if timer_time != 0 ; if timer not 0 show 1 lower value of time
				end_time := settings_gui_timer_edit * 60 - timer_time - 1
			
			else
				end_time := settings_gui_timer_edit * 60 - timer_time
			
			
			minutes_left := end_time // 60
			seconds_left := mod(end_time, 60)

			if minutes_left = 0 ; if 0 minutes left
				time_left := "000000000000" . seconds_left

			else if minutes_left between 0 and 9  ; if 1 to 9 minutes left
				time_left := "00000000000" . minutes_left . seconds_left

			else if minutes_left >= 10 ; if 10 + minutes left
				time_left := "0000000000" . minutes_left . seconds_left
			
			FormatTime, mmss, %time_left%, mm:ss ; display time text
		}
		
		end_time := mmss
		
		GuiControlGet, end_gui_time_text, End_Gui: , end_gui_time ; get control text so it displays right language
		GuiControl, End_Gui: Text, end_gui_time, %end_gui_time_text% %end_time%
		
		
		
		if Wrong_Questions.Length() != 0 ; if not all question answered correctly
		{
			gosub, end_gui_next_question_button ; change the values of question_num, question and correct answer
			
			settings_gui_enable_disable_wrong_question := "Enable"
		}
		else if Wrong_Questions.Length() = 0 ; if all question answered correctly
		{			
			GuiControl, End_Gui: Text, end_gui_wrong_answers_num, 0 / 0 ; display nothing
			
			GuiControl, End_Gui: Text, end_gui_question, ; display nothing
			
			GuiControl, End_Gui: Text, end_gui_correct_answer_answer, ; display nothing
			
			
			settings_gui_enable_disable_wrong_question := "Disable"
		}
		
		gosub, end_gui_enable_disable_wrong_questions ; if all questions answered correctly, disable wrong questions section
		
		
		
		gosub, ponos_enable_disable_controls ; disable test controls
		
		
		gosub, middle_cords ; start animation from middle
		
		Gui, End_Gui: Show, w%middle_w% h%middle_h% x%middle_x% y%middle_y%
		
		while end_gui_h > middle_h ; loop until reached desired height
		{
			middle_h := middle_h + 8
			middle_y := middle_y - 4
			Gui, End_Gui: Show, w%middle_w% h%middle_h% x%middle_x% y%middle_y%
		}
		
		while end_gui_w > middle_w ; loop until reached desired width
		{
			middle_w := middle_w + 6
			middle_x := middle_x - 3
			Gui, End_Gui: Show, w%middle_w% h%middle_h% x%middle_x% y%middle_y%	
		}
		
		
		gosub, extra_gui_addition_toggle ; show end gui controls
		
		if (Wrong_Questions.Length() = 0) and (Used_Questions.Length() = chosen_number_of_questions) ; if all question answered/correctly
			GuiControl, End_Gui: Show, end_gui_correct_icon ; show correct icon
			
		else ; if not all question answered/correctly
			GuiControl, End_Gui: Show, end_gui_wrong_icon ; show wrong icon
		
	}
		
	else
	{
		gosub, extra_gui_addition_toggle ; hide end gui controls
		
		
		while middle_w > 0 ; loop until reached desired width
		{
			middle_w := middle_w - 8
			middle_x := middle_x + 4
			Gui, End_Gui: Show, w%middle_w% h%middle_h% x%middle_x% y%middle_y%	
		}
		
		while middle_h > 0 ; loop until reached desired height
		{
			middle_h := middle_h - 6
			middle_y := middle_y + 3
			Gui, End_Gui: Show, w%middle_w% h%middle_h% x%middle_x% y%middle_y%
		}
		
		Gui, End_Gui: Hide
		
		
		gosub, ponos_enable_disable_controls ; disable test controls
		
		gosub, ponos_start_screen_toggle ; show start screen
	}
	
}
return


end_gui_next_question_button: ; display next wrongly answered question, answer etc.
{
	end_gui_question_number++ ; counts which question is displayed
	wrong_questions_array_lenght := Wrong_Questions.Length() ; takes array lenght for display

	if end_gui_question_number > %wrong_questions_array_lenght% ; wrap the questions
		end_gui_question_number := 1

	GuiControl, End_Gui: Text, end_gui_wrong_answers_num, %end_gui_question_number% / %wrong_questions_array_lenght% ; display question number


	Question_Number := Wrong_Questions[end_gui_question_number] ; takes from array question number

	gosub, question_texter ; get question and correct answer

	GuiControl, End_Gui: Text, end_gui_question, %Question% ; display question

	GuiControl, End_Gui: Text, end_gui_correct_answer_answer, %Answer% ; display answer
}
return


end_gui_enable_disable_wrong_questions: ; disable wrong questions in end gui if none
{
		GuiControl, End_Gui: %settings_gui_enable_disable_wrong_question%, end_gui_wrong_answers
		GuiControl, End_Gui: %settings_gui_enable_disable_wrong_question%, end_gui_wrong_answers_num
		
		GuiControl, End_Gui: %settings_gui_enable_disable_wrong_question%, end_gui_question
		
		GuiControl, End_Gui: %settings_gui_enable_disable_wrong_question%, end_gui_correct_answer
		GuiControl, End_Gui: %settings_gui_enable_disable_wrong_question%, end_gui_correct_answer_answer
		
		GuiControl, End_Gui: %settings_gui_enable_disable_wrong_question%, end_gui_next_question_button
}
return



;=====================================================================
;====================== Resolution Settings ==========================
;=====================================================================

resolution_check:
{
	if (A_ScreenWidth != 1920) and (A_ScreenHeight != 1080)
	{		
		;====================== Left Groupbox & Pic ==========================
		
		GuiControl, Ponos_Domovine: Move, left_groupbox, w0 h0 x0 y0 ; remove left groupbox
		
		
		GuiControl, Ponos_Domovine: , hrv_grb_pic, *w1 *h1 *x0 *y0 %A_ScriptDir%\Pictures\\HrvatskiGrb.png ; remove grb pic
		
		
		
		;======================= Controls Distance ===========================
		
		new_distance_between_groupboxes := 20 ; halfed for smaller screen
		
		new_distance_to_border := 35 ; halfed for smaller screen
		
		
		;======================== Middle Groupbox ============================
		
		middle_groupbox_new_w := A_ScreenWidth - new_distance_to_border * 2 - new_distance_between_groupboxes - timer_w - 2 * 25 ; use as much as possible
		middle_groupbox_new_h := A_ScreenHeight - 2 * new_distance_to_border - new_distance_between_groupboxes - 40 - 20 ; 618, 750
		middle_groupbox_new_x := new_distance_to_border ; 35
		middle_groupbox_new_y := new_distance_to_border ; 35
		
		GuiControl, Ponos_Domovine: Move, middle_groupbox, w%middle_groupbox_new_w% h%middle_groupbox_new_h% x%middle_groupbox_new_x% y%middle_groupbox_new_y% ; move and resize middle gruopbox
		
		
		question_text_new_w := middle_groupbox_new_w - 2 * 40 ; 889, 1080
		question_text_new_h := middle_groupbox_new_h - 2 * 40 - answers_groupbox_h - 20 ; ans = 213 305, ans = 250 400
		question_text_new_x := middle_groupbox_new_x + 40
		
		GuiControl, Ponos_Domovine: Move, question_text, w%question_text_new_w% h%question_text_new_h% x%question_text_new_x% ; move and resize question text
		
		Gui, Ponos_Domovine: Font, % "s" . question_text_new_h * 0.0459016 ; 14
		GuiControl, Ponos_Domovine: Font, question_text
		
		
		next_question_button_new_x := new_distance_to_border + middle_groupbox_new_w - 40 - next_question_button_w
		next_question_button_new_y := middle_groupbox_y + middle_groupbox_new_h - 40 - next_question_button_h
		
		GuiControl, Ponos_Domovine: Move, next_question_button, x%next_question_button_new_x% y%next_question_button_new_y% ; move and resize next question button
		
		
		;======================= Answers Groupbox ============================
		
		answers_groupbox_new_x := middle_groupbox_new_x + 40
		answers_groupbox_new_y := middle_groupbox_y + middle_groupbox_new_h - 40 - answers_groupbox_h
		
		GuiControl, Ponos_Domovine: Move, answers_groupbox, x%answers_groupbox_new_x% y%answers_groupbox_new_y%
		
		
		answer_abcd_new_x := answers_groupbox_new_x + 25
		
		
		answer_a_new_y := answers_groupbox_new_y + 2 * distance_between_answers
		
		GuiControl, Ponos_Domovine: Move, user_answer_a, x%answer_abcd_new_x% y%answer_a_new_y%
		
		GuiControl, Ponos_Domovine: Move, user_answer_edit, x%answer_abcd_new_x% y%answer_a_new_y%
		
		
		answer_b_new_y := answer_a_new_y + answer_abcd_h + distance_between_answers
		
		GuiControl, Ponos_Domovine: Move, user_answer_b, x%answer_abcd_new_x% y%answer_b_new_y%
		
		
		answer_c_new_y := answer_b_new_y + answer_abcd_h + distance_between_answers
		
		GuiControl, Ponos_Domovine: Move, user_answer_c, x%answer_abcd_new_x% y%answer_c_new_y%
		
		
		answer_d_new_y := answer_c_new_y + answer_abcd_h + distance_between_answers
		
		GuiControl, Ponos_Domovine: Move, user_answer_d, x%answer_abcd_new_x% y%answer_d_new_y%
		
		
		;================= Bottom Groupbox & Progress Bar ====================
		
		bottom_groupbox_new_w := middle_groupbox_new_w
		bottom_groupbox_new_y := middle_groupbox_new_y + middle_groupbox_new_h + new_distance_between_groupboxes - 20
		
		GuiControl, Ponos_Domovine: Move, bottom_groupbox, w%bottom_groupbox_new_w% h18 x%new_distance_to_border% y%bottom_groupbox_new_y% ; decrease groupbox to 1 pixel just to fit number
		
		
		GuiControl, Ponos_Domovine: Move, question_bar, w0 h0 x0 y0 ; remove question progress bar
		
		
		;========================= Right Groupbox ============================
		
		right_groupbox_new_w := A_ScreenWidth - new_distance_to_border * 2 - new_distance_between_groupboxes - middle_groupbox_new_w
		right_groupbox_new_h := A_ScreenHeight - new_distance_to_border * 2 - 40 - 20
		right_groupbox_new_x := A_ScreenWidth - new_distance_to_border - right_groupbox_new_w
		right_groupbox_new_y := new_distance_to_border
		
		GuiControl, Ponos_Domovine: Move, right_groupbox, w%right_groupbox_new_w% h%right_groupbox_new_h% x%right_groupbox_new_x% y%right_groupbox_new_y% ; stretch to fit
		
		
		;============================= Timer =================================
		
		timer_new_x := right_groupbox_new_x + 25
		
		GuiControl, Ponos_Domovine: Move, countdown, x%timer_new_x% ; stretch to fit
		
		
		;========================== Pause Button =============================
		
		pause_button_new_w := right_groupbox_new_w - 2 * 50
		pause_button_new_x := right_groupbox_new_x + 50
		
		GuiControl, Ponos_Domovine: Move, pause_button, w%pause_button_new_w% x%pause_button_new_x% ; stretch to fit
		
		
		;========================== Exit Button ==============================
		
		exit_button_new_w := right_groupbox_new_w - 2 * 50
		exit_button_new_x := right_groupbox_new_x + 50
		
		GuiControl, Ponos_Domovine: Move, exit_button, w%exit_button_new_w% x%exit_button_new_x% ; stretch to fit
		
	}
	
}
return



Ponos_DomovineGuiClose:
ExitApp
return


; remove when done = reload
{ 
F9::
Reload
return
}



