lbl_806B65C0:
/* 806B65C0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 806B65C4  7C 08 02 A6 */	mflr r0
/* 806B65C8  90 01 00 14 */	stw r0, 0x14(r1)
/* 806B65CC  7C 60 1B 78 */	mr r0, r3
/* 806B65D0  2C 04 00 00 */	cmpwi r4, 0
/* 806B65D4  40 82 00 24 */	bne lbl_806B65F8
/* 806B65D8  3C 60 80 43 */	lis r3, j3dSys@ha /* 0x80434AC8@ha */
/* 806B65DC  38 63 4A C8 */	addi r3, r3, j3dSys@l /* 0x80434AC8@l */
/* 806B65E0  80 A3 00 38 */	lwz r5, 0x38(r3)
/* 806B65E4  80 65 00 14 */	lwz r3, 0x14(r5)
/* 806B65E8  28 03 00 00 */	cmplwi r3, 0
/* 806B65EC  41 82 00 0C */	beq lbl_806B65F8
/* 806B65F0  7C 04 03 78 */	mr r4, r0
/* 806B65F4  4B FF FF 2D */	bl ctrlJoint__8daE_FB_cFP8J3DJointP8J3DModel
lbl_806B65F8:
/* 806B65F8  38 60 00 01 */	li r3, 1
/* 806B65FC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 806B6600  7C 08 03 A6 */	mtlr r0
/* 806B6604  38 21 00 10 */	addi r1, r1, 0x10
/* 806B6608  4E 80 00 20 */	blr 
