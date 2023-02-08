lbl_80D05CAC:
/* 80D05CAC  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80D05CB0  7C 08 02 A6 */	mflr r0
/* 80D05CB4  90 01 00 24 */	stw r0, 0x24(r1)
/* 80D05CB8  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 80D05CBC  7C 7F 1B 78 */	mr r31, r3
/* 80D05CC0  C0 23 13 80 */	lfs f1, 0x1380(r3)
/* 80D05CC4  38 7F 05 2C */	addi r3, r31, 0x52c
/* 80D05CC8  3C 80 80 D0 */	lis r4, lit_4028@ha /* 0x80D06194@ha */
/* 80D05CCC  C0 04 61 94 */	lfs f0, lit_4028@l(r4)  /* 0x80D06194@l */
/* 80D05CD0  EC 41 00 24 */	fdivs f2, f1, f0
/* 80D05CD4  4B 56 AA 6D */	bl cLib_chaseF__FPfff
/* 80D05CD8  38 7F 04 E4 */	addi r3, r31, 0x4e4
/* 80D05CDC  A8 9F 13 84 */	lha r4, 0x1384(r31)
/* 80D05CE0  38 A0 00 01 */	li r5, 1
/* 80D05CE4  3C C0 80 D0 */	lis r6, lit_3903@ha /* 0x80D06174@ha */
/* 80D05CE8  C0 26 61 74 */	lfs f1, lit_3903@l(r6)  /* 0x80D06174@l */
/* 80D05CEC  C0 1F 05 2C */	lfs f0, 0x52c(r31)
/* 80D05CF0  EC 01 00 32 */	fmuls f0, f1, f0
/* 80D05CF4  FC 00 00 1E */	fctiwz f0, f0
/* 80D05CF8  D8 01 00 08 */	stfd f0, 8(r1)
/* 80D05CFC  80 C1 00 0C */	lwz r6, 0xc(r1)
/* 80D05D00  38 E0 00 01 */	li r7, 1
/* 80D05D04  4B 56 A8 3D */	bl cLib_addCalcAngleS__FPsssss
/* 80D05D08  7C 60 07 35 */	extsh. r0, r3
/* 80D05D0C  40 82 00 0C */	bne lbl_80D05D18
/* 80D05D10  7F E3 FB 78 */	mr r3, r31
/* 80D05D14  48 00 00 19 */	bl init_modeMoveEnd__11daTaFence_cFv
lbl_80D05D18:
/* 80D05D18  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 80D05D1C  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80D05D20  7C 08 03 A6 */	mtlr r0
/* 80D05D24  38 21 00 20 */	addi r1, r1, 0x20
/* 80D05D28  4E 80 00 20 */	blr 
