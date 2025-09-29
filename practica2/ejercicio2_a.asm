;Patrón de Luces Fijo Escribir un programa que encienda las luces con el patrón 11000011, o sea, solo
;las primeras y las últimas dos luces deben prenderse, y el resto deben apagarse

ORG 1000h
PB EQU 31h
CB EQU 33h
PATRON DB 11000011b
ORG 2000h
mov al, 00h; config luces como salida
out CB, al
mov al,PATRON
out PB,al
int 0
end