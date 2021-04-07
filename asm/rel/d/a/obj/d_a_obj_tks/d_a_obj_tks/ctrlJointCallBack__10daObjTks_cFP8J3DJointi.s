lbl_80D100B4:
/* 80D100B4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80D100B8  7C 08 02 A6 */	mflr r0
/* 80D100BC  90 01 00 14 */	stw r0, 0x14(r1)
/* 80D100C0  7C 60 1B 78 */	mr r0, r3
/* 80D100C4  2C 04 00 00 */	cmpwi r4, 0
/* 80D100C8  40 82 00 24 */	bne lbl_80D100EC
/* 80D100CC  3C 60 80 43 */	lis r3, j3dSys@ha /* 0x80434AC8@ha */
/* 80D100D0  38 63 4A C8 */	addi r3, r3, j3dSys@l /* 0x80434AC8@l */
/* 80D100D4  80 A3 00 38 */	lwz r5, 0x38(r3)
/* 80D100D8  80 65 00 14 */	lwz r3, 0x14(r5)
/* 80D100DC  28 03 00 00 */	cmplwi r3, 0
/* 80D100E0  41 82 00 0C */	beq lbl_80D100EC
/* 80D100E4  7C 04 03 78 */	mr r4, r0
/* 80D100E8  4B FF FD E9 */	bl ctrlJoint__10daObjTks_cFP8J3DJointP8J3DModel
lbl_80D100EC:
/* 80D100EC  38 60 00 01 */	li r3, 1
/* 80D100F0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80D100F4  7C 08 03 A6 */	mtlr r0
/* 80D100F8  38 21 00 10 */	addi r1, r1, 0x10
/* 80D100FC  4E 80 00 20 */	blr 
