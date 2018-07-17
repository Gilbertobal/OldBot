#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.

MultiClientLogin:
{
   LoginMC1:
    {
        Gui, Submit, NoHide
        Run, %A_ScriptDir%/Scripts/Multi Client Login MC1.exe
        Return
    }
    SalvarMC1:
    {
        Gui, Submit, NoHide
        IniWrite, %AccountNameMC1%, settings.ini, settings, AccountNameMC1
        IniWrite, %PasswordMC1%, settings.ini, settings, PasswordMC1
        IniWrite, %TimesToPressDownMC1%, settings.ini, settings, TimesToPressDownMC1
        Return
    }
   LoginMC2:
    {
        Gui, Submit, NoHide
        Run, %A_ScriptDir%/Scripts/Multi Client Login MC2.exe
        Return
    }
    SalvarMC2:
    {
        Gui, Submit, NoHide
        IniWrite, %AccountNameMC2%, settings.ini, settings, AccountNameMC2
        IniWrite, %PasswordMC2%, settings.ini, settings, PasswordMC2
        IniWrite, %TimesToPressDownMC2%, settings.ini, settings, TimesToPressDownMC2
        Return
    }
   LoginMC3:
    {
        Gui, Submit, NoHide
        Run, %A_ScriptDir%/Scripts/Multi Client Login MC3.exe
        Return
    }
    SalvarMC3:
    {
        Gui, Submit, NoHide
        IniWrite, %AccountNameMC3%, settings.ini, settings, AccountNameMC3
        IniWrite, %PasswordMC3%, settings.ini, settings, PasswordMC3
        IniWrite, %TimesToPressDownMC3%, settings.ini, settings, TimesToPressDownMC3
        Return
    }
   LoginMC4:
    {
        Gui, Submit, NoHide
        Run, %A_ScriptDir%/Scripts/Multi Client Login MC4.exe
        Return
    }
    SalvarMC4:
    {
        Gui, Submit, NoHide
        IniWrite, %AccountNameMC4%, settings.ini, settings, AccountNameMC4
        IniWrite, %PasswordMC4%, settings.ini, settings, PasswordMC4
        IniWrite, %TimesToPressDownMC4%, settings.ini, settings, TimesToPressDownMC4
        Return
    }
   LoginMC5:
    {
        Gui, Submit, NoHide
        Run, %A_ScriptDir%/Scripts/Multi Client Login MC5.exe
        Return
    }
    SalvarMC5:
    {
        Gui, Submit, NoHide
        IniWrite, %AccountNameMC5%, settings.ini, settings, AccountNameMC5
        IniWrite, %PasswordMC5%, settings.ini, settings, PasswordMC5
        IniWrite, %TimesToPressDownMC5%, settings.ini, settings, TimesToPressDownMC5
        Return
    }
}