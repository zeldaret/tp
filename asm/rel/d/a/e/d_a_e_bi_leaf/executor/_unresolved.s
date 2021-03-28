lbl_8068DC38:
/* 8068DC38  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8068DC3C  7C 08 02 A6 */	mflr r0
/* 8068DC40  90 01 00 14 */	stw r0, 0x14(r1)
/* 8068DC44  4B BD 54 4C */	b ModuleUnresolved
/* 8068DC48  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8068DC4C  7C 08 03 A6 */	mtlr r0
/* 8068DC50  38 21 00 10 */	addi r1, r1, 0x10
/* 8068DC54  4E 80 00 20 */	blr 
