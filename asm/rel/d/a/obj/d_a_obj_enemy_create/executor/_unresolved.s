lbl_80BE3158:
/* 80BE3158  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80BE315C  7C 08 02 A6 */	mflr r0
/* 80BE3160  90 01 00 14 */	stw r0, 0x14(r1)
/* 80BE3164  4B 67 FF 2C */	b ModuleUnresolved
/* 80BE3168  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80BE316C  7C 08 03 A6 */	mtlr r0
/* 80BE3170  38 21 00 10 */	addi r1, r1, 0x10
/* 80BE3174  4E 80 00 20 */	blr 
