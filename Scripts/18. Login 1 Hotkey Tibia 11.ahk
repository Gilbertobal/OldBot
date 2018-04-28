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
    IniRead, AccountNameReconnectTibia11, settings.ini, settings, AccountNameReconnectTibia11
    IniRead, PasswordReconnectTibia11, settings.ini, settings, PasswordReconnectTibia11
    IniRead, TimesToPressDownTibia11, settings.ini, settings, TimesToPressDownTibia11
    #IfWinActive, ahk_class Qt5QWindowOwnDCIcon
    Send, %AccountNameReconnectTibia11%
    Random, R, 150, 250
    Sleep, R
    Send, {TAB}
    Random, R, 50, 100
    Sleep, R
    Send, %PasswordReconnectTibia11%
    Random, R, 150, 250
    Sleep, R
    Send, {ENTER}
    Sleep, 1500
    TimesToPressDownTibia11 := TimesToPressDownTibia11 - 1
    Send, {DOWN %TimesToPressDownTibia11%}
    Random, R, 300, 400
    Sleep, R
    Send, {ENTER}
    Return
    }
Return