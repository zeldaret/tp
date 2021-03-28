lbl_80C66AF8:
/* 80C66AF8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80C66AFC  7C 08 02 A6 */	mflr r0
/* 80C66B00  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C66B04  4B 5F C5 8C */	b ModuleUnresolved
/* 80C66B08  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80C66B0C  7C 08 03 A6 */	mtlr r0
/* 80C66B10  38 21 00 10 */	addi r1, r1, 0x10
/* 80C66B14  4E 80 00 20 */	blr 
