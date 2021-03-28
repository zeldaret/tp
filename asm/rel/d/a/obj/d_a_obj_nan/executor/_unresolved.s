lbl_80CA0518:
/* 80CA0518  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80CA051C  7C 08 02 A6 */	mflr r0
/* 80CA0520  90 01 00 14 */	stw r0, 0x14(r1)
/* 80CA0524  4B 5C 2B 6C */	b ModuleUnresolved
/* 80CA0528  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80CA052C  7C 08 03 A6 */	mtlr r0
/* 80CA0530  38 21 00 10 */	addi r1, r1, 0x10
/* 80CA0534  4E 80 00 20 */	blr 
