#SingleInstance, off
#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.
#NoTrayIcon
#MaxHotkeysPerInterval 99000000
#HotkeyInterval 99000000
#KeyHistory 0
ListLines Off
SetBatchLines, -1
SetKeyDelay, -1, -1
SetMouseDelay, -1
SetDefaultMouseSpeed, 0
SetWinDelay, -1
SetControlDelay, -1
SendMode Input
Process, Priority, %PID%, AboveNormal

CoordMode, Mouse, Screen
;INTERESSANTE:
;   - URLDownloadToFile https://docs.google.com/uc?export=&id=1B3LIb0DwXflDOLm05duQEw37AqTL7ncU, HasteIcon.png


Version = v1.4
IniWrite, %Version%, settings.ini, version, Version

LoginGUI_NoSQL:
{
    IniRead, AccountNameLogin, settings.ini, settings, AccountNameLogin
    IniRead, EmailLogin, settings.ini, settings, EmailLogin
    IniRead, SkipOldBotLogin, settings.ini, settings, SkipOldBotLogin
    IniRead, TibiaClient, settings.ini, settings, TibiaClient, Tibia 11
    IniRead, TooltipLanguage, settings.ini, settings, TooltipLanguage, English

    If (SkipOldBotLogin = 1)
        {
            Goto, Login_NoSQL
        }
       

    Menu, Tray, Icon, %A_ScriptDir%\Images\icon.ico
    Gui, Add, Tab2, x0 y0 w160 h20, OldBot - Login|FAQ

    Gui Tab, 1
    Gui, Add, DropDownList, vTibiaClient, Tibia 10|Tibia 11
    GuiControl, ChooseString, TibiaClient, %TibiaClient%
    Gui, Add, CheckBox, x13 y+7 vSkipOldBotLogin Checked%SkipOldBotLogin%, Skip OldBot Login
    Gui, Add, Text, x13 y+10, Tooltips language:
    Gui, Add, ComboBox, x13 yp+18 vTooltipLanguage, English|Portuguese
    GuiControl, ChooseString, TooltipLanguage, %TooltipLanguage%
    Gui, Add, Button, x10 h25 gLogin_NoSQL, Login
    Gui, Add, Edit, xp+100 yp+1 ReadOnly h23 Center, %Version%


    Gui Tab, 2
    
    Gui, Add, Groupbox, x10 y+5 w130 r3, FAQ
    Gui, Add, Button, xp+20 yp+17 w90 h22 gOpenFAQEN-US, FAQ (EN-US)
    Gui, Add, Button, xp+0 yp+25 w90 h22 gOpenFAQPT-BR, FAQ (PT-BR)

    
    Gui, Show, w150 h160, OldBot - Login

    Return
} ; LoginGUI

/* <WITHOUT MYSQL LIB
{
    MySQLAPIConfigs:
    {
        ; ======================================================================================================================
        ; Demo of MySQLAPI class
        ;
        ; You must have access to a running MySQL server.
        ;
        ; Programmer:     panofish (www.autohotkey.com)
        ; Modified by:    just me  (www.autohotkey.com)
        ; AutoHotkey:     v1.1.10.+
        ; ======================================================================================================================
        #NoEnv
        #SingleInstance Force
        SetBatchLines, -1
       ListLines, Off
        #Include Scripts/Class_MySQLAPI.ahk ; pull from a folder called "Scripts" in this script directory
        Global MySQL_SUCCESS := 0
        ; ======================================================================================================================
        ; Settings
        ; ======================================================================================================================
        UserID := "root"           ; User name
        UserPW := "rootpass1"           ; User''s password
        Server := "localhost"      ; Server's host name or IP address
       Database := "tibia"         ; Name of the database to work with
        ; ======================================================================================================================
        ; Connect to MySQL
        ; ======================================================================================================================
        ; Instantiate a MYSQL object
        If !(My_DB := New MySQLAPI)
           ExitApp
        ; Get the version of libmysql.dll
        ClientVersion := My_DB.Get_Client_Info()
        ; Connect to the server, Host can be a hostname or IP address
        If !My_DB.Connect(Server, UserID, UserPW) {  ; Host, User, Password
           MsgBox, 16, MySQL Error!, % "Connection failed!`r`n" . My_DB.ErrNo() . " - " . My_DB.Error()
           ExitApp
        }
        ; ======================================================================================================================
        ; Select the database as default
        ; ======================================================================================================================
        My_DB.Select_DB(Database)
    } ; MySQLAPIConfigs

    /*
    Insert::
        {

        SQL = 
        (
        SELECT dias_vip 
        FROM contas 
        WHERE nome = '%AccountNameLogin%'
        )
        SQL := "SELECT dias_vip FROM contas WHERE nome = 'alfredo'"
            If (My_DB.Query(SQL) = MySQL_SUCCESS) {
               My_Result := My_DB.Store_Result()
               My_Field := My_DB.Fetch_Field(My_Result)
               FieldName := StrGet(NumGet(My_Field + 0, 0, "UPtr"), "UTF-8")
               My_Row := My_DB.Fetch_Row(My_Result)
               FieldValue := StrGet(NumGet(My_Row + 0, 0, "UPtr"), "UTF-8")
               My_DB.Free_Result(My_Result)
            }
            ;MsgBox, 0,  MySQLAPI Demo, Result:`r`nName = %FieldName%`r`nValue = %FieldValue%
            msgbox, valor = %FieldValue%
            if (FieldValue > 0)
            {
             Goto, LiberarOldBot
            }
            Return
        }
    */

    /* ; RETIRAR PARA VER A GUI DE LOGIN
    LoginGUI:
    {
        IniRead, AccountNameLogin, settings.ini, settings, AccountNameLogin
        IniRead, EmailLogin, settings.ini, settings, EmailLogin
        IniRead, SaveInformacoes, settings.ini, settings, SaveInformacoes
        IniRead, TibiaClient, settings.ini, settings, TibiaClient

        Gui, Add, Tab2, x0 y0 w1000 h20, OldBot - Login

        Gui Tab, 1

        Gui, Add, Text, x10 y+10 w280 Left, Account Name:  
        Gui, Add, edit, x10 y+5 w130 h19 Password vAccountNameLogin Left, %AccountNameLogin%

        Gui, Add, Text, x10 y+5 w280 Left, E-mail:  
        Gui, Add, edit, x10 y+5 w130 h19 vEmailLogin Left, %EmailLogin%

        Gui, Add, CheckBox, x10 y+5 vSaveInformations Checked%SaveInformations%, Save Preset

        Gui, Add, DropDownList, vTibiaClient, Tibia 10|Tibia 11
        GuiControl, ChooseString, TibiaClient, %TibiaClient%
        Gui, Add, Button, h25 gLogin, Login

        Gui, Show, w150 h195, OldBot - Login

        Return
    } ; LoginGUI


    Login:
    {
        Gui, Submit, NoHide
        GuiControlGet, TibiaClient
        Gui, Destroy

        If (TibiaClient = "Tibia 10")
        {
            IniWrite, %TibiaClient%, settings.ini, settings, TibiaClient
        }
        If (TibiaClient = "Tibia 11")
        {
            IniWrite, %TibiaClient%, settings.ini, settings, TibiaClient
        }
    } ; RETIRAR PARA FAZER LOGIN COM  MYSQL
    /*

        if (SaveInformations = 1)
            {
            IniWrite, %SaveInformations%, settings.ini, settings, SaveInformacoes
            IniWrite, %AccountNameLogin%, settings.ini, settings, AccountNameLogin
            IniWrite, %EmailLogin%, settings.ini, settings, EmailLogin
            }
            Else
                {
                IniWrite, 0, settings.ini, settings, SaveInformacoes
                IniWrite, % "", settings.ini, settings, AccountNameLogin
                IniWrite, % "", settings.ini, settings, EmailLogin
                }

        AccountNameValidation:
        {
            SQL = 
            (
            SELECT nome 
            FROM contas 
            WHERE nome = '%AccountNameLogin%'
            )
                If (My_DB.Query(SQL) = MySQL_SUCCESS) {
                   My_Result := My_DB.Store_Result()
                   My_Field := My_DB.Fetch_Field(My_Result)
                   FieldName := StrGet(NumGet(My_Field + 0, 0, "UPtr"), "UTF-8")
                   My_Row := My_DB.Fetch_Row(My_Result)
                   FieldValue := StrGet(NumGet(My_Row + 0, 0, "UPtr"), "UTF-8")
                   My_DB.Free_Result(My_Result)
                }
                ;MsgBox, 0,  MySQLAPI Demo, Result:`r`nName = %FieldName%`r`nValue = %FieldValue%
                ;msgbox, %nome%, %FieldName%, %FieldValue%
                if (FieldValue = AccountNameLogin)
                    {
                    ;msgbox, Account name correto.
                    Goto, EmailValidation
                    Return
                    }
                Else
                    {
                    msgbox, Account name incorreto.
                    Return
                    }
                Return
        }
    }

    EmailValidation:
    {
        SQL = 
        (
        SELECT email 
        FROM contas 
        WHERE email = '%EmailLogin%'
        AND nome = '%AccountNameLogin%'
        )
        If (My_DB.Query(SQL) = MySQL_SUCCESS) {
           My_Result := My_DB.Store_Result()
           My_Field := My_DB.Fetch_Field(My_Result)
           FieldName := StrGet(NumGet(My_Field + 0, 0, "UPtr"), "UTF-8")
           My_Row := My_DB.Fetch_Row(My_Result)
           FieldValue := StrGet(NumGet(My_Row + 0, 0, "UPtr"), "UTF-8")
           My_DB.Free_Result(My_Result)
                                             }
        ;msgbox, %nome%, %FieldName%, %FieldValue%
        if (FieldValue = EmailLogin)
            {
            ;msgbox, Email e Account Name corretos. 
            Goto, LiberarOldBot
            Return
            }
        Else
            {
            msgbox, E-mail incorreto.
            Return
            }
        Return
    }  
}    ; WITHOUT MYSQL LIB >
*/

