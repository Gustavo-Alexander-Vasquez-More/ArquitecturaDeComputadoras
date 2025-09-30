;El siguiente programa tiene como objetivo verificar el bit de busy a través del PIO e imprimir “Ocupada” si la
;impresora está ocupada y “Libre” de lo contrario.
;a) Complete el código para que el programa funcione correctamente
PA EQU 30h ; ESTADO
CA EQU 32h ; CONFIG ESTADO
ORG 1000h
si db "Ocupada"
no db "Libre"
ORG 2000H
mov al, 01h
out CA, al
in al, PA
and al, 01h
jnz ocupada
mov bx, offset no
mov al, 5
int 7
jmp fin
ocupada: mov bx, offset si
mov al, 7
int 7
fin: int 0
end
