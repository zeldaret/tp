lbl_8020AE68:
/* 8020AE68  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8020AE6C  7C 08 02 A6 */	mflr r0
/* 8020AE70  90 01 00 14 */	stw r0, 0x14(r1)
/* 8020AE74  7C 83 23 78 */	mr r3, r4
/* 8020AE78  48 04 97 39 */	bl paneTrans__8CPaneMgrFff
/* 8020AE7C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8020AE80  7C 08 03 A6 */	mtlr r0
/* 8020AE84  38 21 00 10 */	addi r1, r1, 0x10
/* 8020AE88  4E 80 00 20 */	blr 
