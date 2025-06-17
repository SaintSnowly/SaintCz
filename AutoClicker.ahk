; Defina o intervalo de tempo em milissegundos (1000 = 1 segundo)
intervalo := 1000

; Defina o botão do mouse que deseja clicar (L = esquerdo, R = direito)
botao := "L"

; Inicie o AutoClicker
Loop {
    Click, %botao%
    Sleep, %intervalo%
}
