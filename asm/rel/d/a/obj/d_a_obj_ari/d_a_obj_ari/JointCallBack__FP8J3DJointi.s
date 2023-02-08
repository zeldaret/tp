lbl_80BA2854:
/* 80BA2854  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80BA2858  7C 08 02 A6 */	mflr r0
/* 80BA285C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80BA2860  7C 60 1B 78 */	mr r0, r3
/* 80BA2864  2C 04 00 00 */	cmpwi r4, 0
/* 80BA2868  40 82 00 24 */	bne lbl_80BA288C
/* 80BA286C  3C 60 80 43 */	lis r3, j3dSys@ha /* 0x80434AC8@ha */
/* 80BA2870  38 63 4A C8 */	addi r3, r3, j3dSys@l /* 0x80434AC8@l */
/* 80BA2874  80 A3 00 38 */	lwz r5, 0x38(r3)
/* 80BA2878  80 65 00 14 */	lwz r3, 0x14(r5)
/* 80BA287C  28 03 00 00 */	cmplwi r3, 0
/* 80BA2880  41 82 00 0C */	beq lbl_80BA288C
/* 80BA2884  7C 04 03 78 */	mr r4, r0
/* 80BA2888  4B FF FE F9 */	bl ctrlJoint__10daObjARI_cFP8J3DJointP8J3DModel
lbl_80BA288C:
/* 80BA288C  38 60 00 01 */	li r3, 1
/* 80BA2890  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80BA2894  7C 08 03 A6 */	mtlr r0
/* 80BA2898  38 21 00 10 */	addi r1, r1, 0x10
/* 80BA289C  4E 80 00 20 */	blr 
