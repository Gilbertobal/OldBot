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
CoordMode, Mouse, Screen


IniRead, MoveItemToGroundHotkeyTibia10, settings.ini, settings, MoveItemToGroundHotkeyTibia10

If (MoveItemToGroundHotkeyTibia10 = "Forward Mouse Button")
    {
    	MoveItemToGroundHotkeyTibia10 = XButton1
    }
If (MoveItemToGroundHotkeyTibia10 = "Back Mouse Button")
    {
    	MoveItemToGroundHotkeyTibia10 = XButton2
    }
If (MoveItemToGroundHotkeyTibia10 = "Scroll Mouse Button")
    {
    	MoveItemToGroundHotkeyTibia10 = MButton
    }
Hotkey,%MoveItemToGroundHotkeyTibia10%,Hotkey1

Return

#IfWinActive, ahk_class TibiaClient
Hotkey1:
    {
    IniRead, CharPosXTibia10, settings.ini, settings, CharPosXTibia10
    IniRead, CharPosYTibia10, settings.ini, settings, CharPosYTibia10
    MouseGetPos, X, Y
    MouseClickDrag, Left, %X%, %Y%, %CharPosXTibia10%, %CharPosYTibia10%
    MouseMove, %X%, %Y%
    Return
    }
