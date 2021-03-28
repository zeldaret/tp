lbl_80CB8638:
/* 80CB8638  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80CB863C  7C 08 02 A6 */	mflr r0
/* 80CB8640  90 01 00 14 */	stw r0, 0x14(r1)
/* 80CB8644  4B 5A AA 4C */	b ModuleUnresolved
/* 80CB8648  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80CB864C  7C 08 03 A6 */	mtlr r0
/* 80CB8650  38 21 00 10 */	addi r1, r1, 0x10
/* 80CB8654  4E 80 00 20 */	blr 
