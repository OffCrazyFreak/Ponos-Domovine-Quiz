
SetTitleMatchMode, 2



!u:: ; automatic counter

counter := 452

loop, 42 ; number of new question
{
	
	counter++
	
	sleep, 300
	Send %counter%
	
	sleep, 300
	SendInput, {Ctrl down}
	
	loop, 29
		SendInput, {Right}
	
	sleep, 300
	SendInput, {Ctrl up}
}


return



!i:: ; manual counter

counter++
	
Send % counter ; set to first counter place

return



!o:: ; text copier

loop, 10
{
	;counter := counter + 1
	
	WinActivate, ponos domovine 18 (2).docx [Naèin kompatibilnosti] - Word
	WinWaitActive, ponos domovine 18 (2).docx [Naèin kompatibilnosti] - Word
	
	; copy question
	SendInput, {Ctrl down} {Down} {Down} {Down} {Shift down} {Down}
	Sleep, 200
	SendInput, {Shift up}
	sleep, 300
	SendInput, c
	
	sleep, 500
	WinActivate, Ponos Question Text Input.ahk
	; start at beggining of else if
	WinWaitActive, Ponos Question Text Input.ahk
	
	SendInput, {Right} {Right} {Right} {Right} ; set question number
	;sleep, 200
	
	;Send % counter
	
	sleep, 100
	
	SendInput, {Right} {Right} {Right} {Right} {Right} v ; paste question
	
	sleep, 100
	
	WinActivate, ponos domovine 18 (2).docx [Naèin kompatibilnosti] - Word
	WinWaitActive, ponos domovine 18 (2).docx [Naèin kompatibilnosti] - Word
	
	SendInput, {Down} {Shift down} {Down}
	Sleep, 200
	SendInput, {Shift up}
	sleep, 100
	SendInput, c
	
	
	WinActivate, Ponos Question Text Input.ahk
	WinWaitActive, Ponos Question Text Input.ahk
	
	SendInput, {Right} {Right} {Right} {Right} v ; paste answer a
	
	
	
	loop, 3
	{
		WinActivate, ponos domovine 18 (2).docx [Naèin kompatibilnosti] - Word
		WinWaitActive, ponos domovine 18 (2).docx [Naèin kompatibilnosti] - Word
		
		SendInput, {Down} {Shift down} {Down}
		Sleep, 200
		SendInput, {Shift up}
		sleep, 100
		SendInput, c
		
		
		WinActivate, Ponos Question Text Input.ahk
		WinWaitActive, Ponos Question Text Input.ahk
		
		SendInput, {Right} {Right} {Right} v ; paste answer b, c, d
		
		sleep, 100
	}
	
	SendInput, {Right} {Right} {Right} {Right} {Right} {Right} {Right} {Ctrl up} ; go to next else if (skip correct answer)
	
	sleep, 100
	
	
}

return



!p:: ; automatic T/N input

loop, 42 ; number of new question
{
	sleep, 50
	SendInput, {Ctrl down}
	
	loop, 14
		SendInput, {Right}

	sleep, 50
	SendInput, {Ctrl up}
	
	
	sleep, 30
	Send, T
	
	
	sleep, 50
	SendInput, {Ctrl down}
	
	loop, 3
		SendInput, {Right}
	
	sleep, 50
	SendInput, {Ctrl up}
	
	
	sleep, 30
	Send, N
	
	
	sleep, 50
	SendInput, {Ctrl down}
	
	loop, 13
		SendInput, {Right}
	
	sleep, 50
	SendInput, {Ctrl up}
	
}

return

f4:: Reload





