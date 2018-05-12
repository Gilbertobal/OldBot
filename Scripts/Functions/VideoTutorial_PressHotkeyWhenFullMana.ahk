#NoTrayIcon
#SingleInstance, Force

Gui Wmp: +LastFound
Gui Wmp: Add, ActiveX, w950 h540 vWmp2, WMPLayer.OCX
Wmp2.Url := "Videos\Tutorial_PressHotkeyWhenFullMana.mp4"
Gui Wmp: Show, , Tutorial - Press Hotkey When Full Mana
Return

GuiClose:
ExitApp