lbl_8063E264:
/* 8063E264  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8063E268  7C 08 02 A6 */	mflr r0
/* 8063E26C  90 01 00 14 */	stw r0, 0x14(r1)
/* 8063E270  7C 60 1B 78 */	mr r0, r3
/* 8063E274  2C 04 00 00 */	cmpwi r4, 0
/* 8063E278  40 82 00 24 */	bne lbl_8063E29C
/* 8063E27C  3C 60 80 43 */	lis r3, j3dSys@ha /* 0x80434AC8@ha */
/* 8063E280  38 63 4A C8 */	addi r3, r3, j3dSys@l /* 0x80434AC8@l */
/* 8063E284  80 A3 00 38 */	lwz r5, 0x38(r3)
/* 8063E288  80 65 00 14 */	lwz r3, 0x14(r5)
/* 8063E28C  28 03 00 00 */	cmplwi r3, 0
/* 8063E290  41 82 00 0C */	beq lbl_8063E29C
/* 8063E294  7C 04 03 78 */	mr r4, r0
/* 8063E298  4B FF FF 05 */	bl ctrlJoint__10daB_ZANT_cFP8J3DJointP8J3DModel
lbl_8063E29C:
/* 8063E29C  38 60 00 01 */	li r3, 1
/* 8063E2A0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8063E2A4  7C 08 03 A6 */	mtlr r0
/* 8063E2A8  38 21 00 10 */	addi r1, r1, 0x10
/* 8063E2AC  4E 80 00 20 */	blr 