Login_NoSQL:
Gui, Submit, NoHide
IniWrite, %SkipOldBotLogin%, settings.ini, settings, SkipOldBotLogin
IniWrite, %TibiaClient%, settings.ini, settings, TibiaClient
IniWrite, %TibiaClient%, settings.ini, settings, TibiaClient
IniWrite, %TooltipLanguage%, settings.ini, settings, TooltipLanguage
Gui, Destroy
LiberarOldBot:
{

    ; ------------------
    ; Check For Expiry routine
    ; ------------------
    CheckExpiry:
    FormatTime currentYear, , yyyy
    FormatTime currentMonth, , MM

    ExpiryYear = 2018
    ExpiryMonth = 05
    ;MsgBox Y: %currentYear%`nM: %currentMonth%
    If (CurrentYear > ExpiryYear Or CurrentMonth > ExpiryMonth)
    {
    IniWrite, 0, settings.ini, settings, SkipOldBotLogin
    MsgBox,, Version expired, BETA version of OldBot expired.`n`nPlease go to www.github.com/debbietools/oldbot to download a new version.

    ExitApp
    }




    Menu, Tray, Icon, %A_ScriptDir%\Images\icon.ico

    #Include, %A_ScriptDir%/Scripts/Functions/F_LoadSettings.ahk
    #Include, %A_ScriptDir%/Scripts/Functions/SetWindowTransparentTibia10.ahk
    #Include, %A_ScriptDir%/Scripts/Functions/SetWindowTransparentTibia11.ahk
    #Include, %A_ScriptDir%/Scripts/Functions/SetWindowNormalTibia10.ahk
    #Include, %A_ScriptDir%/Scripts/Functions/SetWindowNormalTibia11.ahk

    If (TibiaClient = "Tibia 10")
    {
        Goto, Tibia10GUI
    }
    If (TibiaClient = "Tibia 11")
    {
        Goto, Tibia11GUI
    }

Tibia10GUI:
{

    Gui, Add, Tab2, x0 y0 w530 h22, Main|Client Tools|Gaming|Refill and Spells|Multi Client Login|More
    
    ;Gui, MyGui:Add, Text,, Help text about this progrma
    ;Gui, MyGui:Show
    
    ;Gui,+AlwaysOnTop

    ;=============================================================;
    ;=============================================================;
    ;=============================================================;
    ;TAB1

    Gui Tab, 1

    Gui, Add, Groupbox, x10 y+5 w245 r5.5, Account 1
    Gui, Add, Checkbox, xp+10 yp+17 vLoginHotkey1Tibia10 Checked%LoginHotkey1Tibia10% Left, Login pressing Ctrl+Insert in Tibia
    
    Gui, Add, Text, xp+1 yp+15 Left, Account Name:  
    Gui, Add, edit, xp-1 yp+15 w90 h19 Password vAccountNameReconnectTibia10 Left, %AccountNameReconnectTibia10%   
    

    Gui, Add, Text, xp+95 yp-15 Left, Password:  
    Gui, Add, edit, xp+0 yp+15 w90 h19 Password vPasswordReconnectTibia10 Left, %PasswordReconnectTibia10%
    

    Gui, Add, edit, xp-95 yp+25 w35 h19 Left vTimesToPressDownTibia10Edit,
    Gui, Add, UpDown, xp+0 yp+0 vTimesToPressDownTibia10 Range1-20 Left, %TimesToPressDownTibia10%
    Gui, Add, Text, xp+39 yp+3 Left, <- Char position on character's list

    Gui, Add, Button, xp-39 yp+22 h20 gHowToUseAutoReconnectTibia10, How To Use
    Gui, Add, CheckBox, xp+75 yp+3 vAutoReconnectTibia10 Checked%AutoReconnectTibia10%, Auto reconnect

    Gui, Add, Groupbox, x265 yp-96 w245 r4.4, Account 2
    Gui, Add, Checkbox, xp+10 yp+17 vLoginHotkey2Tibia10 Checked%LoginHotkey2Tibia10% Left, Login pressing Ctrl+Home in Tibia
    
    Gui, Add, Text, xp+1 yp+15 Left, Account Name:  
    Gui, Add, edit, xp-1 yp+15 w90 h19 Password vAccountNameReconnect2Tibia10 Left, %AccountNameReconnect2Tibia10%   

    Gui, Add, Text, xp+95 yp-15 Left, Password:  
    Gui, Add, edit, xp+0 yp+15 w90 h19 Password vPasswordReconnect2Tibia10 Left, %PasswordReconnect2Tibia10%

    Gui, Add, edit, xp-95 yp+25 w35 h19 Left vTimesToPressDown2Tibia10Edit,
    Gui, Add, UpDown, xp+0 yp+0 vTimesToPressDown2Tibia10 Range1-20 Left, %TimesToPressDown2Tibia10%
    Gui, Add, Text, xp+39 yp+2 Left, <- Char position on character's list

    Gui Add, GroupBox, x10 y+40 cBlack x10 w500 h8

    Gui, Add, Groupbox, x10 y+5 w500 r6.5, Misc Tools

    Gui, Add, Button, xp+10 yp+20 h20 gHowToUsePressHotkeyWhenFullMana, How To Use
    Gui, Add, CheckBox, xp+75 yp+3 w23 vPressHotkeyWhenFullManaTibia10 Checked%PressHotkeyWhenFullManaTibia10%, Press
    Gui, Add, ComboBox, xp+48 yp-3 -Group w50 vShiftFullManaTibia10, None|Shift +|Ctrl +
    Gui, Add, DropDownList, xp+53 yp+0 -Group w42 vPressHotkeyWhenFullManaHotkeyTibia10, None|F1|F2|F3|F4|F5|F6|F7|F8|F9|F10|F11|F12|Esc|Home|Insert|PgUp|PgDown|End|Del
    Gui, Add, Text, xp+47 yp+2 Left, when full mana
    GuiControl, ChooseString, PressHotkeyWhenFullManaHotkeyTibia10, %PressHotkeyWhenFullManaHotkeyTibia10%
    GuiControl, ChooseString, ShiftFullManaTibia10, %ShiftFullManaTibia10%

    Gui, Add, Button, xp-223 yp+22 h20 Disabled, Tibia 11 only
    Gui, Add, Checkbox, xp+75 yp+3 w23 Disabled, Press
    Gui, Add, ComboBox, xp+48 yp-3 Disabled w50 , --||
    Gui, Add, DropDownList, xp+53 yp-0 Disabled w42, --||
    Gui, Add, Text, xp+47 yp+2 Left, to auto eat food

    Gui, Add, Button, xp-223 yp+20 h20 gHowToUseLogoffBattleChanges, How To Use
    Gui, Add, CheckBox, xp+75  yp+3 vLogoffIfBattleChangesTibia10 Checked%LogoffIfBattleChangesTibia10%, Logoff if Battle window changes

    Gui, Add, CheckBox, xp-73 yp+23 vRightClickHold Checked%RightClickHold% Left, Right click hold
    Gui, Add, edit, xp+95 yp-2 w25 h19 vRightClickHoldDelay Left, %RightClickHoldDelay%
    Gui, Add, Text, xp+29 yp+2 Left, <- Delay between each click

    Gui, Add, Groupbox, xp+180 yp-80 w175 r5, Timer Tools
    Gui, Add, Text, xp+140 yp+8 Left, ms

    Gui, Add, CheckBox, xp-130 yp+18 w45 vPressFXEveryXms1Tibia10 Checked%PressFXEveryXms1Tibia10% BackgroundTrans, Press
    Gui, Add, DropDownList, xp+45 yp-3 w42 vPressFXEveryXms1HotkeyTibia10, None|F1|F2|F3|F4|F5|F6|F7|F8|F9|F10|F11|F12|Esc|Home|Insert|PgUp|PgDown|End|Del
    Gui, Add, Text, xp+45 yp+3 Left, every
    Gui, Add, edit, xp+28 yp-2  w40 h19 vPressFXEveryXms1DelayTibia10 Left, %PressFXEveryXms1DelayTibia10%
    GuiControl, ChooseString, PressFXEveryXms1HotkeyTibia10, %PressFXEveryXms1HotkeyTibia10%

    Gui, Add, CheckBox, xp-118 yp+25 w45 vPressFXEveryxms2Tibia10 Checked%PressFXEveryxms2Tibia10% BackgroundTrans, Press
    Gui, Add, DropDownList, xp+45 yp-3 w42 vPressFXEveryxms2HotkeyTibia10, None|F1|F2|F3|F4|F5|F6|F7|F8|F9|F10|F11|F12|Esc|Home|Insert|PgUp|PgDown|End|Del
    Gui, Add, Text, xp+45 yp+3 Left, every
    Gui, Add, edit, xp+28 yp-2  w40 h19 vPressFXEveryxms2DelayTibia10 Left, %PressFXEveryxms2DelayTibia10%
    GuiControl, ChooseString, PressFXEveryxms2HotkeyTibia10, %PressFXEveryxms2HotkeyTibia10%

    Gui, Add, CheckBox, xp-118 yp+25 w45 vPressFXEveryxms3Tibia10 Checked%PressFXEveryxms3Tibia10% BackgroundTrans, Press
    Gui, Add, DropDownList, xp+45 yp-3 w42 vPressFXEveryxms3HotkeyTibia10, None|F1|F2|F3|F4|F5|F6|F7|F8|F9|F10|F11|F12|Esc|Home|Insert|PgUp|PgDown|End|Del
    Gui, Add, Text, xp+45 yp+3 Left, every
    Gui, Add, edit, xp+28 yp-2  w40 h19 vPressFXEveryxms3DelayTibia10 Left, %PressFXEveryxms3DelayTibia10%
    GuiControl, ChooseString, PressFXEveryxms3HotkeyTibia10, %PressFXEveryxms3HotkeyTibia10%

    Gui, Font, italic
    Gui, Add, Text, xp-118 yp+22 Left, 1000ms = 1 second
    Gui, Font, normal
    
    Gui, Add, Checkbox, xp-313 yp+12 vHeal25Tibia10 Checked%Heal25Tibia10%, Press
    Gui, Add, Combobox, xp+48 yp-3 -Group w45 vHeal25HotkeyTibia10, None|F1|F2|F3|F4|F5|F6|F7|F8|F9|F10|F11|F12|Esc|Home|Insert|PgUp|PgDown|End|Del
    Gui, Add, Text, xp+50 yp+3 Left, when life is below 25`% (BETA)
    GuiControl, ChooseString, Heal25HotkeyTibia10, %Heal25HotkeyTibia10%
    
    Gui, Add, Groupbox, x10 yp+38 w245 r3.5, AFK Tools
    Gui, Add, CheckBox, xp+10 yp+20 vAntiIdleTibia10 Checked%AntiIdleTibia10%, Change direction every
    Gui, Add, CheckBox, xp+0 yp+22 vAntiIdleBackgroundTibia10 Checked%AntiIdleBackgroundTibia10%, Background Anti-AFK
    Gui, Add, edit, xp+131 yp-24 w45 h19 vAntiIdleDelayTibia10 Left, %AntiIdleDelayTibia10%
    Gui, Add, Text, xp+49 yp+2 Left, <- ms
    Gui, Add, CheckBox, xp-180 yp+43 vKeepTibia10ClientActive Checked%KeepTibia10ClientActive%, Keep Tibia client always focused

    
    Gui, Add, Button, xm+140 ym+480 gStartScriptsTibia10, Start Scripts
    Gui, Add, Button, xp+77 yp+0 gCloseScriptsTibia10, Close Scripts
    Gui, Add, Button, xp+80 yp+0 gSavePresetTibia10, Save Preset
    Gui, Add, Button, xp+77 yp+0 gReloadOldBot, Reload
    Gui, Add, CheckBox, xp-360 yp+5 gSkipOldBotLogin vSkipOldBotLogin Checked%SkipOldBotLogin%, Skip OldBot Login
    Gui, Add, CheckBox, xp+0 yp-20 gUncheckAllTibia10 vUncheckAllTibia10 Checked%0%, Uncheck all


    ;=============================================================;
    ;=============================================================;
    ;=============================================================;
    ;TAB2
    Gui Tab, 2

    Gui, Add, Groupbox, x10 y+5 w500 r5, Client Tools

    Gui, Add, CheckBox, xp+10 yp+20 vReopenTibia10Client Checked%ReopenTibia10Client%, Reopen Tibia client automatically if closed
    Gui, Add, Text, xp+0 yp+18 w225 Left, - Combined with Auto Reconnect, the character will stay online even if the client gets closed.
    Gui, Add, Checkbox, xp+0 yp+32 vHideTibiaClientTibia10 gHideTibiaClientTibia10 Checked%0%, Hide/show Tibia client
    Gui, Add, Checkbox, xp+0 yp+20 vMakeTibiaClientTransparentTibia10 gMakeTibiaClientTransparentTibia10 Checked%0%, Make Tibia client transparent
    

    Gui, Add, Groupbox, xp+230 yp-75 w255 r3, Set Tibia 11 directory
    Gui, Add, Edit, xp+10 yp+18 vTibia10Directory w235 h19 0x80 ReadOnly Left, %Tibia10Directory%
    Gui, Add, Button, xp+30 yp+25 h20 gSelectTibiaDirectory, Select Directory
    Gui, Add, Button, xp+100 yp+0 gOpenClientTibia10 h20, Open Client

    Gui Add, GroupBox, x10 y+40 w500 h8 cBlack 

    ;=============================================================;
    ;=============================================================;
    ;=============================================================;
    ;TAB3
    Gui Tab, 3


    Gui, Tab, 3
    
    Gui, Add, Groupbox, x10 y25 w500 r8, Gaming Mode
        
    Gui, Add, CheckBox, xp+10 yp+18 gGamingMode vGamingMode Checked%GamingMode% Left, Enable Gaming Mode
    Gui, Add, Radio, xp+10 yp+30 vPauseGameMode Disabled group Checked%1%, Pause with Ctrl + Enter
    Gui, Add, Radio, xp+0 yp+20 vWASDWalk Disabled group Checked%1%, Walk with WASD
    Gui, Add, Radio, xp+0 yp+20 vRemapKeys Disabled group Checked%1%, Remap Keys

    Gui, Add, Groupbox, xp+150 yp-75 w140 r6.5 Center, Key  >  Remap

    Gui, Add, Hotkey, xp+10 yp+20 w45 h18 vRemapKey1Tibia10, %RemapKey1Tibia10%
    Gui, Add, Text, xp+50 yp+2 Left, >
    Gui, Add, Hotkey, xp+10 yp-2 w45 h18 vRemapKey1RemapTibia10, %RemapKey1RemapTibia10%
    Gui, Font, s6
    Gui, Add, Text, xp+50 yp+5 Left, < 1
    Gui, Font, s8

    Gui, Add, Hotkey, xp-110 yp+20 w45 h18 vRemapKey2Tibia10, %RemapKey2Tibia10%
    Gui, Add, Text, xp+50 yp+2 Left, >
    Gui, Add, Hotkey, xp+10 yp-2 w45 h18 vRemapKey2RemapTibia10, %RemapKey2RemapTibia10%
    Gui, Font, s6
    Gui, Add, Text, xp+50 yp+5 Left, < 2
    Gui, Font, s8

    Gui, Add, Hotkey, xp-110 yp+20 w45 h18 vRemapKey3Tibia10, %RemapKey3Tibia10%
    Gui, Add, Text, xp+50 yp+2 Left, >
    Gui, Add, Hotkey, xp+10 yp-2 w45 h18 vRemapKey3RemapTibia10, %RemapKey3RemapTibia10%
    Gui, Font, s6
    Gui, Add, Text, xp+50 yp+5 Left, < 3
    Gui, Font, s8

    Gui, Add, Hotkey, xp-110 yp+20 w45 h18 vRemapKey4Tibia10, %RemapKey4Tibia10%
    Gui, Add, Text, xp+50 yp+2 Left, >
    Gui, Add, Hotkey, xp+12 yp-2 w45 h18 vRemapKey4RemapTibia10, %RemapKey4RemapTibia10%
    Gui, Font, s6
    Gui, Add, Text, xp+50 yp+5 Left, < 4
    Gui, Font, s8

    Gui, Add, Hotkey, xp-112 yp+20 w45 h18 vRemapKey5Tibia10, %RemapKey5Tibia10%
    Gui, Add, Text, xp+50 yp+2 Left, >
    Gui, Add, Hotkey, xp+12 yp-2 w45 h18 vRemapKey5RemapTibia10, %RemapKey5RemapTibia10%
    Gui, Font, s6
    Gui, Add, Text, xp+50 yp+5 Left, < 5
    Gui, Font, s8
    

    Gui, Add, Groupbox, xp+30 yp-125 w141 r6.5 Center, Key  >  Remap

    Gui, Add, Hotkey, xp+10 yp+20 w45 h18 vRemapKey6Tibia10, %RemapKey6Tibia10%
    Gui, Add, Text, xp+50 yp+2 Left, >
    Gui, Add, Hotkey, xp+12 yp-2 w45 h18 vRemapKey6RemapTibia10, %RemapKey6RemapTibia10%
    Gui, Font, s6
    Gui, Add, Text, xp+50 yp+5 Left, < 6
    Gui, Font, s8

    Gui, Add, Hotkey, xp-112 yp+20 w45 h18 vRemapKey7Tibia10, %RemapKey7Tibia10%
    Gui, Add, Text, xp+50 yp+2 Left, >
    Gui, Add, Hotkey, xp+12 yp-2 w45 h18 vRemapKey7RemapTibia10, %RemapKey7RemapTibia10%
    Gui, Font, s6
    Gui, Add, Text, xp+50 yp+5 Left, < 7
    Gui, Font, s8

    Gui, Add, Hotkey, xp-112 yp+20 w45 h18 vRemapKey8Tibia10, %RemapKey8Tibia10%
    Gui, Add, Text, xp+50 yp+2 Left, >
    Gui, Add, Hotkey, xp+12 yp-2 w45 h18 vRemapKey8RemapTibia10, %RemapKey8RemapTibia10%
    Gui, Font, s6
    Gui, Add, Text, xp+50 yp+5 Left, < 8
    Gui, Font, s8

    Gui, Add, Hotkey, xp-112 yp+20 w45 h18 vRemapKey9Tibia10, %RemapKey9Tibia10%
    Gui, Add, Text, xp+50 yp+2 Left, >
    Gui, Add, Hotkey, xp+12 yp-2 w45 h18 vRemapKey9RemapTibia10, %RemapKey9RemapTibia10%
    Gui, Font, s6
    Gui, Add, Text, xp+50 yp+5 Left, < 9
    Gui, Font, s8

    Gui, Add, Hotkey, xp-112 yp+20 w45 h18 vRemapKey10Tibia10, %RemapKey10Tibia10%
    Gui, Add, Text, xp+50 yp+2 Left, >
    Gui, Add, Hotkey, xp+12 yp-2 w45 h18 vRemapKey10RemapTibia10, %RemapKey10RemapTibia10%
    Gui, Font, s6
    Gui, Add, Text, xp+49 yp+5 Left, < 10
    Gui, Font, s8

    Gui Add, GroupBox, x10 y+25 w500 h8 cBlack 

    Gui, Add, Groupbox, x10 y+5 w220 r6, Move item to backpack
    Gui, Add, Checkbox, xp+10 yp+22 vMoveItemToBackpackTibia10 Checked%MoveItemToBackpackTibia10%, Hotkey:
    Gui, Add, Combobox, xp+60 yp-3 w130 vMoveItemToBackpackHotkeyTibia10, None|F1|F2|F3|F4|F5|F6|F7|F8|F9|F10|F11|F12|Esc|Home|Insert|PgUp|PgDown|End|Del|Forward Mouse Button|Back Mouse Button|Scroll Mouse Button
    GuiControl, ChooseString, MoveItemToBackpackHotkeyTibia10, %MoveItemToBackpackHotkeyTibia10%

    Gui, Add, Text, xp-60 yp+30 r3, Backpack Position
    Gui, Add, Text, xp+10 yp+20 Left, x:
    Gui, Add, edit, xp+15 yp-2 vBPPosXTibia10 w40 h19 Left, %BPPosXTibia10%

    Gui, Add, Text, xp+50 yp+2 Left, y:
    Gui, Add, edit, xp+15 yp-2 vBPPosYTibia10 w40 h19 Left, %BPPosYTibia10%

    Gui, Add, Button, xp-79 yp+25 gGetBPPositionTibia10, Get backpack position

    Gui, Add, Picture, xp+140 yp-20, Images\PillowBackpack.png


    Gui, Add, Groupbox, x240 yp-72 w270 r7, Move item to ground
    Gui, Add, Checkbox, xp+10 yp+20 vMoveItemToGroundTibia10 Checked%MoveItemToGroundTibia10%, Hotkey:
    Gui, Add, Combobox, xp+60 yp-3 w130 vMoveItemToGroundHotkeyTibia10, None|F1|F2|F3|F4|F5|F6|F7|F8|F9|F10|F11|F12|Esc|Home|Insert|PgUp|PgDown|End|Del|Forward Mouse Button|Back Mouse Button|Scroll Mouse Button
    GuiControl, ChooseString, MoveItemToGroundHotkeyTibia10, %MoveItemToGroundHotkeyTibia10%

    Gui, Add, Text, xp-60 yp+30 r3, Character Position
    Gui, Add, Text, xp+10 yp+20 Left, x:
    Gui, Add, edit, xp+15 yp-2 vCharPosXTibia10 w40 h19 Left, %CharPosXTibia10%

    Gui, Add, Text, xp+50 yp+2 Left, y:
    Gui, Add, edit, xp+15 yp-2 vCharPosYTibia10 w40 h19 Left, %CharPosYTibia10%

    Gui, Add, Button, xp-79 yp+25 gGetCharPositionTibia10, Get character position

    Gui, Add, Picture, xp+135 yp-45, Images\TibiaCharacter.png

    Gui, Add, Groupbox, x10 yp+110 w500 r4.2, Hotkey Combo
    Gui, Add, CheckBox, xp+10 yp+20 vHotkeyComboTibia10, Enable
    Gui, Add, Text, xp+0 yp+20 Left, When press 
    Gui, Add, Combobox, xp+62 yp-3 w100 vHotkeyComboHotkey1Tibia10, None|F1|F2|F3|F4|F5|F6|F7|F8|F9|F10|F11|F12|Esc|Home|Insert|PgUp|PgDown|End|Del|Forward Mouse Button|Back Mouse Button|Scroll Mouse Button
    Gui, Add, Text, xp+105 yp+3 Left, Sleep
    GuiControl, ChooseString, HotkeyComboHotkey1Tibia10, %HotkeyComboHotkey1Tibia10%

    Gui, Add, Edit, xp+31 yp-3 w40 vSleep1Tibia10 Left, %Sleep1Tibia10%
    Gui, Add, Text, xp+47 yp+3 Left, then send
    Gui, Add, Combobox, xp+52 yp-3 w60 vHotkeyComboHotkey2Tibia10, None|F1|F2|F3|F4|F5|F6|F7|F8|F9|F10|F11|F12|Esc|Home|Insert|PgUp|PgDown|End|Del
    Gui, Add, Text, xp+65 yp+3 Left, Sleep
    GuiControl, ChooseString, HotkeyComboHotkey2Tibia10, %HotkeyComboHotkey2Tibia10%

    Gui, Add, Edit, xp+31 yp-3 w40 vSleep2Tibia10 Left, %Sleep2Tibia10%
    Gui, Add, Text, xp-390 yp+30 Left, then send
    Gui, Add, Combobox, xp+53 yp-3 w60 vHotkeyComboHotkey3Tibia10, None|F1|F2|F3|F4|F5|F6|F7|F8|F9|F10|F11|F12|Esc|Home|Insert|PgUp|PgDown|End|Del
    GuiControl, ChooseString, HotkeyComboHotkey3Tibia10, %HotkeyComboHotkey3Tibia10%
    Gui, Add, Text, xp+65 yp+3 Left, then click on

    
    
    

    Gui, Add, Text, xp+65 yp+0 Left, x:
    Gui, Add, edit, xp+11 yp-2 vClickOnPosXTibia10 w40 h19 Left, %ClickOnPosXTibia10%

    Gui, Add, Text, xp+50 yp+2 Left, y:
    Gui, Add, edit, xp+12 yp-2 vClickOnPosYTibia10 w40 h19 Left, %ClickOnPosYTibia10%

    Gui, Add, Button, xp+50 yp-2 gGetClickPositionTibia10, Get click position


    Gui, Add, Button, xm+140 ym+480 gStartScriptsTibia10, Start Scripts
    Gui, Add, Button, xp+77 yp+0 gCloseScriptsTibia10, Close Scripts
    Gui, Add, Button, xp+80 yp+0 gSavePresetTibia10, Save Preset
    ;=============================================================;
    ;=============================================================;
    ;=============================================================;
    ;TAB4

    Gui Tab, 4

    Gui, Add, Groupbox, x10 y+5 w245 r2.5, Auto refill rings

    Gui, Add, Text, xp+150 yp+20 Left, Tibia Hotkey
    Gui, Add, Checkbox, xp-140 yp+0 Left vRingRefillTibia10 Checked%RingRefillTibia10%, Enable

    Gui, Add, ComboBox, xp+0 yp+18 w110 vRingToRefillTibia10, None|Life Ring|Ring of Healing|Dwarven Ring|Time Ring
    GuiControl, ChooseString, RingToRefillTibia10, %RingToRefillTibia10%

    Gui, Add, ComboBox, xp+120 yp+0 -Group w52 vShiftRingRefillTibia10, None|Shift +|Ctrl +
    Gui, Add, DropDownList, xp+57 yp+0 -Group w50 vRingRefillHotkeyTibia10, F1|F2|F3|F4|F5|F6|F7|F8|F9|F10|F11|F12|Insert|Home|Del|PgUp|PgDn|End
    GuiControl, ChooseString, RingRefillHotkeyTibia10, %RingRefillHotkeyTibia10%
    GuiControl, ChooseString, ShiftRingRefillTibia10, %ShiftRingRefillTibia10%
    
    Gui, Add, Groupbox, x265 yp-38 w245 r2.5, Auto refill amulets
    Gui, Add, Text, xp+145 yp+20 Left, Tibia Hotkey
    Gui, Add, Checkbox, xp-135 yp+0 Left vAmuletRefillTibia10 Checked%AmuletRefillTibia10%, Enable

    Gui, Add, ComboBox, xp+0 yp+18 w110 vAmuletToRefillTibia10, None|Stone Skin Amulet
    GuiControl, ChooseString, AmuletToRefillTibia10, %AmuletToRefillTibia10%

    Gui, Add, ComboBox, xp+118 yp+0 -Group w52 vShiftAmuletRefillTibia10, None|Shift +|Ctrl +
    Gui, Add, DropDownList, xp+57 yp+0 -Group w50 vAmuletRefillHotkeyTibia10, F1|F2|F3|F4|F5|F6|F7|F8|F9|F10|F11|F12|Insert|Home|Del|PgUp|PgDn|End
    GuiControl, ChooseString, AmuletRefillHotkeyTibia10, %AmuletRefillHotkeyTibia10%
    GuiControl, ChooseString, ShiftAmuletRefillTibia10, %ShiftAmuletRefillTibia10%

    Gui, Add, Text, x90 y+15 Left, The equipment HUD must be opened(visible) while running refill scripts.

    Gui Add, GroupBox, x10 y+3 cBlack x10 w500 h8

    Gui, Add, Groupbox, x10 y+7 w500 r8, Renew spells

    Gui, Add, Groupbox, xp+10 yp+15 w240 r6.5, Haste spells

    Gui, Add, Text, xp+140 yp+18 Left, Tibia Hotkey
    Gui, Add, Radio, xp-130 yp+0 gDefaultHasteSpell vDefaultHasteSpellTibia10 Checked%DefaultHasteSpellTibia10% -Group, None

    Gui, Add, Radio, xp+0 yp+20 gChooseHasteSpellTibia10 vRenewUtaniHurTibia10 Checked%RenewUtaniHurTibia10% -Group, Utani Hur*
    GuiControlGet, DefaultHasteSpellTibia10
    If (DefaultHasteSpellTibia10 = 1)
            {
            GuiControl, Disable, DefaultHasteSpellTibia10
            }
    If (DefaultHasteSpellTibia10 = 0)
            {
            GuiControl, Enable, DefaultHasteSpellTibia10
            }

    Gui, Add, ComboBox, xp+113 yp-3 w52 vShiftUtaniHurTibia10 -Group, None|Shift +|Ctrl +
    Gui, Add, DropDownList, xp+57 yp+0 w50 vUtaniHurHotkeyTibia10 -Group, F1|F2|F3|F4|F5|F6|F7|F8|F9|F10|F11|F12|Insert|Home|Del|PgUp|PgDn|End
    GuiControl, ChooseString, UtaniHurHotkeyTibia10, %UtaniHurHotkeyTibia10%
    GuiControl, ChooseString, ShiftUtaniHurTibia10, %ShiftUtaniHurTibia10%

    Gui, Add, Radio, xp-170 yp+28 gChooseHasteSpellTibia10 vRenewUtaniGranHurTibia10 Checked%RenewUtaniGranHurTibia10% -Group, Utani Gran Hur*
    Gui, Add, ComboBox, xp+113 yp-3 w52 vShiftUtaniGranHurTibia10 -Group, None|Shift +|Ctrl +
    Gui, Add, DropDownList, xp+57 yp+0 w50 vUtaniGranHurHotkeyTibia10 -Group, F1|F2|F3|F4|F5|F6|F7|F8|F9|F10|F11|F12|Insert|Home|Del|PgUp|PgDn|End
    GuiControl, ChooseString, UtaniGranHurHotkeyTibia10, %UtaniGranHurHotkeyTibia10%
    GuiControl, ChooseString, ShiftUtaniGranHurTibia10, %ShiftUtaniGranHurTibia10%

    Gui, Add, Radio, xp-170 yp+28 gChooseHasteSpellTibia10 vRenewUtaniTempoHurTibia10 Checked%RenewUtaniTempoHurTibia10% -Group, Utani Tempo Hur*
    Gui, Add, ComboBox, xp+113 yp-3 -Group w52 vShiftUtaniTempoHurTibia10, None|Shift +|Ctrl +
    Gui, Add, DropDownList, xp+57 yp+0 -Group w50 vUtaniTempoHurHotkeyTibia10, F1|F2|F3|F4|F5|F6|F7|F8|F9|F10|F11|F12|Insert|Home|Del|PgUp|PgDn|End
    GuiControl, ChooseString, UtaniTempoHurHotkeyTibia10, %UtaniTempoHurHotkeyTibia10%
    GuiControl, ChooseString, ShiftUtaniTempoHurTibia10, %ShiftUtaniTempoHurTibia10%

    Gui, Add, Radio, xp-170 yp+28 gChooseHasteSpellTibia10 vRenewUtamoTempoSanTibia10 Checked%RenewUtamoTempoSanTibia10% -Group, Utamo Tempo San*
    Gui, Add, ComboBox, xp+113 yp-3 w52 vShiftUtamoTempoSanTibia10, None|Shift +|Ctrl +
    Gui, Add, DropDownList, xp+57 yp+0 w50 vUtamoTempoSanHotkeyTibia10, F1|F2|F3|F4|F5|F6|F7|F8|F9|F10|F11|F12|Insert|Home|Del|PgUp|PgDn|End
    GuiControl, ChooseString, UtamoTempoSanHotkeyTibia10, %UtamoTempoSanHotkeyTibia10%
    GuiControl, ChooseString, ShiftUtamoTempoSanTibia10, %ShiftUtamoTempoSanTibia10%

    Gui, Add, Groupbox, xp+70 yp-110 w235 r2.5, Support spells
    Gui, Add, Text, xp+135 yp+18 Left, Tibia Hotkey
    Gui, Add, Radio, xp-125 yp+0 gDefaultSupportSpell vDefaultSupportSpellTibia10 Checked%DefaultSupportSpellTibia10% -Group, None
    

    Gui, Add, Radio, xp+0 yp+20 gChooseSupportSpellTibia10 vRenewUtamoVitaTibia10 Checked%RenewUtamoVitaTibia10% -Group, Utamo Vita*
    
    GuiControlGet, DefaultSupportSpellTibia10
        If (DefaultSupportSpellTibia10 = 1)
                {
                GuiControl, Disable, DefaultSupportSpellTibia10
                }
        If (DefaultSupportSpellTibia10 = 0)
                {
                GuiControl, Enable, DefaultSupportSpellTibia10
                }
    Gui, Add, ComboBox, xp+108 yp-3 w52 vShiftUtamoVitaTibia10, None|Shift +|Ctrl +
    Gui, Add, DropDownList, xp+57 yp+0 w50 vUtamoVitaHotkeyTibia10, F1|F2|F3|F4|F5|F6|F7|F8|F9|F10|F11|F12|Insert|Home|Del|PgUp|PgDn|End
    GuiControl, ChooseString, UtamoVitaHotkeyTibia10, %UtamoVitaHotkeyTibia10%
    GuiControl, ChooseString, ShiftUtamoVitaTibia10, %ShiftUtamoVitaTibia10%


    Gui, Add, Button, xm+140 ym+480 gStartScriptsTibia10, Start Scripts
    Gui, Add, Button, xp+77 yp+0 gCloseScriptsTibia10, Close Scripts
    Gui, Add, Button, xp+80 yp+0 gSavePresetTibia10, Save Preset
    ;=============================================================;
    ;=============================================================;
    ;=============================================================;
    ;TAB4
    Gui Tab, 5

    Gui, Add, Groupbox, x10 y+5 w500 r3, Account 1
    Gui, Add, Text, xp+10 yp+20 Left, Account Name:  
    Gui, Add, edit, xp+0 yp+20 w80 h20 Password vAccountNameMC1 Left, %AccountNameMC1%   
    Gui, Add, Text, xp+100 yp-20 Left, Password:  
    Gui, Add, edit, xp-10 yp+20 w80 h20 Password vPasswordMC1 Left, %PasswordMC1%
    Gui, Add, Button, xp+85 yp+0 h21 gLoginMC1, Start Login 1
    Gui, Add, Button, xp+75 yp+0 h21 gSalvarMC1, Save
    Gui, Add, Text, xp+85 yp+5 Left, Char position on character's list
    Gui, Add, edit, xp-40 yp-4 w35 h20 Left,
    Gui, Add, UpDown, xp+0 yp+0 vTimesToPressDownMC1 Range1-20 Left, %TimesToPressDownMC1%
    Gui, Add, Checkbox, xp+1 yp-20 vBackgroundLoginMC1 Disabled Left, Background Login (BETA)*

    Gui, Add, Groupbox, x10 y+50 w500 r3, Account 2
    Gui, Add, Text, xp+10 yp+20 Left, Account Name:  
    Gui, Add, edit, xp+0 yp+20 w80 h20 Password vAccountNameMC2 Left, %AccountNameMC2%   
    Gui, Add, Text, xp+100 yp-20 Left, Password:  
    Gui, Add, edit, xp-10 yp+20 w80 h20 Password vPasswordMC2 Left, %PasswordMC2%
    Gui, Add, Button, xp+85 yp+0 h21 gLoginMC2, Start Login 2
    Gui, Add, Button, xp+75 yp+0 h21 gSalvarMC2, Save
    Gui, Add, Text, xp+85 yp+5 Left, Char position on character's list
    Gui, Add, edit, xp-40 yp-4 w35 h20 Left,
    Gui, Add, UpDown, xp+0 yp+0 vTimesToPressDownMC2 Range1-20 Left, %TimesToPressDownMC2%
    Gui, Add, CheckBox, xp+1 yp-20 Hidden vBackgroundLoginMC2 Left, Background Login (BETA)*

    Gui, Add, Groupbox, x10 y+50 w500 r3, Account 3
    Gui, Add, Text, xp+10 yp+20 Left, Account Name:  
    Gui, Add, edit, xp+0 yp+20 w80 h20 Password vAccountNameMC3 Left, %AccountNameMC3%   
    Gui, Add, Text, xp+100 yp-20 Left, Password:  
    Gui, Add, edit, xp-10 yp+20 w80 h20 Password vPasswordMC3 Left, %PasswordMC3%
    Gui, Add, Button, xp+85 yp+0 h21 gLoginMC3, Start Login 3
    Gui, Add, Button, xp+75 yp+0 h21 gSalvarMC3, Save
    Gui, Add, Text, xp+85 yp+5 Left, Char position on character's list
    Gui, Add, edit, xp-40 yp-4 w35 h20 Left,
    Gui, Add, UpDown, xp+0 yp+0 vTimesToPressDownMC3 Range1-20 Left, %TimesToPressDownMC3%
    Gui, Add, CheckBox, xp+1 yp-20 Hidden vBackgroundLoginMC3 Left, Background Login (BETA)*

    Gui, Add, Groupbox, x10 y+50 w500 r3, Account 4
    Gui, Add, Text, xp+10 yp+20 Left, Account Name:  
    Gui, Add, edit, xp+0 yp+20 w80 h20 Password vAccountNameMC4 Left, %AccountNameMC4%   
    Gui, Add, Text, xp+100 yp-20 Left, Password:  
    Gui, Add, edit, xp-10 yp+20 w80 h20 Password vPasswordMC4 Left, %PasswordMC4%
    Gui, Add, Button, xp+85 yp+0 h21 gLoginMC4, Start Login 4
    Gui, Add, Button, xp+75 yp+0 h21 gSalvarMC4, Save
    Gui, Add, Text, xp+85 yp+5 Left, Char position on character's list
    Gui, Add, edit, xp-40 yp-4 w35 h20 Left,
    Gui, Add, UpDown, xp+0 yp+0 vTimesToPressDownMC4 Range1-20 Left, %TimesToPressDownMC4%
    Gui, Add, CheckBox, xp+1 yp-20 Hidden vBackgroundLoginMC4 Left, Background Login (BETA)*

    Gui, Add, Groupbox, x10 y+50 w500 r3, Account 5
    Gui, Add, Text, xp+10 yp+20 Left, Account Name:  
    Gui, Add, edit, xp+0 yp+20 w80 h20 Password vAccountNameMC5 Left, %AccountNameMC5%   
    Gui, Add, Text, xp+100 yp-20 Left, Password:  
    Gui, Add, edit, xp-10 yp+20 w80 h20 Password vPasswordMC5 Left, %PasswordMC5%
    Gui, Add, Button, xp+85 yp+0 h21 gLoginMC5, Start Login 5
    Gui, Add, Button, xp+75 yp+0 h21 gSalvarMC5, Save
    Gui, Add, Text, xp+85 yp+5 Left, Char position on character's list
    Gui, Add, edit, xp-40 yp-4 w35 h20 Left,
    Gui, Add, UpDown, xp+0 yp+0 vTimesToPressDownMC5 Range1-20 Left, %TimesToPressDownMC5%
    Gui, Add, CheckBox, xp+1 yp-20 Hidden  vBackgroundLoginMC5 Left, Background Login (BETA)*

    Gui, font, bold
    Gui, Add, Text, x120 y+50 Left, Must configure Tibia client directory before using.
    Gui, font, norm

    ;=============================================================;
    ;=============================================================;
    ;=============================================================;
    ;TAB5
    Gui Tab, 6

      

    Gui, Add, Groupbox, x10 y+5 w245 r1.5, FAQ
    Gui, Add, Button, xp+25 yp+17 w90 h22 gOpenFAQEN-US, FAQ (EN-US)
    Gui, Add, Button, xp+110 yp+0 w90 h22 gOpenFAQPT-BR, FAQ (PT-BR)

    Gui, Add, Groupbox, x265 yp-17 w245 r1.5, Settings
    Gui, Add, Button, xp+60 yp+17 w130 h22 Disabled gLoadDefaultSettings, Load Default Settings*

    Gui, Add, Groupbox, x10 y+20 w245 r1.4, Others
    Gui, Add, CheckBox, xp+10 yp+20 gTransparentOldBotTibia10 vTransparentOldBotTibia10 Checked%TransparentOldBotTibia10%, Make OldBot transparent
    IniRead, TransparentOldBotTibia10, settings.ini, settings, TransparentOldBotTibia10
    If (TransparentOldBotTibia10 = 1)
    {
    Run, %A_ScriptDir%/Scripts/Functions/SetWindowTransparentTibia10.ahk
    }
    If (TransparentOldBotTibia10 = 0)
    {
    Run, %A_ScriptDir%/Scripts/Functions/SetWindowNormalTibia10.ahk
    }

    Gui, Add, edit, xm+185 ym+480 ReadOnly, Registred until: %ExpiryMonth%/%ExpiryYear%

    Gui, Show, w520 h530, OldBot - Tibia 10 BETA
    Return
} ; Tibia10GUI







