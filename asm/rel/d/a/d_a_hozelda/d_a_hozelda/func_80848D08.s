lbl_80848D08:
/* 80848D08  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80848D0C  7C 08 02 A6 */	mflr r0
/* 80848D10  90 01 00 14 */	stw r0, 0x14(r1)
/* 80848D14  3C 60 80 45 */	lis r3, mJoint__10J3DMtxCalc@ha
/* 80848D18  38 63 15 F4 */	addi r3, r3, mJoint__10J3DMtxCalc@l
/* 80848D1C  80 63 00 00 */	lwz r3, 0(r3)
/* 80848D20  38 63 00 18 */	addi r3, r3, 0x18
/* 80848D24  4B AE 62 98 */	b calcTransform__27J3DMtxCalcCalcTransformMayaFRC16J3DTransformInfo
/* 80848D28  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80848D2C  7C 08 03 A6 */	mtlr r0
/* 80848D30  38 21 00 10 */	addi r1, r1, 0x10
/* 80848D34  4E 80 00 20 */	blr 
