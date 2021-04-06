lbl_80B8EB68:
/* 80B8EB68  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80B8EB6C  7C 08 02 A6 */	mflr r0
/* 80B8EB70  90 01 00 14 */	stw r0, 0x14(r1)
/* 80B8EB74  7C 60 1B 78 */	mr r0, r3
/* 80B8EB78  2C 04 00 00 */	cmpwi r4, 0
/* 80B8EB7C  40 82 00 24 */	bne lbl_80B8EBA0
/* 80B8EB80  3C 60 80 43 */	lis r3, j3dSys@ha /* 0x80434AC8@ha */
/* 80B8EB84  38 63 4A C8 */	addi r3, r3, j3dSys@l /* 0x80434AC8@l */
/* 80B8EB88  80 A3 00 38 */	lwz r5, 0x38(r3)
/* 80B8EB8C  80 65 00 14 */	lwz r3, 0x14(r5)
/* 80B8EB90  28 03 00 00 */	cmplwi r3, 0
/* 80B8EB94  41 82 00 0C */	beq lbl_80B8EBA0
/* 80B8EB98  7C 04 03 78 */	mr r4, r0
/* 80B8EB9C  4B FF FD 79 */	bl ctrlJoint__11daNpc_zrC_cFP8J3DJointP8J3DModel
lbl_80B8EBA0:
/* 80B8EBA0  38 60 00 01 */	li r3, 1
/* 80B8EBA4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80B8EBA8  7C 08 03 A6 */	mtlr r0
/* 80B8EBAC  38 21 00 10 */	addi r1, r1, 0x10
/* 80B8EBB0  4E 80 00 20 */	blr 
