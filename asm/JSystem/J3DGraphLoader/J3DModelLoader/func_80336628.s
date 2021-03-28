lbl_80336628:
/* 80336628  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8033662C  7C 08 02 A6 */	mflr r0
/* 80336630  90 01 00 14 */	stw r0, 0x14(r1)
/* 80336634  80 6D 90 74 */	lwz r3, mJoint__10J3DMtxCalc(r13)
/* 80336638  38 63 00 18 */	addi r3, r3, 0x18
/* 8033663C  4B FF 86 F5 */	bl calcTransform__28J3DMtxCalcCalcTransformBasicFRC16J3DTransformInfo
/* 80336640  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80336644  7C 08 03 A6 */	mtlr r0
/* 80336648  38 21 00 10 */	addi r1, r1, 0x10
/* 8033664C  4E 80 00 20 */	blr 
