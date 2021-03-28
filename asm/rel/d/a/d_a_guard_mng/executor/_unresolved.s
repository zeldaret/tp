lbl_80837AF8:
/* 80837AF8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80837AFC  7C 08 02 A6 */	mflr r0
/* 80837B00  90 01 00 14 */	stw r0, 0x14(r1)
/* 80837B04  4B A2 B5 8C */	b ModuleUnresolved
/* 80837B08  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80837B0C  7C 08 03 A6 */	mtlr r0
/* 80837B10  38 21 00 10 */	addi r1, r1, 0x10
/* 80837B14  4E 80 00 20 */	blr 
