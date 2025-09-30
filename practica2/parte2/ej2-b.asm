;b) Modifique el código para que el programa no imprima “Ocupada”. En lugar de eso, el programa debe
;esperar a que el bit de busy sea 0 usando consulta de estado. Cuando eso suceda, imprimir “Libre” y
;terminar el programa.
PA EQU 30h ; ESTADO
CA EQU 32h ; CONFIG ESTADO
ORG 1000h
si db "Ocupada"
no db "Libre"
ORG 2000H
mov al, 01h
out CA, al
consulta:in al, PA
and al, 01h
jnz consulta
mov bx, offset no
mov al, 5
int 7
int 0
end
