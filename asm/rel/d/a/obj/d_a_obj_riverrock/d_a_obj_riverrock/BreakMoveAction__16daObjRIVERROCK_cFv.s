lbl_80CBCC3C:
/* 80CBCC3C  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80CBCC40  7C 08 02 A6 */	mflr r0
/* 80CBCC44  90 01 00 24 */	stw r0, 0x24(r1)
/* 80CBCC48  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 80CBCC4C  7C 7F 1B 78 */	mr r31, r3
/* 80CBCC50  38 7F 05 AA */	addi r3, r31, 0x5aa
/* 80CBCC54  38 80 15 00 */	li r4, 0x1500
/* 80CBCC58  3C A0 80 CC */	lis r5, lit_3758@ha /* 0x80CBDAD4@ha */
/* 80CBCC5C  C0 25 DA D4 */	lfs f1, lit_3758@l(r5)  /* 0x80CBDAD4@l */
/* 80CBCC60  3C A0 80 CC */	lis r5, l_HIO@ha /* 0x80CBDBF8@ha */
/* 80CBCC64  38 A5 DB F8 */	addi r5, r5, l_HIO@l /* 0x80CBDBF8@l */
/* 80CBCC68  C0 05 00 08 */	lfs f0, 8(r5)
/* 80CBCC6C  EC 01 00 2A */	fadds f0, f1, f0
/* 80CBCC70  FC 00 00 1E */	fctiwz f0, f0
/* 80CBCC74  D8 01 00 08 */	stfd f0, 8(r1)
/* 80CBCC78  80 A1 00 0C */	lwz r5, 0xc(r1)
/* 80CBCC7C  38 C0 15 00 */	li r6, 0x1500
/* 80CBCC80  38 E0 00 00 */	li r7, 0
/* 80CBCC84  4B 5B 38 BD */	bl cLib_addCalcAngleS__FPsssss
/* 80CBCC88  A8 7F 05 E8 */	lha r3, 0x5e8(r31)
/* 80CBCC8C  A8 1F 05 AA */	lha r0, 0x5aa(r31)
/* 80CBCC90  7C 03 02 14 */	add r0, r3, r0
/* 80CBCC94  B0 1F 05 E8 */	sth r0, 0x5e8(r31)
/* 80CBCC98  A8 7F 05 B6 */	lha r3, 0x5b6(r31)
/* 80CBCC9C  38 03 00 50 */	addi r0, r3, 0x50
/* 80CBCCA0  B0 1F 05 B6 */	sth r0, 0x5b6(r31)
/* 80CBCCA4  7F E3 FB 78 */	mr r3, r31
/* 80CBCCA8  4B FF FC 15 */	bl CheckBG__16daObjRIVERROCK_cFv
/* 80CBCCAC  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 80CBCCB0  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80CBCCB4  7C 08 03 A6 */	mtlr r0
/* 80CBCCB8  38 21 00 20 */	addi r1, r1, 0x20
/* 80CBCCBC  4E 80 00 20 */	blr 
