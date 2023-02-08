lbl_80844BDC:
/* 80844BDC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80844BE0  7C 08 02 A6 */	mflr r0
/* 80844BE4  90 01 00 14 */	stw r0, 0x14(r1)
/* 80844BE8  3C 60 80 45 */	lis r3, mJoint__10J3DMtxCalc@ha /* 0x804515F4@ha */
/* 80844BEC  38 63 15 F4 */	addi r3, r3, mJoint__10J3DMtxCalc@l /* 0x804515F4@l */
/* 80844BF0  80 63 00 00 */	lwz r3, 0(r3)
/* 80844BF4  38 63 00 18 */	addi r3, r3, 0x18
/* 80844BF8  4B AE A3 C5 */	bl calcTransform__27J3DMtxCalcCalcTransformMayaFRC16J3DTransformInfo
/* 80844BFC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80844C00  7C 08 03 A6 */	mtlr r0
/* 80844C04  38 21 00 10 */	addi r1, r1, 0x10
/* 80844C08  4E 80 00 20 */	blr 
