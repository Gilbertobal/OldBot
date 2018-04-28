#NoEnv
SysGet, CBW, 71
SysGet, CBH, 72
Gui, Margin, 0, 0
Gui, Add, Pic, w800 h-1, img18.jpg
Gui, Add, CheckBox, x20 y20 w%CBW% h%CBH% vCB1 gCB1clicked
Gui, Add, Text, x+0 yp vTX1 gCB1Clicked BackgroundTrans cRed, % "  Checkbox"
Gui, Show, 
Return
GuiClose:
ExitApp
CB1Clicked:
GuiControlGet, CB1
If (A_GuiControl = "TX1")
   GuiControl, , CB1, % CB1 ? 0 : 1
Return