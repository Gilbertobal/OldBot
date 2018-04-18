#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.


HowToUse_LogoffBattleChangesTibia11:
{
    Gui, HowToUse_EatFoodTibia11:Font, s10
    Gui, HowToUse_EatFoodTibia11:Add, Groupbox, x10 y+5 w480 r27, Tutorial

    Gui, HowToUse_EatFoodTibia11:Add, Text, xp+10 yp+20 w460 Left, Due to the background of Tibia(the gray background), the images are not the same in every screen resolution because the background pixels changes to adapt to the computer's resolution, so if it isn't working follow the steps below.
    Gui, HowToUse_EatFoodTibia11:Add, Text, xp+0 yp+70 w460 Left, This fuction will search for the Battle Window image on the screen:
    
    Gui, HowToUse_EatFoodTibia11:Add, Picture, xp+150 yp+25, Images\BattleWindowTibia11.png

    Gui, HowToUse_EatFoodTibia11:Add, Text, xp-150 yp+60 w460 Left, Step 1 - Take a screenshot of your Tibia Client.
    Gui, HowToUse_EatFoodTibia11:Add, Text, xp+0 yp+20 w460 Left, Step 2 - Open Paint, paste and crop the image of the Battle Window.

    Gui, HowToUse_EatFoodTibia11:Add, Picture, xp+90 yp+25, Images\Tutorial_LogoffBattleWindowTibia11.png

    Gui, HowToUse_EatFoodTibia11:Add, Text, xp-90 yp+220 w460 Left, Step 3 - Save the image in the "Images" folder of OldBot directory as "BattleWindowTibia11" or "BattleWindowTibia10" for Tibia 10, in png format.

    Gui, HowToUse_EatFoodTibia11:Add, Picture, xp+0 yp+35, Images\Tutorial_LogoffBattleWindowTibia11_2.png

    Gui, HowToUse_EatFoodTibia11:Add, Text, xp+0 yp+110 w460 Left, Step 4 - It's done, everytime someone appears on the screen, the battle window will change, the image of the "clean" battle window will not be found and Ctrl + Q will be pressed to logoff.

    Gui, HowToUse_EatFoodTibia11:Add, Text, xp+0 yp+60 w400 Left,
    Gui, HowToUse_EatFoodTibia11:Add, Text, xp+0 yp+20 w400 Left,

    Gui, HowToUse_EatFoodTibia11: Show, w500 h660, How to Use - Auto eat food
    Return
}