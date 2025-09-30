PA EQU 30h; de entrada (estados bussy and strobe)
PB EQU 31h; de salida (datos que se envian)
CA EQU 32h; config entrada
CB EQU 33h; config salida
ORG 1000h
cadena db "h"
cant db ?
ORG 3000H
flanco_ascendente:;strobe en 0
                  in al, PA; capturar el estado de la impresora
                  and al, 01h; aplicar mascara y hacer y logico
                  out PA, al; escribimos en PA el resultado del AND
                  ;ponemos el strobe en 1
                  in al, PA
                  or al, 02h;
                  out PA, al
                  ret
ORG 2000H
;config ca y cb
mov al, 01h
out CA, al
mov al, 00h
out cb, al
;enviar los caracteres+
mov al, cadena
out PB, al 
call flanco_ascendente
int 0
end
