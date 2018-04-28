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



Loop,
{
IniRead, Heal25Tibia11, settings.ini, settings, Heal25Tibia11
IniRead, Heal25HotkeyTibia11, settings.ini, settings, Heal25HotkeyTibia11
	Sleep, 150
CoordMode Pixel
WinWaitActive, ahk_class Qt5QWindowOwnDCIcon
IfNotExist, Images\HealthBar25Percent_Tibia11.png
    MsgBox, HealthBar25Percent_Tibia11.png doesn't exist
    ImageSearch, FoundX, FoundY, A_ScreenWidth - 168, 0, A_ScreenWidth, A_ScreenHeight - A_ScreenHeight + 432, Images\HealthBar25Percent_Tibia11.png
     if ErrorLevel = 1
        {
            IfNotExist, Images\ManageAccountButton_Tibia11.png
            MsgBox, ManageAccountButton_Tibia11.png doesn't exist
            ImageSearch, FoundX, FoundY, 0, 0, A_ScreenWidth, A_ScreenHeight, Images\ManageAccountButton_Tibia11.png
            if ErrorLevel = 0
            {
                Return
            }
    	WinWaitActive, ahk_class Qt5QWindowOwnDCIcon
    	#IfWinActive, ahk_class Qt5QWindowOwnDCIcon
        Send, {%Heal25HotkeyTibia11%}
        Random, R, 150, 250
        Sleep, R
        }  
}