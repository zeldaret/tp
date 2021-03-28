lbl_8073D904:
/* 8073D904  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8073D908  7C 08 02 A6 */	mflr r0
/* 8073D90C  90 01 00 14 */	stw r0, 0x14(r1)
/* 8073D910  7C 60 1B 78 */	mr r0, r3
/* 8073D914  2C 04 00 00 */	cmpwi r4, 0
/* 8073D918  40 82 00 24 */	bne lbl_8073D93C
/* 8073D91C  3C 60 80 43 */	lis r3, j3dSys@ha
/* 8073D920  38 63 4A C8 */	addi r3, r3, j3dSys@l
/* 8073D924  80 A3 00 38 */	lwz r5, 0x38(r3)
/* 8073D928  80 65 00 14 */	lwz r3, 0x14(r5)
/* 8073D92C  28 03 00 00 */	cmplwi r3, 0
/* 8073D930  41 82 00 0C */	beq lbl_8073D93C
/* 8073D934  7C 04 03 78 */	mr r4, r0
/* 8073D938  4B FF FF 19 */	bl ctrlJoint__8daE_PH_cFP8J3DJointP8J3DModel
lbl_8073D93C:
/* 8073D93C  38 60 00 01 */	li r3, 1
/* 8073D940  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8073D944  7C 08 03 A6 */	mtlr r0
/* 8073D948  38 21 00 10 */	addi r1, r1, 0x10
/* 8073D94C  4E 80 00 20 */	blr 
