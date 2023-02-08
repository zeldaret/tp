lbl_80B15670:
/* 80B15670  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80B15674  7C 08 02 A6 */	mflr r0
/* 80B15678  90 01 00 14 */	stw r0, 0x14(r1)
/* 80B1567C  7C 60 1B 78 */	mr r0, r3
/* 80B15680  2C 04 00 00 */	cmpwi r4, 0
/* 80B15684  40 82 00 24 */	bne lbl_80B156A8
/* 80B15688  3C 60 80 43 */	lis r3, j3dSys@ha /* 0x80434AC8@ha */
/* 80B1568C  38 63 4A C8 */	addi r3, r3, j3dSys@l /* 0x80434AC8@l */
/* 80B15690  80 A3 00 38 */	lwz r5, 0x38(r3)
/* 80B15694  80 65 00 14 */	lwz r3, 0x14(r5)
/* 80B15698  28 03 00 00 */	cmplwi r3, 0
/* 80B1569C  41 82 00 0C */	beq lbl_80B156A8
/* 80B156A0  7C 04 03 78 */	mr r4, r0
/* 80B156A4  4B FF FD E9 */	bl ctrlJoint__10daNpcTks_cFP8J3DJointP8J3DModel
lbl_80B156A8:
/* 80B156A8  38 60 00 01 */	li r3, 1
/* 80B156AC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80B156B0  7C 08 03 A6 */	mtlr r0
/* 80B156B4  38 21 00 10 */	addi r1, r1, 0x10
/* 80B156B8  4E 80 00 20 */	blr 
