lbl_80D2BAF8:
/* 80D2BAF8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80D2BAFC  7C 08 02 A6 */	mflr r0
/* 80D2BB00  90 01 00 14 */	stw r0, 0x14(r1)
/* 80D2BB04  4B 53 75 8C */	b ModuleUnresolved
/* 80D2BB08  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80D2BB0C  7C 08 03 A6 */	mtlr r0
/* 80D2BB10  38 21 00 10 */	addi r1, r1, 0x10
/* 80D2BB14  4E 80 00 20 */	blr 
