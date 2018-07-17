#NoEnv ; Recommended for performance and compatibility with future AutoHotkey releases.

CloseScripts:
{
  Run, %A_ScriptDir%/Scripts/Functions/ClosingScript.ahk
  Process, Close, Anti-Idle.exe
  Process, Close, Anti-Idle Background.exe
  Process, Close, Auto eat food.exe
  Process, Close, Auto Equip Ring.exe
  Process, Close, Auto Equip Amulet.exe
  Process, Close, Auto Fishing.exe
  Process, Close, Auto Reconnect.exe
  Process, Close, Auto refill charged Soft Boots.exe
  Process, Close, CronometerApp.exe
  Process, Close, Hotkey Combo.exe
  Process, Close, Keep Tibia Client.exe
  Process, Close, Life Healer.exe
  Process, Close, Login 1 Hotkey.exe
  Process, Close, Login 2 Hotkey.exe
  Process, Close, Logoff if battle window changes.exe
  Process, Close, Mana Healer.exe
  Process, Close, Move item to backpack.exe
  Process, Close, Move item to ground.exe
  Process, Close, Press hotkey every X ms 1.exe
  Process, Close, Press hotkey every X ms 2.exe
  Process, Close, Press hotkey every X ms 3.exe
  Process, Close, Press hotkey when full mana.exe
  Process, Close, Refill arrow slot with mouse.exe
  Process, Close, Remove Paralyze.exe
  Process, Close, Renew Buff Spell.exe
  Process, Close, Renew Haste Spell.exe
  Process, Close, Renew Utamo Vita.exe
  Process, Close, Reopen Client.exe
  Process, Close, Right Click Hold.exe
  Return
}
/*
CloseScripts:
{
  Run, %A_ScriptDir%/Scripts/Functions/ClosingScript.ahk
  Loop, read, renamedscripts.ini
  {
      Loop, parse, A_LoopReadLine, %A_Tab%
      {
          Process, Close, %A_LoopField%
      }
  }
  FileDelete, renamedscripts.txt
  FileAppend,, renamedscripts.txt
  Return
}
*/