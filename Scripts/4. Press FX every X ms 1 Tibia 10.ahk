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

IniRead, PressFXEveryXms1DelayTibia10, settings.ini, settings, PressFXEveryXms1DelayTibia10
IniRead, PressFXEveryXms1HotkeyTibia10, settings.ini, settings, PressFXEveryXms1HotkeyTibia10

Loop,
{
	WinWaitActive, ahk_class TibiaClient
	Sleep, 1000
	#IfWinActive, ahk_class TibiaClient
	Send, {%PressFXEveryXms1HotkeyTibia10%}
	Sleep, %PressFXEveryXms1DelayTibia10%
 }
Return
