lbl_806529B8:
/* 806529B8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 806529BC  7C 08 02 A6 */	mflr r0
/* 806529C0  90 01 00 14 */	stw r0, 0x14(r1)
/* 806529C4  4B C1 06 CC */	b ModuleUnresolved
/* 806529C8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 806529CC  7C 08 03 A6 */	mtlr r0
/* 806529D0  38 21 00 10 */	addi r1, r1, 0x10
/* 806529D4  4E 80 00 20 */	blr 
