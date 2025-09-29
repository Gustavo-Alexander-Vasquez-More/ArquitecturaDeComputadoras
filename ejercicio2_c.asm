;Control de luces mediante llaves Escribir un programa que permite encender y apagar las luces
;mediante las llaves. El programa no deberá terminar nunca, y continuamente revisar el estado de las
;llaves, y actualizar de forma consecuente el estado de las luces. La actualización se realiza simplemente
;prendiendo la luz i, si la llave i correspondiente está encendida (valor 1), y apagándola en caso
;contrario. Por ejemplo, si solo la primera llave está encendida, entonces solo la primera luz se debe
;quedar encendida.
ORG 1000h
PA equ 30h
PB equ 31h
CA equ 32h
CB equ 33h
ORG 2000h 
;config llaves
mov al, 0FFh
out CA, al
;config luces
mov al, 00h
out CB, al
;leer llaves
loop:in al, PA
     out PB, al
jmp loop
int 0
end