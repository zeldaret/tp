lbl_802F9A54:
/* 802F9A54  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 802F9A58  7C 08 02 A6 */	mflr r0
/* 802F9A5C  90 01 00 14 */	stw r0, 0x14(r1)
/* 802F9A60  4B FF E4 95 */	bl setAnimation__7J2DPaneFP10J2DAnmBase
/* 802F9A64  80 01 00 14 */	lwz r0, 0x14(r1)
/* 802F9A68  7C 08 03 A6 */	mtlr r0
/* 802F9A6C  38 21 00 10 */	addi r1, r1, 0x10
/* 802F9A70  4E 80 00 20 */	blr 
