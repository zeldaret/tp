lbl_80BC5978:
/* 80BC5978  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80BC597C  7C 08 02 A6 */	mflr r0
/* 80BC5980  90 01 00 14 */	stw r0, 0x14(r1)
/* 80BC5984  4B 69 D7 0C */	b ModuleUnresolved
/* 80BC5988  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80BC598C  7C 08 03 A6 */	mtlr r0
/* 80BC5990  38 21 00 10 */	addi r1, r1, 0x10
/* 80BC5994  4E 80 00 20 */	blr 
