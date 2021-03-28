lbl_80BB9A38:
/* 80BB9A38  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80BB9A3C  7C 08 02 A6 */	mflr r0
/* 80BB9A40  90 01 00 14 */	stw r0, 0x14(r1)
/* 80BB9A44  4B 6A 96 4C */	b ModuleUnresolved
/* 80BB9A48  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80BB9A4C  7C 08 03 A6 */	mtlr r0
/* 80BB9A50  38 21 00 10 */	addi r1, r1, 0x10
/* 80BB9A54  4E 80 00 20 */	blr 
