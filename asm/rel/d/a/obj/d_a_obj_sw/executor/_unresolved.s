lbl_80CF0618:
/* 80CF0618  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80CF061C  7C 08 02 A6 */	mflr r0
/* 80CF0620  90 01 00 14 */	stw r0, 0x14(r1)
/* 80CF0624  4B 57 2A 6C */	b ModuleUnresolved
/* 80CF0628  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80CF062C  7C 08 03 A6 */	mtlr r0
/* 80CF0630  38 21 00 10 */	addi r1, r1, 0x10
/* 80CF0634  4E 80 00 20 */	blr 
