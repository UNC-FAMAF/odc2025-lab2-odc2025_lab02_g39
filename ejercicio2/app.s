	.include "size.s"
	.include "shapes.s"
	.globl main

main:
	// x0 contiene la direccion base del framebuffer
 	mov x20, x0	// Guarda la dirección base del framebuffer en x20
	//---------------- CODE HERE ------------------------------------

	mov x1, 35 
	bl timer

	bl draw_fondo
	mov x21, 0
	sub x21, x21, 10
	bl draw_buildings
	bl draw_floor1
	bl draw_moto1
	bl draw_nave

	mov x1, 35
	bl timer

	bl draw_fondo
	mov x21, 0
	sub x21, x21, 20
	bl draw_buildings
	bl draw_floor1
	bl draw_moto1
	bl draw_nave 

	mov x1, 35
	bl timer

	bl draw_fondo
	mov x21, 0
	sub x21, x21, 30	
	bl draw_buildings
	bl draw_floor2
	bl draw_moto2
	bl draw_nave 

	mov x1, 35 
	bl timer

	bl draw_fondo
	mov x21, 0
	sub x21, x21, 40
	bl draw_buildings
	bl draw_floor2
	bl draw_moto2
	bl draw_nave  

	mov x1, 35 
	bl timer


	bl draw_fondo
	mov x21, 0
	sub x21, x21, 50
	bl draw_buildings
	bl draw_floor1
	bl draw_moto2
	bl draw_nave

	mov x1, 35 
	bl timer

	bl draw_fondo
	mov x21, 0
	sub x21, x21, 60
	bl draw_buildings
	bl draw_floor1
	bl draw_moto1
	bl draw_nave 

	mov x1, 35 
	bl timer

	bl draw_fondo
	mov x21, 0
	sub x21, x21, 70
	bl draw_buildings
	bl draw_floor2
	bl draw_moto1
	bl draw_nave 

	mov x1, 35 
	bl timer

	bl draw_fondo
	mov x21, 0
	sub x21, x21, 80
	bl draw_buildings
	bl draw_floor2
	bl draw_moto2
	bl draw_nave  

	mov x1, 35 
	bl timer


	bl draw_fondo
	mov x21, 0
	sub x21, x21, 90
	bl draw_buildings
	bl draw_floor1
	bl draw_moto2
	bl draw_nave

	mov x1, 35 
	bl timer

	bl draw_fondo
	mov x21, 0
	sub x21, x21, 100
	bl draw_buildings
	bl draw_floor1
	bl draw_moto2
	bl draw_nave 

	mov x1, 35 
	bl timer

	bl draw_fondo
	mov x21, 0
	sub x21, x21, 110
	bl draw_buildings
	bl draw_floor2
	bl draw_moto1
	bl draw_nave 

	mov x1, 35 
	bl timer

	bl draw_fondo
	mov x21, 0
	sub x21, x21, 120
	bl draw_buildings
	bl draw_floor2
	bl draw_moto1
	bl draw_nave  

	mov x1, 35 
	bl timer


	bl draw_fondo
	mov x21, 0
	sub x21, x21, 130
	bl draw_buildings
	bl draw_floor1
	bl draw_moto2
	bl draw_nave

	mov x1, 35 
	bl timer

	bl draw_fondo
	mov x21, 0
	sub x21, x21, 140
	bl draw_buildings
	bl draw_floor1
	bl draw_moto2
	bl draw_nave 

	mov x1, 35 
	bl timer

	bl draw_fondo
	mov x21, 0
	sub x21, x21, 150
	bl draw_buildings
	bl draw_floor2
	bl draw_moto2
	bl draw_nave 

	mov x1, 35 
	bl timer

	bl draw_fondo
	mov x21, 0
	sub x21, x21, 160 
	bl draw_buildings
	bl draw_floor2
	bl draw_moto1
	bl draw_nave  

	mov x1, 35 
	bl timer


	bl draw_fondo
	mov x21, 0
	sub x21, x21, 170
	bl draw_buildings
	bl draw_floor1
	bl draw_moto1
	bl draw_nave

	mov x1, 35
	bl timer

	bl draw_fondo
	mov x21, 0
	sub x21, x21, 180
	bl draw_buildings
	bl draw_floor1
	bl draw_moto2
	bl draw_nave 

	mov x1, 35
	bl timer

	bl draw_fondo
	mov x21, 0
	sub x21, x21, 190
	bl draw_buildings
	bl draw_floor2
	bl draw_moto2
	bl draw_nave 

	mov x1, 35 
	bl timer

	bl draw_fondo
	mov x21, 0
	sub x21, x21, 200
	bl draw_buildings
	bl draw_floor2
	bl draw_moto2
	bl draw_nave  

	mov x1, 35 
	bl timer


	bl draw_fondo
	mov x21, 0
	sub x21, x21, 210
	bl draw_buildings
	bl draw_floor1
	bl draw_moto1
	bl draw_nave

	mov x1, 35 
	bl timer

	bl draw_fondo
	mov x21, 0
	sub x21, x21, 220
	bl draw_buildings
	bl draw_floor1
	bl draw_moto1
	bl draw_nave 

	mov x1, 35 
	bl timer

	bl draw_fondo
	mov x21, 0
	sub x21, x21, 230
	bl draw_buildings
	bl draw_floor2
	bl draw_moto2
	bl draw_nave 

	mov x1, 35 
	bl timer

	bl draw_fondo
	mov x21, 0
	sub x21, x21, 240
	bl draw_buildings
	bl draw_floor2
	bl draw_moto2
	bl draw_nave  

	mov x1, 35 
	bl timer


	bl draw_fondo
	mov x21, 0
	sub x21, x21, 250
	bl draw_buildings
	bl draw_floor1
	bl draw_moto2
	bl draw_nave

	mov x1, 35 
	bl timer

	bl draw_fondo
	mov x21, 0
	sub x21, x21, 260
	bl draw_buildings
	bl draw_floor1
	bl draw_moto1
	bl draw_nave 

	mov x1, 35 
	bl timer

	bl draw_fondo
	mov x21, 0
	sub x21, x21, 270
	bl draw_buildings
	bl draw_floor2
	bl draw_moto1
	bl draw_nave 

	mov x1, 35 
	bl timer

	bl draw_fondo
	mov x21, 0
	sub x21, x21, 280
	bl draw_buildings
	bl draw_floor2
	bl draw_moto2
	bl draw_nave  

	mov x1, 35 
	bl timer


	bl draw_fondo
	mov x21, 0
	sub x21, x21, 290
	bl draw_buildings
	bl draw_floor1
	bl draw_moto2
	bl draw_nave

	mov x1, 35 
	bl timer

	bl draw_fondo
	mov x21, 0
	sub x21, x21, 300
	bl draw_buildings
	bl draw_floor1
	bl draw_moto2
	bl draw_nave 

	mov x1, 35 
	bl timer

	bl draw_fondo
	mov x21, 0
	sub x21, x21, 310
	bl draw_buildings
	bl draw_floor2
	bl draw_moto1
	bl draw_nave 

	mov x1, 35 
	bl timer

	bl draw_fondo
	mov x21, 0
	sub x21, x21, 320
	bl draw_buildings
	bl draw_floor2
	bl draw_moto1
	bl draw_nave  

	mov x1, 35 
	bl timer

