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
CoordMode, Mouse, Screen



IniRead, HotkeyComboHotkey1Tibia11, settings.ini, settings, HotkeyComboHotkey1Tibia11
IniRead, HotkeyComboHotkey2Tibia11, settings.ini, settings, HotkeyComboHotkey2Tibia11
IniRead, HotkeyComboHotkey3Tibia11, settings.ini, settings, HotkeyComboHotkey3Tibia11
IniRead, ClickOnPosXTibia11, settings.ini, settings, ClickOnPosXTibia11
IniRead, ClickOnPosYTibia11, settings.ini, settings, ClickOnPosYTibia11
IniRead, Sleep1Tibia11, settings.ini, settings, Sleep1Tibia11
IniRead, Sleep2Tibia11, settings.ini, settings, Sleep2Tibia11

If (HotkeyComboHotkey1Tibia11 = "Forward Mouse Button")
    {
    	HotkeyComboHotkey1Tibia11 = XButton1
    }
If (HotkeyComboHotkey1Tibia11 = "Back Mouse Button")
    {
    	HotkeyComboHotkey1Tibia11 = XButton2
    }
If (HotkeyComboHotkey1Tibia11 = "Scroll Mouse Button")
    {
    	HotkeyComboHotkey1Tibia11 = MButton
    }
Hotkey,%HotkeyComboHotkey1Tibia11%,Hotkey1

Return

#IfWinActive, ahk_class Qt5QWindowOwnDCIcon
Hotkey1:
{
IniRead, HotkeyComboHotkey1Tibia11, settings.ini, settings, HotkeyComboHotkey1Tibia11
IniRead, HotkeyComboHotkey2Tibia11, settings.ini, settings, HotkeyComboHotkey2Tibia11
IniRead, HotkeyComboHotkey3Tibia11, settings.ini, settings, HotkeyComboHotkey3Tibia11
IniRead, ClickOnPosXTibia11, settings.ini, settings, ClickOnPosXTibia11
IniRead, ClickOnPosYTibia11, settings.ini, settings, ClickOnPosYTibia11
IniRead, Sleep1Tibia11, settings.ini, settings, Sleep1Tibia11
IniRead, Sleep2Tibia11, settings.ini, settings, Sleep2Tibia11
If (HotkeyComboHotkey1Tibia11 = "Forward Mouse Button")
    {
    	HotkeyComboHotkey1Tibia11 = XButton1
    }
If (HotkeyComboHotkey1Tibia11 = "Back Mouse Button")
    {
    	HotkeyComboHotkey1Tibia11 = XButton2
    }
If (HotkeyComboHotkey1Tibia11 = "Scroll Mouse Button")
    {
    	HotkeyComboHotkey1Tibia11 = MButton
    }
If (HotkeyComboHotkey2Tibia11 = "None")
    {
    HotkeyComboHotkey2Tibia11 = ""
    }  
If (HotkeyComboHotkey3Tibia11 = "None")
    {
    HotkeyComboHotkey3Tibia11 = ""
    }   
MouseGetPos, X, Y
Sleep, %Sleep1Tibia11%
Send, {%HotkeyComboHotkey2Tibia11%}
Sleep, %Sleep2Tibia11%
Send, {%HotkeyComboHotkey3Tibia11%}
MouseClick, Left, %ClickOnPosXTibia11%, %ClickOnPosYTibia11%
MouseMove, %X%, %Y%
Return
}







