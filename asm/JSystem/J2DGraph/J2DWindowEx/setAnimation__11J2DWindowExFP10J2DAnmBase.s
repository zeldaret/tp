lbl_8030361C:
/* 8030361C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80303620  7C 08 02 A6 */	mflr r0
/* 80303624  90 01 00 14 */	stw r0, 0x14(r1)
/* 80303628  4B FF 48 CD */	bl setAnimation__7J2DPaneFP10J2DAnmBase
/* 8030362C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80303630  7C 08 03 A6 */	mtlr r0
/* 80303634  38 21 00 10 */	addi r1, r1, 0x10
/* 80303638  4E 80 00 20 */	blr 
