;Verificar Llave Escribir un programa que verifique si la llave de más a la izquierda está prendida. Si es
;así, mostrar en pantalla el mensaje “Llave prendida”, y de lo contrario mostrar “Llave apagada”. Solo
;importa el valor de la llave de más a la izquierda (bit más significativo)
ORG 1000h
PA EQU 30h
CA EQU 32h
mascara DB 10000000b
msj1 DB "Llave prendida"
msj2 DB "Llave apagada"
ORG 2000h
mov al, 0FFh
out CA, al; config entrada

in al, PA; LEEMOS PA
and al, mascara
jnz prendida; 1 and 1=1(encendida)
mov BX, OFFSET msj2; 0 and 1=0 (apagada)
mov al, 0Dh
int 7
jmp fin
prendida:mov BX, OFFSET msj1
         mov al, 0Eh
         int 7
fin:int 0
end