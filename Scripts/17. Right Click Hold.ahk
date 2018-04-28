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
SetBatchLines, -1
Process, Priority, %PID%, AboveNormal

IniRead, RightClickHold, settings.ini, settings, RightClickHold
IniRead, RightClickHoldDelay, settings.ini, settings, RightClickHoldDelay

	*RButton::
	Loop
	{
GetKeyState,state,RButton,P
		if state = U
		break
		Send {RButton}
		Sleep %RightClickHoldDelay%
	}
	Return
