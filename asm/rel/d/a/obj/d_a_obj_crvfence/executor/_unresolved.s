lbl_80BCEC78:
/* 80BCEC78  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80BCEC7C  7C 08 02 A6 */	mflr r0
/* 80BCEC80  90 01 00 14 */	stw r0, 0x14(r1)
/* 80BCEC84  4B 69 44 0C */	b ModuleUnresolved
/* 80BCEC88  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80BCEC8C  7C 08 03 A6 */	mtlr r0
/* 80BCEC90  38 21 00 10 */	addi r1, r1, 0x10
/* 80BCEC94  4E 80 00 20 */	blr 
