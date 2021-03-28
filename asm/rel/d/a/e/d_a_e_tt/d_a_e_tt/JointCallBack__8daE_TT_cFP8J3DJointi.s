lbl_807BD8E0:
/* 807BD8E0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 807BD8E4  7C 08 02 A6 */	mflr r0
/* 807BD8E8  90 01 00 14 */	stw r0, 0x14(r1)
/* 807BD8EC  7C 60 1B 78 */	mr r0, r3
/* 807BD8F0  2C 04 00 00 */	cmpwi r4, 0
/* 807BD8F4  40 82 00 24 */	bne lbl_807BD918
/* 807BD8F8  3C 60 80 43 */	lis r3, j3dSys@ha
/* 807BD8FC  38 63 4A C8 */	addi r3, r3, j3dSys@l
/* 807BD900  80 A3 00 38 */	lwz r5, 0x38(r3)
/* 807BD904  80 65 00 14 */	lwz r3, 0x14(r5)
/* 807BD908  28 03 00 00 */	cmplwi r3, 0
/* 807BD90C  41 82 00 0C */	beq lbl_807BD918
/* 807BD910  7C 04 03 78 */	mr r4, r0
/* 807BD914  4B FF FE D9 */	bl ctrlJoint__8daE_TT_cFP8J3DJointP8J3DModel
lbl_807BD918:
/* 807BD918  38 60 00 01 */	li r3, 1
/* 807BD91C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 807BD920  7C 08 03 A6 */	mtlr r0
/* 807BD924  38 21 00 10 */	addi r1, r1, 0x10
/* 807BD928  4E 80 00 20 */	blr 
