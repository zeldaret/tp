lbl_80D0C218:
/* 80D0C218  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80D0C21C  7C 08 02 A6 */	mflr r0
/* 80D0C220  90 01 00 14 */	stw r0, 0x14(r1)
/* 80D0C224  4B 55 6E 6C */	b ModuleUnresolved
/* 80D0C228  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80D0C22C  7C 08 03 A6 */	mtlr r0
/* 80D0C230  38 21 00 10 */	addi r1, r1, 0x10
/* 80D0C234  4E 80 00 20 */	blr 
