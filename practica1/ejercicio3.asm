ORG 1000H
MSJ DB "INGRESE UN NUMERO:"
FIN DB ?
ORG 1500H
;NUM DB ?
NUM1 DB ?
NUM2 DB ?
ORG 2000H
MOV BX, OFFSET MSJ
MOV AL, OFFSET FIN-OFFSET MSJ
INT 7
MOV BX, OFFSET NUM1
INT 6
MOV BX, OFFSET NUM2
INT 6
MOV BX, OFFSET NUM1
MOV AL, 1
INT 7
;MOV CL, NUM
INT 0
END
;b) En el programa anterior, ¿qué hace la segunda interrupción INT 7?
;imprime el valor que ingresé por teclado
;c) ¿Qué valor queda almacenado en el registro CL? ¿Es el mismo que el valor numérico ingresado?
; no, imprime el valor hexadecimal que representa en ascii
;d) Modificar el programa anterior para que lea dos dígitos en lugar de uno, con dos variables: NUM1 y NUM2.