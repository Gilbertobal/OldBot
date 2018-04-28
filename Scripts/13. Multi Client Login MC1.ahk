#SingleInstance, Force
#NoTrayIcon
#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
#MaxHotkeysPerInterval 99000000
#HotkeyInterval 99000000
#KeyHistory 0
ListLines Off
SetBatchLines, -1
SetKeyDelay, -1, -1
SetMouseDelay, -1
SetDefaultMouseSpeed, 0
SetWinDelay, -1
SetControlDelay, -1
SendMode Input

IniRead, AccountNameMC1, settings.ini, settings, AccountNameMC1
IniRead, PasswordMC1, settings.ini, settings, PasswordMC1
IniRead, TimesToPressDownMC1, settings.ini, settings, TimesToPressDownMC1
IniRead, Tibia10Directory, settings.ini, settings, Tibia10Directory

    Process, Exist, ahk_exe 1. Auto Reconnect Tibia 10.exe
        IF !errorlevel=0
        {
        }
    else
        {
        Msgbox, Auto Reconnect is active and will be closed to run Multi Client Login.
        Process, Close, 1. Auto Reconnect Tibia 10.exe
        }
    Run, "%Tibia10Directory%",, Max
    Sleep, 2000
    WinWaitActive, ahk_class TibiaClient
    CoordMode Pixel
    IfNotExist, Images\EnterGameButton.png
    MsgBox, EnterGameButton.png doesn't exist
    ImageSearch, FoundX, FoundY, 0, 0, A_ScreenWidth, A_ScreenHeight, Images\EnterGameButton.png
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
        Send, %AccountNameMC1%
        Random, R, 150, 250
        Sleep, R
        Send, {TAB}
        Random, R, 50, 100
        Sleep, R
        Send, %PasswordMC1%
        Random, R, 150, 250
        Sleep, R
        Send, {ENTER}
        Random, R, 2500, 2700
        Sleep, R
        TimesToPressDownMC1 := TimesToPressDownMC1 - 1
        Send, {DOWN %TimesToPressDownMC1%}
        Random, R, 75, 150
        Sleep, R
        Send, {ENTER}
        Random, R, 3600, 4100
        Sleep, R
        }

Return