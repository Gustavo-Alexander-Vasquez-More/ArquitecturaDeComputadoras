;EJERCICIO 2
ORG 1000H
MSJ DB "ARQUITECTURA DE COMPUTADORAS-"
    DB "FACULTAD DE INFORMATICA-"
    DB 55H
    DB 4EH
    DB 4CH
    DB 50H
FIN DB ?
ORG 2000H
MOV BX, OFFSET MSJ
;MOV AL, OFFSET FIN - OFFSET MSJ
;INCISO D) SUB AL, 4
MOV AL, 1; INCISO E
INT 7
INT 0
END
;a) Ejecutar en el simulador ¿qué imprime?
;ARQUITECTURA DE COMPUTADORAS-FACULTAD DE INFORMATICA-UNLP
;b) ¿Por qué imprime “UNLP” al final?
;PORQUE ESOS VALORES HEXADECIMALES REFERENCIAN CADA CARACTER EN FORMATO ASCII
;c) Con referencia a la interrupción INT 7, ¿qué se almacena en los registros BX y AL?
;En BX se almacena la dirección desde donde empezara a imprimir y en AL la cantidad de caracteres que se imprimirá por pantalla.
;d) Modifique el programa para que solo imprima la primera parte del mensaje: “ARQUITECTURA DE COMPUTADORAS-”
;e)Modifique el programa para que solo imprima la primera letra, es decir, la “A”