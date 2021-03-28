lbl_800572C4:
/* 800572C4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 800572C8  7C 08 02 A6 */	mflr r0
/* 800572CC  90 01 00 14 */	stw r0, 0x14(r1)
/* 800572D0  38 60 00 01 */	li r3, 1
/* 800572D4  4B FF FF C1 */	bl dKyw_drawHousi__Fi
/* 800572D8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 800572DC  7C 08 03 A6 */	mtlr r0
/* 800572E0  38 21 00 10 */	addi r1, r1, 0x10
/* 800572E4  4E 80 00 20 */	blr 
