lbl_806B99DC:
/* 806B99DC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 806B99E0  7C 08 02 A6 */	mflr r0
/* 806B99E4  90 01 00 14 */	stw r0, 0x14(r1)
/* 806B99E8  7C 60 1B 78 */	mr r0, r3
/* 806B99EC  2C 04 00 00 */	cmpwi r4, 0
/* 806B99F0  40 82 00 24 */	bne lbl_806B9A14
/* 806B99F4  3C 60 80 43 */	lis r3, j3dSys@ha /* 0x80434AC8@ha */
/* 806B99F8  38 63 4A C8 */	addi r3, r3, j3dSys@l /* 0x80434AC8@l */
/* 806B99FC  80 A3 00 38 */	lwz r5, 0x38(r3)
/* 806B9A00  80 65 00 14 */	lwz r3, 0x14(r5)
/* 806B9A04  28 03 00 00 */	cmplwi r3, 0
/* 806B9A08  41 82 00 0C */	beq lbl_806B9A14
/* 806B9A0C  7C 04 03 78 */	mr r4, r0
/* 806B9A10  4B FF FE B5 */	bl ctrlJoint__8daE_FK_cFP8J3DJointP8J3DModel
lbl_806B9A14:
/* 806B9A14  38 60 00 01 */	li r3, 1
/* 806B9A18  80 01 00 14 */	lwz r0, 0x14(r1)
/* 806B9A1C  7C 08 03 A6 */	mtlr r0
/* 806B9A20  38 21 00 10 */	addi r1, r1, 0x10
/* 806B9A24  4E 80 00 20 */	blr 
