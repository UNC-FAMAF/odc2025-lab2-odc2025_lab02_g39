.include "size.s"
.globl main

main:
	// x0 contiene la direccion base del framebuffer
	mov x20, x0	// Guarda la dirección base del framebuffer en x20
	//---------------- CODE HERE ------------------------------------
	bl draw_fondo
	bl draw_buildings
	bl draw_floor2
	bl draw_moto
	bl draw_nave
ret
		
InfLoop:
	b InfLoop
	