lbl_805AE1D8:
/* 805AE1D8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 805AE1DC  7C 08 02 A6 */	mflr r0
/* 805AE1E0  90 01 00 14 */	stw r0, 0x14(r1)
/* 805AE1E4  4B CB 4E AC */	b ModuleUnresolved
/* 805AE1E8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 805AE1EC  7C 08 03 A6 */	mtlr r0
/* 805AE1F0  38 21 00 10 */	addi r1, r1, 0x10
/* 805AE1F4  4E 80 00 20 */	blr 
