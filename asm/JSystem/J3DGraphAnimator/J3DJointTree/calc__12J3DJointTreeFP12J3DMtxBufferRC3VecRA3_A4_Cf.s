lbl_80325CAC:
/* 80325CAC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80325CB0  7C 08 02 A6 */	mflr r0
/* 80325CB4  90 01 00 14 */	stw r0, 0x14(r1)
/* 80325CB8  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80325CBC  93 C1 00 08 */	stw r30, 8(r1)
/* 80325CC0  7C 7E 1B 78 */	mr r30, r3
/* 80325CC4  7C 9F 23 78 */	mr r31, r4
/* 80325CC8  80 63 00 14 */	lwz r3, 0x14(r3)
/* 80325CCC  7C A4 2B 78 */	mr r4, r5
/* 80325CD0  7C C5 33 78 */	mr r5, r6
/* 80325CD4  81 83 00 00 */	lwz r12, 0(r3)
/* 80325CD8  81 8C 00 24 */	lwz r12, 0x24(r12)
/* 80325CDC  7D 89 03 A6 */	mtctr r12
/* 80325CE0  4E 80 04 21 */	bctrl 
/* 80325CE4  7F E3 FB 78 */	mr r3, r31
/* 80325CE8  48 00 00 35 */	bl setMtxBuffer__10J3DMtxCalcFP12J3DMtxBuffer
/* 80325CEC  80 7E 00 10 */	lwz r3, 0x10(r30)
/* 80325CF0  28 03 00 00 */	cmplwi r3, 0
/* 80325CF4  41 82 00 10 */	beq lbl_80325D04
/* 80325CF8  80 1E 00 14 */	lwz r0, 0x14(r30)
/* 80325CFC  90 0D 90 78 */	stw r0, mCurrentMtxCalc__8J3DJoint(r13)
/* 80325D00  48 00 96 F9 */	bl recursiveCalc__8J3DJointFv
lbl_80325D04:
/* 80325D04  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80325D08  83 C1 00 08 */	lwz r30, 8(r1)
/* 80325D0C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80325D10  7C 08 03 A6 */	mtlr r0
/* 80325D14  38 21 00 10 */	addi r1, r1, 0x10
/* 80325D18  4E 80 00 20 */	blr 
