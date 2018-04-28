#IfWinActive ahk_class TibiaClient
SendMode Input
SetMouseDelay, -1
SetDefaultMouseSpeed, 0
~$*RButton::
Loop
{
If (GetKeyState("RButton", "P") = 1)
{
SendInput, {RButton}
Sleep, 75
}
Else
{
Break
}
}
Return