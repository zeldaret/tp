lbl_803071C4:
/* 803071C4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 803071C8  7C 08 02 A6 */	mflr r0
/* 803071CC  90 01 00 14 */	stw r0, 0x14(r1)
/* 803071D0  4B FF 0D 25 */	bl setAnimation__7J2DPaneFP10J2DAnmBase
/* 803071D4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 803071D8  7C 08 03 A6 */	mtlr r0
/* 803071DC  38 21 00 10 */	addi r1, r1, 0x10
/* 803071E0  4E 80 00 20 */	blr 
