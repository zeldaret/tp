lbl_80A7D0EC:
/* 80A7D0EC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80A7D0F0  7C 08 02 A6 */	mflr r0
/* 80A7D0F4  90 01 00 14 */	stw r0, 0x14(r1)
/* 80A7D0F8  7C 60 1B 78 */	mr r0, r3
/* 80A7D0FC  2C 04 00 00 */	cmpwi r4, 0
/* 80A7D100  40 82 00 24 */	bne lbl_80A7D124
/* 80A7D104  3C 60 80 43 */	lis r3, j3dSys@ha /* 0x80434AC8@ha */
/* 80A7D108  38 63 4A C8 */	addi r3, r3, j3dSys@l /* 0x80434AC8@l */
/* 80A7D10C  80 A3 00 38 */	lwz r5, 0x38(r3)
/* 80A7D110  80 65 00 14 */	lwz r3, 0x14(r5)
/* 80A7D114  28 03 00 00 */	cmplwi r3, 0
/* 80A7D118  41 82 00 0C */	beq lbl_80A7D124
/* 80A7D11C  7C 04 03 78 */	mr r4, r0
/* 80A7D120  4B FF FD DD */	bl ctrlJoint__11daNpcMoiR_cFP8J3DJointP8J3DModel
lbl_80A7D124:
/* 80A7D124  38 60 00 01 */	li r3, 1
/* 80A7D128  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80A7D12C  7C 08 03 A6 */	mtlr r0
/* 80A7D130  38 21 00 10 */	addi r1, r1, 0x10
/* 80A7D134  4E 80 00 20 */	blr 
