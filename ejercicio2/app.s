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

// Colores
.equ FLOORLINES, 0x3E686F
.equ FLOOR, 0x04263C
.equ RED,  0xFF0000
.equ RED2, 0xD80000
.equ RED3, 0x990000
.equ BLACK, 0x000000
.equ WHITE, 0xFFFFFF

.macro draw_rectangle x, y, w, z, color
	mov x1, \x  // Mueve el valor   
	mov x2, \y  // de x, y, w, z
	mov x3, \w  // que se le pasa al macro
	mov x4, \z  // al registro x1
	movz x10, (\color >> 16) & 0xFFFF, lsl 16 // Carga bits mas significativos del color en x10
	movk x10, \color & 0xFFFF, lsl 0 // Carga bits menos significativos del color en x10
	bl rectangle
.endm

.macro draw_circumference x, y, w, z, color
	mov x1, \x  // Mueve el valor
	mov x2, \y  // de x, y, w, z
	mov x3, \w  // que se le pasa al macro
	mov x4, \z  // al registro x1
	movz x10, (\color >> 16) & 0xFFFF, lsl 16 // Carga bits mas significativos del color en x10
	movk x10, \color & 0xFFFF, lsl 0 // Carga bits menos significativos del color en x10
	bl circumference
.endm


// Piso
draw_rectangle 0, 200, 640, 280, FLOOR

