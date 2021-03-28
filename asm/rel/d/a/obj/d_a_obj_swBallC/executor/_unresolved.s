lbl_80CF5B78:
/* 80CF5B78  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80CF5B7C  7C 08 02 A6 */	mflr r0
/* 80CF5B80  90 01 00 14 */	stw r0, 0x14(r1)
/* 80CF5B84  4B 56 D5 0C */	b ModuleUnresolved
/* 80CF5B88  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80CF5B8C  7C 08 03 A6 */	mtlr r0
/* 80CF5B90  38 21 00 10 */	addi r1, r1, 0x10
/* 80CF5B94  4E 80 00 20 */	blr 
