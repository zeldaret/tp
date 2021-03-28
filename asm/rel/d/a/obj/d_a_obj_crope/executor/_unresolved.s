lbl_80BCCCB8:
/* 80BCCCB8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80BCCCBC  7C 08 02 A6 */	mflr r0
/* 80BCCCC0  90 01 00 14 */	stw r0, 0x14(r1)
/* 80BCCCC4  4B 69 63 CC */	b ModuleUnresolved
/* 80BCCCC8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80BCCCCC  7C 08 03 A6 */	mtlr r0
/* 80BCCCD0  38 21 00 10 */	addi r1, r1, 0x10
/* 80BCCCD4  4E 80 00 20 */	blr 
