	.include "size.s"
	.include "shapes.s"
	.globl main

main:
	// x0 contiene la direccion base del framebuffer
 	mov x20, x0	// Guarda la dirección base del framebuffer en x20
	//---------------- CODE HERE ------------------------------------

	bl draw_fondo
	mov x21, 2
	bl draw_buildings
	bl draw_floor2
	bl draw_moto
	bl draw_nave

	mov x1, 16 
	bl timer

	bl draw_fondo
	mov x21, 0
	sub x21, x21, 2
	bl draw_buildings
	bl draw_floor1
	bl draw_moto
	bl draw_nave 

	mov x1, 16 
	bl timer

	b main
ret

InfLoop:
	b InfLoop
