lbl_80722F58:
/* 80722F58  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80722F5C  7C 08 02 A6 */	mflr r0
/* 80722F60  90 01 00 14 */	stw r0, 0x14(r1)
/* 80722F64  4B B4 01 2C */	b ModuleUnresolved
/* 80722F68  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80722F6C  7C 08 03 A6 */	mtlr r0
/* 80722F70  38 21 00 10 */	addi r1, r1, 0x10
/* 80722F74  4E 80 00 20 */	blr 
