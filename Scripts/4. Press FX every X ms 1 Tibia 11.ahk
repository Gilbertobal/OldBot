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

IniRead, PressFXEveryXms1DelayTibia11, settings.ini, settings, PressFXEveryXms1DelayTibia11
IniRead, PressFXEveryXms1HotkeyTibia11, settings.ini, settings, PressFXEveryXms1HotkeyTibia11

Loop,
{
	WinWaitActive, ahk_class Qt5QWindowOwnDCIcon
	Sleep, 1000
	#IfWinActive, ahk_class Qt5QWindowOwnDCIcon
	Send, {%PressFXEveryXms1HotkeyTibia11%}
	Sleep, %PressFXEveryXms1DelayTibia11%
 }
Return
