lbl_8071CC58:
/* 8071CC58  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8071CC5C  7C 08 02 A6 */	mflr r0
/* 8071CC60  90 01 00 14 */	stw r0, 0x14(r1)
/* 8071CC64  4B B4 64 2C */	b ModuleUnresolved
/* 8071CC68  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8071CC6C  7C 08 03 A6 */	mtlr r0
/* 8071CC70  38 21 00 10 */	addi r1, r1, 0x10
/* 8071CC74  4E 80 00 20 */	blr 
