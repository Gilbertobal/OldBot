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


IniRead, MoveItemToGroundHotkeyTibia11, settings.ini, settings, MoveItemToGroundHotkeyTibia11

If (MoveItemToGroundHotkeyTibia11 = "Forward Mouse Button")
    {
    	MoveItemToGroundHotkeyTibia11 = XButton1
    }
If (MoveItemToGroundHotkeyTibia11 = "Back Mouse Button")
    {
    	MoveItemToGroundHotkeyTibia11 = XButton2
    }
If (MoveItemToGroundHotkeyTibia11 = "Scroll Mouse Button")
    {
    	MoveItemToGroundHotkeyTibia11 = MButton
    }
Hotkey,%MoveItemToGroundHotkeyTibia11%,Hotkey1

Return

#IfWinActive, ahk_class Qt5QWindowOwnDCIcon
Hotkey1:
    {
    IniRead, CharPosXTibia11, settings.ini, settings, CharPosXTibia11
    IniRead, CharPosYTibia11, settings.ini, settings, CharPosYTibia11
    MouseGetPos, X, Y
    MouseClickDrag, Left, %X%, %Y%, %CharPosXTibia11%, %CharPosYTibia11%
    MouseMove, %X%, %Y%
    Return
    }
