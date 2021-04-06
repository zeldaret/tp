lbl_807CFC8C:
/* 807CFC8C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 807CFC90  7C 08 02 A6 */	mflr r0
/* 807CFC94  90 01 00 14 */	stw r0, 0x14(r1)
/* 807CFC98  93 E1 00 0C */	stw r31, 0xc(r1)
/* 807CFC9C  93 C1 00 08 */	stw r30, 8(r1)
/* 807CFCA0  7C 7E 1B 78 */	mr r30, r3
/* 807CFCA4  7C 9F 23 78 */	mr r31, r4
/* 807CFCA8  4B 84 90 39 */	bl fopAc_IsActor__FPv
/* 807CFCAC  2C 03 00 00 */	cmpwi r3, 0
/* 807CFCB0  41 82 00 68 */	beq lbl_807CFD18
/* 807CFCB4  A8 1E 00 08 */	lha r0, 8(r30)
/* 807CFCB8  2C 00 01 B4 */	cmpwi r0, 0x1b4
/* 807CFCBC  40 82 00 5C */	bne lbl_807CFD18
/* 807CFCC0  80 7F 06 4C */	lwz r3, 0x64c(r31)
/* 807CFCC4  80 1E 05 B8 */	lwz r0, 0x5b8(r30)
/* 807CFCC8  7C 03 00 00 */	cmpw r3, r0
/* 807CFCCC  40 82 00 4C */	bne lbl_807CFD18
/* 807CFCD0  C0 1F 04 D0 */	lfs f0, 0x4d0(r31)
/* 807CFCD4  D0 1E 04 D0 */	stfs f0, 0x4d0(r30)
/* 807CFCD8  C0 1F 04 D4 */	lfs f0, 0x4d4(r31)
/* 807CFCDC  D0 1E 04 D4 */	stfs f0, 0x4d4(r30)
/* 807CFCE0  C0 1F 04 D8 */	lfs f0, 0x4d8(r31)
/* 807CFCE4  D0 1E 04 D8 */	stfs f0, 0x4d8(r30)
/* 807CFCE8  C0 3E 04 D4 */	lfs f1, 0x4d4(r30)
/* 807CFCEC  3C 60 80 7D */	lis r3, lit_3883@ha /* 0x807D20A4@ha */
/* 807CFCF0  C0 03 20 A4 */	lfs f0, lit_3883@l(r3)  /* 0x807D20A4@l */
/* 807CFCF4  EC 01 00 2A */	fadds f0, f1, f0
/* 807CFCF8  D0 1E 04 D4 */	stfs f0, 0x4d4(r30)
/* 807CFCFC  38 00 00 02 */	li r0, 2
/* 807CFD00  B0 1E 06 98 */	sth r0, 0x698(r30)
/* 807CFD04  3C 60 80 7D */	lis r3, lit_3884@ha /* 0x807D20A8@ha */
/* 807CFD08  C0 03 20 A8 */	lfs f0, lit_3884@l(r3)  /* 0x807D20A8@l */
/* 807CFD0C  D0 1E 04 EC */	stfs f0, 0x4ec(r30)
/* 807CFD10  7F C3 F3 78 */	mr r3, r30
/* 807CFD14  48 00 00 08 */	b lbl_807CFD1C
lbl_807CFD18:
/* 807CFD18  38 60 00 00 */	li r3, 0
lbl_807CFD1C:
/* 807CFD1C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 807CFD20  83 C1 00 08 */	lwz r30, 8(r1)
/* 807CFD24  80 01 00 14 */	lwz r0, 0x14(r1)
/* 807CFD28  7C 08 03 A6 */	mtlr r0
/* 807CFD2C  38 21 00 10 */	addi r1, r1, 0x10
/* 807CFD30  4E 80 00 20 */	blr 
