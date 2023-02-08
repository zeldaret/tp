lbl_805CB4A4:
/* 805CB4A4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 805CB4A8  7C 08 02 A6 */	mflr r0
/* 805CB4AC  90 01 00 14 */	stw r0, 0x14(r1)
/* 805CB4B0  7C 60 1B 78 */	mr r0, r3
/* 805CB4B4  2C 04 00 00 */	cmpwi r4, 0
/* 805CB4B8  40 82 00 24 */	bne lbl_805CB4DC
/* 805CB4BC  3C 60 80 43 */	lis r3, j3dSys@ha /* 0x80434AC8@ha */
/* 805CB4C0  38 63 4A C8 */	addi r3, r3, j3dSys@l /* 0x80434AC8@l */
/* 805CB4C4  80 A3 00 38 */	lwz r5, 0x38(r3)
/* 805CB4C8  80 65 00 14 */	lwz r3, 0x14(r5)
/* 805CB4CC  28 03 00 00 */	cmplwi r3, 0
/* 805CB4D0  41 82 00 0C */	beq lbl_805CB4DC
/* 805CB4D4  7C 04 03 78 */	mr r4, r0
/* 805CB4D8  4B FF FE 3D */	bl ctrlJoint__8daB_DS_cFP8J3DJointP8J3DModel
lbl_805CB4DC:
/* 805CB4DC  38 60 00 01 */	li r3, 1
/* 805CB4E0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 805CB4E4  7C 08 03 A6 */	mtlr r0
/* 805CB4E8  38 21 00 10 */	addi r1, r1, 0x10
/* 805CB4EC  4E 80 00 20 */	blr 
