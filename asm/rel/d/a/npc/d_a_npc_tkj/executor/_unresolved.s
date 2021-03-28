lbl_80573698:
/* 80573698  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8057369C  7C 08 02 A6 */	mflr r0
/* 805736A0  90 01 00 14 */	stw r0, 0x14(r1)
/* 805736A4  4B CE F9 EC */	b ModuleUnresolved
/* 805736A8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 805736AC  7C 08 03 A6 */	mtlr r0
/* 805736B0  38 21 00 10 */	addi r1, r1, 0x10
/* 805736B4  4E 80 00 20 */	blr 
