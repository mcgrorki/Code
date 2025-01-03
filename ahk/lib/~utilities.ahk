#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.

RWin::_
RAlt::Esc

PgUp::
send ^{Left}
return 

PgDn::
send ^{Right}
return

`; & l::
send _______________________________
return

f5::
Hotkey f2,, Off
send {f2}
Hotkey f2,, On
return


; Play Button
+^w::Media_Play_Pause

#IfWinActive, ahk_exe spotify.exe
	^w::
	WinClose
	return
#IfWinActive

; Onenote SideScroll
#IfWinActive, ahk_exe ApplicationFrameHost.exe
	+WheelDown::
		send {WheelRight}
		sleep 50
	return
	;________________________
	+WheelUp::
		send {WheelLeft}
		sleep 50
	return
#IfWinActive

#IfWinActive, ahk_exe vivaldi.exe
^Enter::
send {.}com{Enter}
return
#IfWinActive