lbl_80CD8598:
/* 80CD8598  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80CD859C  7C 08 02 A6 */	mflr r0
/* 80CD85A0  90 01 00 14 */	stw r0, 0x14(r1)
/* 80CD85A4  4B 58 AA EC */	b ModuleUnresolved
/* 80CD85A8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80CD85AC  7C 08 03 A6 */	mtlr r0
/* 80CD85B0  38 21 00 10 */	addi r1, r1, 0x10
/* 80CD85B4  4E 80 00 20 */	blr 
