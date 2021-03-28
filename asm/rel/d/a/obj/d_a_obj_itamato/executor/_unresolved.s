lbl_80C29458:
/* 80C29458  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80C2945C  7C 08 02 A6 */	mflr r0
/* 80C29460  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C29464  4B 63 9C 2C */	b ModuleUnresolved
/* 80C29468  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80C2946C  7C 08 03 A6 */	mtlr r0
/* 80C29470  38 21 00 10 */	addi r1, r1, 0x10
/* 80C29474  4E 80 00 20 */	blr 
