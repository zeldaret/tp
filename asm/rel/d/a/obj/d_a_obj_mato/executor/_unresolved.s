lbl_80C91B38:
/* 80C91B38  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80C91B3C  7C 08 02 A6 */	mflr r0
/* 80C91B40  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C91B44  4B 5D 15 4C */	b ModuleUnresolved
/* 80C91B48  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80C91B4C  7C 08 03 A6 */	mtlr r0
/* 80C91B50  38 21 00 10 */	addi r1, r1, 0x10
/* 80C91B54  4E 80 00 20 */	blr 
