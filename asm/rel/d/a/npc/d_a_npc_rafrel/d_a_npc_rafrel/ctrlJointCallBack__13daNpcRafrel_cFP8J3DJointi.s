lbl_80ABA698:
/* 80ABA698  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80ABA69C  7C 08 02 A6 */	mflr r0
/* 80ABA6A0  90 01 00 14 */	stw r0, 0x14(r1)
/* 80ABA6A4  7C 60 1B 78 */	mr r0, r3
/* 80ABA6A8  2C 04 00 00 */	cmpwi r4, 0
/* 80ABA6AC  40 82 00 24 */	bne lbl_80ABA6D0
/* 80ABA6B0  3C 60 80 43 */	lis r3, j3dSys@ha /* 0x80434AC8@ha */
/* 80ABA6B4  38 63 4A C8 */	addi r3, r3, j3dSys@l /* 0x80434AC8@l */
/* 80ABA6B8  80 A3 00 38 */	lwz r5, 0x38(r3)
/* 80ABA6BC  80 65 00 14 */	lwz r3, 0x14(r5)
/* 80ABA6C0  28 03 00 00 */	cmplwi r3, 0
/* 80ABA6C4  41 82 00 0C */	beq lbl_80ABA6D0
/* 80ABA6C8  7C 04 03 78 */	mr r4, r0
/* 80ABA6CC  4B FF FD DD */	bl ctrlJoint__13daNpcRafrel_cFP8J3DJointP8J3DModel
lbl_80ABA6D0:
/* 80ABA6D0  38 60 00 01 */	li r3, 1
/* 80ABA6D4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80ABA6D8  7C 08 03 A6 */	mtlr r0
/* 80ABA6DC  38 21 00 10 */	addi r1, r1, 0x10
/* 80ABA6E0  4E 80 00 20 */	blr 
