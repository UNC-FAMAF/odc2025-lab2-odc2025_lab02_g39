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

	// Fondo

			mov x1, 100 // coord x
			mov x2, 170 // coord y
			mov x3, 8   // ancho
			mov x4, 30  // alto
			movz x10,0x3e,lsl 16
			movk x10, 0x686f,lsl 00
			bl rectangle 


			mov x1, 108 // coord x
			mov x2, 160 // coord y
			mov x3, 8   // ancho
			mov x4, 40  // alto
			bl rectangle 

	// Piso
		mov x1, 0
		mov x2, 200
		mov x3, 640
		mov x4, 280
		movz x10, 0x04, lsl 16
		movk x10, 0x263C, lsl 00
		bl rectangle 

		mov x1, 0 // coord x
		mov x2, 200 // coord y
		mov x3, 640   // ancho
		mov x4, 5  // alto
		movz x10,0x3e,lsl 16
		movk x10, 0x686f,lsl 00
		bl rectangle 

		mov x1, 320 // coord x
		mov x2, 200 // coord y
		mov x3, 10   // ancho
		mov x4, 280  // alto
		bl rectangle 

		mov x1, 280 // coord x
		mov x2, 200 // coord y
		mov x3, 10   // ancho
		mov x4, 70  // alto
		bl rectangle 

		mov x1, 270 // coord x
		mov x2, 270 // coord y
		mov x3, 10   // ancho
		mov x4, 70  // alto
		bl rectangle 

		mov x1, 260 // coord x
		mov x2, 340 // coord y
		mov x3, 10   // ancho
		mov x4, 70  // alto
		bl rectangle 

		mov x1, 250 // coord x
		mov x2, 410 // coord y
		mov x3, 10   // ancho
		mov x4, 70  // alto
		bl rectangle 

	// Estela
		mov x1, 0
		mov x2, 307
		mov x3, 204
		mov x4, 67
		movz x10, 0xff, lsl 16
		movk x10, 0x0000, lsl 00
		bl rectangle

		mov x1, 0
		mov x2, 312
		mov x3, 204
		mov x4, 57
		movz x10, 0xd8, lsl 16
		movk x10, 0x0000, lsl 00
		bl rectangle

		mov x1, 0
		mov x2, 317
		mov x3, 204
		mov x4, 47
		movz x10, 0x99, lsl 16
		movk x10, 0x0000, lsl 00
		bl rectangle


	// Moto
	
	// Ruedas
		mov x1, 225
		mov x2, 340
		mov x3, 40
		mov x4, 18
		movz x10, 0x00, lsl 16
		movk x10, 0x0000, lsl 00 
		bl circumference

		mov x1, 225
		mov x2, 340
		mov x3, 39
		mov x4, 2
		movz x10, 0xd8, lsl 16
		movk x10, 0x0000, lsl 00 
		bl circumference

		mov x1, 225
		mov x2, 340
		mov x3, 25
		mov x4, 6
		movz x10, 0xd8, lsl 16
		movk x10, 0x0000, lsl 00 
		bl circumference

		mov x1, 415
		mov x2, 340
		mov x3, 40
		mov x4, 18
		movz x10, 0x00, lsl 16
		movk x10, 0x0000, lsl 00 
		bl circumference

		mov x1, 415
		mov x2, 340
		mov x3, 39
		mov x4, 2
		movz x10, 0xd8, lsl 16
		movk x10, 0x0000, lsl 00 
		bl circumference

		mov x1, 415
		mov x2, 340
		mov x3, 25
		mov x4, 6
		movz x10, 0xd8, lsl 16
		movk x10, 0x0000, lsl 00 
		bl circumference

	//Cuerpo
		mov x1, 252
		mov x2, 312
		mov x3, 135
		mov x4, 45
		movz x10, 0x00, lsl 16
		movk x10, 0x0000, lsl 00
		bl rectangle

		mov x1, 210
		mov x2, 295
		mov x3, 60
		mov x4, 20
		movz x10, 0x00, lsl 16
		movk x10, 0x0000, lsl 00
		bl rectangle

		mov x1, 190
		mov x2, 295
		mov x3, 20
		mov x4, 8
		movz x10, 0x00, lsl 16
		movk x10, 0x0000, lsl 00
		bl rectangle

		mov x1, 350
		mov x2, 305
		mov x3, 49
		mov x4, 15
		movz x10, 0x00, lsl 16
		movk x10, 0x0000, lsl 00
		bl rectangle

		mov x1, 270
		mov x2, 300
		mov x3, 35
		mov x4, 15
		movz x10, 0x00, lsl 16
		movk x10, 0x0000, lsl 00
		bl rectangle

		mov x1, 285
		mov x2, 357
		mov x3, 105
		mov x4, 7
		movz x10, 0x00, lsl 16
		movk x10, 0x0000, lsl 00
		bl rectangle

		mov x1, 310
		mov x2, 364
		mov x3, 85
		mov x4, 7
		movz x10, 0x00, lsl 16
		movk x10, 0x0000, lsl 00
		bl rectangle

		// Detalles
			mov x1, 310
			mov x2, 345
			mov x3, 25
			mov x4, 2
			movz x10, 0xd8, lsl 16
			movk x10, 0x0000, lsl 00
			bl rectangle

			mov x1, 335
			mov x2, 343
			mov x3, 20
			mov x4, 2
			movz x10, 0xd8, lsl 16
			movk x10, 0x0000, lsl 00
			bl rectangle

			mov x1, 355
			mov x2, 341
			mov x3, 10
			mov x4, 2
			movz x10, 0xd8, lsl 16
			movk x10, 0x0000, lsl 00
			bl rectangle

			mov x1, 365
			mov x2, 339
			mov x3, 3
			mov x4, 2
			movz x10, 0xd8, lsl 16
			movk x10, 0x0000, lsl 00
			bl rectangle

			mov x1, 368
			mov x2, 325
			mov x3, 2
			mov x4, 14
			movz x10, 0xd8, lsl 16
			movk x10, 0x0000, lsl 00
			bl rectangle

			mov x1, 370
			mov x2, 323
			mov x3, 6
			mov x4, 2
			movz x10, 0xd8, lsl 16
			movk x10, 0x0000, lsl 00
			bl rectangle

			mov x1, 376
			mov x2, 321
			mov x3, 10
			mov x4, 2
			movz x10, 0xd8, lsl 16
			movk x10, 0x0000, lsl 00
			bl rectangle

			mov x1, 386
			mov x2, 319
			mov x3, 6
			mov x4, 2
			movz x10, 0xd8, lsl 16
			movk x10, 0x0000, lsl 00
			bl rectangle

			mov x1, 392
			mov x2, 311
			mov x3, 2
			mov x4, 8
			movz x10, 0xd8, lsl 16
			movk x10, 0x0000, lsl 00
			bl rectangle

			mov x1, 394
			mov x2, 309
			mov x3, 5
			mov x4, 2
			movz x10, 0xd8, lsl 16
			movk x10, 0x0000, lsl 00
			bl rectangle

			mov x1, 397
			mov x2, 306
			mov x3, 2
			mov x4, 3
			movz x10, 0xd8, lsl 16
			movk x10, 0x0000, lsl 00
			bl rectangle
			
			mov x1, 310
			mov x2, 345
			mov x3, 3
			movz x10, 0xd8, lsl 16
			movk x10, 0x0000, lsl 00
			bl circle

			mov x1, 190
			mov x2, 295
			mov x3, 65
			mov x4, 2
			movz x10, 0xd8, lsl 16
			movk x10, 0x0000, lsl 00
			bl rectangle

			mov x1, 190
			mov x2, 295
			mov x3, 2
			mov x4, 8
			movz x10, 0xd8, lsl 16
			movk x10, 0x0000, lsl 00
			bl rectangle

			mov x1, 255
			mov x2, 297
			mov x3, 2
			mov x4, 12
			movz x10, 0xd8, lsl 16
			movk x10, 0x0000, lsl 00
			bl rectangle

			mov x1, 257
			mov x2, 309
			mov x3, 2
			mov x4, 12
			movz x10, 0xd8, lsl 16
			movk x10, 0x0000, lsl 00
			bl rectangle

			mov x1, 259
			mov x2, 321
			mov x3, 8
			mov x4, 2
			movz x10, 0xd8, lsl 16
			movk x10, 0x0000, lsl 00
			bl rectangle

		// Odc 2025
			//O
			mov x1, 315
			mov x2, 355
			mov x3, 2
			mov x4, 12
			movz x10, 0xd8, lsl 16
			movk x10, 0x0000, lsl 00
			bl rectangle

			mov x1, 320
			mov x2, 355
			mov x3, 2
			mov x4, 12
			movz x10, 0xd8, lsl 16
			movk x10, 0x0000, lsl 00
			bl rectangle

			mov x1, 315
			mov x2, 355
			mov x3, 5
			mov x4, 2
			movz x10, 0xd8, lsl 16
			movk x10, 0x0000, lsl 00
			bl rectangle

			mov x1, 315
			mov x2, 365
			mov x3, 5
			mov x4, 2
			movz x10, 0xd8, lsl 16
			movk x10, 0x0000, lsl 00
			bl rectangle

			//d
			mov x1, 330
			mov x2, 355
			mov x3, 2
			mov x4, 12
			movz x10, 0xd8, lsl 16
			movk x10, 0x0000, lsl 00
			bl rectangle

			mov x1, 325
			mov x2, 361
			mov x3, 2
			mov x4, 6
			movz x10, 0xd8, lsl 16
			movk x10, 0x0000, lsl 00
			bl rectangle

			mov x1, 325
			mov x2, 365
			mov x3, 5
			mov x4, 2
			movz x10, 0xd8, lsl 16
			movk x10, 0x0000, lsl 00
			bl rectangle

			mov x1, 325
			mov x2, 359
			mov x3, 5
			mov x4, 2
			movz x10, 0xd8, lsl 16
			movk x10, 0x0000, lsl 00
			bl rectangle

			//c
			mov x1, 335
			mov x2, 361
			mov x3, 2
			mov x4, 6
			movz x10, 0xd8, lsl 16
			movk x10, 0x0000, lsl 00
			bl rectangle

			mov x1, 335
			mov x2, 359
			mov x3, 6
			mov x4, 2
			movz x10, 0xd8, lsl 16
			movk x10, 0x0000, lsl 00
			bl rectangle

			mov x1, 335
			mov x2, 365
			mov x3, 6
			mov x4, 2
			movz x10, 0xd8, lsl 16
			movk x10, 0x0000, lsl 00
			bl rectangle

			//2
			mov x1, 350
			mov x2, 355
			mov x3, 7
			mov x4, 2
			movz x10, 0xd8, lsl 16
			movk x10, 0x0000, lsl 00
			bl rectangle

			mov x1, 350
			mov x2, 365
			mov x3, 7
			mov x4, 2
			movz x10, 0xd8, lsl 16
			movk x10, 0x0000, lsl 00
			bl rectangle

			mov x1, 350
			mov x2, 360
			mov x3, 7
			mov x4, 2
			movz x10, 0xd8, lsl 16
			movk x10, 0x0000, lsl 00
			bl rectangle

			mov x1, 350
			mov x2, 360
			mov x3, 2
			mov x4, 5
			movz x10, 0xd8, lsl 16
			movk x10, 0x0000, lsl 00
			bl rectangle

			mov x1, 355
			mov x2, 355
			mov x3, 2
			mov x4, 5
			movz x10, 0xd8, lsl 16
			movk x10, 0x0000, lsl 00
			bl rectangle

			//0
			mov x1, 360
			mov x2, 355
			mov x3, 2
			mov x4, 12
			movz x10, 0xd8, lsl 16
			movk x10, 0x0000, lsl 00
			bl rectangle

			mov x1, 365
			mov x2, 355
			mov x3, 2
			mov x4, 12
			movz x10, 0xd8, lsl 16
			movk x10, 0x0000, lsl 00
			bl rectangle

			mov x1, 360
			mov x2, 355
			mov x3, 5
			mov x4, 2
			movz x10, 0xd8, lsl 16
			movk x10, 0x0000, lsl 00
			bl rectangle

			mov x1, 360
			mov x2, 365
			mov x3, 5
			mov x4, 2
			movz x10, 0xd8, lsl 16
			movk x10, 0x0000, lsl 00
			bl rectangle

			//2
			mov x1, 370
			mov x2, 355
			mov x3, 7
			mov x4, 2
			movz x10, 0xd8, lsl 16
			movk x10, 0x0000, lsl 00
			bl rectangle

			mov x1, 370
			mov x2, 365
			mov x3, 7
			mov x4, 2
			movz x10, 0xd8, lsl 16
			movk x10, 0x0000, lsl 00
			bl rectangle

			mov x1, 370
			mov x2, 360
			mov x3, 7
			mov x4, 2
			movz x10, 0xd8, lsl 16
			movk x10, 0x0000, lsl 00
			bl rectangle

			mov x1, 370
			mov x2, 360
			mov x3, 2
			mov x4, 5
			movz x10, 0xd8, lsl 16
			movk x10, 0x0000, lsl 00
			bl rectangle

			mov x1, 375
			mov x2, 355
			mov x3, 2
			mov x4, 5
			movz x10, 0xd8, lsl 16
			movk x10, 0x0000, lsl 00
			bl rectangle

			//5
			mov x1, 380
			mov x2, 355
			mov x3, 7
			mov x4, 2
			movz x10, 0xd8, lsl 16
			movk x10, 0x0000, lsl 00
			bl rectangle

			mov x1, 380
			mov x2, 365
			mov x3, 7
			mov x4, 2
			movz x10, 0xd8, lsl 16
			movk x10, 0x0000, lsl 00
			bl rectangle

			mov x1, 380
			mov x2, 360
			mov x3, 7
			mov x4, 2
			movz x10, 0xd8, lsl 16
			movk x10, 0x0000, lsl 00
			bl rectangle

			mov x1, 380
			mov x2, 355
			mov x3, 2
			mov x4, 5
			movz x10, 0xd8, lsl 16
			movk x10, 0x0000, lsl 00
			bl rectangle

			mov x1, 385
			mov x2, 360
			mov x3, 2
			mov x4, 5
			movz x10, 0xd8, lsl 16
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
 
