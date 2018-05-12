#NoTrayIcon
#SingleInstance, Force

Gui Wmp: +LastFound
Gui Wmp: Add, ActiveX, w950 h540 vWmp2, WMPLayer.OCX
Wmp2.Url := "Videos\Tutorial_LogoffIfBattleWindowChanges.mp4"
Gui Wmp: Show, , Tutorial - Logoff if battle window changes
Return

GuiClose:
ExitApp