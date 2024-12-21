#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.

; MouseMove
Capslock & Home:: MouseMove A_ScreenWidth/2, A_ScreenHeight/2
Capslock & Up::MouseMove, 0, (15 * -1), 0, R
Capslock & Down::MouseMove, 0, 15, 0, R
Capslock & Left::MouseMove, (15 * -1), 0, 0, R
Capslock & Right::MouseMove, 15, 0, 0, R
Capslock & .::click left
Capslock & /::click right