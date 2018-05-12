#NoTrayIcon
#SingleInstance, Force

Gui Wmp: +LastFound
Gui Wmp: Add, ActiveX, w950 h540 vWmp2, WMPLayer.OCX
Wmp2.Url := "Videos\Tutorial_AutoReconnectTibia10.mp4"
Gui Wmp: Show, , Tutorial - Auto Reconnect Tibia 10
Return

GuiClose:
ExitApp