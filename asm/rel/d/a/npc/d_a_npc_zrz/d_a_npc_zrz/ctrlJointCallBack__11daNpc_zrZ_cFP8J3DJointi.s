lbl_80B95114:
/* 80B95114  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80B95118  7C 08 02 A6 */	mflr r0
/* 80B9511C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80B95120  7C 60 1B 78 */	mr r0, r3
/* 80B95124  2C 04 00 00 */	cmpwi r4, 0
/* 80B95128  40 82 00 24 */	bne lbl_80B9514C
/* 80B9512C  3C 60 80 43 */	lis r3, j3dSys@ha /* 0x80434AC8@ha */
/* 80B95130  38 63 4A C8 */	addi r3, r3, j3dSys@l /* 0x80434AC8@l */
/* 80B95134  80 A3 00 38 */	lwz r5, 0x38(r3)
/* 80B95138  80 65 00 14 */	lwz r3, 0x14(r5)
/* 80B9513C  28 03 00 00 */	cmplwi r3, 0
/* 80B95140  41 82 00 0C */	beq lbl_80B9514C
/* 80B95144  7C 04 03 78 */	mr r4, r0
/* 80B95148  4B FF FC D1 */	bl ctrlJoint__11daNpc_zrZ_cFP8J3DJointP8J3DModel
lbl_80B9514C:
/* 80B9514C  38 60 00 01 */	li r3, 1
/* 80B95150  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80B95154  7C 08 03 A6 */	mtlr r0
/* 80B95158  38 21 00 10 */	addi r1, r1, 0x10
/* 80B9515C  4E 80 00 20 */	blr 
