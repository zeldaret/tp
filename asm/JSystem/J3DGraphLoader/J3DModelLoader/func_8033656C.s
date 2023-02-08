lbl_8033656C:
/* 8033656C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80336570  7C 08 02 A6 */	mflr r0
/* 80336574  90 01 00 14 */	stw r0, 0x14(r1)
/* 80336578  80 6D 90 74 */	lwz r3, mJoint__10J3DMtxCalc(r13)
/* 8033657C  38 63 00 18 */	addi r3, r3, 0x18
/* 80336580  4B FF 88 D1 */	bl calcTransform__32J3DMtxCalcCalcTransformSoftimageFRC16J3DTransformInfo
/* 80336584  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80336588  7C 08 03 A6 */	mtlr r0
/* 8033658C  38 21 00 10 */	addi r1, r1, 0x10
/* 80336590  4E 80 00 20 */	blr 
