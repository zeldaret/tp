lbl_80C95DF8:
/* 80C95DF8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80C95DFC  7C 08 02 A6 */	mflr r0
/* 80C95E00  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C95E04  4B 5C D2 8C */	b ModuleUnresolved
/* 80C95E08  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80C95E0C  7C 08 03 A6 */	mtlr r0
/* 80C95E10  38 21 00 10 */	addi r1, r1, 0x10
/* 80C95E14  4E 80 00 20 */	blr 
