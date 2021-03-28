lbl_80192414:
/* 80192414  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80192418  7C 08 02 A6 */	mflr r0
/* 8019241C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80192420  48 16 5B A5 */	bl setAnimation__7J2DPaneFP15J2DAnmTransform
/* 80192424  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80192428  7C 08 03 A6 */	mtlr r0
/* 8019242C  38 21 00 10 */	addi r1, r1, 0x10
/* 80192430  4E 80 00 20 */	blr 
