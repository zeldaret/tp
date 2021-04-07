lbl_80AD946C:
/* 80AD946C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80AD9470  7C 08 02 A6 */	mflr r0
/* 80AD9474  90 01 00 14 */	stw r0, 0x14(r1)
/* 80AD9478  7C 60 1B 78 */	mr r0, r3
/* 80AD947C  2C 04 00 00 */	cmpwi r4, 0
/* 80AD9480  40 82 00 24 */	bne lbl_80AD94A4
/* 80AD9484  3C 60 80 43 */	lis r3, j3dSys@ha /* 0x80434AC8@ha */
/* 80AD9488  38 63 4A C8 */	addi r3, r3, j3dSys@l /* 0x80434AC8@l */
/* 80AD948C  80 A3 00 38 */	lwz r5, 0x38(r3)
/* 80AD9490  80 65 00 14 */	lwz r3, 0x14(r5)
/* 80AD9494  28 03 00 00 */	cmplwi r3, 0
/* 80AD9498  41 82 00 0C */	beq lbl_80AD94A4
/* 80AD949C  7C 04 03 78 */	mr r4, r0
/* 80AD94A0  4B FF FD E1 */	bl ctrlJoint__11daNpcShad_cFP8J3DJointP8J3DModel
lbl_80AD94A4:
/* 80AD94A4  38 60 00 01 */	li r3, 1
/* 80AD94A8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80AD94AC  7C 08 03 A6 */	mtlr r0
/* 80AD94B0  38 21 00 10 */	addi r1, r1, 0x10
/* 80AD94B4  4E 80 00 20 */	blr 
