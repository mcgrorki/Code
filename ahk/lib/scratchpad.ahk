; #NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; ; #Warn  ; Enable warnings to assist with detecting common errors.
; SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
; SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.





; getActiveMonitorDimensions() {
;     WinGet, hWnd, ID, A  ; Get the handle of the active window
;     WinGetPos, WinX, WinY, WinWidth, WinHeight, % "ahk_id " hWnd  ; Get the position and size of the active window
;     SysGet, MonitorCount, MonitorCount  ; Get the number of monitors

;     Loop, %MonitorCount% {  ; Loop through each monitor
;         SysGet, Monitor, Monitor, %A_Index%  ; Get the dimensions of the current monitor
;         MonitorLeft := MonitorLeft
;         MonitorRight := MonitorRight
;         MonitorTop := MonitorTop
;         MonitorBottom := MonitorBottom

;         ; Check if the active window is within the current monitor's boundaries
;         if (WinX >= MonitorLeft && WinX <= MonitorRight && WinY >= MonitorTop && WinY <= MonitorBottom) {
;             width := MonitorRight - MonitorLeft
;             height := MonitorBottom - MonitorTop
;             return {left: MonitorLeft, top: MonitorTop, right: MonitorRight, bottom: MonitorBottom, width: width, height: height, monNum: A_Index, monCount: MonitorCount}
;         }
;     }
;     return
; }

; f1::
; SysGet, Monitor, Monitor, %A_Index%
; msgbox %Monitor%
; return