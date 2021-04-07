lbl_8061ED10:
/* 8061ED10  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8061ED14  7C 08 02 A6 */	mflr r0
/* 8061ED18  90 01 00 14 */	stw r0, 0x14(r1)
/* 8061ED1C  7C 60 1B 78 */	mr r0, r3
/* 8061ED20  2C 04 00 00 */	cmpwi r4, 0
/* 8061ED24  40 82 00 24 */	bne lbl_8061ED48
/* 8061ED28  3C 60 80 43 */	lis r3, j3dSys@ha /* 0x80434AC8@ha */
/* 8061ED2C  38 63 4A C8 */	addi r3, r3, j3dSys@l /* 0x80434AC8@l */
/* 8061ED30  80 A3 00 38 */	lwz r5, 0x38(r3)
/* 8061ED34  80 65 00 14 */	lwz r3, 0x14(r5)
/* 8061ED38  28 03 00 00 */	cmplwi r3, 0
/* 8061ED3C  41 82 00 0C */	beq lbl_8061ED48
/* 8061ED40  7C 04 03 78 */	mr r4, r0
/* 8061ED44  4B FF FF 15 */	bl ctrlJoint__8daB_TN_cFP8J3DJointP8J3DModel
lbl_8061ED48:
/* 8061ED48  38 60 00 01 */	li r3, 1
/* 8061ED4C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8061ED50  7C 08 03 A6 */	mtlr r0
/* 8061ED54  38 21 00 10 */	addi r1, r1, 0x10
/* 8061ED58  4E 80 00 20 */	blr 
