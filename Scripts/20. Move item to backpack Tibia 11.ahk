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


IniRead, MoveItemToBackpackHotkeyTibia11, settings.ini, settings, MoveItemToBackpackHotkeyTibia11

If (MoveItemToBackpackHotkeyTibia11 = "Forward Mouse Button")
    {
    	MoveItemToBackpackHotkeyTibia11 = XButton1
    }
If (MoveItemToBackpackHotkeyTibia11 = "Back Mouse Button")
    {
    	MoveItemToBackpackHotkeyTibia11 = XButton2
    }
If (MoveItemToBackpackHotkeyTibia11 = "Scroll Mouse Button")
    {
    	MoveItemToBackpackHotkeyTibia11 = MButton
    }
Hotkey,%MoveItemToBackpackHotkeyTibia11%,Hotkey1

Return

Hotkey1:
    {
    IniRead, BPPosXTibia11, settings.ini, settings, BPPosXTibia11
    IniRead, BPPosYTibia11, settings.ini, settings, BPPosYTibia11
    #IfWinActive, ahk_class Qt5QWindowOwnDCIcon
    MouseGetPos, X, Y
    MouseClickDrag, Left, %X%, %Y%, %BPPosXTibia11%, %BPPosYTibia11%
    MouseMove, %X%, %Y%
    Return
    }
