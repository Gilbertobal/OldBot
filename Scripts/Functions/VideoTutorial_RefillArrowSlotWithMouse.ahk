#NoTrayIcon
#SingleInstance, Force

Gui Wmp: +LastFound
Gui Wmp: Add, ActiveX, w950 h540 vWmp2, WMPLayer.OCX
Wmp2.Url := "Videos\Tutorial_RefillArrowSlotWithMouse.mp4"
Gui Wmp: Show, , Tutorial - Refill arrow slot with mouse
Return

GuiClose:
ExitApp