// Lineas
                 
    // Lineas horizontales
	draw_rectangle 0,200,640,5,FLOORLINES
	draw_rectangle 0,220,640,3,FLOORLINES
	draw_rectangle 0,250,640,4,FLOORLINES
	draw_rectangle 0,290,640,5,FLOORLINES
    draw_rectangle 0,350,640,6,FLOORLINES
	draw_rectangle 0,420,640,7,FLOORLINES

    

    // Linea2
    draw_rectangle 283, 200, 4, 12, FLOORLINES
    draw_rectangle 279, 212, 4, 12, FLOORLINES
    draw_rectangle 275, 224, 4, 12, FLOORLINES
    draw_rectangle 271, 236, 4, 12, FLOORLINES
    draw_rectangle 267, 248, 4, 12, FLOORLINES
    draw_rectangle 263, 260, 4, 12, FLOORLINES
    draw_rectangle 259, 272, 4, 12, FLOORLINES
    draw_rectangle 255, 284, 4, 12, FLOORLINES
    draw_rectangle 251, 296, 4, 12, FLOORLINES
    draw_rectangle 245, 308, 6, 12, FLOORLINES
    draw_rectangle 239, 320, 6, 12, FLOORLINES
    draw_rectangle 233, 332, 6, 12, FLOORLINES
    draw_rectangle 227, 344, 6, 12, FLOORLINES
    draw_rectangle 221, 356, 6, 12, FLOORLINES
    draw_rectangle 215, 368, 6, 12, FLOORLINES
    draw_rectangle 209, 380, 6, 12, FLOORLINES
    draw_rectangle 203, 392, 6, 12, FLOORLINES
    draw_rectangle 197, 404, 6, 12, FLOORLINES
    draw_rectangle 189, 416, 8, 12, FLOORLINES
    draw_rectangle 181, 428, 8, 12, FLOORLINES
    draw_rectangle 173, 440, 8, 12, FLOORLINES
    draw_rectangle 165, 452, 8, 12, FLOORLINES
    draw_rectangle 157, 464, 8, 12, FLOORLINES

	// Linea 3
	draw_rectangle 213, 200, 4, 6, FLOORLINES
	draw_rectangle 209, 206, 4, 6, FLOORLINES
	draw_rectangle 205, 212, 4, 6, FLOORLINES
	draw_rectangle 201, 218, 4, 6, FLOORLINES
	draw_rectangle 197, 224, 4, 6, FLOORLINES
	draw_rectangle 193, 230, 5, 6, FLOORLINES
	draw_rectangle 188, 236, 5, 6, FLOORLINES
	draw_rectangle 183, 242, 5, 6, FLOORLINES
	draw_rectangle 178, 248, 5, 6, FLOORLINES
	draw_rectangle 173, 254, 5, 6, FLOORLINES
	draw_rectangle 168, 260, 5, 6, FLOORLINES
	draw_rectangle 163, 266, 5, 6, FLOORLINES
        draw_rectangle 158, 272, 5, 6, FLOORLINES
	draw_rectangle 153, 278, 6, 7, FLOORLINES
	draw_rectangle 147, 285, 6, 7, FLOORLINES
	draw_rectangle 141, 292, 6, 7, FLOORLINES
	draw_rectangle 135, 299, 6, 7, FLOORLINES
	draw_rectangle 129, 306, 6, 7, FLOORLINES
	draw_rectangle 123, 313, 6, 7, FLOORLINES
	draw_rectangle 117, 320, 6, 7, FLOORLINES
	draw_rectangle 111, 327, 6, 7, FLOORLINES
	draw_rectangle 105, 334, 6, 7, FLOORLINES
	draw_rectangle 99, 341, 6, 7, FLOORLINES
	draw_rectangle 92, 348, 6, 7, FLOORLINES
        draw_rectangle 86, 355, 6, 7, FLOORLINES
	draw_rectangle 80, 362, 6, 7, FLOORLINES
	draw_rectangle 74, 369, 6, 7, FLOORLINES
	draw_rectangle 68, 376, 9, 10, FLOORLINES
	draw_rectangle 59, 386, 9, 10, FLOORLINES
	draw_rectangle 50, 396, 9, 10, FLOORLINES
	draw_rectangle 41, 406, 9, 10, FLOORLINES
	draw_rectangle 32, 416, 10, 10, FLOORLINES
	draw_rectangle 22, 426, 10, 10, FLOORLINES
	draw_rectangle 12, 436, 12, 10, FLOORLINES
	draw_rectangle 0, 446, 11, 10, FLOORLINES
   
	// Linea 4
		   
	draw_rectangle 135, 200, 5, 6, FLOORLINES
	draw_rectangle 130, 206, 5, 6, FLOORLINES
	draw_rectangle 125, 212, 5, 4, FLOORLINES
	draw_rectangle 120, 216, 5, 6, FLOORLINES
	draw_rectangle 115, 222, 5, 4, FLOORLINES
	draw_rectangle 110, 226, 5, 6, FLOORLINES
	draw_rectangle 105, 232, 5, 4, FLOORLINES
	draw_rectangle 100, 236, 5, 6, FLOORLINES
	draw_rectangle 95, 242, 5, 4, FLOORLINES
	draw_rectangle 90, 246, 5, 6, FLOORLINES
	draw_rectangle 85, 252, 5, 4, FLOORLINES
	draw_rectangle 80, 256, 5, 6, FLOORLINES
	draw_rectangle 75, 262, 5, 4, FLOORLINES
	draw_rectangle 70, 266, 5, 4, FLOORLINES
	draw_rectangle 65, 270, 7, 6, FLOORLINES
	draw_rectangle 58, 276, 8, 7, FLOORLINES
	draw_rectangle 51, 283, 8, 6, FLOORLINES
	draw_rectangle 43, 289, 8, 7, FLOORLINES
	draw_rectangle 35, 296, 8, 7, FLOORLINES
	draw_rectangle 27, 303, 8, 7, FLOORLINES

	// Linea 2 (de la derecha)

	draw_rectangle 353, 200, 4, 12, FLOORLINES
	draw_rectangle 357, 212, 4, 12, FLOORLINES
	draw_rectangle 361, 224, 4, 12, FLOORLINES
	draw_rectangle 365, 236, 4, 12, FLOORLINES
	draw_rectangle 369, 248, 4, 12, FLOORLINES
	draw_rectangle 373, 260, 4, 12, FLOORLINES
	draw_rectangle 377, 272, 4, 12, FLOORLINES
	draw_rectangle 381, 284, 4, 12, FLOORLINES
	draw_rectangle 385, 296, 4, 12, FLOORLINES
	draw_rectangle 389, 308, 6, 12, FLOORLINES
	draw_rectangle 395, 320, 6, 12, FLOORLINES
	draw_rectangle 401, 332, 6, 12, FLOORLINES
	draw_rectangle 407, 344, 6, 12, FLOORLINES
	draw_rectangle 413, 356, 6, 12, FLOORLINES
	draw_rectangle 419, 368, 6, 12, FLOORLINES
	draw_rectangle 425, 380, 6, 12, FLOORLINES
	draw_rectangle 431, 392, 6, 12, FLOORLINES
	draw_rectangle 437, 404, 6, 12, FLOORLINES
	draw_rectangle 443, 416, 8, 12, FLOORLINES
	draw_rectangle 451, 428, 8, 12, FLOORLINES
	draw_rectangle 459, 440, 8, 12, FLOORLINES
	draw_rectangle 467, 452, 8, 12, FLOORLINES
	draw_rectangle 475, 464, 8, 12, FLOORLINES


    // Linea 3 (de la derecha)
	draw_rectangle 423, 200, 4, 6, FLOORLINES
	draw_rectangle 427, 206, 4, 6, FLOORLINES
	draw_rectangle 431, 212, 4, 6, FLOORLINES
	draw_rectangle 435, 218, 4, 6, FLOORLINES
	draw_rectangle 439, 224, 4, 6, FLOORLINES
	draw_rectangle 443, 230, 5, 6, FLOORLINES
	draw_rectangle 448, 236, 5, 6, FLOORLINES
	draw_rectangle 453, 242, 5, 6, FLOORLINES
	draw_rectangle 458, 248, 5, 6, FLOORLINES
	draw_rectangle 463, 254, 5, 6, FLOORLINES
	draw_rectangle 468, 260, 5, 6, FLOORLINES
	draw_rectangle 473, 266, 5, 6, FLOORLINES
	draw_rectangle 478, 272, 5, 6, FLOORLINES
	draw_rectangle 483, 278, 6, 7, FLOORLINES
	draw_rectangle 489, 285, 6, 7, FLOORLINES
	draw_rectangle 495, 292, 6, 7, FLOORLINES
	draw_rectangle 501, 299, 6, 7, FLOORLINES
	draw_rectangle 507, 306, 6, 7, FLOORLINES
	draw_rectangle 513, 313, 6, 7, FLOORLINES
	draw_rectangle 519, 320, 6, 7, FLOORLINES
	draw_rectangle 525, 327, 6, 7, FLOORLINES
	draw_rectangle 531, 334, 6, 7, FLOORLINES
	draw_rectangle 537, 341, 6, 7, FLOORLINES
	draw_rectangle 543, 348, 6, 7, FLOORLINES
	draw_rectangle 549, 355, 6, 7, FLOORLINES
	draw_rectangle 555, 362, 6, 7, FLOORLINES
	draw_rectangle 561, 369, 6, 7, FLOORLINES
	draw_rectangle 567, 376, 9, 10, FLOORLINES
	draw_rectangle 576, 386, 9, 10, FLOORLINES
	draw_rectangle 585, 396, 9, 10, FLOORLINES
	draw_rectangle 594, 406, 9, 10, FLOORLINES
	draw_rectangle 603, 416, 9, 10, FLOORLINES
	draw_rectangle 612, 426, 9, 10, FLOORLINES
	draw_rectangle 621, 436, 10, 9, FLOORLINES
	draw_rectangle 631, 445, 12, 10, FLOORLINES


		
	// Linea 4(de la derecha)
	draw_rectangle 505, 200, 5, 6, FLOORLINES
	draw_rectangle 510, 206, 5, 6, FLOORLINES
	draw_rectangle 515, 212, 5, 4, FLOORLINES
	draw_rectangle 520, 216, 5, 6, FLOORLINES
	draw_rectangle 525, 222, 5, 4, FLOORLINES
	draw_rectangle 530, 226, 5, 6, FLOORLINES
	draw_rectangle 535, 232, 5, 4, FLOORLINES
	draw_rectangle 540, 236, 5, 6, FLOORLINES
	draw_rectangle 545, 242, 5, 4, FLOORLINES
	draw_rectangle 550, 246, 5, 6, FLOORLINES
	draw_rectangle 555, 252, 5, 4, FLOORLINES
	draw_rectangle 560, 256, 5, 6, FLOORLINES
	draw_rectangle 565, 262, 5, 4, FLOORLINES
	draw_rectangle 570, 266, 5, 4, FLOORLINES
	draw_rectangle 575, 270, 7, 6, FLOORLINES
	draw_rectangle 582, 276, 8, 7, FLOORLINES
	draw_rectangle 590, 283, 8, 6, FLOORLINES
	draw_rectangle 598, 289, 8, 7, FLOORLINES
	draw_rectangle 606, 296, 8, 6, FLOORLINES
	draw_rectangle 614, 302, 8, 7, FLOORLINES
	draw_rectangle 622, 309, 9, 7, FLOORLINES
	draw_rectangle 631, 316, 9, 8, FLOORLINES

		

