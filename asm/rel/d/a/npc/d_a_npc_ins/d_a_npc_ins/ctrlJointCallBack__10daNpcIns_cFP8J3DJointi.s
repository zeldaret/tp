lbl_80A0F2AC:
/* 80A0F2AC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80A0F2B0  7C 08 02 A6 */	mflr r0
/* 80A0F2B4  90 01 00 14 */	stw r0, 0x14(r1)
/* 80A0F2B8  7C 60 1B 78 */	mr r0, r3
/* 80A0F2BC  2C 04 00 00 */	cmpwi r4, 0
/* 80A0F2C0  40 82 00 24 */	bne lbl_80A0F2E4
/* 80A0F2C4  3C 60 80 43 */	lis r3, j3dSys@ha
/* 80A0F2C8  38 63 4A C8 */	addi r3, r3, j3dSys@l
/* 80A0F2CC  80 A3 00 38 */	lwz r5, 0x38(r3)
/* 80A0F2D0  80 65 00 14 */	lwz r3, 0x14(r5)
/* 80A0F2D4  28 03 00 00 */	cmplwi r3, 0
/* 80A0F2D8  41 82 00 0C */	beq lbl_80A0F2E4
/* 80A0F2DC  7C 04 03 78 */	mr r4, r0
/* 80A0F2E0  4B FF FD DD */	bl ctrlJoint__10daNpcIns_cFP8J3DJointP8J3DModel
lbl_80A0F2E4:
/* 80A0F2E4  38 60 00 01 */	li r3, 1
/* 80A0F2E8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80A0F2EC  7C 08 03 A6 */	mtlr r0
/* 80A0F2F0  38 21 00 10 */	addi r1, r1, 0x10
/* 80A0F2F4  4E 80 00 20 */	blr 
