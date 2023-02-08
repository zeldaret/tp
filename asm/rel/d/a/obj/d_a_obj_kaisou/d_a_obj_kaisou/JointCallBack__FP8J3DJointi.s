lbl_80C34288:
/* 80C34288  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80C3428C  7C 08 02 A6 */	mflr r0
/* 80C34290  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C34294  7C 60 1B 78 */	mr r0, r3
/* 80C34298  2C 04 00 00 */	cmpwi r4, 0
/* 80C3429C  40 82 00 24 */	bne lbl_80C342C0
/* 80C342A0  3C 60 80 43 */	lis r3, j3dSys@ha /* 0x80434AC8@ha */
/* 80C342A4  38 63 4A C8 */	addi r3, r3, j3dSys@l /* 0x80434AC8@l */
/* 80C342A8  80 A3 00 38 */	lwz r5, 0x38(r3)
/* 80C342AC  80 65 00 14 */	lwz r3, 0x14(r5)
/* 80C342B0  28 03 00 00 */	cmplwi r3, 0
/* 80C342B4  41 82 00 0C */	beq lbl_80C342C0
/* 80C342B8  7C 04 03 78 */	mr r4, r0
/* 80C342BC  4B FF FD 9D */	bl ctrlJoint__13daObjKaisou_cFP8J3DJointP8J3DModel
lbl_80C342C0:
/* 80C342C0  38 60 00 01 */	li r3, 1
/* 80C342C4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80C342C8  7C 08 03 A6 */	mtlr r0
/* 80C342CC  38 21 00 10 */	addi r1, r1, 0x10
/* 80C342D0  4E 80 00 20 */	blr 