// Estela
draw_rectangle 0, 307, 204, 67, RED
draw_rectangle 0, 312, 204, 57, RED2
draw_rectangle 0, 317, 204, 47, RED3


// Ruedas
draw_circumference 225, 340, 40, 18, BLACK
draw_circumference 225, 340, 39, 2, RED
draw_circumference 225, 340, 25, 6, RED
draw_circumference 415, 340, 40, 18, BLACK
draw_circumference 415, 340, 39, 2, RED
draw_circumference 415, 340, 25, 6, RED

// Cuerpo de la moto
draw_rectangle 252, 312, 135, 45, BLACK
draw_rectangle 210, 295, 60, 20, BLACK
draw_rectangle 190, 295, 20, 8, BLACK
draw_rectangle 350, 305, 49, 15, BLACK
draw_rectangle 270, 300, 35, 15, BLACK
draw_rectangle 285, 357, 105, 7, BLACK
draw_rectangle 310, 364, 85, 7, BLACK

// ODC 2025
	// Letra O
	draw_rectangle 315, 355, 2, 12, RED
	draw_rectangle 320, 355, 2, 12, RED
	draw_rectangle 315, 355, 5, 2, RED
	draw_rectangle 315, 365, 5, 2, RED

	// Letra D
	draw_rectangle 330, 355, 2, 12, RED
	draw_rectangle 325, 361, 2, 6, RED
	draw_rectangle 325, 365, 5, 2, RED
	draw_rectangle 325, 359, 5, 2, RED

	// Letra C
	draw_rectangle 335, 361, 2, 6, RED
	draw_rectangle 335, 359, 6, 2, RED
	draw_rectangle 335, 365, 6, 2, RED

	// Número 2
	draw_rectangle 350, 355, 7, 2, RED
	draw_rectangle 350, 365, 7, 2, RED
	draw_rectangle 350, 360, 7, 2, RED
	draw_rectangle 350, 360, 2, 5, RED
	draw_rectangle 355, 355, 2, 5, RED

	// Número 0
	draw_rectangle 360, 355, 2, 12, RED
	draw_rectangle 365, 355, 2, 12, RED
	draw_rectangle 360, 355, 5, 2, RED
	draw_rectangle 360, 365, 5, 2, RED

	// Número 2
	draw_rectangle 370, 355, 7, 2, RED
	draw_rectangle 370, 365, 7, 2, RED
	draw_rectangle 370, 360, 7, 2, RED
	draw_rectangle 370, 360, 2, 5, RED
	draw_rectangle 375, 355, 2, 5, RED

	// Número 5
	draw_rectangle 380, 355, 7, 2, RED
	draw_rectangle 380, 365, 7, 2, RED
	draw_rectangle 380, 360, 7, 2, RED
	draw_rectangle 380, 355, 2, 5, RED
	draw_rectangle 385, 360, 2, 5, RED

