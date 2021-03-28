lbl_805A4358:
/* 805A4358  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 805A435C  7C 08 02 A6 */	mflr r0
/* 805A4360  90 01 00 14 */	stw r0, 0x14(r1)
/* 805A4364  4B CB ED 2C */	b ModuleUnresolved
/* 805A4368  80 01 00 14 */	lwz r0, 0x14(r1)
/* 805A436C  7C 08 03 A6 */	mtlr r0
/* 805A4370  38 21 00 10 */	addi r1, r1, 0x10
/* 805A4374  4E 80 00 20 */	blr 
