lbl_801F2DA0:
/* 801F2DA0  88 83 01 BD */	lbz r4, 0x1bd(r3)
/* 801F2DA4  28 04 00 00 */	cmplwi r4, 0
/* 801F2DA8  41 82 00 10 */	beq lbl_801F2DB8
/* 801F2DAC  38 04 FF FF */	addi r0, r4, -1
/* 801F2DB0  98 03 01 BD */	stb r0, 0x1bd(r3)
/* 801F2DB4  4E 80 00 20 */	blr 
lbl_801F2DB8:
/* 801F2DB8  38 00 00 29 */	li r0, 0x29
/* 801F2DBC  98 03 01 B2 */	stb r0, 0x1b2(r3)
/* 801F2DC0  38 00 00 03 */	li r0, 3
/* 801F2DC4  98 03 01 BA */	stb r0, 0x1ba(r3)
/* 801F2DC8  38 00 00 00 */	li r0, 0
/* 801F2DCC  98 03 01 BB */	stb r0, 0x1bb(r3)
/* 801F2DD0  4E 80 00 20 */	blr 
