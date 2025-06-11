; Este script cola o conteúdo da sua área de transferência em um campo
; onde o Ctrl+V normal não funciona, digitando letra por letra.

; Pressione Ctrl+Alt+V para ativar a função de colar
^!v::
    SendMode Input  ; Garante que o texto seja enviado rapidamente
    ClipboardBackup := ClipboardAll ; Salva o conteúdo atual da área de transferência

    ; Pega o texto da área de transferência
    Clipboard =
    Send ^c ; Copia o que está selecionado (se houver algo, o script pode usar isso)
    ClipWait 0.5 ; Espera no máximo 0.5 segundos pela área de transferência
    If ErrorLevel
    {
        MsgBox, 4096, Erro, Não foi possível obter o conteúdo da área de transferência.
        Return
    }

    ; Agora, digite o conteúdo da área de transferência
    Loop, parse, Clipboard
    {
        SendInput % A_LoopField
        Sleep, 5 ; Pequeno atraso entre as letras para simular digitação real
    }

    Clipboard := ClipboardBackup ; Restaura a área de transferência para o que era antes
    ClipboardBackup = ; Libera a memória
Return
