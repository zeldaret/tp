lbl_809DB468:
/* 809DB468  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 809DB46C  7C 08 02 A6 */	mflr r0
/* 809DB470  90 01 00 14 */	stw r0, 0x14(r1)
/* 809DB474  7C 60 1B 78 */	mr r0, r3
/* 809DB478  2C 04 00 00 */	cmpwi r4, 0
/* 809DB47C  40 82 00 24 */	bne lbl_809DB4A0
/* 809DB480  3C 60 80 43 */	lis r3, j3dSys@ha /* 0x80434AC8@ha */
/* 809DB484  38 63 4A C8 */	addi r3, r3, j3dSys@l /* 0x80434AC8@l */
/* 809DB488  80 A3 00 38 */	lwz r5, 0x38(r3)
/* 809DB48C  80 65 00 14 */	lwz r3, 0x14(r5)
/* 809DB490  28 03 00 00 */	cmplwi r3, 0
/* 809DB494  41 82 00 0C */	beq lbl_809DB4A0
/* 809DB498  7C 04 03 78 */	mr r4, r0
/* 809DB49C  4B FF FD 79 */	bl ctrlJoint__11daNpc_grO_cFP8J3DJointP8J3DModel
lbl_809DB4A0:
/* 809DB4A0  38 60 00 01 */	li r3, 1
/* 809DB4A4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 809DB4A8  7C 08 03 A6 */	mtlr r0
/* 809DB4AC  38 21 00 10 */	addi r1, r1, 0x10
/* 809DB4B0  4E 80 00 20 */	blr 
