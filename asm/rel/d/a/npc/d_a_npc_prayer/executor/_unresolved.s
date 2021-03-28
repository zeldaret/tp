lbl_80AB2D58:
/* 80AB2D58  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80AB2D5C  7C 08 02 A6 */	mflr r0
/* 80AB2D60  90 01 00 14 */	stw r0, 0x14(r1)
/* 80AB2D64  4B 7B 03 2C */	b ModuleUnresolved
/* 80AB2D68  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80AB2D6C  7C 08 03 A6 */	mtlr r0
/* 80AB2D70  38 21 00 10 */	addi r1, r1, 0x10
/* 80AB2D74  4E 80 00 20 */	blr 
