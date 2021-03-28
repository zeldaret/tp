lbl_80BFB0B8:
/* 80BFB0B8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80BFB0BC  7C 08 02 A6 */	mflr r0
/* 80BFB0C0  90 01 00 14 */	stw r0, 0x14(r1)
/* 80BFB0C4  4B 66 7F CC */	b ModuleUnresolved
/* 80BFB0C8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80BFB0CC  7C 08 03 A6 */	mtlr r0
/* 80BFB0D0  38 21 00 10 */	addi r1, r1, 0x10
/* 80BFB0D4  4E 80 00 20 */	blr 
