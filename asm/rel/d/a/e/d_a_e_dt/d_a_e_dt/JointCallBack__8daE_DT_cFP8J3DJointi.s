lbl_806ADBA0:
/* 806ADBA0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 806ADBA4  7C 08 02 A6 */	mflr r0
/* 806ADBA8  90 01 00 14 */	stw r0, 0x14(r1)
/* 806ADBAC  7C 60 1B 78 */	mr r0, r3
/* 806ADBB0  2C 04 00 00 */	cmpwi r4, 0
/* 806ADBB4  40 82 00 24 */	bne lbl_806ADBD8
/* 806ADBB8  3C 60 80 43 */	lis r3, j3dSys@ha /* 0x80434AC8@ha */
/* 806ADBBC  38 63 4A C8 */	addi r3, r3, j3dSys@l /* 0x80434AC8@l */
/* 806ADBC0  80 A3 00 38 */	lwz r5, 0x38(r3)
/* 806ADBC4  80 65 00 14 */	lwz r3, 0x14(r5)
/* 806ADBC8  28 03 00 00 */	cmplwi r3, 0
/* 806ADBCC  41 82 00 0C */	beq lbl_806ADBD8
/* 806ADBD0  7C 04 03 78 */	mr r4, r0
/* 806ADBD4  4B FF FD A9 */	bl ctrlJoint__8daE_DT_cFP8J3DJointP8J3DModel
lbl_806ADBD8:
/* 806ADBD8  38 60 00 01 */	li r3, 1
/* 806ADBDC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 806ADBE0  7C 08 03 A6 */	mtlr r0
/* 806ADBE4  38 21 00 10 */	addi r1, r1, 0x10
/* 806ADBE8  4E 80 00 20 */	blr 