// Detalles
draw_rectangle 190, 295, 2, 8, RED
draw_rectangle 255, 297, 2, 12, RED
draw_rectangle 257, 309, 2, 12, RED
draw_rectangle 259, 321, 8, 2, RED
draw_rectangle 190, 295, 65, 2, RED
draw_rectangle 310, 345, 25, 2, RED
draw_rectangle 335, 343, 20, 2, RED
draw_rectangle 355, 341, 10, 2, RED
draw_rectangle 365, 339, 3, 2, RED
draw_rectangle 368, 326, 2, 13, RED
//draw_rectangle 370, 323, 6, 2, RED
//draw_rectangle 376, 321, 10, 2, RED
//draw_rectangle 386, 319, 6, 2, RED
draw_rectangle 392, 311, 2, 8, RED
draw_rectangle 394, 309, 5, 2, RED
draw_rectangle 397, 306, 2, 3, RED
draw_circumference 310, 345, 3, 1, RED

// Cuerpo conductor
	//Torso
	draw_rectangle 290, 295, 50, 25, BLACK
	draw_rectangle 278, 306, 17, 28, BLACK
	draw_rectangle 270, 320, 22, 17, BLACK
	draw_rectangle 256, 330, 17, 15, BLACK
	draw_rectangle 290, 292, 10, 6, BLACK
	draw_rectangle 297, 290, 10, 6, BLACK
	draw_rectangle 303, 287, 10, 5, BLACK
	draw_rectangle 309, 287, 6, 15, BLACK
	draw_rectangle 322, 285, 10, 15, BLACK
	draw_rectangle 278, 306, 17, 28, BLACK
	draw_rectangle 338, 301, 10, 12, BLACK
	draw_rectangle 330, 290, 10, 6, BLACK
	draw_rectangle 330, 297, 10, 6, BLACK
	draw_rectangle 307, 287, 15, 12, BLACK
	draw_rectangle 346, 306, 4, 6, BLACK

	// Contorno Torso
	draw_rectangle 315, 283, 17, 4, RED2
	draw_rectangle 303, 287, 11, 4, RED
	draw_rectangle 292, 291, 11, 4, RED3
	draw_rectangle 288, 296, 4, 7, RED2
	draw_rectangle 284, 303, 4, 4, RED

	// Pierna
	draw_rectangle 294, 315, 4, 8, RED3
	draw_rectangle 274, 332, 4, 4, RED3
	draw_rectangle 277, 326, 4, 9, RED2
	draw_rectangle 281, 324, 6, 4, RED3
	draw_rectangle 286, 320, 10, 4, RED
	draw_rectangle 254, 337, 20, 4, RED3
	draw_rectangle 251, 339, 4, 4, RED3
	draw_rectangle 249, 341, 4, 4, RED2
	draw_rectangle 242, 345, 9, 4, RED3
	draw_rectangle 237, 333, 4, 11, RED3
	draw_rectangle 241, 329, 10, 4, RED2
	draw_rectangle 251, 325, 4, 4, RED2
	draw_rectangle 255, 323, 4, 4, RED2
	draw_rectangle 241, 332, 10, 13, BLACK
	
	// Brazo
	draw_rectangle 384, 318, 22, 12, BLACK
	draw_rectangle 340, 319, 8, 4, RED3
	draw_rectangle 348, 322, 8, 4, RED2
	draw_rectangle 356, 325, 8, 4, RED
	draw_rectangle 364, 326, 31, 4, RED3
	draw_rectangle 336, 311, 4, 7, RED2
	draw_rectangle 395, 327, 9, 4, RED3
	draw_rectangle 405, 318, 4, 10, RED3
	draw_rectangle 396, 315, 10, 4, RED3
	draw_rectangle 380, 317, 16, 4, RED3
	draw_rectangle 376, 316, 4, 4, RED
	draw_rectangle 372, 314, 4, 4, RED2

