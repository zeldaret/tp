lbl_8061B698:
/* 8061B698  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8061B69C  7C 08 02 A6 */	mflr r0
/* 8061B6A0  90 01 00 14 */	stw r0, 0x14(r1)
/* 8061B6A4  4B C4 79 EC */	b ModuleUnresolved
/* 8061B6A8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8061B6AC  7C 08 03 A6 */	mtlr r0
/* 8061B6B0  38 21 00 10 */	addi r1, r1, 0x10
/* 8061B6B4  4E 80 00 20 */	blr 
