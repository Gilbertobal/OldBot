#NoTrayIcon
#SingleInstance, Force

Gui Wmp: +LastFound
Gui Wmp: Add, ActiveX, w950 h540 vWmp2, WMPLayer.OCX
Wmp2.Url := "Videos\Tutorial_AutoReconnectTibia11.mp4"
Gui Wmp: Show, , Tutorial - Auto Reconnect Tibia 11
Return

GuiClose:
ExitApp