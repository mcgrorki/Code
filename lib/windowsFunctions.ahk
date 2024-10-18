#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.

; FOLDERS
!d:: 
run shell:downloads
return

!+d::
run C:\Users\kiern\K's World\K's Documents
return

!^d::
run C:\Users\kiern\OneDrive\K's Cloud
return

!^+s::
run C:\Users\kiern\K's World\K's Documents\admin\Screenshots
return


; SETTINGS
; Open Bluetooth Settings
#b::
run, ms-settings:bluetooth
return

; Open Sound Settings
#a::
Run, mmsys.cpl
return

#m::
run ms-settings:display
return


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



