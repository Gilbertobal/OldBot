#SingleInstance, Force
#NoTrayIcon
#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
#MaxHotkeysPerInterval 99000000
#HotkeyInterval 99000000
#KeyHistory 0
ListLines Off
SetKeyDelay, -1, -1
SetMouseDelay, -1
SetDefaultMouseSpeed, 0
SetWinDelay, -1
SetControlDelay, -1
SendMode Input
Process, Priority, %PID%, Low


^Insert::
    {
    Gui, Submit, NoHide
    IniRead, AccountNameReconnectTibia10, settings.ini, settings, AccountNameReconnectTibia10
    IniRead, PasswordReconnectTibia10, settings.ini, settings, PasswordReconnectTibia10
    IniRead, TimesToPressDownTibia10, settings.ini, settings, TimesToPressDownTibia10
    #IfWinActive, ahk_class TibiaClient
    Send, %AccountNameReconnectTibia10%
    Random, R, 150, 250
    Sleep, R
    Send, {TAB}
    Random, R, 50, 100
    Sleep, R
    Send, %PasswordReconnectTibia10%
    Random, R, 150, 250
    Sleep, R
    Send, {ENTER}
    Sleep, 1500
    TimesToPressDownTibia10 := TimesToPressDownTibia10 - 1
    Send, {DOWN %TimesToPressDownTibia10%}
    Random, R, 300, 400
    Sleep, R
    Send, {ENTER}
    Return
    }
Return