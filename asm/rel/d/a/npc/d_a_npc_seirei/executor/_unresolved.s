lbl_80AD5698:
/* 80AD5698  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80AD569C  7C 08 02 A6 */	mflr r0
/* 80AD56A0  90 01 00 14 */	stw r0, 0x14(r1)
/* 80AD56A4  4B 78 D9 EC */	b ModuleUnresolved
/* 80AD56A8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80AD56AC  7C 08 03 A6 */	mtlr r0
/* 80AD56B0  38 21 00 10 */	addi r1, r1, 0x10
/* 80AD56B4  4E 80 00 20 */	blr 
