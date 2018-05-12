#SingleInstance, Force
#NoTrayIcon
#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.

OpenFAQEN-US:
{
    IniRead, Version, settings.ini, version, Version
    Menu, Tray, Icon, %A_ScriptDir%\Images\icon.ico
    Gui, FAQENUS:Font, s10
    Gui, FAQENUS:Add, Text, x65 y+10 Left, OldBot version: %version% Copyright © 2018 Debbie Tools
    Gui, FAQENUS:Add, Text, x105 y+5 Left, www.github.com/debbietools/oldbot
    Gui, FAQENUS:Add, Groupbox, x10 y+5 w430 r21.5, FAQ

    Gui, FAQENUS:Add, Text, xp+5 yp+20 w400 Left, - How does OldBot works?
    Gui, FAQENUS:Add, Text, xp+15 yp+20 w400 Left, A: The OldBot is like a macro, simulating actions of the keyboard and mouse, it works basically like us humans, when whe see an image on the screen, we react doing something, and this is exactly what the tool does, that's why it's needed also that Tibia client must be active(in the functions that works with image search).

    Gui, FAQENUS:Add, Text, xp-15 yp+95 w400 Left, - Is OldBot safe(undetectable)?
    Gui, FAQENUS:Add, Text, xp+15 yp+20 w400 Left, A: As described above, fully simulates the keyboard and mouse, the same interruption signal that is sent to the operational system(OS) when we press a key, is the same signal that the tool sends to the OS when doing some action. The image search function is used by many apps in a safe and efficient way. There is no injection in the client or manipulation of packets/memory, making the tool exactly a macro - 100`% safe.

    Gui, FAQENUS:Add, Text, xp-15 yp+125 w400 Left, - What is "Background" option in the scripts?
    Gui, FAQENUS:Add, Text, xp+15 yp+20 w400 Left, A: Is a script that will execute its actions even if the Tibia client is not the focused window(in the background, NOT MINIMIZED).

    Gui, FAQENUS:Add, Text, xp-15 yp+45 w400 Left, - Is it possible to use OldBot in other custom Tibia Clients?
    Gui, FAQENUS:Add, Text, xp+15 yp+20 w400 Left, A: Yes, it is possible to use it in any client at any version, but I would probably need to customize some scripts.

    Gui, FAQENUS:Add, Text, xp-15 yp+45 w400 Left, - How can I request a new funcion or changes?
    Gui, FAQENUS:Add, Text, xp+10 yp+20 w400 Left, A: You can contact me via:
    Gui, FAQENUS:Add, Text, xp+10 yp+20 w400 Left, Whatsapp: +55(16) 981387250 
    Gui, FAQENUS:Add, Text, xp+0 yp+20 w400 Left, Email: amtrosul@hotmail.com
    Gui, FAQENUS:Add, Text, xp+0 yp+20 w400 Left, I'm brazilian but I can speak in English.
    
    Gui, FAQENUS:Add, Text, xp+0 yp+40 w400 Left,
    Gui, FAQENUS:Add, Text, xp+0 yp+20 w400 Left,
    
    Gui, FAQENUS: Show, w450 h585, FAQ - English
    Return
}

OpenFAQPT-BR:
{
    IniRead, Version, settings.ini, version, Version
    Menu, Tray, Icon, %A_ScriptDir%\Images\icon.ico
    Gui, FAQPTBR:Font, s10
    Gui, FAQPTBR:Add, Text, x65 y+10 Left, OldBot versão: %version% Copyright © 2018 Debbie Tools
    Gui, FAQPTBR:Add, Text, x105 y+5 Left, www.github.com/debbietools/oldbot
    Gui, FAQPTBR:Add, Groupbox, x10 y+5 w440 r22.5, FAQ

    Gui, FAQPTBR:Add, Text, xp+5 yp+20 w410 Left, - Como o OldBot funciona?
    Gui, FAQPTBR:Add, Text, xp+15 yp+20 w410 Left, R: O OldBot é como um macro, simulando ações do teclado e mouse, funciona basicamente como nós humanos, ao vermos uma imagem na tela, nós reagimos a ela realizando alguma ação, e é exatamente o que a ferramenta faz, por isso é necessário também o cliente do Tibia estar ativo(nas funções que possuem busca de imagens).
    
    Gui, FAQPTBR:Add, Text, xp-15 yp+110 w410 Left, - O OldBot é seguro(indetectável)?
    Gui, FAQPTBR:Add, Text, xp+15 yp+20 w410 Left, R: Como descrito acima, simula totalmente ações do teclado e mouse, o mesmo sinal de interrupção que é enviado para o sistema operacional(SO) quando nós pressionamos uma tecla, é o mesmo sinal que a ferramenta envia para o SO ao realizar alguma ação. A função de busca de imagens na tela é utilizada por vários aplicativos de forma segura e eficiente. Nâo há nenhum tipo de injeção no cliente ou manipulação de pacotes/memória, tornando assim a ferramenta exatamente um macro - 100`% seguro.

    Gui, FAQPTBR:Add, Text, xp-15 yp+140 w410 Left, - O que é a opção "Background" nos scripts?
    Gui, FAQPTBR:Add, Text, xp+15 yp+20 w410 Left, R: É um script que vai executar as ações mesmo se cliente do Tibia não for a janela ativa(quando está "atrás" de outras janelas, NÃO MINIMIZADO).

    Gui, FAQPTBR:Add, Text, xp-15 yp+60 w410 Left, - É possível utilizar o OldBot em outros clientes custom de Tibia?
    Gui, FAQPTBR:Add, Text, xp+15 yp+20 w410 Left, R: Sim, é possível utilizar em qualquer cliente de qualquer versão, mas provavelmente eu precisaria customizar alguns scripts.

    Gui, FAQPTBR:Add, Text, xp-15 yp+45 w410 Left, - Como eu poderia solicitar uma nova função ou uma mudança?
    Gui, FAQPTBR:Add, Text, xp+10 yp+20 w410 Left, R: Você pode me contatar via:
    Gui, FAQPTBR:Add, Text, xp+10 yp+20 w410 Left, Whatsapp: (16) 981387250
    Gui, FAQPTBR:Add, Text, xp+0 yp+20 w410 Left, Email: amtrosul@hotmail.com
    
    Gui, FAQPTBR:Add, Text, xp+0 yp+40 w410 Left,
    Gui, FAQPTBR:Add, Text, xp+0 yp+20 w410 Left,

    Gui, FAQPTBR: Show, w460 h605, FAQ - Português
    Return
}
