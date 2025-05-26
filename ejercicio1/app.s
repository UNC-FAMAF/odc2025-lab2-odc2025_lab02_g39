	.include "size.s"
	.include "shapes.s"
	.globl main

main:
	// x0 contiene la direccion base del framebuffer
 	mov x20, x0	// Guarda la dirección base del framebuffer en x20
	//---------------- CODE HERE ------------------------------------

	movz x10, 0x00, lsl 16
	movk x10, 0x0000, lsl 00
	bl backgroundColor

	mov x1, 0
	mov x2, 200
	mov x3, 640
	mov x4, 280
	movz x10, 0x04, lsl 16
	movk x10, 0x263C, lsl 00
	bl rectangle 

	// Estela
		mov x1, 0
		mov x2, 335
		mov x3, 215
		mov x4, 50
		movz x10, 0xff, lsl 16
		movk x10, 0x0000, lsl 00
		bl rectangle

		mov x1, 0
		mov x2, 345
		mov x3, 215
		mov x4, 30
		movz x10, 0xd8, lsl 16
		movk x10, 0x0000, lsl 00
		bl rectangle



	// Moto
	
	// Ruedas
		mov x1, 230
		mov x2, 360
		mov x3, 30
		mov x4, 13
		movz x10, 0x00, lsl 16
		movk x10, 0x0000, lsl 00 
		bl circumference

		mov x1, 230
		mov x2, 360
		mov x3, 29
		mov x4, 2
		movz x10, 0xd8, lsl 16
		movk x10, 0x0000, lsl 00 
		bl circumference

		mov x1, 230
		mov x2, 360
		mov x3, 19
		mov x4, 5
		movz x10, 0xd8, lsl 16
		movk x10, 0x0000, lsl 00 
		bl circumference

		mov x1, 350
		mov x2, 360
		mov x3, 30
		mov x4, 13
		movz x10, 0x00, lsl 16
		movk x10, 0x0000, lsl 00 
		bl circumference

		mov x1, 350
		mov x2, 360
		mov x3, 29
		mov x4, 2
		movz x10, 0xd8, lsl 16
		movk x10, 0x0000, lsl 00 
		bl circumference

		mov x1, 350
		mov x2, 360
		mov x3, 19
		mov x4, 5
		movz x10, 0xd8, lsl 16
		movk x10, 0x0000, lsl 00 
		bl circumference



	//Cuerpo
		mov x1, 250
		mov x2, 340
		mov x3, 80
		mov x4, 33
		movz x10, 0x00, lsl 16
		movk x10, 0x0000, lsl 00
		bl rectangle

		mov x1, 270
		mov x2, 373
		mov x3, 62
		mov x4, 5
		movz x10, 0x00, lsl 16
		movk x10, 0x0000, lsl 00
		bl rectangle

		mov x1, 285
		mov x2, 378
		mov x3, 50
		mov x4, 5
		movz x10, 0x00, lsl 16
		movk x10, 0x0000, lsl 00
		bl rectangle

		mov x1, 220
		mov x2, 326
		mov x3, 45
		mov x4, 15
		movz x10, 0x00, lsl 16
		movk x10, 0x0000, lsl 00
		bl rectangle

		mov x1, 265
		mov x2, 330
		mov x3, 20
		mov x4, 13
		movz x10, 0x00, lsl 16
		movk x10, 0x0000, lsl 00
		bl rectangle

		mov x1, 316
		mov x2, 334
		mov x3, 23
		mov x4, 8
		movz x10, 0x00, lsl 16
		movk x10, 0x0000, lsl 00
		bl rectangle












	// Ejemplo de uso de gpios
	mov x9, GPIO_BASE

	// Atención: se utilizan registros w porque la documentación de broadcom
	// indica que los registros que estamos leyendo y escribiendo son de 32 bits

	// Setea gpios 0 - 9 como lectura
	str wzr, [x9, GPIO_GPFSEL0]

	// Lee el estado de los GPIO 0 - 31
	ldr w10, [x9, GPIO_GPLEV0]

	// And bit a bit mantiene el resultado del bit 2 en w10
	and w11, w10, 0b10

	// w11 será 1 si había un 1 en la posición 2 de w10, si no será 0
	// efectivamente, su valor representará si GPIO 2 está activo
	lsr w11, w11, 1

	//---------------------------------------------------------------
	// Infinite Loop

InfLoop:
	b InfLoop
