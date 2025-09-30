PA EQU 30h; de entrada (estados bussy and strobe)
PB EQU 31h; de salida (datos que se envian)
CA EQU 32h; config entrada
CB EQU 33h; config salida
ORG 1000h
cadena db "hola"
cant db ?
ORG 3000H
configCA:mov al, 01h
         out CA, al
         ret
configCB:mov al, 00h
         out CB, al
         ret
poll:in al, PA
     and al, 01h
     jnz poll
     ret
strobe0:in al, PA
        and al, 01h
        out PA, al
        ret
strobe1:in al, PA
        or al, 02h
        out PA, al
        ret
ORG 2000H
call configCA
call configCB
mov bx, offset cadena
mov cl, 15;
call strobe0
loop:call poll
     mov al, [bx]
     out PB, al 
     call strobe1
     call strobe0
     inc bx
     dec cl
     jnz loop
int 0
end
