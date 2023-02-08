lbl_80256084:
/* 80256084  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80256088  7C 08 02 A6 */	mflr r0
/* 8025608C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80256090  48 0A 1F 35 */	bl setAnimation__7J2DPaneFP15J2DAnmTransform
/* 80256094  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80256098  7C 08 03 A6 */	mtlr r0
/* 8025609C  38 21 00 10 */	addi r1, r1, 0x10
/* 802560A0  4E 80 00 20 */	blr 
