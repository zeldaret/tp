lbl_80015084:
/* 80015084  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80015088  7C 08 02 A6 */	mflr r0
/* 8001508C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80015090  80 6D 90 74 */	lwz r3, mJoint__10J3DMtxCalc(r13)
/* 80015094  38 63 00 18 */	addi r3, r3, 0x18
/* 80015098  48 31 9F 25 */	bl calcTransform__27J3DMtxCalcCalcTransformMayaFRC16J3DTransformInfo
/* 8001509C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 800150A0  7C 08 03 A6 */	mtlr r0
/* 800150A4  38 21 00 10 */	addi r1, r1, 0x10
/* 800150A8  4E 80 00 20 */	blr 