bl draw_fondo
	mov x21, 0
	sub x21, x21, 330
	bl draw_buildings
	bl draw_floor1
	bl draw_moto1
	bl draw_nave

	mov x1, 35
	bl timer

	bl draw_fondo
	mov x21, 0
	sub x21, x21, 340
	bl draw_buildings
	bl draw_floor1
	bl draw_moto2
	bl draw_nave 

	mov x1, 35
	bl timer

	bl draw_fondo
	mov x21, 0
	sub x21, x21, 350
	bl draw_buildings
	bl draw_floor2
	bl draw_moto2
	bl draw_nave 

	mov x1, 35 
	bl timer

	bl draw_fondo
	mov x21, 0
	sub x21, x21, 360
	bl draw_buildings
	bl draw_floor2
	bl draw_moto2
	bl draw_nave  

	mov x1, 35 
	bl timer


	bl draw_fondo
	mov x21, 0
	sub x21, x21, 370
	bl draw_buildings
	bl draw_floor1
	bl draw_moto1
	bl draw_nave

	mov x1, 35 
	bl timer

	bl draw_fondo
	mov x21, 0
	sub x21, x21, 380
	bl draw_buildings
	bl draw_floor1
	bl draw_moto1
	bl draw_nave 

	mov x1, 35 
	bl timer

	bl draw_fondo
	mov x21, 0
	sub x21, x21, 390
	bl draw_buildings
	bl draw_floor2
	bl draw_moto2
	bl draw_nave 

	mov x1, 35 
	bl timer

	bl draw_fondo
	mov x21, 0
	sub x21, x21, 400
	bl draw_buildings
	bl draw_floor2
	bl draw_moto2
	bl draw_nave  

	mov x1, 35 
	bl timer


	bl draw_fondo
	mov x21, 0
	sub x21, x21, 410
	bl draw_buildings
	bl draw_floor1
	bl draw_moto2
	bl draw_nave

	mov x1, 35 
	bl timer

	bl draw_fondo
	mov x21, 0
	sub x21, x21, 420
	bl draw_buildings
	bl draw_floor1
	bl draw_moto1
	bl draw_nave 

	mov x1, 35 
	bl timer

	bl draw_fondo
	mov x21, 0
	sub x21, x21, 430
	bl draw_buildings
	bl draw_floor2
	bl draw_moto1
	bl draw_nave 

	mov x1, 35 
	bl timer

	bl draw_fondo
	mov x21, 0
	sub x21, x21, 440
	bl draw_buildings
	bl draw_floor2
	bl draw_moto2
	bl draw_nave  

	mov x1, 35 
	bl timer


	bl draw_fondo
	mov x21, 0
	sub x21, x21, 450
	bl draw_buildings
	bl draw_floor1
	bl draw_moto2
	bl draw_nave

	mov x1, 35 
	bl timer

	bl draw_fondo
	mov x21, 0
	sub x21, x21, 460
	bl draw_buildings
	bl draw_floor1
	bl draw_moto2
	bl draw_nave 

	mov x1, 35 
	bl timer

	bl draw_fondo
	mov x21, 0
	sub x21, x21, 470
	bl draw_buildings
	bl draw_floor2
	bl draw_moto1
	bl draw_nave 

	mov x1, 35 
	bl timer

	bl draw_fondo
	mov x21, 0
	sub x21, x21, 480
	bl draw_buildings
	bl draw_floor2
	bl draw_moto1
	bl draw_nave  

	mov x1, 35 
	bl timer


	bl draw_fondo
	mov x21, 0
	sub x21, x21, 490
	bl draw_buildings
	bl draw_floor1
	bl draw_moto2
	bl draw_nave

	mov x1, 35
	bl timer

	bl draw_fondo
	mov x21, 0
	sub x21, x21, 500
	bl draw_buildings
	bl draw_floor1
	bl draw_moto2
	bl draw_nave 

	mov x1, 35
	bl timer

	bl draw_fondo
	mov x21, 0
	sub x21, x21, 510
	bl draw_buildings
	bl draw_floor2
	bl draw_moto2
	bl draw_nave 

	mov x1, 35 
	bl timer

	bl draw_fondo
	mov x21, 0
	sub x21, x21, 520
	bl draw_buildings
	bl draw_floor2
	bl draw_moto1
	bl draw_nave  

	mov x1, 35 
	bl timer


	bl draw_fondo
	mov x21, 0
	sub x21, x21, 530
	bl draw_buildings
	bl draw_floor1
	bl draw_moto1
	bl draw_nave

	mov x1, 35 
	bl timer

	bl draw_fondo
	mov x21, 0
	sub x21, x21, 540
	bl draw_buildings
	bl draw_floor1
	bl draw_moto2
	bl draw_nave 

	mov x1, 35 
	bl timer

	bl draw_fondo
	mov x21, 0
	sub x21, x21, 550
	bl draw_buildings
	bl draw_floor2
	bl draw_moto2
	bl draw_nave 

	mov x1, 35 
	bl timer

	bl draw_fondo
	mov x21, 0
	sub x21, x21, 560
	bl draw_buildings
	bl draw_floor2
	bl draw_moto2
	bl draw_nave  

	mov x1, 35 
	bl timer


	bl draw_fondo
	mov x21, 0
	sub x21, x21, 570
	bl draw_buildings
	bl draw_floor1
	bl draw_moto2
	bl draw_nave

	mov x1, 35 
	bl timer

	bl draw_fondo
	mov x21, 0
	sub x21, x21, 580
	bl draw_buildings
	bl draw_floor1
	bl draw_moto1
	bl draw_nave 

	mov x1, 35 
	bl timer

	bl draw_fondo
	mov x21, 0
	sub x21, x21, 590
	bl draw_buildings
	bl draw_floor2
	bl draw_moto1
	bl draw_nave 

	mov x1, 35 
	bl timer

	bl draw_fondo
	mov x21, 0
	sub x21, x21, 600
	bl draw_buildings
	bl draw_floor2
	bl draw_moto2
	bl draw_nave  

	mov x1, 35 
	bl timer


	bl draw_fondo
	mov x21, 0
	sub x21, x21, 610
	bl draw_buildings
	bl draw_floor1
	bl draw_moto2
	bl draw_nave

	mov x1, 35 
	bl timer

	bl draw_fondo
	mov x21, 0
	sub x21, x21, 620
	bl draw_buildings
	bl draw_floor1
	bl draw_moto2
	bl draw_nave 

	mov x1, 35 
	bl timer

	bl draw_fondo
	mov x21, 0
	sub x21, x21, 630
	bl draw_buildings
	bl draw_floor2
	bl draw_moto1
	bl draw_nave 

	mov x1, 35 
	bl timer

	bl draw_fondo
	mov x21, 0
	sub x21, x21, 640
	bl draw_buildings
	bl draw_floor2
	bl draw_moto1
	bl draw_nave  

	mov x1, 35 
	bl timer

	b main
ret

InfLoop:
	b InfLoop
