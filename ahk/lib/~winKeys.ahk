#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.


#1::
SendInput #^{1}
return

#2::
SendInput #^{2}
return

#m::
WinMinimize, A
return

#^m::
WinMinimizeAll
return

#+m::
WinMinimizeAllUndo
return

#n::
openProgram("ApplicationFrameHost.exe","C:\Program Files\WindowsApps\Microsoft.Office.OneNote_16001.14326.22094.0_x64__8wekyb3d8bbwe\onenoteim.exe")
return

#t::
openProgram("WindowsTerminal.exe","C:\Program Files\WindowsApps\Microsoft.WindowsTerminal_1.21.3231.0_x64__8wekyb3d8bbwe\WindowsTerminal.exe")
return

#g::
openProgram("msedge.exe","C:\ProgramData\Microsoft\Windows\Start Menu\Programs\Microsoft Edge.lnk")
return


#+v::
SendInput #v
return

#v::
SendInput #{4}
return

; SETTINGS
; Open Bluetooth Settings
#b::
run, ms-settings:bluetooth
return

; Open Sound Settings
#s::
Run, mmsys.cpl
return

#a::
run ms-settings:display
return



openProgram(A, path) {
    IfWinExist, ahk_exe %A%
    {
        WinActivate 
    }
    else
    {
        Run, %path%
    }
    return
}




#q::
    WinGet, ActiveWindowID, ID, A  ; Get the active window's ID
    WinGet, ActiveProcessName, ProcessName, ahk_id %ActiveWindowID%  ; Get the process name of the active window
    ; Get the list of all windows belonging to the same process
    WinGet, WindowList, List, ahk_exe %ActiveProcessName%
    
    ; Loop through each window and close it
    Loop, %WindowList%
    {
        this_window := WindowList%A_Index%
        ; Close each window using Alt+F4 (focuses each window and SendInputs the keystroke)
        WinActivate, ahk_id %this_window%
        SendInput, !{F4}
        ; Optional: Add a small delay to avoid issues with rapid window switching
        Sleep, 50
    }
return


