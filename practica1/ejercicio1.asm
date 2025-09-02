Escribir un programa que declare un string llamado MENSAJE, almacenado en la memoria de datos, cuente la cantidad
de veces que la letra ‘a’ (minúscula) aparece en MENSAJE y lo almacene en la variable CANT. Por ejemplo, si
MENSAJE contiene “Hola, Buenas Tardes”, entonces CANT debe valer 3.

org 1000h;Para declarar VARIABLES
  MENSAJE db "hola como estan"
  CANT db ?
org 2000h
  MOV BX, OFFSET MENSAJE; Pone la direccion donde empieza MENSAJE (1000h)
  MOV CL,0;CONTADOR EN 0 que se incrementará al encontrar la letra
  MOV AL, OFFSET CANT-OFFSET MENSAJE
  ciclo:MOV DL, [BX]
  CMP DL, 61h; COMPARA SI LA DIRECCION EN BX tiene la letra "a"
  JNZ sigue
  INC CL; incrementa en 1 a CL cuando encuentra la a
  sigue:INC BX
  DEC AL
  JNZ ciclo
  MOV CANT, CL
  hlt
end
