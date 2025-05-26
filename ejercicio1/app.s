	.include "size.s"
	.include "shapes.s"
	.globl main

main:
	// x0 contiene la direccion base del framebuffer
 	mov x20, x0	// Guarda la dirección base del framebuffer en x20
	//---------------- CODE HERE ------------------------------------

	movz x10, 0x1B, lsl 16
	movk x10, 0x3C42, lsl 00
	bl backgroundColor

	mov x1, 0
	mov x2, 240
	mov x3, 640
	mov x4, 240
	movz x10, 0x1B, lsl 16
	movk x10, 0x3235, lsl 00
	bl rectangle

	mov x1, 320
	mov x2, 240
	mov x3, 10
	mov x4, 240
	movz x10, 0x32, lsl 16
	movk x10, 0x8DA4, lsl 00
	bl rectangle

	mov x1, 64
	mov x2, 240
	mov x3, 10
	mov x4, 240
	movz x10, 0x32, lsl 16
	movk x10, 0x8DA4, lsl 00
	bl rectangle

	mov x1, 128
	mov x2, 240
	mov x3, 10
	mov x4, 240
	movz x10, 0x32, lsl 16
	movk x10, 0x8DA4, lsl 00
	bl rectangle

	mov x1, 192
	mov x2, 240
	mov x3, 10
	mov x4, 240
	movz x10, 0x32, lsl 16
	movk x10, 0x8DA4, lsl 00
	bl rectangle

	mov x1, 256
	mov x2, 240
	mov x3, 10
	mov x4, 240
	movz x10, 0x32, lsl 16
	movk x10, 0x8DA4, lsl 00
	bl rectangle

	mov x1, 384
	mov x2, 240
	mov x3, 10
	mov x4, 240
	movz x10, 0x32, lsl 16
	movk x10, 0x8DA4, lsl 00
	bl rectangle

	mov x1, 448
	mov x2, 240
	mov x3, 10
	mov x4, 240
	movz x10, 0x32, lsl 16
	movk x10, 0x8DA4, lsl 00
	bl rectangle

	mov x1, 512
	mov x2, 240
	mov x3, 10
	mov x4, 240
	movz x10, 0x32, lsl 16
	movk x10, 0x8DA4, lsl 00
	bl rectangle

	mov x1, 576
	mov x2, 240
	mov x3, 10
	mov x4, 240
	movz x10, 0x32, lsl 16
	movk x10, 0x8DA4, lsl 00
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
