#SingleInstance, Force
#NoTrayIcon
#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
#MaxHotkeysPerInterval 99000000
#HotkeyInterval 99000000
#KeyHistory 0
ListLines Off
Process, Priority, , A
SetBatchLines, -1
SetKeyDelay, -1, -1
SetMouseDelay, -1
SetDefaultMouseSpeed, 0
SetWinDelay, -1
SetControlDelay, -1
SendMode Input
Process, Priority, %PID%, AboveNormal

IniRead, AntiIdleDelayTibia11, settings.ini, settings, AntiIdleDelayTibia11

Loop,
    {
    Sleep, 1000
    WinWaitActive, ahk_class Qt5QWindowOwnDCIcon
    #IfWinActive, ahk_class Qt5QWindowOwnDCIcon
    Send, {CTRLDOWN}{UP}{CTRLUP}
    Random, R, 150, 250
    Sleep, R
    Send, {CTRLDOWN}{DOWN}{CTRLUP}
    Sleep, %AntiIdleDelayTibia11%
    Random, R, 250, 350
	Sleep, R
    }
	Return