lbl_80CA3B78:
/* 80CA3B78  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80CA3B7C  7C 08 02 A6 */	mflr r0
/* 80CA3B80  90 01 00 14 */	stw r0, 0x14(r1)
/* 80CA3B84  4B 5B F5 0C */	b ModuleUnresolved
/* 80CA3B88  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80CA3B8C  7C 08 03 A6 */	mtlr r0
/* 80CA3B90  38 21 00 10 */	addi r1, r1, 0x10
/* 80CA3B94  4E 80 00 20 */	blr 
