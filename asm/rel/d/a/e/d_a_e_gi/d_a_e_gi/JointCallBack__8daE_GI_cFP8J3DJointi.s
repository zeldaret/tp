lbl_806CD594:
/* 806CD594  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 806CD598  7C 08 02 A6 */	mflr r0
/* 806CD59C  90 01 00 14 */	stw r0, 0x14(r1)
/* 806CD5A0  7C 60 1B 78 */	mr r0, r3
/* 806CD5A4  2C 04 00 00 */	cmpwi r4, 0
/* 806CD5A8  40 82 00 24 */	bne lbl_806CD5CC
/* 806CD5AC  3C 60 80 43 */	lis r3, j3dSys@ha /* 0x80434AC8@ha */
/* 806CD5B0  38 63 4A C8 */	addi r3, r3, j3dSys@l /* 0x80434AC8@l */
/* 806CD5B4  80 A3 00 38 */	lwz r5, 0x38(r3)
/* 806CD5B8  80 65 00 14 */	lwz r3, 0x14(r5)
/* 806CD5BC  28 03 00 00 */	cmplwi r3, 0
/* 806CD5C0  41 82 00 0C */	beq lbl_806CD5CC
/* 806CD5C4  7C 04 03 78 */	mr r4, r0
/* 806CD5C8  4B FF FF 2D */	bl ctrlJoint__8daE_GI_cFP8J3DJointP8J3DModel
lbl_806CD5CC:
/* 806CD5CC  38 60 00 01 */	li r3, 1
/* 806CD5D0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 806CD5D4  7C 08 03 A6 */	mtlr r0
/* 806CD5D8  38 21 00 10 */	addi r1, r1, 0x10
/* 806CD5DC  4E 80 00 20 */	blr 
