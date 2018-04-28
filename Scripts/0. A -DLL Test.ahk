#SingleInstance, Force
#NoEnv
SetBatchLines, -1
SetWinDelay, -1
;ReturnValue := DllCall("MessageBox","Uint",0,"Str","This Message is poped through DLLcall","Str","I typed that title","Uint","0x00000036L")
;msgbox,%ReturnValue%

;DllCall("SetCursorPos", int, 116, int, 622) ; move mouse to pos

/*

;	CTRL down 
dllcall("keybd_event", int, 162, int, 29, int, 0, int, 0) 
;CTRL up 
dllcall("keybd_event", int, 162, int, 29, int, 2, int, 0)
;	SPACE down 
dllcall("keybd_event", int, 32, int, 57, int, 0, int, 0) 
Sleep, 100
;	SPACE up 
dllcall("keybd_event", int, 32, int, 57, int, 2, int, 0) 
;	Send Escape
dllcall("keybd_event", int, 0x1B, int, 0x001, int, 0, int, 0)
Sleep, 100
dllcall("keybd_event", int, 0x1B, int, 0x001, int, 2, int, 0)
;	Send Backspace
dllcall("keybd_event", int, 0x08, int, 0x00E, int, 0, int, 0)
Sleep, 20
dllcall("keybd_event", int, 0x08, int, 0x00E, int, 2, int, 0)
;	Send Enter
Sleep, 1000
dllcall("keybd_event", int, 0x0D, int, 0x01C, int, 0, int, 0)
Sleep, 100
dllcall("keybd_event", int, 0x0D, int, 0x01C, int, 2, int, 0)
;	Send Down
Sleep, 1000
dllcall("keybd_event", int, 0x28, int, 0x150, int, 0, int, 0)
Sleep, 100
dllcall("keybd_event", int, 0x28, int, 0x150, int, 2, int, 0)

*/

Insert::
;	Send Down
dllcall("keybd_event", int, 0x28, int, 0x150, int, 0, int, 0)
Sleep, 10
dllcall("keybd_event", int, 0x28, int, 0x150, int, 2, int, 0)
Sleep, 10
dllcall("keybd_event", int, 0x28, int, 0x150, int, 0, int, 0)
Sleep, 10
dllcall("keybd_event", int, 0x28, int, 0x150, int, 2, int, 0)

Return
