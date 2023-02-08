lbl_806EF880:
/* 806EF880  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 806EF884  7C 08 02 A6 */	mflr r0
/* 806EF888  90 01 00 14 */	stw r0, 0x14(r1)
/* 806EF88C  7C 60 1B 78 */	mr r0, r3
/* 806EF890  2C 04 00 00 */	cmpwi r4, 0
/* 806EF894  40 82 00 24 */	bne lbl_806EF8B8
/* 806EF898  3C 60 80 43 */	lis r3, j3dSys@ha /* 0x80434AC8@ha */
/* 806EF89C  38 63 4A C8 */	addi r3, r3, j3dSys@l /* 0x80434AC8@l */
/* 806EF8A0  80 A3 00 38 */	lwz r5, 0x38(r3)
/* 806EF8A4  80 65 00 14 */	lwz r3, 0x14(r5)
/* 806EF8A8  28 03 00 00 */	cmplwi r3, 0
/* 806EF8AC  41 82 00 0C */	beq lbl_806EF8B8
/* 806EF8B0  7C 04 03 78 */	mr r4, r0
/* 806EF8B4  4B FF FE BD */	bl ctrlJoint__8daE_HZ_cFP8J3DJointP8J3DModel
lbl_806EF8B8:
/* 806EF8B8  38 60 00 01 */	li r3, 1
/* 806EF8BC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 806EF8C0  7C 08 03 A6 */	mtlr r0
/* 806EF8C4  38 21 00 10 */	addi r1, r1, 0x10
/* 806EF8C8  4E 80 00 20 */	blr 
