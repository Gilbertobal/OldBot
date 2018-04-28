#SingleInstance, Force
#NoEnv
SetBatchLines, -1
SetWinDelay, -1
CoordMode, Mouse, Screen
SetControlDelay -1

Insert::
ControlClick, x78 y660, ahk_class TibiaClient  ; Clicks at a set of coordinates. Note the lack of a comma between X and Y.
Sleep, 500
ControlSend,, alfredo, ahk_class TibiaClient
Sleep, 500
ControlSend,, {Tab}, ahk_class TibiaClient 
Sleep, 500
ControlSend,, alfredo2468, ahk_class TibiaClient 
Sleep, 500
ControlSend,, {Enter}, ahk_class TibiaClient 



Return
