lbl_80AE85B8:
/* 80AE85B8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80AE85BC  7C 08 02 A6 */	mflr r0
/* 80AE85C0  90 01 00 14 */	stw r0, 0x14(r1)
/* 80AE85C4  7C 60 1B 78 */	mr r0, r3
/* 80AE85C8  2C 04 00 00 */	cmpwi r4, 0
/* 80AE85CC  40 82 00 24 */	bne lbl_80AE85F0
/* 80AE85D0  3C 60 80 43 */	lis r3, j3dSys@ha
/* 80AE85D4  38 63 4A C8 */	addi r3, r3, j3dSys@l
/* 80AE85D8  80 A3 00 38 */	lwz r5, 0x38(r3)
/* 80AE85DC  80 65 00 14 */	lwz r3, 0x14(r5)
/* 80AE85E0  28 03 00 00 */	cmplwi r3, 0
/* 80AE85E4  41 82 00 0C */	beq lbl_80AE85F0
/* 80AE85E8  7C 04 03 78 */	mr r4, r0
/* 80AE85EC  4B FF FE 21 */	bl ctrlJoint__11daNpcShoe_cFP8J3DJointP8J3DModel
lbl_80AE85F0:
/* 80AE85F0  38 60 00 01 */	li r3, 1
/* 80AE85F4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80AE85F8  7C 08 03 A6 */	mtlr r0
/* 80AE85FC  38 21 00 10 */	addi r1, r1, 0x10
/* 80AE8600  4E 80 00 20 */	blr 
