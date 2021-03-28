lbl_806C1C58:
/* 806C1C58  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 806C1C5C  7C 08 02 A6 */	mflr r0
/* 806C1C60  90 01 00 14 */	stw r0, 0x14(r1)
/* 806C1C64  4B BA 14 2C */	b ModuleUnresolved
/* 806C1C68  80 01 00 14 */	lwz r0, 0x14(r1)
/* 806C1C6C  7C 08 03 A6 */	mtlr r0
/* 806C1C70  38 21 00 10 */	addi r1, r1, 0x10
/* 806C1C74  4E 80 00 20 */	blr 
