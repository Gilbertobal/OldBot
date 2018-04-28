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

IniRead, AccountNameReconnectTibia11, settings.ini, settings, AccountNameReconnectTibia11
IniRead, PasswordReconnectTibia11, settings.ini, settings, PasswordReconnectTibia11
IniRead, TimesToPressDownTibia11, settings.ini, settings, TimesToPressDownTibia11

Loop
{
    Sleep, 1000
    WinWaitActive, ahk_class Qt5QWindowOwnDCIcon
    CoordMode Pixel
    IfNotExist, Images\ManageAccountButton_Tibia11.png
    MsgBox, ManageAccountButton_Tibia11.png doesn't exist
    ImageSearch, FoundX, FoundY, 0, 0, A_ScreenWidth, A_ScreenHeight, Images\ManageAccountButton_Tibia11.png
    if ErrorLevel = 0
        {
        WinWaitActive, ahk_class Qt5QWindowOwnDCIcon
        Sleep, 200
        Send, {ESC}{ESC}    
        Sleep, 300
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
        Random, R, 2500, 2700
        Sleep, R
        IniRead, TimesToPressDownTibia11, settings.ini, settings, TimesToPressDownTibia11
        TimesToPressDownTibia11 := TimesToPressDownTibia11 - 1
        Sleep, 100
        Send, {DOWN %TimesToPressDownTibia11%}
        Random, R, 75, 150
        Sleep, R
        Send, {ENTER}
        Random, R, 4000, 4300
        Sleep, R
        }             
}
Return