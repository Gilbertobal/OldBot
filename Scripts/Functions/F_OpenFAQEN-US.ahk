#SingleInstance, Force
#NoTrayIcon
#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.

OpenFAQEN-US:
{
    IniRead, Version, settings.ini, settings, Version
    Menu, Tray, Icon, %A_ScriptDir%\Images\icon.ico
    Gui, FAQENUS:Font, s10
    Gui, FAQENUS:Add, Text, x65 y+10 Left, OldBot version: %version% Copyright © 2018 Debbie Tools
    Gui, FAQENUS:Add, Text, x105 y+5 Left, www.github.com/debbietools/oldbot
    Gui, FAQENUS:Add, Groupbox, x10 y+5 w430 r17, FAQ

    Gui, FAQENUS:Add, Text, xp+5 yp+20 w400 Left, - How does OldBot works?
    Gui, FAQENUS:Add, Text, xp+15 yp+20 w400 Left, R: OldBot is like a macro, simulating actions of the keyboard and mouse, also it works mainly with image search on the screen, that's why Tibia window must be opened to it works.

    Gui, FAQENUS:Add, Text, xp-15 yp+55 w400 Left, - Is OldBot safe(undetectable)?
    Gui, FAQENUS:Add, Text, xp+15 yp+20 w400 Left, R: The OldBot, as described above, fully simulates the keyboard and mouse, BattlEye never banned or blocked players using macros(like AutoHotkey), but may be BattlEye can start doing it in the future.

    Gui, FAQENUS:Add, Text, xp-15 yp+70 w400 Left, - What is "Background" option in the scripts?
    Gui, FAQENUS:Add, Text, xp+15 yp+20 w400 Left, R: Is a script that will execute its actions even if the Tibia client is not the focused window(in the background, NOT MINIMIZED).

    Gui, FAQENUS:Add, Text, xp-15 yp+40 w400 Left, - Is it possible to use OldBot in other custom Tibia Clients?
    Gui, FAQENUS:Add, Text, xp+15 yp+20 w400 Left, R: Yes, it is possible to use it in any client at any version, but I would probably need to customize some scripts.

    Gui, FAQENUS:Add, Text, xp-15 yp+40 w400 Left, - How can I request a new funcion or changes?
    Gui, FAQENUS:Add, Text, xp+10 yp+20 w400 Left, R: You can contact me via:
    Gui, FAQENUS:Add, Text, xp+10 yp+20 w400 Left, Whatsapp: +55(16) 981387250 
    Gui, FAQENUS:Add, Text, xp+0 yp+20 w400 Left, Email: amtrosul@hotmail.com
    Gui, FAQENUS:Add, Text, xp+0 yp+20 w400 Left, I'm brazilian but I can speak in English.
    
    Gui, FAQENUS:Add, Text, xp+0 yp+40 w400 Left,
    Gui, FAQENUS:Add, Text, xp+0 yp+20 w400 Left,

    Gui, FAQENUS: Show, w450 h475, FAQ - English
    Return
}