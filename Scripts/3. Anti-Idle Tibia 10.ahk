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

IniRead, AntiIdleDelayTibia10, settings.ini, settings, AntiIdleDelayTibia10

Loop,
    {
    Sleep, 1000
	WinWaitActive, ahk_class TibiaClient
    #IfWinActive, ahk_class TibiaClient
    Send, {CTRLDOWN}{UP}{CTRLUP}
    Random, R, 150, 250
    Sleep, R
    Send, {CTRLDOWN}{DOWN}{CTRLUP}
    Sleep, %AntiIdleDelayTibia10%
    Random, R, 250, 350
	Sleep, R
    }
	Return