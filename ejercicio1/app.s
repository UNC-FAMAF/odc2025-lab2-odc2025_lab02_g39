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

	.macro draw_rectangle x, y, w, h, color
	  mov x1, \x
	  mov x2, \y
	  mov x3, \w
	  mov x4, \h
	  movz x10, (\color >> 16) & 0xFFFF, lsl 16
	  movk x10, \color & 0xFFFF, lsl 0
	  bl rectangle
       .endm
       
       .set COLOR_HOVER, 0x3E686F
       .set COLOR_FLOOR, 0x04263C
       .set RED,  0xFF0000
       .set BLACK, 0x000000
       .set WHITE, 0xFFFFFF
	
 
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
                 
        //Lineas horizontales
	        draw_rectangle 0,200,640,5,COLOR_HOVER
		draw_rectangle 0,220,640,3,COLOR_HOVER
		draw_rectangle 0,250,640,4,COLOR_HOVER
		draw_rectangle 0,290,640,5,COLOR_HOVER
                draw_rectangle 0,350,640,6,COLOR_HOVER
		draw_rectangle 0,420,640,7,COLOR_HOVER

                 //linea1 (del centro)
		   
		draw_rectangle 318,200,4,93,COLOR_HOVER
		draw_rectangle 317,293,6,93,COLOR_HOVER
                draw_rectangle 316,386,8,94,COLOR_HOVER

                //linea2
		draw_rectangle 248, 200, 4, 12, COLOR_HOVER
                draw_rectangle 244, 212, 4, 12, COLOR_HOVER
                draw_rectangle 240, 224, 4, 12, COLOR_HOVER
                draw_rectangle 236, 236, 4, 12, COLOR_HOVER
                draw_rectangle 232, 248, 4, 12, COLOR_HOVER
                draw_rectangle 228, 260, 4, 12, COLOR_HOVER
                draw_rectangle 224, 272, 4, 12, COLOR_HOVER
                draw_rectangle 220, 284, 4, 12, COLOR_HOVER
                draw_rectangle 216, 296, 4, 12, COLOR_HOVER
                draw_rectangle 210, 308, 6, 12, COLOR_HOVER
                draw_rectangle 204, 320, 6, 12, COLOR_HOVER
                draw_rectangle 198, 332, 6, 12, COLOR_HOVER
                draw_rectangle 192, 344, 6, 12, COLOR_HOVER
                draw_rectangle 186, 356, 6, 12, COLOR_HOVER
                draw_rectangle 180, 368, 6, 12, COLOR_HOVER
                draw_rectangle 174, 380, 6, 12, COLOR_HOVER
                draw_rectangle 168, 392, 6, 12, COLOR_HOVER
                draw_rectangle 162, 404, 6, 12, COLOR_HOVER
                draw_rectangle 154, 416, 8, 12, COLOR_HOVER
                draw_rectangle 146, 428, 8, 12, COLOR_HOVER
                draw_rectangle 138, 440, 8, 12, COLOR_HOVER
                draw_rectangle 130, 452, 8, 12, COLOR_HOVER
                draw_rectangle 122, 464, 8, 12, COLOR_HOVER

		 //linea 3
		draw_rectangle 178, 200, 4, 6, COLOR_HOVER
                draw_rectangle 174, 206, 4, 6, COLOR_HOVER
                draw_rectangle 170, 212, 4, 6, COLOR_HOVER
                draw_rectangle 166, 218, 4, 6, COLOR_HOVER
                draw_rectangle 162, 224, 4, 6, COLOR_HOVER
                draw_rectangle 158, 230, 5, 6, COLOR_HOVER
                draw_rectangle 153, 236, 5, 6, COLOR_HOVER
                draw_rectangle 148, 242, 5, 6, COLOR_HOVER
                draw_rectangle 143, 248, 5, 6, COLOR_HOVER
                draw_rectangle 138, 254, 5, 6, COLOR_HOVER
                draw_rectangle 133, 260, 5, 6, COLOR_HOVER
                draw_rectangle 128, 266, 5, 6, COLOR_HOVER
                draw_rectangle 123, 272, 5, 6, COLOR_HOVER
                draw_rectangle 118, 278, 6, 7, COLOR_HOVER
                draw_rectangle 112, 285, 6, 7, COLOR_HOVER
                draw_rectangle 106, 292, 6, 7, COLOR_HOVER
                draw_rectangle 100, 299, 6, 7, COLOR_HOVER
                draw_rectangle 94, 306, 6, 7, COLOR_HOVER
                draw_rectangle 88, 313, 6, 7, COLOR_HOVER
                draw_rectangle 82, 320, 6, 7, COLOR_HOVER
                draw_rectangle 76, 327, 6, 7, COLOR_HOVER
                draw_rectangle 70, 334, 6, 7, COLOR_HOVER
                draw_rectangle 64, 341, 6, 7, COLOR_HOVER
                draw_rectangle 57, 348, 6, 7, COLOR_HOVER
                draw_rectangle 51, 355, 6, 7, COLOR_HOVER
                draw_rectangle 45, 362, 6, 7, COLOR_HOVER
                draw_rectangle 39, 369, 6, 7, COLOR_HOVER
                draw_rectangle 33, 376, 9, 10, COLOR_HOVER
                draw_rectangle 24, 386, 9, 10, COLOR_HOVER
                draw_rectangle 15, 396, 9, 10, COLOR_HOVER
                draw_rectangle 6, 406, 9, 10, COLOR_HOVER
                draw_rectangle 0, 416, 9, 10, COLOR_HOVER
   
		 //linea 4
		   
                draw_rectangle 100, 200, 5, 6, COLOR_HOVER
                draw_rectangle 95, 206, 5, 6, COLOR_HOVER
                draw_rectangle 90, 212, 5, 4, COLOR_HOVER
                draw_rectangle 85, 216, 5, 6, COLOR_HOVER
                draw_rectangle 80, 222, 5, 4, COLOR_HOVER
                draw_rectangle 75, 226, 5, 6, COLOR_HOVER
                draw_rectangle 70, 232, 5, 4, COLOR_HOVER
                draw_rectangle 65, 236, 5, 6, COLOR_HOVER
                draw_rectangle 60, 242, 5, 4, COLOR_HOVER
                draw_rectangle 55, 246, 5, 6, COLOR_HOVER
                draw_rectangle 50, 252, 5, 4, COLOR_HOVER
                draw_rectangle 45, 256, 5, 6, COLOR_HOVER
                draw_rectangle 40, 262, 5, 4, COLOR_HOVER
                draw_rectangle 35, 266, 5, 4, COLOR_HOVER
                draw_rectangle 30, 270, 7, 6, COLOR_HOVER
                draw_rectangle 23, 276, 8, 7, COLOR_HOVER
                draw_rectangle 16, 283, 8, 6, COLOR_HOVER
                draw_rectangle 8, 289, 8, 7, COLOR_HOVER
                draw_rectangle 0, 296, 8, 7, COLOR_HOVER

                //Linea 2 (de la derecha)
	       
                draw_rectangle 388, 200, 4, 12, COLOR_HOVER
                draw_rectangle 392, 212, 4, 12, COLOR_HOVER
                draw_rectangle 396, 224, 4, 12, COLOR_HOVER
                draw_rectangle 400, 236, 4, 12, COLOR_HOVER
                draw_rectangle 404, 248, 4, 12, COLOR_HOVER
                draw_rectangle 408, 260, 4, 12, COLOR_HOVER
                draw_rectangle 412, 272, 4, 12, COLOR_HOVER
                draw_rectangle 416, 284, 4, 12, COLOR_HOVER
                draw_rectangle 420, 296, 4, 12, COLOR_HOVER
                draw_rectangle 424, 308, 6, 12, COLOR_HOVER
                draw_rectangle 430, 320, 6, 12, COLOR_HOVER
                draw_rectangle 436, 332, 6, 12, COLOR_HOVER
                draw_rectangle 442, 344, 6, 12, COLOR_HOVER
                draw_rectangle 448, 356, 6, 12, COLOR_HOVER
                draw_rectangle 454, 368, 6, 12, COLOR_HOVER
                draw_rectangle 460, 380, 6, 12, COLOR_HOVER
                draw_rectangle 466, 392, 6, 12, COLOR_HOVER
                draw_rectangle 472, 404, 6, 12, COLOR_HOVER
                draw_rectangle 478, 416, 8, 12, COLOR_HOVER
                draw_rectangle 486, 428, 8, 12, COLOR_HOVER
                draw_rectangle 494, 440, 8, 12, COLOR_HOVER
                draw_rectangle 502, 452, 8, 12, COLOR_HOVER
                draw_rectangle 510, 464, 8, 12, COLOR_HOVER

                //linea 3 (de la derecha)
	        draw_rectangle 458, 200, 4, 6,COLOR_HOVER
                draw_rectangle 462, 206, 4, 6,COLOR_HOVER
		draw_rectangle 466, 212, 4, 6,COLOR_HOVER
                draw_rectangle 470, 218, 4, 6,COLOR_HOVER
                draw_rectangle 474, 224, 4, 6,COLOR_HOVER
                draw_rectangle 478, 230, 5, 6,COLOR_HOVER
                draw_rectangle 483, 236, 5, 6,COLOR_HOVER
                draw_rectangle 488, 242, 5, 6,COLOR_HOVER
                draw_rectangle 493, 248, 5, 6,COLOR_HOVER
                draw_rectangle 498, 254, 5, 6,COLOR_HOVER
                draw_rectangle 503, 260, 5, 6,COLOR_HOVER
                draw_rectangle 508, 266, 5, 6,COLOR_HOVER
                draw_rectangle 513, 272, 5, 6,COLOR_HOVER
                draw_rectangle 518, 278, 6, 7,COLOR_HOVER
                draw_rectangle 524, 285, 6, 7,COLOR_HOVER
                draw_rectangle 530, 292, 6, 7,COLOR_HOVER
                draw_rectangle 536, 299, 6, 7,COLOR_HOVER
                draw_rectangle 542, 306, 6, 7,COLOR_HOVER
                draw_rectangle 548, 313, 6, 7,COLOR_HOVER
                draw_rectangle 554, 320, 6, 7,COLOR_HOVER
                draw_rectangle 560, 327, 6, 7,COLOR_HOVER
                draw_rectangle 566, 334, 6, 7,COLOR_HOVER
                draw_rectangle 572, 341, 6, 7,COLOR_HOVER
                draw_rectangle 578, 348, 6, 7,COLOR_HOVER
                draw_rectangle 584, 355, 6, 7,COLOR_HOVER
                draw_rectangle 590, 362, 6, 7,COLOR_HOVER
                draw_rectangle 596, 369, 6, 7,COLOR_HOVER
                draw_rectangle 602, 376, 9, 10,COLOR_HOVER
                draw_rectangle 611, 386, 9, 10,COLOR_HOVER
                draw_rectangle 620, 396, 9, 10,COLOR_HOVER
                draw_rectangle 629, 406, 9, 10,COLOR_HOVER
                draw_rectangle 638, 416, 9, 10,COLOR_HOVER
		
		//linea 4(de la derecha)
	        draw_rectangle 540, 200, 5, 6,COLOR_HOVER
                draw_rectangle 545, 206, 5, 6,COLOR_HOVER
                draw_rectangle 550, 212, 5, 4,COLOR_HOVER
                draw_rectangle 555, 216, 5, 6,COLOR_HOVER
                draw_rectangle 560, 222, 5, 4,COLOR_HOVER
                draw_rectangle 565, 226, 5, 6,COLOR_HOVER
                draw_rectangle 570, 232, 5, 4,COLOR_HOVER
                draw_rectangle 575, 236, 5, 6,COLOR_HOVER
                draw_rectangle 580, 242, 5, 4,COLOR_HOVER
                draw_rectangle 585, 246, 5, 6,COLOR_HOVER
                draw_rectangle 590, 252, 5, 4,COLOR_HOVER
                draw_rectangle 595, 256, 5, 6,COLOR_HOVER
                draw_rectangle 600, 262, 5, 4,COLOR_HOVER
                draw_rectangle 605, 266, 5, 4,COLOR_HOVER
                draw_rectangle 610, 270, 7, 6,COLOR_HOVER
                draw_rectangle 617, 276, 8, 7,COLOR_HOVER
                draw_rectangle 625, 283, 8, 6,COLOR_HOVER
                draw_rectangle 633, 289, 8, 7,COLOR_HOVER
		

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

 
 