Tibia11GUI:
{
    Gui, Add, Tab2, x0 y0 w530 h22, Main|Client Tools|Gaming|Refill and Spells|Multi Client Login|More

    ;=============================================================;
    ;=============================================================;
    ;=============================================================;
    ;TAB1
    

        Gui Tab, 1

    Gui, Add, Groupbox, x10 y+5 w245 r5.5, Account 1
    Gui, Add, Checkbox, xp+10 yp+17 vLoginHotkey1Tibia11 Checked%LoginHotkey1Tibia11% Left, Login pressing Ctrl+Insert in Tibia
    
    Gui, Add, Text, xp+1 yp+15 Left, Account Name:  
    Gui, Add, edit, xp-1 yp+15 w90 h19 Password vAccountNameReconnectTibia11 Left, %AccountNameReconnectTibia11%   
    

    Gui, Add, Text, xp+95 yp-15 Left, Password:  
    Gui, Add, edit, xp+0 yp+15 w90 h19 Password vPasswordReconnectTibia11 Left, %PasswordReconnectTibia11%
    

    Gui, Add, edit, xp-95 yp+25 w35 h19 Left vTimesToPressDownTibia11Edit,
    Gui, Add, UpDown, xp+0 yp+0 vTimesToPressDownTibia11 Range1-20 Left, %TimesToPressDownTibia11%
    Gui, Add, Text, xp+39 yp+3 Left, <- Char position on character's list

    Gui, Add, Button, xp-39 yp+22 h20 gHowToUseAutoReconnectTibia11, How To Use
    Gui, Add, CheckBox, xp+75 yp+3 vAutoReconnectTibia11 Checked%AutoReconnectTibia11%, Auto reconnect

    Gui, Add, Groupbox, x265 yp-96 w245 r4.4, Account 2
    Gui, Add, Checkbox, xp+10 yp+17 vLoginHotkey2Tibia11 Checked%LoginHotkey2Tibia11% Left, Login pressing Ctrl+Home in Tibia
    
    Gui, Add, Text, xp+1 yp+15 Left, Account Name:  
    Gui, Add, edit, xp-1 yp+15 w90 h19 Password vAccountNameReconnect2Tibia11 Left, %AccountNameReconnect2Tibia11%   

    Gui, Add, Text, xp+95 yp-15 Left, Password:  
    Gui, Add, edit, xp+0 yp+15 w90 h19 Password vPasswordReconnect2Tibia11 Left, %PasswordReconnect2Tibia11%

    Gui, Add, edit, xp-95 yp+25 w35 h19 Left vTimesToPressDown2Tibia11Edit,
    Gui, Add, UpDown, xp+0 yp+0 vTimesToPressDown2Tibia11 Range1-20 Left, %TimesToPressDown2Tibia11%
    Gui, Add, Text, xp+39 yp+2 Left, <- Char position on character's list

    Gui Add, GroupBox, x10 y+40 cBlack x10 w500 h8

    Gui, Add, Groupbox, x10 y+5 w500 r6.5, Misc Tools

    Gui, Add, Button, xp+10 yp+20 h20 gHowToUsePressHotkeyWhenFullMana, How To Use
    Gui, Add, CheckBox, xp+75 yp+3 w23 vPressHotkeyWhenFullManaTibia11 Checked%PressHotkeyWhenFullManaTibia11%, Press
    Gui, Add, ComboBox, xp+48 yp-3 -Group w50 vShiftFullManaTibia11, None|Shift +|Ctrl +
    Gui, Add, DropDownList, xp+53 yp+0 -Group w42 vPressHotkeyWhenFullManaHotkeyTibia11, None|F1|F2|F3|F4|F5|F6|F7|F8|F9|F10|F11|F12|a|b|c|d|e|f|g|h|i|j|k|l|m|n|o|p|q|s|t|u|v|x|w|y|z|1|2|3|4|5|6|7|8|9|Esc|Home|Insert|PgUp|PgDown|End|Del
    Gui, Add, Text, xp+47 yp+2 Left, when full mana
    GuiControl, ChooseString, PressHotkeyWhenFullManaHotkeyTibia11, %PressHotkeyWhenFullManaHotkeyTibia11%
    GuiControl, ChooseString, ShiftFullManaTibia11, %ShiftFullManaTibia11%
    
    Gui, Add, Button, xp-223 yp+22 h20 gHowToUseEatFoodTibia11, How To Use
    Gui, Add, Checkbox, xp+75 yp+3 w23 vEatFoodTibia11 Checked%EatFoodTibia11%, Press
    Gui, Add, ComboBox, xp+48 yp-3 -Group w50 vShiftEatFoodTibia11, None|Shift +|Ctrl +
    Gui, Add, DropDownList, xp+53 yp-0 -Group w42 vEatFoodHotkeyTibia11, None|F1|F2|F3|F4|F5|F6|F7|F8|F9|F10|F11|F12|a|b|c|d|e|f|g|h|i|j|k|l|m|n|o|p|q|s|t|u|v|x|w|y|z|1|2|3|4|5|6|7|8|9|Esc|Home|Insert|PgUp|PgDown|End|Del
    Gui, Add, Text, xp+47 yp+2 Left, to auto eat food
    GuiControl, ChooseString, EatFoodHotkeyTibia11, %EatFoodHotkeyTibia11%
    GuiControl, ChooseString, ShiftEatFoodTibia11, %ShiftEatFoodTibia11%

    Gui, Add, Button, xp-223 yp+20 h20 gHowToUseLogoffBattleChanges, How To Use
    Gui, Add, CheckBox, xp+75  yp+3 vLogoffIfBattleChangesTibia11 Checked%LogoffIfBattleChangesTibia11%, Logoff if Battle window changes

    Gui, Add, CheckBox, xp-73 yp+23 vRightClickHold Checked%RightClickHold% Left, Right click hold
    Gui, Add, edit, xp+95 yp-2 w25 h19 vRightClickHoldDelay Left, %RightClickHoldDelay%
    Gui, Add, Text, xp+29 yp+2 Left, <- Delay between each click

    Gui, Add, Groupbox, xp+180 yp-80 w175 r5, Timer Tools
    Gui, Add, Text, xp+140 yp+8 Left, ms

    Gui, Add, CheckBox, xp-130 yp+18 w45 vPressFXEveryXms1Tibia11 Checked%PressFXEveryXms1Tibia11% BackgroundTrans, Press
    Gui, Add, DropDownList, xp+45 yp-3 w42 vPressFXEveryXms1HotkeyTibia11, None|F1|F2|F3|F4|F5|F6|F7|F8|F9|F10|F11|F12|a|b|c|d|e|f|g|h|i|j|k|l|m|n|o|p|q|s|t|u|v|x|w|y|z|1|2|3|4|5|6|7|8|9|Esc|Home|Insert|PgUp|PgDown|End|Del
    Gui, Add, Text, xp+45 yp+3 Left, every
    Gui, Add, edit, xp+28 yp-2  w40 h19 vPressFXEveryXms1DelayTibia11 Left, %PressFXEveryXms1DelayTibia11%
    GuiControl, ChooseString, PressFXEveryXms1HotkeyTibia11, %PressFXEveryXms1HotkeyTibia11%

    Gui, Add, CheckBox, xp-118 yp+25 w45 vPressFXEveryxms2Tibia11 Checked%PressFXEveryxms2Tibia11% BackgroundTrans, Press
    Gui, Add, DropDownList, xp+45 yp-3 w42 vPressFXEveryxms2HotkeyTibia11, None|F1|F2|F3|F4|F5|F6|F7|F8|F9|F10|F11|F12|a|b|c|d|e|f|g|h|i|j|k|l|m|n|o|p|q|s|t|u|v|x|w|y|z|1|2|3|4|5|6|7|8|9|Esc|Home|Insert|PgUp|PgDown|End|Del
    Gui, Add, Text, xp+45 yp+3 Left, every
    Gui, Add, edit, xp+28 yp-2  w40 h19 vPressFXEveryxms2DelayTibia11 Left, %PressFXEveryxms2DelayTibia11%
    GuiControl, ChooseString, PressFXEveryxms2HotkeyTibia11, %PressFXEveryxms2HotkeyTibia11%

    Gui, Add, CheckBox, xp-118 yp+25 w45 vPressFXEveryxms3Tibia11 Checked%PressFXEveryxms3Tibia11% BackgroundTrans, Press
    Gui, Add, DropDownList, xp+45 yp-3 w42 vPressFXEveryxms3HotkeyTibia11, None|F1|F2|F3|F4|F5|F6|F7|F8|F9|F10|F11|F12|a|b|c|d|e|f|g|h|i|j|k|l|m|n|o|p|q|s|t|u|v|x|w|y|z|1|2|3|4|5|6|7|8|9|Esc|Home|Insert|PgUp|PgDown|End|Del
    Gui, Add, Text, xp+45 yp+3 Left, every
    Gui, Add, edit, xp+28 yp-2  w40 h19 vPressFXEveryxms3DelayTibia11 Left, %PressFXEveryxms3DelayTibia11%
    GuiControl, ChooseString, PressFXEveryxms3HotkeyTibia11, %PressFXEveryxms3HotkeyTibia11%

    Gui, Font, italic
    Gui, Add, Text, xp-118 yp+22 Left, 1000ms = 1 second
    Gui, Font, normal
    
    

    Gui, Add, Checkbox, xp-313 yp+12 vHeal25Tibia11 Checked%Heal25Tibia11%, Press
    Gui, Add, Combobox, xp+48 yp-3 -Group w45 vHeal25HotkeyTibia11, None|F1|F2|F3|F4|F5|F6|F7|F8|F9|F10|F11|F12|a|b|c|d|e|f|g|h|i|j|k|l|m|n|o|p|q|s|t|u|v|x|w|y|z|1|2|3|4|5|6|7|8|9|Esc|Home|Insert|PgUp|PgDown|End|Del
    Gui, Add, Text, xp+50 yp+3 Left, when life is below 25`% (BETA)
    GuiControl, ChooseString, Heal25HotkeyTibia11, %Heal25HotkeyTibia11%
    

    Gui, Add, Groupbox, x10 yp+38 w245 r3.5, AFK Tools
    Gui, Add, CheckBox, xp+10 yp+20 vAntiIdleTibia11 Checked%AntiIdleTibia11%, Change direction every
    Gui, Add, CheckBox, xp+0 yp+22 vAntiIdleBackgroundTibia11 Checked%AntiIdleBackgroundTibia11%, Background Anti-AFK
    Gui, Add, edit, xp+131 yp-24 w45 h19 vAntiIdleDelayTibia11 Left, %AntiIdleDelayTibia11%
    Gui, Add, Text, xp+49 yp+2 Left, <- ms
    Gui, Add, CheckBox, xp-180 yp+43 vKeepTibia11ClientActive Checked%KeepTibia11ClientActive%, Keep Tibia client always focused

    
    Gui, Add, Button, xm+140 ym+480 gStartScriptsTibia11, Start Scripts
    Gui, Add, Button, xp+77 yp+0 gCloseScriptsTibia11, Close Scripts
    Gui, Add, Button, xp+80 yp+0 gSavePresetTibia11, Save Preset
    Gui, Add, Button, xp+77 yp+0 gReloadOldBot, Reload
    Gui, Add, CheckBox, xp-360 yp+5 gSkipOldBotLogin vSkipOldBotLogin Checked%SkipOldBotLogin%, Skip OldBot Login
    Gui, Add, CheckBox, xp+0 yp-20 gUncheckAllTibia11 vUncheckAllTibia11 Checked%0%, Uncheck all



    ;=============================================================;
    ;TAB2
    Gui Tab, 2

    Gui, Add, Groupbox, x10 y+5 w500 r5, Client Tools

    Gui, Add, CheckBox, xp+10 yp+20 vReopenTibia11Client Checked%ReopenTibia11Client%, Reopen Tibia client automatically if closed
    Gui, Add, Text, xp+0 yp+18 w225 Left, - Combined with Auto Reconnect, the character will stay online even if the client gets closed.
    Gui, Add, Checkbox, xp+0 yp+32 vHideTibiaClientTibia11 gHideTibiaClientTibia11 Checked%0%, Hide/show Tibia client
    Gui, Add, Checkbox, xp+0 yp+20 vMakeTibiaClientTransparentTibia11 gMakeTibiaClientTransparentTibia11 Checked%0%, Make Tibia client transparent
    

    Gui, Add, Groupbox, xp+230 yp-75 w255 r3, Set Tibia 11 directory
    Gui, Add, Edit, xp+10 yp+18 vTibia11Directory w235 h19 0x80 ReadOnly Left, %Tibia11Directory%
    Gui, Add, Button, xp+30 yp+25 h20 gSelectTibiaDirectory, Select Directory
    Gui, Add, Button, xp+100 yp+0 gOpenClientTibia11 h20, Open Client

    Gui Add, GroupBox, x10 y+40 w500 h8 cBlack 

    ;=============================================================;
    ;=============================================================;
    ;=============================================================;
    ;TAB3

    Gui, Tab, 3
    
    Gui, Add, Groupbox, x10 y25 w500 r8, Gaming Mode

    Gui, Add, Button, xp+10 yp+18 Disabled, Tibia 10 only
    Gui, Add, Radio, xp+10 yp+30 Disabled group Checked%1%, Pause with Ctrl + Enter
    Gui, Add, Radio, xp+0 yp+20 Disabled group Checked%1%, Walk with WASD
    Gui, Add, Radio, xp+0 yp+20 Disabled group Checked%1%, Remap Keys

    Gui, Add, Groupbox, xp+150 yp-75 w140 r6.5 Center, Key  >  Remap

    Gui, Add, Hotkey, xp+10 yp+20 w45 h18  Disabled
    Gui, Add, Text, xp+50 yp+2 Left, >
    Gui, Add, Hotkey, xp+10 yp-2 w45 h18  Disabled
    Gui, Font, s6
    Gui, Add, Text, xp+50 yp+5 Left, < 1
    Gui, Font, s8

    Gui, Add, Hotkey, xp-110 yp+20 w45 h18 Disabled
    Gui, Add, Text, xp+50 yp+2 Left, >
    Gui, Add, Hotkey, xp+10 yp-2 w45 h18 Disabled
    Gui, Font, s6
    Gui, Add, Text, xp+50 yp+5 Left, < 2
    Gui, Font, s8

    Gui, Add, Hotkey, xp-110 yp+20 w45 h18  Disabled
    Gui, Add, Text, xp+50 yp+2 Left, >
    Gui, Add, Hotkey, xp+10 yp-2 w45 h18  Disabled
    Gui, Font, s6
    Gui, Add, Text, xp+50 yp+5 Left, < 3
    Gui, Font, s8

    Gui, Add, Hotkey, xp-110 yp+20 w45 h18 Disabled
    Gui, Add, Text, xp+50 yp+2 Left, >
    Gui, Add, Hotkey, xp+12 yp-2 w45 h18 Disabled
    Gui, Font, s6
    Gui, Add, Text, xp+50 yp+5 Left, < 4
    Gui, Font, s8

    Gui, Add, Hotkey, xp-112 yp+20 w45 h18 Disabled
    Gui, Add, Text, xp+50 yp+2 Left, >
    Gui, Add, Hotkey, xp+12 yp-2 w45 h18 Disabled
    Gui, Font, s6
    Gui, Add, Text, xp+50 yp+5 Left, < 5
    Gui, Font, s8
    
    Gui, Add, Groupbox, xp+30 yp-125 w141 r6.5 Center, Key  >  Remap

    Gui, Add, Hotkey, xp+10 yp+20 w45 h18  Disabled
    Gui, Add, Text, xp+50 yp+2 Left, >
    Gui, Add, Hotkey, xp+12 yp-2 w45 h18  Disabled
    Gui, Font, s6
    Gui, Add, Text, xp+50 yp+5 Left, < 6
    Gui, Font, s8

    Gui, Add, Hotkey, xp-112 yp+20 w45 h18 Disabled
    Gui, Add, Text, xp+50 yp+2 Left, >
    Gui, Add, Hotkey, xp+12 yp-2 w45 h18  Disabled
    Gui, Font, s6
    Gui, Add, Text, xp+50 yp+5 Left, < 7
    Gui, Font, s8

    Gui, Add, Hotkey, xp-112 yp+20 w45 h18  Disabled
    Gui, Add, Text, xp+50 yp+2 Left, >
    Gui, Add, Hotkey, xp+12 yp-2 w45 h18  Disabled
    Gui, Font, s6
    Gui, Add, Text, xp+50 yp+5 Left, < 8
    Gui, Font, s8

    Gui, Add, Hotkey, xp-112 yp+20 w45 h18 Disabled
    Gui, Add, Text, xp+50 yp+2 Left, >
    Gui, Add, Hotkey, xp+12 yp-2 w45 h18 Disabled
    Gui, Font, s6
    Gui, Add, Text, xp+50 yp+5 Left, < 9
    Gui, Font, s8

    Gui, Add, Hotkey, xp-112 yp+20 w45 h18 Disabled
    Gui, Add, Text, xp+50 yp+2 Left, >
    Gui, Add, Hotkey, xp+12 yp-2 w45 h18 Disabled
    Gui, Font, s6
    Gui, Add, Text, xp+49 yp+5 Left, < 10
    Gui, Font, s8

    Gui Add, GroupBox, x10 y+25 w500 h8 cBlack 

    Gui, Add, Groupbox, x10 y+5 w220 r6, Move item to backpack
    Gui, Add, Checkbox, xp+10 yp+22 vMoveItemToBackpackTibia11 Checked%MoveItemToBackpackTibia11%, Hotkey:
    Gui, Add, Combobox, xp+60 yp-3 w130 vMoveItemToBackpackHotkeyTibia11, None|F1|F2|F3|F4|F5|F6|F7|F8|F9|F10|F11|F12|a|b|c|d|e|f|g|h|i|j|k|l|m|n|o|p|q|s|t|u|v|x|w|y|z|1|2|3|4|5|6|7|8|9|Esc|Home|Insert|PgUp|PgDown|End|Del|Forward Mouse Button|Back Mouse Button|Scroll Mouse Button
    GuiControl, ChooseString, MoveItemToBackpackHotkeyTibia11, %MoveItemToBackpackHotkeyTibia11%

    Gui, Add, Text, xp-60 yp+30 r3, Backpack Position
    Gui, Add, Text, xp+10 yp+20 Left, x:
    Gui, Add, edit, xp+15 yp-2 vBPPosXTibia11 w40 h19 Left, %BPPosXTibia11%

    Gui, Add, Text, xp+50 yp+2 Left, y:
    Gui, Add, edit, xp+15 yp-2 vBPPosYTibia11 w40 h19 Left, %BPPosYTibia11%

    Gui, Add, Button, xp-79 yp+25 gGetBPPositionTibia11, Get backpack position

    Gui, Add, Picture, xp+140 yp-20, Images\PillowBackpack.png


    Gui, Add, Groupbox, x240 yp-72 w270 r7, Move item to ground
    Gui, Add, Checkbox, xp+10 yp+20 vMoveItemToGroundTibia11 Checked%MoveItemToGroundTibia11%, Hotkey:
    Gui, Add, Combobox, xp+60 yp-3 w130 vMoveItemToGroundHotkeyTibia11, None|F1|F2|F3|F4|F5|F6|F7|F8|F9|F10|F11|F12|a|b|c|d|e|f|g|h|i|j|k|l|m|n|o|p|q|s|t|u|v|x|w|y|z|1|2|3|4|5|6|7|8|9|Esc|Home|Insert|PgUp|PgDown|End|Del|Forward Mouse Button|Back Mouse Button|Scroll Mouse Button
    GuiControl, ChooseString, MoveItemToGroundHotkeyTibia11, %MoveItemToGroundHotkeyTibia11%

    Gui, Add, Text, xp-60 yp+30 r3, Character Position
    Gui, Add, Text, xp+10 yp+20 Left, x:
    Gui, Add, edit, xp+15 yp-2 vCharPosXTibia11 w40 h19 Left, %CharPosXTibia11%

    Gui, Add, Text, xp+50 yp+2 Left, y:
    Gui, Add, edit, xp+15 yp-2 vCharPosYTibia11 w40 h19 Left, %CharPosYTibia11%

    Gui, Add, Button, xp-79 yp+25 gGetCharPositionTibia11, Get character position

    Gui, Add, Picture, xp+135 yp-45, Images\TibiaCharacter.png

    Gui, Add, Groupbox, x10 yp+110 w500 r4.2, Hotkey Combo
    Gui, Add, CheckBox, xp+10 yp+20 vHotkeyComboTibia11, Enable
    Gui, Add, Text, xp+0 yp+20 Left, When press 
    Gui, Add, Combobox, xp+62 yp-3 w100 vHotkeyComboHotkey1Tibia11, None|F1|F2|F3|F4|F5|F6|F7|F8|F9|F10|F11|F12|a|b|c|d|e|f|g|h|i|j|k|l|m|n|o|p|q|s|t|u|v|x|w|y|z|1|2|3|4|5|6|7|8|9|Esc|Home|Insert|PgUp|PgDown|End|Del|Forward Mouse Button|Back Mouse Button|Scroll Mouse Button
    Gui, Add, Text, xp+105 yp+3 Left, Sleep
    GuiControl, ChooseString, HotkeyComboHotkey1Tibia11, %HotkeyComboHotkey1Tibia11%

    Gui, Add, Edit, xp+31 yp-3 w40 vSleep1Tibia11 Left, %Sleep1Tibia11%
    Gui, Add, Text, xp+47 yp+3 Left, then send
    Gui, Add, Combobox, xp+52 yp-3 w60 vHotkeyComboHotkey2Tibia11, None|F1|F2|F3|F4|F5|F6|F7|F8|F9|F10|F11|F12|a|b|c|d|e|f|g|h|i|j|k|l|m|n|o|p|q|s|t|u|v|x|w|y|z|1|2|3|4|5|6|7|8|9|Esc|Home|Insert|PgUp|PgDown|End|Del
    Gui, Add, Text, xp+65 yp+3 Left, Sleep
    GuiControl, ChooseString, HotkeyComboHotkey2Tibia11, %HotkeyComboHotkey2Tibia11%

    Gui, Add, Edit, xp+31 yp-3 w40 vSleep2Tibia11 Left, %Sleep2Tibia11%
    Gui, Add, Text, xp-390 yp+30 Left, then send
    Gui, Add, Combobox, xp+53 yp-3 w60 vHotkeyComboHotkey3Tibia11, None|F1|F2|F3|F4|F5|F6|F7|F8|F9|F10|F11|F12|a|b|c|d|e|f|g|h|i|j|k|l|m|n|o|p|q|s|t|u|v|x|w|y|z|1|2|3|4|5|6|7|8|9|Esc|Home|Insert|PgUp|PgDown|End|Del
    GuiControl, ChooseString, HotkeyComboHotkey3Tibia11, %HotkeyComboHotkey3Tibia11%
    Gui, Add, Text, xp+65 yp+3 Left, then click on

    
    
    

    Gui, Add, Text, xp+65 yp+0 Left, x:
    Gui, Add, edit, xp+11 yp-2 vClickOnPosXTibia11 w40 h19 Left, %ClickOnPosXTibia11%

    Gui, Add, Text, xp+50 yp+2 Left, y:
    Gui, Add, edit, xp+12 yp-2 vClickOnPosYTibia11 w40 h19 Left, %ClickOnPosYTibia11%

    Gui, Add, Button, xp+50 yp-2 gGetClickPositionTibia11, Get click position


    Gui, Add, Button, xm+140 ym+480 gStartScriptsTibia11, Start Scripts
    Gui, Add, Button, xp+77 yp+0 gCloseScriptsTibia11, Close Scripts
    Gui, Add, Button, xp+80 yp+0 gSavePresetTibia11, Save Preset
    ;=============================================================;
    ;=============================================================;
    ;=============================================================;
    ;TAB4

    Gui Tab, 4

    Gui, Add, Groupbox, x10 y+5 w245 r2.5, Auto refill rings

    Gui, Add, Text, xp+150 yp+20 Left, Tibia Hotkey
    Gui, Add, Checkbox, xp-140 yp+0 Left vRingRefillTibia11 Checked%RingRefillTibia11%, Enable

    Gui, Add, ComboBox, xp+0 yp+18 w110 vRingToRefillTibia11, None|Life Ring|Ring of Healing|Dwarven Ring|Time Ring
    GuiControl, ChooseString, RingToRefillTibia11, %RingToRefillTibia11%

    Gui, Add, ComboBox, xp+120 yp+0 -Group w52 vShiftRingRefillTibia11, None|Shift +|Ctrl +
    Gui, Add, DropDownList, xp+57 yp+0 -Group w50 vRingRefillHotkeyTibia11, F1|F2|F3|F4|F5|F6|F7|F8|F9|F10|F11|F12|Insert|Home|Del|PgUp|PgDn|End
    GuiControl, ChooseString, RingRefillHotkeyTibia11, %RingRefillHotkeyTibia11%
    GuiControl, ChooseString, ShiftRingRefillTibia11, %ShiftRingRefillTibia11%
    
    Gui, Add, Groupbox, x265 yp-38 w245 r2.5, Auto refill amulets
    Gui, Add, Text, xp+145 yp+20 Left, Tibia Hotkey
    Gui, Add, Checkbox, xp-135 yp+0 Left vAmuletRefillTibia11 Checked%AmuletRefillTibia11%, Enable

    Gui, Add, ComboBox, xp+0 yp+18 w110 vAmuletToRefillTibia11, None|Stone Skin Amulet
    GuiControl, ChooseString, AmuletToRefillTibia11, %AmuletToRefillTibia11%

    Gui, Add, ComboBox, xp+118 yp+0 -Group w52 vShiftAmuletRefillTibia11, None|Shift +|Ctrl +
    Gui, Add, DropDownList, xp+57 yp+0 -Group w50 vAmuletRefillHotkeyTibia11, F1|F2|F3|F4|F5|F6|F7|F8|F9|F10|F11|F12|Insert|Home|Del|PgUp|PgDn|End
    GuiControl, ChooseString, AmuletRefillHotkeyTibia11, %AmuletRefillHotkeyTibia11%
    GuiControl, ChooseString, ShiftAmuletRefillTibia11, %ShiftAmuletRefillTibia11%

    Gui, Add, Text, x90 y+15 Left, The equipment HUD must be opened(visible) while running refill scripts.

    Gui Add, GroupBox, x10 y+3 cBlack x10 w500 h8

    Gui, Add, Groupbox, x10 y+7 w500 r8, Renew spells

    Gui, Add, Groupbox, xp+10 yp+15 w240 r6.5, Haste spells

    Gui, Add, Text, xp+140 yp+18 Left, Tibia Hotkey
    Gui, Add, Radio, xp-130 yp+0 gDefaultHasteSpell vDefaultHasteSpellTibia11 Checked%DefaultHasteSpellTibia11% -Group, None

    Gui, Add, Radio, xp+0 yp+20 gChooseHasteSpellTibia11 vRenewUtaniHurTibia11 Checked%RenewUtaniHurTibia11% -Group, Utani Hur*
    GuiControlGet, DefaultHasteSpellTibia11
    If (DefaultHasteSpellTibia11 = 1)
            {
            GuiControl, Disable, DefaultHasteSpellTibia11
            }
    If (DefaultHasteSpellTibia11 = 0)
            {
            GuiControl, Enable, DefaultHasteSpellTibia11
            }

    Gui, Add, ComboBox, xp+113 yp-3 w52 vShiftUtaniHurTibia11 -Group, None|Shift +|Ctrl +
    Gui, Add, DropDownList, xp+57 yp+0 w50 vUtaniHurHotkeyTibia11 -Group, F1|F2|F3|F4|F5|F6|F7|F8|F9|F10|F11|F12|Insert|Home|Del|PgUp|PgDn|End
    GuiControl, ChooseString, UtaniHurHotkeyTibia11, %UtaniHurHotkeyTibia11%
    GuiControl, ChooseString, ShiftUtaniHurTibia11, %ShiftUtaniHurTibia11%

    Gui, Add, Radio, xp-170 yp+28 gChooseHasteSpellTibia11 vRenewUtaniGranHurTibia11 Checked%RenewUtaniGranHurTibia11% -Group, Utani Gran Hur*
    Gui, Add, ComboBox, xp+113 yp-3 w52 vShiftUtaniGranHurTibia11 -Group, None|Shift +|Ctrl +
    Gui, Add, DropDownList, xp+57 yp+0 w50 vUtaniGranHurHotkeyTibia11 -Group, F1|F2|F3|F4|F5|F6|F7|F8|F9|F10|F11|F12|Insert|Home|Del|PgUp|PgDn|End
    GuiControl, ChooseString, UtaniGranHurHotkeyTibia11, %UtaniGranHurHotkeyTibia11%
    GuiControl, ChooseString, ShiftUtaniGranHurTibia11, %ShiftUtaniGranHurTibia11%

    Gui, Add, Radio, xp-170 yp+28 gChooseHasteSpellTibia11 vRenewUtaniTempoHurTibia11 Checked%RenewUtaniTempoHurTibia11% -Group, Utani Tempo Hur*
    Gui, Add, ComboBox, xp+113 yp-3 -Group w52 vShiftUtaniTempoHurTibia11, None|Shift +|Ctrl +
    Gui, Add, DropDownList, xp+57 yp+0 -Group w50 vUtaniTempoHurHotkeyTibia11, F1|F2|F3|F4|F5|F6|F7|F8|F9|F10|F11|F12|Insert|Home|Del|PgUp|PgDn|End
    GuiControl, ChooseString, UtaniTempoHurHotkeyTibia11, %UtaniTempoHurHotkeyTibia11%
    GuiControl, ChooseString, ShiftUtaniTempoHurTibia11, %ShiftUtaniTempoHurTibia11%

    Gui, Add, Radio, xp-170 yp+28 gChooseHasteSpellTibia11 vRenewUtamoTempoSanTibia11 Checked%RenewUtamoTempoSanTibia11% -Group, Utamo Tempo San*
    Gui, Add, ComboBox, xp+113 yp-3 w52 vShiftUtamoTempoSanTibia11, None|Shift +|Ctrl +
    Gui, Add, DropDownList, xp+57 yp+0 w50 vUtamoTempoSanHotkeyTibia11, F1|F2|F3|F4|F5|F6|F7|F8|F9|F10|F11|F12|Insert|Home|Del|PgUp|PgDn|End
    GuiControl, ChooseString, UtamoTempoSanHotkeyTibia11, %UtamoTempoSanHotkeyTibia11%
    GuiControl, ChooseString, ShiftUtamoTempoSanTibia11, %ShiftUtamoTempoSanTibia11%

    Gui, Add, Groupbox, xp+70 yp-110 w235 r2.5, Support spells
    Gui, Add, Text, xp+135 yp+18 Left, Tibia Hotkey
    Gui, Add, Radio, xp-125 yp+0 gDefaultSupportSpell vDefaultSupportSpellTibia11 Checked%DefaultSupportSpellTibia11% -Group, None
    

    Gui, Add, Radio, xp+0 yp+20 gChooseSupportSpellTibia11 vRenewUtamoVitaTibia11 Checked%RenewUtamoVitaTibia11% -Group, Utamo Vita*
    
    GuiControlGet, DefaultSupportSpellTibia11
        If (DefaultSupportSpellTibia11 = 1)
                {
                GuiControl, Disable, DefaultSupportSpellTibia11
                }
        If (DefaultSupportSpellTibia11 = 0)
                {
                GuiControl, Enable, DefaultSupportSpellTibia11
                }
    Gui, Add, ComboBox, xp+108 yp-3 w52 vShiftUtamoVitaTibia11, None|Shift +|Ctrl +
    Gui, Add, DropDownList, xp+57 yp+0 w50 vUtamoVitaHotkeyTibia11, F1|F2|F3|F4|F5|F6|F7|F8|F9|F10|F11|F12|Insert|Home|Del|PgUp|PgDn|End
    GuiControl, ChooseString, UtamoVitaHotkeyTibia11, %UtamoVitaHotkeyTibia11%
    GuiControl, ChooseString, ShiftUtamoVitaTibia11, %ShiftUtamoVitaTibia11%


    Gui, Add, Button, xm+140 ym+480 gStartScriptsTibia11, Start Scripts
    Gui, Add, Button, xp+77 yp+0 gCloseScriptsTibia11, Close Scripts
    Gui, Add, Button, xp+80 yp+0 gSavePresetTibia11, Save Preset

    ;=============================================================;
    ;=============================================================;
    ;=============================================================;
    ;TAB5
    Gui Tab, 5

    Gui, Add, Groupbox, x10 y+5 w500 r3, Account 1
    Gui, Add, Text, xp+10 yp+20 Left, Account Name:  
    Gui, Add, edit, xp+0 yp+20 w80 h20 Disabled Left Password,     
    Gui, Add, Text, xp+100 yp-20 Left, Password:  
    Gui, Add, edit, xp-10 yp+20 w80 h20 Disabled Left Password, 
    Gui, Add, Button, xp+85 yp+0 h21 Disabled, Tibia 10 Only
    Gui, Add, Button, xp+75 yp+0 h21 Disabled, Save
    Gui, Add, Text, xp+85 yp+5 Left, Char position on character's list
    Gui, Add, edit, xp-40 yp-4 Disabled w35 h20 Left,
    Gui, Add, UpDown, xp+0 yp+0 Range1-20 Left, %TimesToPressDownMC1%
    Gui, Add, CheckBox, xp+1 yp-20 Disabled Left, Background Login (BETA)*

    Gui, Add, Groupbox, x10 y+50 w500 r3, Account 2
    Gui, Add, Text, xp+10 yp+20 Left, Account Name:  
    Gui, Add, edit, xp+0 yp+20 w80 h20 Disabled Password Left,  
    Gui, Add, Text, xp+100 yp-20 Left, Password:  
    Gui, Add, edit, xp-10 yp+20 w80 h20 Password Disabled Left, 
    Gui, Add, Button, xp+85 yp+0 h21 Disabled, Tibia 10 Only
    Gui, Add, Button, xp+75 yp+0 h21 Disabled, Save
    Gui, Add, Text, xp+85 yp+5 Left, Char position on character's list
    Gui, Add, edit, xp-40 yp-4 Disabled w35 h20 Left,
    Gui, Add, UpDown, xp+0 yp+0 Range1-20 Left, %TimesToPressDownMC1%
    Gui, Add, CheckBox, xp+1 yp-20 Hidden Disabled Left, Background Login (BETA)*

    Gui, Add, Groupbox, x10 y+50 w500 r3, Account 3
    Gui, Add, Text, xp+10 yp+20 Left, Account Name:  
    Gui, Add, edit, xp+0 yp+20 w80 h20 Password Left Disabled,  
    Gui, Add, Text, xp+100 yp-20 Left, Password:  
    Gui, Add, edit, xp-10 yp+20 w80 h20 Password Left Disabled, 
    Gui, Add, Button, xp+85 yp+0 h21 Disabled, Tibia 10 Only
    Gui, Add, Button, xp+75 yp+0 h21 Disabled, Save
    Gui, Add, Text, xp+85 yp+5 Left, Char position on character's list
    Gui, Add, edit, xp-40 yp-4 Disabled w35 h20 Left,
    Gui, Add, UpDown, xp+0 yp+0 Range1-20 Left, %TimesToPressDownMC1%
    Gui, Add, CheckBox, xp+1 yp-20 Hidden Disabled Left, Background Login (BETA)*

    Gui, Add, Groupbox, x10 y+50 w500 r3, Account 4
    Gui, Add, Text, xp+10 yp+20 Left, Account Name:  
    Gui, Add, edit, xp+0 yp+20 w80 h20 Disabled Password Left,  
    Gui, Add, Text, xp+100 yp-20 Left, Password:  
    Gui, Add, edit, xp-10 yp+20 w80 h20 Disabled  Password Left, 
    Gui, Add, Button, xp+85 yp+0 h21 Disabled, Tibia 10 Only
    Gui, Add, Button, xp+75 yp+0 h21 Disabled, Save
    Gui, Add, Text, xp+85 yp+5 Left, Char position on character's list
    Gui, Add, edit, xp-40 yp-4 Disabled w35 h20 Left,
    Gui, Add, UpDown, xp+0 yp+0 Range1-20 Left, %TimesToPressDownMC1%
    Gui, Add, CheckBox, xp+1 yp-20 Hidden Disabled Left, Background Login (BETA)*

    Gui, Add, Groupbox, x10 y+50 w500 r3, Account 5
    Gui, Add, Text, xp+10 yp+20 Left, Account Name:  
    Gui, Add, edit, xp+0 yp+20 w80 h20 Disabled Password Left,  
    Gui, Add, Text, xp+100 yp-20 Left, Password:  
    Gui, Add, edit, xp-10 yp+20 w80 h20 Disabled  Password Left, 
    Gui, Add, Button, xp+85 yp+0 h21 Disabled, Tibia 10 Only
    Gui, Add, Button, xp+75 yp+0 h21 Disabled, Save
    Gui, Add, Text, xp+85 yp+5 Left, Char position on character's list
    Gui, Add, edit, xp-40 yp-4 Disabled w35 h20 Left,
    Gui, Add, UpDown, xp+0 yp+0 Range1-20 Left, %TimesToPressDownMC1%
    Gui, Add, CheckBox, xp+1 yp-20 Hidden Disabled Left, Background Login (BETA)*

    Gui, font, bold
    Gui, Add, Text, x130 y+50 Left Disabled, Needs to configure Tibia client directory.
    Gui, font, norm

    ;=============================================================;
    ;=============================================================;
    ;=============================================================;
    ;TAB5
    Gui Tab, 6

    Gui, Add, Groupbox, x10 y+5 w245 r1.5, FAQ
    Gui, Add, Button, xp+25 yp+17 w90 h22 gOpenFAQEN-US, FAQ (EN-US)
    Gui, Add, Button, xp+110 yp+0 w90 h22 gOpenFAQPT-BR, FAQ (PT-BR)

    Gui, Add, Groupbox, x265 yp-17 w245 r1.5, Settings
    Gui, Add, Button, xp+60 yp+17 w130 h22 Disabled gLoadDefaultSettings, Load Default Settings*

    Gui, Add, Groupbox, x10 y+20 w245 r1.4, Others
    Gui, Add, CheckBox, xp+10 yp+20 gTransparentOldBotTibia11 vTransparentOldBotTibia11 Checked%TransparentOldBotTibia11%, Make OldBot transparent
    IniRead, TransparentOldBotTibia11, settings.ini, settings, TransparentOldBotTibia11
    If (TransparentOldBotTibia11 = 1)
    {
    Run, %A_ScriptDir%/Scripts/Functions/SetWindowTransparentTibia11.ahk
    }
    If (TransparentOldBotTibia11 = 0)
    {
    Run, %A_ScriptDir%/Scripts/Functions/SetWindowNormalTibia11.ahk
    }

    Gui, Add, edit, xm+185 ym+480 ReadOnly, Registred until: %ExpiryMonth%/%ExpiryYear%


    Tooltips:
        {
            ;TooltipLanguage = Portuguese
        ; < Tab 1
        if (TooltipLanguage = "English")
        {
            TooltipsENUS:
            {
            LoginHotkey1Tibia11_TT := "Enable login when pressing these hotkeys in Tibia"
            AccountNameReconnectTibia11_TT := "Enter your Tibia account name, the data will be saved in settings.ini"
            PasswordReconnectTibia11_TT := "Enter your Tibia password, the data will be saved in settings.ini"
            TimesToPressDownTibia11_TT := "The position of the character on Tibia character's list"
            TimesToPressDownTibia11Edit_TT := "The position of the character on Tibia character's list"
            HowToUseAutoReconnectTibia11_TT := "Click to see the tutorial if the function isn't working"
            AutoReconnectTibia11_TT := "Enable auto reconnect(if not working click on How To Use)"
            LoginHotkey2Tibia11_TT := "Enable login when pressing these hotkeys in Tibia"
            AccountNameReconnect2Tibia11_TT := "Enter your Tibia account name"
            PasswordReconnectT2ibia11_TT := "Enter your Tibia password"
            TimesToPressDown2Tibia11_TT := "The position of the character on Tibia character's list"
            TimesToPressDown2Tibia11Edit_TT := "The position of the character on Tibia character's list"

            PressHotkeyWhenFullManaTibia11_TT := "Press selected hotkey when mana bar goes full(if not working click on How To Use)"
            PressHotkeyWhenFullManaHotkeyTibia11_TT := "Hotkey to press when mana bar goes full"
            EatFoodTibia11_TT := "Press selected hotkey when food timer goes to 00:00(if not working click on How To Use)"
            EatFoodHotkeyTibia11_TT := "Hotkey to press when food timer is 00:00"
            LogoffIfBattleChangesTibia11_TT := "Search the image of the 'empty' battle window, when not found, logout - see How To Use before using)"
            RightClickHold_TT := "Click automatically right button when you hold it, usefull to walk clicking with 'use' action, eat food, use objects..."
            Heal25Tibia11_TT := "Emergency healer - Press selected hotkey when health bar goes below 25%(red) - BETA feature"

            PressFXEveryXms1Tibia11_TT := "Press selected hotkey every X ms, usefull to refill ammo as paladin, renew a spell when it ends..."
            PressFXEveryXms2Tibia11_TT := "Press selected hotkey every X ms, usefull to refill ammo as paladin, renew a spell when it ends..."
            PressFXEveryXms3Tibia11_TT := "Press selected hotkey every X ms, usefull to refill ammo as paladin, renew a spell when it ends..."
            
            AntiIdleBackgroundTibia11_TT := "Do the anti-idle actions even if Tibia client is not the active window - see FAQ for more info"
            KeepTibia11ClientActive_TT := "Keeps the Tibia Client always the active window, i.e.: when it's minimized or unfocused by another window"
            UncheckAllTibia11_TT := "Uncheck all checkboxes"
            SkipOldBotLogin_TT := "Skip the login screen of OldBot"
            ; Tab 1 />

            ; < Tab 2

            ; Tab 2 />
            ; < Tab 3
            MoveItemToBackpackTibia11_TT := "Move the item under the mouse to the selected pos when press the selected hotkey"
            MoveItemToGroundTibia11_TT := "Move the item under the mouse to the selected pos when press the selected hotkey"
            HotkeyComboTibia11_TT := "Do a combo of hotkeys when the selected hotkey is pressed"
            HotkeyComboHotkey1Tibia11_TT := "Hotkey that starts the combo, after pressing this the others will start to be pressed"
            Sleep1Tibia11_TT := "Delay before pressing the next hotkey - default is 25 ms"
            Sleep2Tibia11_TT := "Delay before pressing the next hotkey - default is 25 ms"
            ; Tab 3 />

            ; < Tab 4

            ; Tab 4 />
            ; < Tab 5

            ; Tab 5 />
            }
        }
            if (TooltipLanguage = "Portuguese")
            {
                TooltipsPTBR:
                {
                LoginHotkey1Tibia11_TT := "Ativar login ao pressionar estas hotkeys no Tibia"
                AccountNameReconnectTibia11_TT := "Digite sua conta do Tibia os dados serão salvos em settings.ini"
                PasswordReconnectTibia11_TT := "Digite sua senha no Tibia, os dados serão salvos em settings.ini"
                TimesToPressDownTibia11_TT := "A posição do personagem na lista de personagens do Tibia"
                TimesToPressDownTibia11Edit_TT := "A posição do personagem na lista de personagens do Tibia"
                HowToUseAutoReconnectTibia11_TT := "Clique para ver o tutorial se a função não funcionar"
                AutoReconnectTibia11_TT := "Ativar o auto reconnect(se não funcionar clique em How To Use)"
                LoginHotkey2Tibia11_TT := "Ativar login ao pressionar estas hotkeys no Tibia"
                AccountNameReconnect2Tibia11_TT := "Digite sua conta do Tibia os dados serão salvos em settings.ini"
                PasswordReconnectT2ibia11_TT := "Digite sua senha no Tibia, os dados serão salvos em settings.ini"
                TimesToPressDown2Tibia11_TT := "A posição do personagem na lista de personagens do Tibia"
                TimesToPressDown2Tibia11Edit_TT := "A posição do personagem na lista de personagens do Tibia"

                PressHotkeyWhenFullManaTibia11_TT := "Pressiona a hotkey selecionada quando a barra de mana ficar cheia(se não funcionar clique em How To Use)"
                PressHotkeyWhenFullManaHotkeyTibia11_TT := "Hotkey to press when mana bar goes full"
                PressHotkeyWhenFullManaHotkeyTibia11_TT := "Hotkey para pressionar quando a barra de mana ficar cheia"
                EatFoodTibia11_TT := "Pressiona a hotkey selecionada quando o timer de food ficar em 00:00(se não funcionar clique em How To Use)"
                EatFoodHotkeyTibia11_TT := "Hotkey to press when food timer is 00:00"
                EatFoodHotkeyTibia11_TT := "Hotkey para pressionar o timer de food ficar em 00:00"
                LogoffIfBattleChangesTibia11_TT := "Procura a imagem da battle window 'vazia', quando não achada, loga - clique em How To Use antes de usar"
                RightClickHold_TT := "Clica automaticamente o botão direito quando você o segura, útil para andar com a ação de 'use', comer food, usar objetos..."
                Heal25Tibia11_TT := "Emergency healer - Pressiona a hotkey selecionada quando a barra de vida ficar abaixo de 25%(vermelha) - função BETA"

                PressFXEveryXms1Tibia11_TT := "Pressiona a hotkey selecionada a cada X ms, útil para refillar munição como paladin, renovar uma magina quando acaba..."
                PressFXEveryXms2Tibia11_TT := "Pressiona a hotkey selecionada a cada X ms, útil para refillar munição como paladin, renovar uma magina quando acaba..."
                PressFXEveryXms3Tibia11_TT := "Pressiona a hotkey selecionada a cada X ms, útil para refillar munição como paladin, renovar uma magina quando acaba..."
                
                AntiIdleBackgroundTibia11_TT := "Realiza as ações de anti-idle mesmo se o cliente do Tibia não for a janela ativa - veja o FAQ para mais informações"
                KeepTibia11ClientActive_TT := "Keeps the Tibia Client always the active window, i.e.: when it's minimized or unfocused by another window"
                UncheckAllTibia11_TT := "Realiza 'Uncheck' em todas as checkboxes"
                SkipOldBotLogin_TT := "Pula a tela de login do OldBot"
                ; Tab 1 />

                ; < Tab 2

                ; Tab 2 />
                ; < Tab 3
                MoveItemToBackpackTibia11_TT := "Move o item em baixo do mouse para a posição selecionada ao pressionar a hotkey selecionada"
                MoveItemToGroundTibia11_TT := "Move o item em baixo do mouse para a posição selecionada ao pressionar a hotkey selecionada"
                HotkeyComboTibia11_TT := "Do a combo of hotkeys when the selected hotkey is pressed"
                HotkeyComboTibia11_TT := "Realiza o combo de hotkeys quando a hotkey selecionada é pressionada"
                HotkeyComboHotkey1Tibia11_TT := "Hotkey que inicia o combo, após pressionar ela as outras começarão a serem pressionadas"
                Sleep1Tibia11_TT := "Delay antes de pressionar a próxima hotkey - o padrão é 25 ms"
                Sleep2Tibia11_TT := "Delay antes de pressionar a próxima hotkey - o padrão é 25 ms"
                ; Tab 3 />

                ; < Tab 4

                ; Tab 4 />
                ; < Tab 5

                ; Tab 5 />
                }
            }
        }



    Gui, Show, w520 h530, OldBot - Tibia 11 BETA
    OnMessage(0x200, "WM_MOUSEMOVE")
    Return
} ; Tibia11GUI
} ; LiberarOldBot

SkipOldBotLogin:
{
    Gui, Submit, NoHide
    IniWrite, %SkipOldBotLogin%, settings.ini, settings, SkipOldBotLogin
    Return
}

Includes:
{
    #Include, %A_ScriptDir%/Scripts/Functions/F_StartScriptsTibia10.ahk
    #Include, %A_ScriptDir%/Scripts/Functions/F_StartScriptsTibia11.ahk
    #Include, %A_ScriptDir%/Scripts/Functions/F_CloseScriptsTibia10.ahk
    #Include, %A_ScriptDir%/Scripts/Functions/F_CloseScriptsTibia11.ahk
    #Include, %A_ScriptDir%/Scripts/Functions/F_SavePresetTibia10.ahk
    #Include, %A_ScriptDir%/Scripts/Functions/F_SavePresetTibia11.ahk
    ; <Tab 1
    #Include, %A_ScriptDir%/Scripts/Functions/HowToUsePressHotkeyWhenFullMana.ahk
    #Include, %A_ScriptDir%/Scripts/Functions/HowToUseEatFoodTibia11.ahk
    #Include, %A_ScriptDir%/Scripts/Functions/HowToUseLogoffBattleChanges.ahk
    #Include, %A_ScriptDir%/Scripts/Functions/HowToUseAutoReconnectTibia11.ahk
    #Include, %A_ScriptDir%/Scripts/Functions/HowToUseAutoReconnectTibia10.ahk
    ; Tab 1>/
    ; <Tab 2
    ; Tab 2/>
    ; <Tab 3
    #Include, %A_ScriptDir%/Scripts/Functions/F_DefaultHasteSpell.ahk
    #Include, %A_ScriptDir%/Scripts/Functions/F_DefaultSupportSpell.ahk
    ; Tab 3/>
    ; <Tab 4
    #Include, %A_ScriptDir%/Scripts/Functions/F_MultiClientLogin.ahk
    ; Tab 4/>
    ; <Tab 5
    #Include, %A_ScriptDir%/Scripts/Functions/F_OpenFAQEN-US.ahk
    #Include, %A_ScriptDir%/Scripts/Functions/F_OpenFAQPT-BR.ahk
    
    ; Tab 5/>
    
} ; Includes


ReloadOldBot:
{
    Reload
    Return
}


UncheckAllTibia11:
{

    GuiControlGet, UncheckAllTibia11
    if (UncheckAllTibia11 = 1)
    {
    GuiControl,, LoginHotkey1Tibia11, 0
    GuiControl,, LoginHotkey2Tibia11, 0
    GuiControl,, AutoReconnectTibia11, 0
    GuiControl,, KeepTibia11ClientActive, 0
    GuiControl,, PressFXEveryXms1Tibia11, 0
    GuiControl,, PressFXEveryXms2Tibia11, 0
    GuiControl,, PressFXEveryXms3Tibia11, 0
    GuiControl,, PressHotkeyWhenFullManaTibia11, 0
    GuiControl,, EatFoodTibia11, 0
    GuiControl,, Heal25Tibia11, 0
    GuiControl,, RightClickHold, 0
    GuiControl,, AntiIdleTibia11, 0
    GuiControl,, AntiIdleBackgroundTibia11, 0
    GuiControl,, LogoffIfBattleChangesTibia11, 0
    GuiControl,, ReopenTibia11Client, 0
    GuiControl,, MoveItemToGroundTibia11, 0
    GuiControl,, MoveItemToBackpackTibia11, 0
    GuiControl,, MoveItemToGroundHotkeyTibia11, 0
    GuiControl,, EquipRoHTibia11, 0
    GuiControl,, EquipLifeRingTibia11, 0
    GuiControl,, EquipTimeRingTibia11, 0
    GuiControl,, EquipDwarvenRingTibia11, 0
    GuiControl,, DefaultAmuletTibia11, 1
    GuiControl, Disable, DefaultAmuletTibia11
    GuiControl,, DefaultRingTibia11, 1
    GuiControl, Disable, DefaultRingTibia11
    GuiControl,, DefaultSupportSpellTibia11, 1
    GuiControl, Disable, DefaultSupportSpellTibia11
    GuiControl,, DefaultHasteSpellTibia11, 1
    GuiControl, Disable, DefaultHasteSpellTibia11
    GuiControl,, RenewUtamoVitaTibia11, 0
    GuiControl,, RenewUtaniHurTibia11, 0
    GuiControl,, RenewUtaniGranHurTibia11, 0
    GuiControl,, RenewUtaniTempoHurTibia11, 0
    GuiControl,, RenewUtamoTempoSanTibia11, 0
    Return
    }
    if (UncheckAllTibia11 = 0)
    {
        Return
    }
    Return
}
    


UncheckAllTibia10:
{
    if (UncheckAllTibia10 = 1)
    {
    GuiControl,, LoginHotkey1Tibia10, 0
    GuiControl,, LoginHotkey2Tibia10, 0
    GuiControl,, AutoReconnectTibia10, 0
    GuiControl,, KeepTibia10ClientActive, 0
    GuiControl,, PressFXEveryXms1Tibia10, 0
    GuiControl,, PressFXEveryXms2Tibia10, 0
    GuiControl,, PressFXEveryXms3Tibia10, 0
    GuiControl,, PressHotkeyWhenFullManaTibia10, 0
    GuiControl,, RightClickHold, 0
    GuiControl,, Heal25Tibia10, 0
    GuiControl,, AntiIdleTibia10, 0
    GuiControl,, AntiIdleBackgroundTibia10, 0
    GuiControl,, LogoffIfBattleChangesTibia10, 0
    GuiControl,, ReopenTibia10Client, 0
    GuiControl,, MoveItemToGroundTibia10, 0
    GuiControl,, MoveItemToBackpackTibia10, 0
    GuiControl,, MoveItemToGroundHotkeyTibia10, 0
    GuiControl,, EquipRoHTibia10, 0
    GuiControl,, EquipLifeRingTibia10, 0
    GuiControl,, EquipTimeRingTibia10, 0
    GuiControl,, EquipDwarvenRingTibia10, 0
    GuiControl,, DefaultAmuletTibia10, 1
    GuiControl, Disable, DefaultAmuletTibia10
    GuiControl,, DefaultRingTibia10, 1
    GuiControl, Disable, DefaultRingTibia10
    GuiControl,, DefaultSupportSpellTibia10, 1
    GuiControl, Disable, DefaultSupportSpellTibia10
    GuiControl,, DefaultHasteSpellTibia10, 1
    GuiControl, Disable, DefaultHasteSpellTibia10
    GuiControl,, RenewUtamoVitaTibia10, 0
    GuiControl,, RenewUtaniHurTibia10, 0
    GuiControl,, RenewUtaniGranHurTibia10, 0
    GuiControl,, RenewUtaniTempoHurTibia10, 0
    GuiControl,, RenewUtamoTempoSanTibia10, 0
    GuiControl,, GamingMode, 0
    GuiControl, Disable, WASDWalk
    GuiControl, Disable, RemapKeys
    GuiControl, Disable, PauseGameMode
    Return
    }
    if (UncheckAllTibia10 = 0)
    {
        Return
    }
    Return
}

MakeTibiaClientTransparentTibia11:
{
    Gui, Submit, NoHide
    GuiControlGet, MakeTibiaClientTransparentTibia11
    If (MakeTibiaClientTransparentTibia11 = 1)
    {
    WinSet, Transparent, 190, ahk_class Qt5QWindowOwnDCIcon
    Return
    }
    If (MakeTibiaClientTransparentTibia11 = 0)
    {
    WinSet, Transparent, 255, ahk_class Qt5QWindowOwnDCIcon
    Return
    }
    Return
}

MakeTibiaClientTransparentTibia10:
{
    Gui, Submit, NoHide
    GuiControlGet, MakeTibiaClientTransparentTibia10
    If (MakeTibiaClientTransparentTibia10 = 1)
    {
    WinSet, Transparent, 190, ahk_class TibiaClient
    Return
    }
    If (MakeTibiaClientTransparentTibia10 = 0)
    {
    WinSet, Transparent, 255, ahk_class TibiaClient
    Return
    }
    Return
}

HideTibiaClientTibia10:
{
    Gui, Submit, NoHide
    GuiControlGet, HideTibiaClientTibia10
    If (HideTibiaClientTibia10 = 1)
    {
    WinHide, ahk_class TibiaClient
    Return
    }
    If (HideTibiaClientTibia10 = 0)
    {
    WinShow, ahk_class TibiaClient
    Return
    }
    Return
}

HideTibiaClientTibia11:
{
    Gui, Submit, NoHide
    GuiControlGet, HideTibiaClientTibia11
    If (HideTibiaClientTibia11 = 1)
    {
    WinHide, ahk_class Qt5QWindowOwnDCIcon
    Return
    }
    If (HideTibiaClientTibia11 = 0)
    {
    WinShow, ahk_class Qt5QWindowOwnDCIcon
    Return
    }
    Return
}

GetBPPositionTibia11:
{
    Gui, Hide
    WinActivate, ahk_class Qt5QWindowOwnDCIcon
 
    Loop
    {
    mousegetpos, x, y

    tooltip, Click on the backpack, (x + 10), (y + 10), 1
    GetKeyState,state,LButton,U
        if state = D
        break
    mousegetpos, BPPosXTibia11, BPPosYTibia11
    IniWrite, %BPPosXTibia11%, settings.ini, settings, BPPosXTibia11
    IniWrite, %BPPosYTibia11%, settings.ini, settings, BPPosYTibia11
    GuiControl,, BPPosXTibia11, %BPPosXTibia11%
    GuiControl,, BPPosYTibia11, %BPPosYTibia11%
    }
    Gui, Show
        tooltip
    Return
}

GetBPPositionTibia10:
{
    Gui, Hide
    WinActivate, ahk_class TibiaClient
 
    Loop
    {
    mousegetpos, x, y

    tooltip, Click on the backpack, (x + 10), (y + 10), 1
    GetKeyState,state,LButton,U
        if state = D
        break
    mousegetpos, BPPosXTibia10, BPPosYTibia10
    IniWrite, %BPPosXTibia10%, settings.ini, settings, BPPosXTibia10
    IniWrite, %BPPosYTibia10%, settings.ini, settings, BPPosYTibia10
    GuiControl,, BPPosXTibia10, %BPPosXTibia10%
    GuiControl,, BPPosYTibia10, %BPPosYTibia10%
    }
    Gui, Show
        tooltip
    Return
}

GetCharPositionTibia10:
{
    Gui, Hide
    WinActivate, ahk_class TibiaCLient
 
    Loop
    {
    mousegetpos, x, y

    tooltip, Click on the character(center), (x + 10), (y + 10), 1
    GetKeyState,state,LButton,U
        if state = D
        break
    mousegetpos, CharPosXTibia10, CharPosYTibia10
    IniWrite, %CharPosXTibia10%, settings.ini, settings, CharPosXTibia10
    IniWrite, %CharPosYTibia10%, settings.ini, settings, CharPosYTibia10
    GuiControl,, CharPosXTibia10, %CharPosXTibia10%
    GuiControl,, CharPosYTibia10, %CharPosYTibia10%
    }
    Gui, Show
        tooltip
    Return
}

GetCharPositionTibia11:
{
    Gui, Hide
    WinActivate, ahk_class Qt5QWindowOwnDCIcon
 
    Loop
    {
    mousegetpos, x, y

    tooltip, Click on the character(center), (x + 10), (y + 10), 1
    GetKeyState,state,LButton,U
        if state = D
        break
    mousegetpos, CharPosXTibia11, CharPosYTibia11
    IniWrite, %CharPosXTibia11%, settings.ini, settings, CharPosXTibia11
    IniWrite, %CharPosYTibia11%, settings.ini, settings, CharPosYTibia11
    GuiControl,, CharPosXTibia11, %CharPosXTibia11%
    GuiControl,, CharPosYTibia11, %CharPosYTibia11%
    }
    Gui, Show
        tooltip
    Return
}


GetClickPositionTibia10:
{
    Gui, Hide
    WinActivate, ahk_class Qt5QWindowOwnDCIcon
 
    Loop
    {
    mousegetpos, x, y

    tooltip, Click on the position, (x + 10), (y + 10), 1
    GetKeyState,state,LButton,U
        if state = D
        break
    mousegetpos, ClickOnPosXTibia10, ClickOnPosYTibia10
    IniWrite, %ClickOnPosXTibia10%, settings.ini, settings, ClickOnPosXTibia10
    IniWrite, %ClickOnPosYTibia10%, settings.ini, settings, ClickOnPosYTibia10
    GuiControl,, ClickOnPosXTibia10, %ClickOnPosXTibia10%
    GuiControl,, ClickOnPosYTibia10, %ClickOnPosYTibia10%
    }
    Gui, Show
        tooltip
    Return
}


GetClickPositionTibia11:
{
    Gui, Hide
    WinActivate, ahk_class Qt5QWindowOwnDCIcon
 
    Loop
    {
    mousegetpos, x, y

    tooltip, Click on the position, (x + 10), (y + 10), 1
    GetKeyState,state,LButton,U
        if state = D
        break
    mousegetpos, ClickOnPosXTibia11, ClickOnPosYTibia11
    IniWrite, %ClickOnPosXTibia11%, settings.ini, settings, ClickOnPosXTibia11
    IniWrite, %ClickOnPosYTibia11%, settings.ini, settings, ClickOnPosYTibia11
    GuiControl,, ClickOnPosXTibia11, %ClickOnPosXTibia11%
    GuiControl,, ClickOnPosYTibia11, %ClickOnPosYTibia11%
    }
    Gui, Show
        tooltip
    Return
}


TransparentOldBotTibia10:
{
    Gui, Submit, NoHide
    GuiControlGet, TransparentOldBotTibia10
    IniWrite, %TransparentOldBotTibia10%, settings.ini, settings, TransparentOldBotTibia10
    If (TransparentOldBotTibia10 = 1)
    {
    Run, %A_ScriptDir%/Scripts/Functions/SetWindowTransparentTibia10.ahk
    Return
    }
    If (TransparentOldBotTibia10 = 0)
    {
    Run, %A_ScriptDir%/Scripts/Functions/SetWindowNormalTibia10.ahk
    Return
    }
    Return
}

TransparentOldBotTibia11:
{
    Gui, Submit, NoHide
    GuiControlGet, TransparentOldBotTibia11
    IniWrite, %TransparentOldBotTibia11%, settings.ini, settings, TransparentOldBotTibia11
    If (TransparentOldBotTibia11 = 1)
    {
    Run, %A_ScriptDir%/Scripts/Functions/SetWindowTransparentTibia11.ahk
    Return
    }
    If (TransparentOldBotTibia11 = 0)
    {
    Run, %A_ScriptDir%/Scripts/Functions/SetWindowNormalTibia11.ahk
    Return
    }
    Return
}

LoadDefaultSettings:
{
    Return
}

ChooseHasteSpellTibia10:
{
    GuiControl, Enable, DefaultHasteSpellTibia10
    GuiControl,, DefaultHasteSpellTibia10, 0
    Return
}
ChooseHasteSpellTibia11:
{
    GuiControl, Enable, DefaultHasteSpellTibia11
    GuiControl,, DefaultHasteSpellTibia11, 0
    Return
}

ChooseAmuletTibia10:
{
    GuiControl, Enable, DefaultAmuletTibia10
    GuiControl,, DefaultAmuletTibia10, 0
    Return
} ; ChooseAmulet
ChooseAmuletTibia11:
{
    GuiControl, Enable, DefaultAmuletTibia11
    GuiControl,, DefaultAmuletTibia11, 0
    Return
} ; ChooseAmulet

ChooseRingTibia10:
{
    GuiControl, Enable, DefaultRingTibia10
    GuiControl,, DefaultRingTibia10, 0
    Return
} ; ChooseRingTibia10
ChooseRingTibia11:
{
    GuiControl, Enable, DefaultRingTibia11
    GuiControl,, DefaultRingTibia11, 0
    Return
} ; ChooseRingTibia11

ChooseSupportSpellTibia10:
{
    GuiControl, Enable, DefaultSupportSpellTibia10
    GuiControl,, DefaultSupportSpellTibia10, 0
    Return
}
ChooseSupportSpellTibia11:
{
    GuiControl, Enable, DefaultSupportSpellTibia11
    GuiControl,, DefaultSupportSpellTibia11, 0
    Return
}

GamingMode:
{
    GuiControlGet, GamingMode
    If (GamingMode = 1)
    {
    GuiControl, Enable, WASDWalk
    GuiControl, Enable, RemapKeys
    GuiControl, Enable, PauseGameMode
    Return
    }
    If (GamingMode = 0)
    {
    GuiControl, Disable, WASDWalk
    GuiControl, Disable, RemapKeys
    GuiControl, Disable, PauseGameMode
    Return   
    }
    Return
} ; GamingMode

SaveTibia10Directory:
{
    Gui, Submit, NoHide
    Run, %A_ScriptDir%/Scripts/Functions/SavingPreset250ms.ahk
    IniWrite, %Tibia10Directory%, settings.ini, settings, Tibia10Directory
    Return
}
SaveTibia11Directory:
{
    Gui, Submit, NoHide
    Run, %A_ScriptDir%/Scripts/Functions/SavingPreset250ms.ahk
    IniWrite, %Tibia11Directory%, settings.ini, settings, Tibia11Directory
    Return
}


SelectTibiaDirectory:
{
    FileSelectFile, Tibia11Directory, S,, Select Tibia 11 client, (*.exe)
    GuiControl,, Tibia11Directory, %Tibia11Directory%
    IniWrite, %Tibia11Directory%, settings.ini, settings, Tibia11Directory
    Return
}

OpenClientTibia10:
{
    Run "%Tibia10Directory%",, Max
    Return
}

OpenClientTibia11:
{
    Run "%Tibia11Directory%",, Max
    Return
}

WM_MOUSEMOVE(){
    static CurrControl, PrevControl, _TT
    CurrControl := A_GuiControl
    If (CurrControl <> PrevControl){
            SetTimer, DisplayToolTip, -300  ; shorter wait, shows the tooltip quicker
            PrevControl := CurrControl
    }
    return
    
    DisplayToolTip:
    try
            ToolTip % %CurrControl%_TT
    catch
            ToolTip
    SetTimer, RemoveToolTip, -4000
    return
    
    RemoveToolTip:
    ToolTip
    return
}

!r::
{
Reload
Return
}


GuiClose:
ExitApp


UnusedFunctions:
{
    /*
    {
        Gui, Submit, NoHide
    keepIT := "Tibia Tool .ahk"

    for process in ComObjGet("winmgmts:").ExecQuery("Select * from Win32_Process where name = 'AutoHotkey.exe' and not CommandLine like '%" keepIT "%' ")

       process, close, % process.ProcessId
    ExitApp
    }

    Return


    }

    Return
    */



    /* 
    ScriptsRunning:
    {
    _Process:=Object()

       LV_Delete()
        _Processes:=0
        _Process.ReEquip(0,_Process.MaxIndex())
        GuiControl, -ReDraw, ListView
        For Process in ComObjGet("winmgmts:").ExecQuery("Select * from Win32_Process where Name='AutoHotkey.exe'")
        {
            If(Process.ExecutablePath==A_AHKPath)
            {
                _Processes++
                _Process[_Processes]:=[Extract_Script_Name_From_CommandLine(Process.CommandLine) 
                     ,Extract_Script_Path_From_CommandLine(Process.CommandLine)]
               LV_Add("", _Process[_Processes,1])
            }
        }
            GuiControl, +ReDraw, ListView
        return

        Extract_Script_Name_From_CommandLine(P) {
            StringSplit,R,P,"
            SplitPath,R4,F
            Return F
        }

        Extract_Script_Path_From_CommandLine(P) {
            StringSplit,R,P,"
            Return R4
        }
    }

    */

    /*
    CloseScripts:
    {
    Gui, Submit, NoHide
    keepIT := "Tibia Tool .ahk"
    for process in ComObjGet("winmgmts:").ExecQuery("Select * from Win32_Process where name = 'AutoHotkey.exe' and not CommandLine like '%" keepIT "%' and name is not = like '%" keepIT "%'")

       process, close, % process.ProcessId
    Return
    }
    */

    /*
    Gui, Add, ListView, x10 w290 h115 AltSubmit NoSortHdr vListView, Scripts Ativos
    SetTimer, ScriptsRunning, 3500
    */
}