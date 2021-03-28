lbl_80CF8698:
/* 80CF8698  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80CF869C  7C 08 02 A6 */	mflr r0
/* 80CF86A0  90 01 00 14 */	stw r0, 0x14(r1)
/* 80CF86A4  4B 56 A9 EC */	b ModuleUnresolved
/* 80CF86A8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80CF86AC  7C 08 03 A6 */	mtlr r0
/* 80CF86B0  38 21 00 10 */	addi r1, r1, 0x10
/* 80CF86B4  4E 80 00 20 */	blr 
