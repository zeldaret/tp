lbl_8048D938:
/* 8048D938  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8048D93C  7C 08 02 A6 */	mflr r0
/* 8048D940  90 01 00 14 */	stw r0, 0x14(r1)
/* 8048D944  4B DD 57 4C */	b ModuleUnresolved
/* 8048D948  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8048D94C  7C 08 03 A6 */	mtlr r0
/* 8048D950  38 21 00 10 */	addi r1, r1, 0x10
/* 8048D954  4E 80 00 20 */	blr 
