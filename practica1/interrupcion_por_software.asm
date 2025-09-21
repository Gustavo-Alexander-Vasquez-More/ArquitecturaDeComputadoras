ORG 1000H
mensaje DB ?
fin DB ?
ORG 2000H
;VAMOS A LEER UN TEXTO DESDE TECLADO
;PARA LEER NOS PIDE PODER EN BX DESDE DONDE VA A GUARDAR CADA CARACTER
MOV DL, 4; CANTIDAD DE CARACTERES A LEER
MOV BX, OFFSET mensaje
leer:INT 6
  INC BX
  DEC DL
JNZ leer
;VAMOS A IMPRIMIR POR PANTALLA LO QUE ESCRIBIMOS
;para imprimir me pide desde donde empezar osea en BX y la longitud que tengo que guardar en AL
MOV AL, 4; ya tengo la longitud de lo que escribi
MOV BX, OFFSET mensaje
INT 7
INT 0
END
END