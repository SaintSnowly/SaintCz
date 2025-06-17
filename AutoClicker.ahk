
; Defina o intervalo de tempo em milissegundos (1000 = 1 segundo)
intervalo := 1000

; Defina o botão do mouse que deseja clicar (L = esquerdo, R = direito)
botao := "L"

; Variável para controlar o estado do AutoClicker
pausado := 0

; Inicie o AutoClicker
Loop {
    if (!pausado) {
        Click, %botao%
        Sleep, %intervalo%
    }
}

; Defina a tecla "L" como botão de pausa
L::
    pausado := !pausado
    if (pausado) {
        TrayTip, AutoClicker, Pausado
    } else {
        TrayTip, AutoClicker, Ativado
    }
return
