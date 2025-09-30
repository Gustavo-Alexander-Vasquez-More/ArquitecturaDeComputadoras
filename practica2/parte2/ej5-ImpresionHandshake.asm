;Escribir un programa que imprime “INGENIERIA E INFORMATICA” en la impresora a través del
;HAND-SHAKE. La comunicación se establece por consulta de estado (polling). Para ello, implementar
;la subrutina imprimir_caracter_hand que funcione de forma análoga a imprimir_caracter pero con el
;handshake en lugar del PIO.
DATO equ 40h; salida
ESTADO equ 41h; entrada
org 1000h
cadena db "INGENIERIA E INFORMATICA"
final db ?
org 3000h
poll:in al, ESTADO
     and al, 01h
     jnz poll
     ret
imprimir_caracter_hand:call poll
                       mov al, [bx]
                       out DATO, al
                       inc bx
                       dec cl
                       jnz imprimir_caracter_hand
                       ret 
org 2000h
mov bx, offset cadena
mov cl, offset final - offset cadena
call imprimir_caracter_hand
int 0
end
