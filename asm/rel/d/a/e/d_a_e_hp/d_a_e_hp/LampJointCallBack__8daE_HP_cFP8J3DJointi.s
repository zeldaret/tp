lbl_806E5FCC:
/* 806E5FCC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 806E5FD0  7C 08 02 A6 */	mflr r0
/* 806E5FD4  90 01 00 14 */	stw r0, 0x14(r1)
/* 806E5FD8  7C 60 1B 78 */	mr r0, r3
/* 806E5FDC  2C 04 00 00 */	cmpwi r4, 0
/* 806E5FE0  40 82 00 24 */	bne lbl_806E6004
/* 806E5FE4  3C 60 80 43 */	lis r3, j3dSys@ha /* 0x80434AC8@ha */
/* 806E5FE8  38 63 4A C8 */	addi r3, r3, j3dSys@l /* 0x80434AC8@l */
/* 806E5FEC  80 A3 00 38 */	lwz r5, 0x38(r3)
/* 806E5FF0  80 65 00 14 */	lwz r3, 0x14(r5)
/* 806E5FF4  28 03 00 00 */	cmplwi r3, 0
/* 806E5FF8  41 82 00 0C */	beq lbl_806E6004
/* 806E5FFC  7C 04 03 78 */	mr r4, r0
/* 806E6000  4B FF FF 1D */	bl LampCtrlJoint__8daE_HP_cFP8J3DJointP8J3DModel
lbl_806E6004:
/* 806E6004  38 60 00 01 */	li r3, 1
/* 806E6008  80 01 00 14 */	lwz r0, 0x14(r1)
/* 806E600C  7C 08 03 A6 */	mtlr r0
/* 806E6010  38 21 00 10 */	addi r1, r1, 0x10
/* 806E6014  4E 80 00 20 */	blr 
