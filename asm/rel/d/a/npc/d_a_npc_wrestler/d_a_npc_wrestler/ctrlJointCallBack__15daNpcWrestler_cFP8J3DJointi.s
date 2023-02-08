lbl_80B30170:
/* 80B30170  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80B30174  7C 08 02 A6 */	mflr r0
/* 80B30178  90 01 00 14 */	stw r0, 0x14(r1)
/* 80B3017C  7C 60 1B 78 */	mr r0, r3
/* 80B30180  2C 04 00 00 */	cmpwi r4, 0
/* 80B30184  40 82 00 24 */	bne lbl_80B301A8
/* 80B30188  3C 60 80 43 */	lis r3, j3dSys@ha /* 0x80434AC8@ha */
/* 80B3018C  38 63 4A C8 */	addi r3, r3, j3dSys@l /* 0x80434AC8@l */
/* 80B30190  80 A3 00 38 */	lwz r5, 0x38(r3)
/* 80B30194  80 65 00 14 */	lwz r3, 0x14(r5)
/* 80B30198  28 03 00 00 */	cmplwi r3, 0
/* 80B3019C  41 82 00 0C */	beq lbl_80B301A8
/* 80B301A0  7C 04 03 78 */	mr r4, r0
/* 80B301A4  4B FF FC E1 */	bl ctrlJoint__15daNpcWrestler_cFP8J3DJointP8J3DModel
lbl_80B301A8:
/* 80B301A8  38 60 00 01 */	li r3, 1
/* 80B301AC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80B301B0  7C 08 03 A6 */	mtlr r0
/* 80B301B4  38 21 00 10 */	addi r1, r1, 0x10
/* 80B301B8  4E 80 00 20 */	blr 
