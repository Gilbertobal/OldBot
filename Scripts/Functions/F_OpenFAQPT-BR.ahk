#SingleInstance, Force
#NoTrayIcon
#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.

OpenFAQPT-BR:
{
    IniRead, Version, settings.ini, settings, Version
    Menu, Tray, Icon, %A_ScriptDir%\Images\icon.ico
    Gui, FAQPTBR:Font, s10
    Gui, FAQPTBR:Add, Text, x65 y+10 Left, OldBot versão: %version% Copyright © 2018 Debbie Tools
    Gui, FAQPTBR:Add, Text, x105 y+5 Left, www.github.com/debbietools/oldbot
    Gui, FAQPTBR:Add, Groupbox, x10 y+5 w440 r16.9, FAQ

    Gui, FAQPTBR:Add, Text, xp+5 yp+20 w410 Left, - Como o OldBot funciona?
    Gui, FAQPTBR:Add, Text, xp+15 yp+20 w410 Left, R: OldBot é como um macro, simulando ações do teclado e mouse, também funciona principalmente com busca de imagens na tela, é por isso que a janela do Tibia precisa estar aberta para funcionar.
    
    Gui, FAQPTBR:Add, Text, xp-15 yp+55 w410 Left, - O OldBot é seguro(indetectável)?
    Gui, FAQPTBR:Add, Text, xp+15 yp+20 w410 Left, R: O OldBot, como descrito acima, simula totalmente ações do teclado e mouse, o BattlEye nunca baniu ou bloqueou jogadores usando macros(como o AutoHotkey), mas o BattlEye pode começar a fazer no futuro.

    Gui, FAQPTBR:Add, Text, xp-15 yp+70 w410 Left, - O que é a opção "Background" nos scripts?
    Gui, FAQPTBR:Add, Text, xp+15 yp+20 w410 Left, R: É um script que vai executar as ações mesmo se cliente do Tibia não for a janela ativa(quando está "atrás" de outras janelas, NÃO MINIMIZADO).

    Gui, FAQPTBR:Add, Text, xp-15 yp+55 w410 Left, - É possível utilizar o OldBot em outros clientes custom de Tibia?
    Gui, FAQPTBR:Add, Text, xp+15 yp+20 w410 Left, R: Sim, é possível utilizar em qualquer cliente de qualquer versão, mas provavelmente eu precisaria customizar alguns scripts.

    Gui, FAQPTBR:Add, Text, xp-15 yp+40 w410 Left, - Como eu poderia solicitar uma nova função ou uma mudança?
    Gui, FAQPTBR:Add, Text, xp+10 yp+20 w410 Left, R: Você pode me contatar via:
    Gui, FAQPTBR:Add, Text, xp+10 yp+20 w410 Left, Whatsapp: +55(16) 981387250
    Gui, FAQPTBR:Add, Text, xp+0 yp+20 w410 Left, Email: amtrosul@hotmail.com
    
    Gui, FAQPTBR:Add, Text, xp+0 yp+40 w410 Left,
    Gui, FAQPTBR:Add, Text, xp+0 yp+20 w410 Left,

    Gui, FAQPTBR: Show, w460 h470, FAQ - Português
    Return
}
