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

IniRead, RemapKey1HotTibia10, settings.ini, settings, RemapKey1HotTibia10
IniRead, RemapKey2HotTibia10, settings.ini, settings, RemapKey2HotTibia10
IniRead, RemapKey3HotTibia10, settings.ini, settings, RemapKey3HotTibia10
IniRead, RemapKey4HotTibia10, settings.ini, settings, RemapKey4HotTibia10
IniRead, RemapKey1RemapTibia10, settings.ini, settings, RemapKey1RemapTibia10
IniRead, RemapKey2RemapTibia10, settings.ini, settings, RemapKey2RemapTibia10
IniRead, RemapKey3RemapTibia10, settings.ini, settings, RemapKey3RemapTibia10
IniRead, RemapKey4RemapTibia10, settings.ini, settings, RemapKey4RemapTibia10

;#IfWinActive, ahk_class TibiaClient

Hotkey,%RemapKey1HotTibia10%,Remap1
Hotkey,%RemapKey2HotTibia10%,Remap2
Hotkey,%RemapKey3HotTibia10%,Remap3
Hotkey,%RemapKey4HotTibia10%,Remap4
Hotkey,%RemapKey4HotTibia10%,Remap5
Hotkey,%RemapKey4HotTibia10%,Remap6
Hotkey,%RemapKey4HotTibia10%,Remap7
Hotkey,%RemapKey4HotTibia10%,Remap8
Hotkey,%RemapKey4HotTibia10%,Remap9
Hotkey,%RemapKey4HotTibia10%,Remap10

Return
Remap1:
{
	Send, {%RemapKey1RemapTibia10%}
	Return
}
Remap2:
{
	Send, {%RemapKey2RemapTibia10%}
	Return
}
Remap3:
{
	Send, {%RemapKey3RemapTibia10%}
	Return
}
Remap4:
{
	Send, {%RemapKey4RemapTibia10%}
	Return
}
Remap5:
{
	Send, {%RemapKey5RemapTibia10%}
	Return
}
Remap6:
{
	Send, {%RemapKey6RemapTibia10%}
	Return
}
Remap7:
{
	Send, {%RemapKey7RemapTibia10%}
	Return
}
Remap8:
{
	Send, {%RemapKey8RemapTibia10%}
	Return
}
Remap9:
{
	Send, {%RemapKey9RemapTibia10%}
	Return
}
Remap10:
{
	Send, {%RemapKey10RemapTibia10%}
	Return
}

^Enter::Suspend
w::Up
a::Left
s::Down
d::Right

