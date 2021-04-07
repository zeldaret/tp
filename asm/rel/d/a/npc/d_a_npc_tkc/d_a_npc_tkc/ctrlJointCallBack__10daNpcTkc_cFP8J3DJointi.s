lbl_80B0D2EC:
/* 80B0D2EC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80B0D2F0  7C 08 02 A6 */	mflr r0
/* 80B0D2F4  90 01 00 14 */	stw r0, 0x14(r1)
/* 80B0D2F8  7C 60 1B 78 */	mr r0, r3
/* 80B0D2FC  2C 04 00 00 */	cmpwi r4, 0
/* 80B0D300  40 82 00 24 */	bne lbl_80B0D324
/* 80B0D304  3C 60 80 43 */	lis r3, j3dSys@ha /* 0x80434AC8@ha */
/* 80B0D308  38 63 4A C8 */	addi r3, r3, j3dSys@l /* 0x80434AC8@l */
/* 80B0D30C  80 A3 00 38 */	lwz r5, 0x38(r3)
/* 80B0D310  80 65 00 14 */	lwz r3, 0x14(r5)
/* 80B0D314  28 03 00 00 */	cmplwi r3, 0
/* 80B0D318  41 82 00 0C */	beq lbl_80B0D324
/* 80B0D31C  7C 04 03 78 */	mr r4, r0
/* 80B0D320  4B FF FF 3D */	bl ctrlJoint__10daNpcTkc_cFP8J3DJointP8J3DModel
lbl_80B0D324:
/* 80B0D324  38 60 00 01 */	li r3, 1
/* 80B0D328  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80B0D32C  7C 08 03 A6 */	mtlr r0
/* 80B0D330  38 21 00 10 */	addi r1, r1, 0x10
/* 80B0D334  4E 80 00 20 */	blr 
