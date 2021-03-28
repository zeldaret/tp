lbl_80542E78:
/* 80542E78  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80542E7C  7C 08 02 A6 */	mflr r0
/* 80542E80  90 01 00 14 */	stw r0, 0x14(r1)
/* 80542E84  4B D2 02 0C */	b ModuleUnresolved
/* 80542E88  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80542E8C  7C 08 03 A6 */	mtlr r0
/* 80542E90  38 21 00 10 */	addi r1, r1, 0x10
/* 80542E94  4E 80 00 20 */	blr 
