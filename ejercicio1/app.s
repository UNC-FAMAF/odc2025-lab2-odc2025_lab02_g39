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


			mov x1, 109 
			mov x2, 180 
			mov x3, 8   
			mov x4, 20  
			bl rectangle 


			mov x1, 118 
			mov x2, 160 
			mov x3, 8   
			mov x4, 40  
			bl rectangle 

			mov x1, 126 
			mov x2, 195 
			mov x3, 8   
			mov x4, 5  
			bl rectangle 

			mov x1, 134 
			mov x2, 193 
			mov x3, 8   
			mov x4, 7  
			bl rectangle 

			mov x1, 140 
			mov x2, 190 
			mov x3, 8   
			mov x4, 10  
			bl rectangle 

			mov x1, 148 
			mov x2, 190 
			mov x3, 8   
			mov x4, 10  
			bl rectangle

			mov x1, 157 
			mov x2, 195 
			mov x3, 8   
			mov x4, 5  
			bl rectangle

			mov x1, 165 
			mov x2, 193 
			mov x3, 8  
			mov x4, 7  
			bl rectangle 

			mov x1, 0 
			mov x2, 193 
			mov x3, 8   
			mov x4, 7  
			bl rectangle 

			mov x1, 9 
			mov x2, 190 
			mov x3, 8   
			mov x4, 10  
			bl rectangle
    
	                mov x1, 18 
			mov x2, 175 
			mov x3, 8   
			mov x4, 25  
			bl rectangle

			mov x1, 26 
			mov x2, 185 
			mov x3, 8   
			mov x4, 15  
			bl rectangle


			mov x1, 34 
			mov x2, 195 
			mov x3, 8   
			mov x4, 5  
			bl rectangle

			mov x1, 42 
			mov x2, 194 
			mov x3, 8   
			mov x4, 7  
	                bl rectangle

			mov x1, 50 
			mov x2, 195 
			mov x3, 15   
			mov x4, 5  
			bl rectangle

			mov x1, 65 
			mov x2, 185 
			mov x3, 20   
			mov x4, 15  
			bl rectangle
			
			mov x1, 85 
			mov x2, 170 
			mov x3, 8   
			mov x4, 30  
			bl rectangle

			mov x1, 93 
			mov x2, 180 
			mov x3, 8   
			mov x4, 20  
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
       //Lineas
                //linea1 (del centro)
		mov x1, 320 // coord x
		mov x2, 200 // coord y
		mov x3, 10   // ancho
		mov x4, 280  // alto
		bl rectangle 

		//linea2
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

                //linea 3

		mov x1, 240 
		mov x2, 200 
		mov x3, 10  
		mov x4, 65  
		bl rectangle 

		mov x1, 230 
		mov x2, 260 
		mov x3, 10   
		mov x4, 65  
		bl rectangle 

		mov x1, 220 
		mov x2, 325 
		mov x3, 10  
		mov x4, 70  
		bl rectangle 

		mov x1, 210 
		mov x2, 390 
		mov x3, 10  
		mov x4, 70  
		bl rectangle 

		mov x1, 200 
		mov x2, 455 
		mov x3, 10  
		mov x4, 70  
		bl rectangle 

		//linea 4

		mov x1, 200 
		mov x2, 200 
		mov x3, 10  
		mov x4, 50  
		bl rectangle 

		mov x1, 190 
		mov x2, 245 
		mov x3, 10  
		mov x4, 50  
		bl rectangle 

		mov x1, 180 
		mov x2, 295 
		mov x3, 10  
		mov x4, 50  
		bl rectangle 


		mov x1, 170 
		mov x2, 345 
		mov x3, 10  
		mov x4, 50  
		bl rectangle

		mov x1, 160 
		mov x2, 390 
		mov x3, 10   
		mov x4, 50  
		bl rectangle

		mov x1, 150 
		mov x2, 435 
		mov x3, 10  
		mov x4, 50  
		bl rectangle

		//linea 5

		mov x1, 160 
		mov x2, 200 
		mov x3, 10  
		mov x4, 45  
		bl rectangle
 
                mov x1, 150 
		mov x2, 240 
		mov x3, 10  
		mov x4, 45  
		bl rectangle

		mov x1, 140 
		mov x2, 280 
		mov x3, 10  
		mov x4, 45  
		bl rectangle

		mov x1, 130 
		mov x2, 320 
		mov x3, 10   
		mov x4, 45  
		bl rectangle

		mov x1, 120 
		mov x2, 355 
		mov x3, 10  
		mov x4, 45  
		bl rectangle

		mov x1, 110 
		mov x2, 395 
		mov x3, 10   
		mov x4, 45  
		bl rectangle

		mov x1, 100 
		mov x2, 435 
		mov x3, 10   
		mov x4, 45  
		bl rectangle

		//linea 6

		mov x1, 120 
		mov x2, 200 
		mov x3, 10  
		mov x4, 40  
		bl rectangle

		mov x1, 110 
		mov x2, 235 
		mov x3, 10  
		mov x4, 40  
		bl rectangle

		mov x1, 100 
		mov x2, 270 
		mov x3, 10   
		mov x4, 40  
		bl rectangle

		mov x1, 90 
		mov x2, 315 
		mov x3, 10  
		mov x4, 40  
		bl rectangle

		mov x1, 80 
		mov x2, 355 
		mov x3, 10   
		mov x4, 40  
		bl rectangle

		mov x1, 70 
		mov x2, 390
		mov x3, 10 
		mov x4, 40 
		bl rectangle

		mov x1, 60 
		mov x2, 425
		mov x3, 10 
		mov x4, 40 
		bl rectangle

		mov x1, 50 
		mov x2, 460 
		mov x3, 10  
		mov x4, 40  
		bl rectangle

		//linea 7

		mov x1, 80 
		mov x2, 200 
		mov x3, 10   
		mov x4, 35  
		bl rectangle

		mov x1, 70 
		mov x2, 230 
		mov x3, 10   
		mov x4, 35  
		bl rectangle

		mov x1, 60 
		mov x2, 260 
		mov x3, 10   
		mov x4, 35  
		bl rectangle

		mov x1, 50 
		mov x2, 290 
		mov x3, 10  
		mov x4, 35  
		bl rectangle

		mov x1, 40 
		mov x2, 320
		mov x3, 10   
		mov x4, 35  
		bl rectangle

		mov x1, 30 
		mov x2, 350 
		mov x3, 10   
		mov x4, 35  
		bl rectangle

		mov x1, 20 
		mov x2, 380 
		mov x3, 10   
		mov x4, 35  
		bl rectangle

		mov x1, 10 
		mov x2, 410 
		mov x3, 10   
		mov x4, 35  
		bl rectangle

		mov x1, 0 
		mov x2, 440 
		mov x3, 10   
		mov x4, 38  
		bl rectangle

		//linea 8
		
		mov x1, 40 
		mov x2, 200 
		mov x3, 10   
		mov x4, 30  
		bl rectangle

		mov x1, 30 
		mov x2, 225 
		mov x3, 10   
		mov x4, 30  
		bl rectangle

		mov x1, 20 
		mov x2, 250 
		mov x3, 10   
		mov x4, 30  
		bl rectangle

		mov x1, 10 
		mov x2, 275 
		mov x3, 10   
		mov x4, 30  
		bl rectangle

		mov x1, 0 
		mov x2, 300
		mov x3, 10  
		mov x4, 30  
		bl rectangle

        //linea 2 (de la derecha)
		mov x1, 360 
		mov x2, 200 
		mov x3, 10  
		mov x4, 70  
		bl rectangle 

		mov x1, 370 
		mov x2, 270 
		mov x3, 10  
		mov x4, 70  
		bl rectangle 

		mov x1, 380 
		mov x2, 340 
		mov x3, 10   
		mov x4, 70  
		bl rectangle 

		mov x1, 390 
		mov x2, 410 
		mov x3, 10   
		mov x4, 70  
		bl rectangle 

		mov x1, 400 
		mov x2, 480 
		mov x3, 10   
		mov x4, 70  
		bl rectangle 

		//linea 3 (de la derecha)
		mov x1, 400 
		mov x2, 200 
		mov x3, 10  
		mov x4, 65  
		bl rectangle

		mov x1, 410 
		mov x2, 260 
		mov x3, 10  
		mov x4, 65  
		bl rectangle  


		mov x1, 420 
		mov x2, 325 
		mov x3, 10   
		mov x4, 70  
		bl rectangle

                mov x1, 430 
		mov x2, 390 
		mov x3, 10  
		mov x4, 70  
		bl rectangle

		mov x1, 440 
		mov x2, 455 
		mov x3, 10  
		mov x4, 70  
		bl rectangle

		//linea 4 (de la derecha)
                mov x1, 440 
		mov x2, 200 
		mov x3, 10  
		mov x4, 50  
		bl rectangle

                mov x1, 450 
		mov x2, 245 
		mov x3, 10  
		mov x4, 50  
		bl rectangle

		mov x1, 460 
		mov x2, 295 
		mov x3, 10  
		mov x4, 50  
		bl rectangle

                mov x1, 470 
		mov x2, 345 
		mov x3, 10  
		mov x4, 50  
		bl rectangle

                mov x1, 480 
		mov x2, 390 
		mov x3, 10  
		mov x4, 50  
		bl rectangle

	        mov x1, 490 
		mov x2, 435 
		mov x3, 10  
		mov x4, 50  
		bl rectangle

	    //linea 5(de la derecha)
		mov x1, 480 
		mov x2, 200 
		mov x3, 10   
		mov x4, 45  
		bl rectangle
 
                mov x1, 490 
		mov x2, 240 
		mov x3, 10  
		mov x4, 45  
		bl rectangle

		mov x1, 500 
		mov x2, 280 
		mov x3, 10  
		mov x4, 45  
		bl rectangle

		mov x1, 510 
		mov x2, 320 
		mov x3, 10  
		mov x4, 45  
		bl rectangle

		mov x1, 520 
		mov x2, 355 
		mov x3, 10  
		mov x4, 45  
		bl rectangle

		mov x1, 530 
		mov x2, 395 
		mov x3, 10  
		mov x4, 45  
		bl rectangle

		mov x1, 540 
		mov x2, 435 
		mov x3, 10  
		mov x4, 45  
		bl rectangle

        //linea 6(de la derecha)
		mov x1, 520 
		mov x2, 200 
		mov x3, 10  
		mov x4, 40  
		bl rectangle

		mov x1, 530 
		mov x2, 235 
		mov x3, 10  
		mov x4, 40  
		bl rectangle

		mov x1, 540 
		mov x2, 270 
		mov x3, 10  
		mov x4, 43  
		bl rectangle

		mov x1, 550 
		mov x2, 315 
		mov x3, 10  
		mov x4, 40  
		bl rectangle

		mov x1, 560 
		mov x2, 355 
		mov x3, 10   
		mov x4, 40  
		bl rectangle

		mov x1, 570 
		mov x2, 390 
		mov x3, 10  
		mov x4, 40  
		bl rectangle

		mov x1, 580 
		mov x2, 425 
		mov x3, 10   
		mov x4, 40  
		bl rectangle

		mov x1, 590 
		mov x2, 460 
		mov x3, 10   
		mov x4, 40  
		bl rectangle

	       //linea 7(de la derecha)

		mov x1, 560 
		mov x2, 200 
		mov x3, 10  
		mov x4, 35  
		bl rectangle

		mov x1, 570 
		mov x2, 230 
		mov x3, 10  
		mov x4, 35  
		bl rectangle

		mov x1, 580 
		mov x2, 260 
		mov x3, 10  
		mov x4, 35  
		bl rectangle

		mov x1, 590 
		mov x2, 290 
		mov x3, 10  
		mov x4, 35  
		bl rectangle

		mov x1, 600 
		mov x2, 320 
		mov x3, 10  
		mov x4, 35  
		bl rectangle

		mov x1, 610 
		mov x2, 350 
		mov x3, 10  
		mov x4, 35  
		bl rectangle

		mov x1, 620 
		mov x2, 380 
		mov x3, 10  
		mov x4, 35  
		bl rectangle

		mov x1, 630 
		mov x2, 410 
		mov x3, 10   
		mov x4, 35  
		bl rectangle

		mov x1, 640 
		mov x2, 440 
		mov x3, 10   
		mov x4, 38  
		bl rectangle

		//linea 8(de la derecha)
		
		mov x1, 600 
		mov x2, 200 
		mov x3, 10  
		mov x4, 30  
		bl rectangle

		mov x1, 610 
		mov x2, 225 
		mov x3, 10  
		mov x4, 30  
		bl rectangle

		mov x1, 620 
		mov x2, 250 
		mov x3, 10   
		mov x4, 30  
		bl rectangle

		mov x1, 630 
		mov x2, 275 
		mov x3, 10   
		mov x4, 30  
		bl rectangle

		mov x1, 640 
		mov x2, 300 
		mov x3, 10  
		mov x4, 30  
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
 
