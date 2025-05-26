.ifndef __shapes__
.equ __shapes__,0
.include "size.s"

backgroundColor: 

    sub sp, sp, 24
    stur x1, [sp, 0]
    stur x2, [sp, 8]
    stur x0, [sp, 16]

        mov x2, SCREEN_HEIGH         // Y Size
    loop1:
	    mov x1, SCREEN_WIDTH         // X Size
    loop0:
	    stur w10,[x0]  // Colorear el pixel N
	    add x0,x0,4	   // Siguiente pixel
	    sub x1,x1,1	   // Decrementar contador X
	    cbnz x1,loop0  // Si no terminó la fila, salto
	    sub x2,x2,1	   // Decrementar contador Y
	    cbnz x2,loop1  // Si no es la última fila, salto
    
    ldur x1, [sp, 0]
    ldur x2, [sp, 8]
    ldur x0, [sp, 16]
    add sp, sp, 24
ret

setPixel: 

    sub sp, sp, 24
    stur x1, [sp, 0]
    stur x2, [sp, 8]
    stur x3, [sp, 16]

    coord:
        mov x3, 640
        mul x3, x3, x2
        add x3, x3, x1
        lsl x3, x3, 2
        add x3, x3, x0

    stur w10, [x3]
    ldur x1, [sp, 0]
    ldur x2, [sp, 8]
    ldur x3, [sp, 16]
    add sp, sp, 24
ret

rectangle:

    sub sp, sp, 40
    stur x1, [sp, 0]
    stur x2, [sp, 8]
    stur x3, [sp, 16]
    stur x4, [sp, 24]
    stur lr, [sp, 32]
    
    loopRectangle0:
        bl setPixel
        add x1, x1, 1
        sub x3, x3, 1
        cbnz x3, loopRectangle0
        ldur x3, [sp, 16]
        ldur x1, [sp, 0]
        sub x4, x4, 1
        add x2, x2, 1
        cbz x4, endRectangle
        b loopRectangle0
    
    endRectangle:
        ldur x1, [sp, 0]
        ldur x2, [sp, 8]
        ldur x3, [sp, 16]
        ldur x4, [sp, 24]
        ldur lr, [sp, 32]
        add sp, sp, 40  
ret

.endif
