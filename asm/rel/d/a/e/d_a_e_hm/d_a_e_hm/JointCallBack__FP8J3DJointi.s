lbl_806E0D64:
/* 806E0D64  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 806E0D68  7C 08 02 A6 */	mflr r0
/* 806E0D6C  90 01 00 14 */	stw r0, 0x14(r1)
/* 806E0D70  7C 60 1B 78 */	mr r0, r3
/* 806E0D74  2C 04 00 00 */	cmpwi r4, 0
/* 806E0D78  40 82 00 24 */	bne lbl_806E0D9C
/* 806E0D7C  3C 60 80 43 */	lis r3, j3dSys@ha /* 0x80434AC8@ha */
/* 806E0D80  38 63 4A C8 */	addi r3, r3, j3dSys@l /* 0x80434AC8@l */
/* 806E0D84  80 A3 00 38 */	lwz r5, 0x38(r3)
/* 806E0D88  80 65 00 14 */	lwz r3, 0x14(r5)
/* 806E0D8C  28 03 00 00 */	cmplwi r3, 0
/* 806E0D90  41 82 00 0C */	beq lbl_806E0D9C
/* 806E0D94  7C 04 03 78 */	mr r4, r0
/* 806E0D98  4B FF FB C1 */	bl ctrlJoint__8daE_HM_cFP8J3DJointP8J3DModel
lbl_806E0D9C:
/* 806E0D9C  38 60 00 01 */	li r3, 1
/* 806E0DA0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 806E0DA4  7C 08 03 A6 */	mtlr r0
/* 806E0DA8  38 21 00 10 */	addi r1, r1, 0x10
/* 806E0DAC  4E 80 00 20 */	blr 
