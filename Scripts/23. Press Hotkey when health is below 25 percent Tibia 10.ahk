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
IniRead, Heal25Tibia10, settings.ini, settings, Heal25Tibia10
IniRead, Heal25HotkeyTibia10, settings.ini, settings, Heal25HotkeyTibia10
	Sleep, 150
CoordMode Pixel
WinWaitActive, ahk_class TibiaClient
IfNotExist, Images\HealthBar25Percent_Tibia10.png
    MsgBox, HealthBar25Percent_Tibia10.png doesn't exist
    ImageSearch, FoundX, FoundY, A_ScreenWidth - 168, 0, A_ScreenWidth, A_ScreenHeight - A_ScreenHeight + 432, Images\HealthBar25Percent_Tibia10.png
     if ErrorLevel = 1
        {
        IfNotExist, Images\EnterGameButton.png
        MsgBox, EnterGameButton.png doesn't exist
        ImageSearch, FoundX, FoundY, 0, 0, A_ScreenWidth, A_ScreenHeight, Images\EnterGameButton.png
        if ErrorLevel = 0
            {
                Return
            }
    	WinWaitActive, ahk_class TibiaClient
    	#IfWinActive, ahk_class TibiaClient
        Send, {%Heal25HotkeyTibia10%}
        Random, R, 150, 250
        Sleep, R
        }  
}