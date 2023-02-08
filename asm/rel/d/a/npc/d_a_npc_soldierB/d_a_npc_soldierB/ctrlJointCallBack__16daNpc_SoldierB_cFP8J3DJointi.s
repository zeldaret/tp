lbl_80AF3850:
/* 80AF3850  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80AF3854  7C 08 02 A6 */	mflr r0
/* 80AF3858  90 01 00 14 */	stw r0, 0x14(r1)
/* 80AF385C  7C 60 1B 78 */	mr r0, r3
/* 80AF3860  2C 04 00 00 */	cmpwi r4, 0
/* 80AF3864  40 82 00 24 */	bne lbl_80AF3888
/* 80AF3868  3C 60 80 43 */	lis r3, j3dSys@ha /* 0x80434AC8@ha */
/* 80AF386C  38 63 4A C8 */	addi r3, r3, j3dSys@l /* 0x80434AC8@l */
/* 80AF3870  80 A3 00 38 */	lwz r5, 0x38(r3)
/* 80AF3874  80 65 00 14 */	lwz r3, 0x14(r5)
/* 80AF3878  28 03 00 00 */	cmplwi r3, 0
/* 80AF387C  41 82 00 0C */	beq lbl_80AF3888
/* 80AF3880  7C 04 03 78 */	mr r4, r0
/* 80AF3884  4B FF FD B1 */	bl ctrlJoint__16daNpc_SoldierB_cFP8J3DJointP8J3DModel
lbl_80AF3888:
/* 80AF3888  38 60 00 01 */	li r3, 1
/* 80AF388C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80AF3890  7C 08 03 A6 */	mtlr r0
/* 80AF3894  38 21 00 10 */	addi r1, r1, 0x10
/* 80AF3898  4E 80 00 20 */	blr 
