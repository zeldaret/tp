lbl_80AD0B78:
/* 80AD0B78  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80AD0B7C  7C 08 02 A6 */	mflr r0
/* 80AD0B80  90 01 00 14 */	stw r0, 0x14(r1)
/* 80AD0B84  4B 79 25 0C */	b ModuleUnresolved
/* 80AD0B88  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80AD0B8C  7C 08 03 A6 */	mtlr r0
/* 80AD0B90  38 21 00 10 */	addi r1, r1, 0x10
/* 80AD0B94  4E 80 00 20 */	blr 
