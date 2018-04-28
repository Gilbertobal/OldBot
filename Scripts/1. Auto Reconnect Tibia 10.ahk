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

IniRead, AccountNameReconnectTibia10, settings.ini, settings, AccountNameReconnectTibia10
IniRead, PasswordReconnectTibia10, settings.ini, settings, PasswordReconnectTibia10
IniRead, TimesToPressDownTibia10, settings.ini, settings, TimesToPressDownTibia10

Loop
{
    Sleep, 1000
    WinWaitActive, ahk_class TibiaClient
    CoordMode Pixel
    IfNotExist, Images\EnterGameButtonTibia10.png
    MsgBox, EnterGameButtonTibia10.png doesn't exist
    ImageSearch, FoundX, FoundY, 0, 0, A_ScreenWidth, A_ScreenHeight, Images\EnterGameButtonTibia10.png
    if ErrorLevel = 0
        {
        WinWaitActive, ahk_class TibiaClient
        Send, {ESC}{ESC}
        Sleep, 100
        FoundX := FoundX +42
        FoundY := FoundY +15
        Sleep, 50
        MouseClick, Left, %FoundX%, %FoundY%
        Sleep, 150
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
        Random, R, 2500, 2700
        Sleep, R
        IniRead, TimesToPressDownTibia10, settings.ini, settings, TimesToPressDownTibia10
        TimesToPressDownTibia10 := TimesToPressDownTibia10 - 1
        Send, {DOWN %TimesToPressDownTibia10%}
        Random, R, 75, 150
        Sleep, R
        Send, {ENTER}
        Random, R, 3600, 4100
        Sleep, R
        }
}
Return