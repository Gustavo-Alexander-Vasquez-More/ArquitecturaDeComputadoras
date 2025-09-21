;Los siguientes programas leen e imprimen carácteres. Indicar cuáles tienen errores y cómo solucionarlos.

ORG 1000H
A DB "HO LA"
B DB ?
ORG 2000H
mov bx, offset A
mov al, 4
int 7
int 0
END
;Este programa tiene un error, porque no imprimirá el string completo ya que
;el espacio es considerado un caracter más, por ende si ponemos que la longitud
;a imprimir es de 4 entonces no tomará el ultimo caracter. 
;Esto lo podemos solucionar escribiendo mov al, 5 en vez de 4.

ORG 1000H
A DB "ARQ"
B DB ?
ORG 2000H
mov al, 3
mov bx, A
int 7
int 0
END
;Este programa está bien implementado e imprime todos los caracteres.

ORG 1000H
A DB "HOLA"
B DB ?
ORG 2000H
mov al, offset A - offset B
mov bx, offset A
int 7
int 0
END
;Este tambien tiene un error ya que en al se almacenara una longitud negativa
;esto imprimira el string pero imprimira constantemente valores basura, para corregirlo
;debemos hacer la resta alrevés es decir mov al, offset B - offset A

ORG 1000H
A DB ?
ORG 2000H
mov al, 3
mov bx, A
int 6
int 0
END
;Este programa no tiene errores leera de teclado 3 caracteres y los almacenará
;desde la direcion de A

ORG 1000H
A DB ?
ORG 2000H
int 6
mov bx, offset A
int 0
END
;este programa contiene un error ya que int 6 nos pide una dirección de comienzo
;para comenzar a leer desde teclado y esa direccion se pasa despues, para solucionarlo
;debemos pasar la direccion de inicio antes de int 6

ORG 1000H
A DB ?
ORG 2000H
mov bx, A
int 6
mov al, 1
int 7
int 0
END
;este programa está correcto