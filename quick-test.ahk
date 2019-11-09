#SingleInstance, Force
#KeyHistory, 0
SetBatchLines, -1
ListLines, Off
SendMode Input ; Forces Send and SendRaw to use SendInput buffering for speed.
SetTitleMatchMode, 3 ; A window's title must exactly match WinTitle to be a match.
SetWorkingDir, %A_ScriptDir%
SplitPath, A_ScriptName, , , , thisscriptname
#MaxThreadsPerHotkey, 1 ; no re-entrant hotkey handling
; DetectHiddenWindows, On
; SetWinDelay, -1 ; Remove short delay done automatically after every windowing command except IfWinActive and IfWinExist
; SetKeyDelay, -1, -1 ; Remove short delay done automatically after every keystroke sent by Send or ControlSend
; SetMouseDelay, -1 ; Remove short delay done automatically after Click and MouseMove/Click/Drag

detectHiddenWindows, on

If (WinExist("Roblox"))
{
    WinActivate
    WinGet, programid, ID, ROBLOX
}
Else
{
    MsgBox, Robolx not found
    Return
}

ControlSend, , {/}, Roblox ; open chat bot
Sleep 2000  ; wait
Send {Click, 300, 400} ; click away from the chat box
Send {1}  ; use item 1 of the hot bar


Return