// Cabeza del conductor
draw_rectangle 346, 303, 27, 4, RED
draw_rectangle 380, 270, 4, 22, RED
draw_rectangle 333, 275, 4, 14, RED
draw_rectangle 345, 258, 26, 4, RED
draw_rectangle 337, 267, 4, 9, RED
draw_rectangle 341, 263, 4, 4, RED3
draw_rectangle 371, 262, 4, 4, RED2
draw_rectangle 376, 266, 4, 4, RED3
draw_rectangle 376, 288, 4, 8, RED3
draw_rectangle 337, 289, 4, 4, RED2
draw_rectangle 341, 293, 4, 8, RED3
draw_rectangle 372, 295, 4, 7, RED
draw_circumference 359, 282, 19, 18, BLACK
draw_rectangle 345, 261, 26, 41, BLACK
draw_rectangle 337, 274, 43, 14, BLACK
draw_rectangle 341, 266, 39, 14, BLACK
draw_rectangle 341, 289, 4, 4, BLACK
draw_rectangle 376, 266, 4, 6, RED
draw_rectangle 366, 275, 15, 8, RED3
draw_rectangle 359, 272, 8, 3, RED3
draw_rectangle 355, 269, 8, 3, RED3
draw_rectangle 351, 266, 6, 3, RED3
draw_rectangle 345, 263, 7, 3, RED3


	//---------------------------------------------------------------
	// Infinite Loop
InfLoop:
	b InfLoop
 
