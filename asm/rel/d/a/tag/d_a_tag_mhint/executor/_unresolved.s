lbl_805A5698:
/* 805A5698  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 805A569C  7C 08 02 A6 */	mflr r0
/* 805A56A0  90 01 00 14 */	stw r0, 0x14(r1)
/* 805A56A4  4B CB D9 EC */	b ModuleUnresolved
/* 805A56A8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 805A56AC  7C 08 03 A6 */	mtlr r0
/* 805A56B0  38 21 00 10 */	addi r1, r1, 0x10
/* 805A56B4  4E 80 00 20 */	blr 
