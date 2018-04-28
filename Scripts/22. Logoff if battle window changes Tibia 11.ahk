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

Loop,
{
	Sleep, 1000
CoordMode Pixel
WinWaitActive, ahk_class Qt5QWindowOwnDCIcon
IfNotExist, Images\BattleWindowTibia11.png
    MsgBox, BattleWindowTibia11.png doesn't exist
    ImageSearch, FoundX, FoundY, 0, 0, A_ScreenWidth, A_ScreenHeight, Images\BattleWindowTibia11.png
     if ErrorLevel = 1
        {
        Send, ^{q}
        Random, R, 250, 350
        Sleep, R
        }  
}