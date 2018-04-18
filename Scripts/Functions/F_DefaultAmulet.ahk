#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.

DefaultAmulet:
{
    GuiControlGet, DefaultAmuletTibia10
    GuiControlGet, DefaultAmuletTibia11
    GuiControl, Disable, DefaultAmuletTibia10
    GuiControl, Disable, DefaultAmuletTibia11
        If (DefaultAmuletTibia10 = 1)
        {
        GuiControl, Disable, DefaultAmuletTibia10
        Return
        }
        If (DefaultAmuletTibia10 <> 1)
        {
        GuiControl, Enable, DefaultAmuletTibia10
        Return   
        }
        If (DefaultAmuletTibia11 = 1)
        {
        GuiControl, Disable, DefaultAmuletTibia11
        Return
        }
        If (DefaultAmuletTibia11 <> 1)
        {
        GuiControl, Enable, DefaultAmuletTibia11
        Return   
        }
    Return
} ; DefaultAmulet