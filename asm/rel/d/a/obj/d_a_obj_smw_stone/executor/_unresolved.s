lbl_80CDE4F8:
/* 80CDE4F8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80CDE4FC  7C 08 02 A6 */	mflr r0
/* 80CDE500  90 01 00 14 */	stw r0, 0x14(r1)
/* 80CDE504  4B 58 4B 8C */	b ModuleUnresolved
/* 80CDE508  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80CDE50C  7C 08 03 A6 */	mtlr r0
/* 80CDE510  38 21 00 10 */	addi r1, r1, 0x10
/* 80CDE514  4E 80 00 20 */	blr 
