lbl_80499BD8:
/* 80499BD8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80499BDC  7C 08 02 A6 */	mflr r0
/* 80499BE0  90 01 00 14 */	stw r0, 0x14(r1)
/* 80499BE4  4B DC 94 AC */	b ModuleUnresolved
/* 80499BE8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80499BEC  7C 08 03 A6 */	mtlr r0
/* 80499BF0  38 21 00 10 */	addi r1, r1, 0x10
/* 80499BF4  4E 80 00 20 */	blr 
