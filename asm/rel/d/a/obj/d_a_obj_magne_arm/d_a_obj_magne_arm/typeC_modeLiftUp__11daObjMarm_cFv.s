lbl_805913B8:
/* 805913B8  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 805913BC  7C 08 02 A6 */	mflr r0
/* 805913C0  90 01 00 24 */	stw r0, 0x24(r1)
/* 805913C4  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 805913C8  93 C1 00 18 */	stw r30, 0x18(r1)
/* 805913CC  7C 7E 1B 78 */	mr r30, r3
/* 805913D0  3C 60 80 59 */	lis r3, l_magne_scale@ha /* 0x80592848@ha */
/* 805913D4  3B E3 28 48 */	addi r31, r3, l_magne_scale@l /* 0x80592848@l */
/* 805913D8  38 7E 0A 17 */	addi r3, r30, 0xa17
/* 805913DC  48 00 14 39 */	bl func_80592814
/* 805913E0  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 805913E4  40 82 00 90 */	bne lbl_80591474
/* 805913E8  38 7E 0A 0C */	addi r3, r30, 0xa0c
/* 805913EC  38 9F 00 2C */	addi r4, r31, 0x2c
/* 805913F0  A8 84 00 04 */	lha r4, 4(r4)
/* 805913F4  38 A0 00 14 */	li r5, 0x14
/* 805913F8  38 C0 00 32 */	li r6, 0x32
/* 805913FC  38 E0 00 0A */	li r7, 0xa
/* 80591400  4B CD F1 41 */	bl cLib_addCalcAngleS__FPsssss
/* 80591404  A8 7E 0A 00 */	lha r3, 0xa00(r30)
/* 80591408  A8 1E 0A 0C */	lha r0, 0xa0c(r30)
/* 8059140C  7C 03 02 14 */	add r0, r3, r0
/* 80591410  B0 1E 0A 00 */	sth r0, 0xa00(r30)
/* 80591414  C0 7E 0A 04 */	lfs f3, 0xa04(r30)
/* 80591418  C0 5F 00 F0 */	lfs f2, 0xf0(r31)
/* 8059141C  A8 1E 0A 0C */	lha r0, 0xa0c(r30)
/* 80591420  C8 3F 00 78 */	lfd f1, 0x78(r31)
/* 80591424  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 80591428  90 01 00 0C */	stw r0, 0xc(r1)
/* 8059142C  3C 00 43 30 */	lis r0, 0x4330
/* 80591430  90 01 00 08 */	stw r0, 8(r1)
/* 80591434  C8 01 00 08 */	lfd f0, 8(r1)
/* 80591438  EC 00 08 28 */	fsubs f0, f0, f1
/* 8059143C  EC 22 00 32 */	fmuls f1, f2, f0
/* 80591440  C0 1F 00 F4 */	lfs f0, 0xf4(r31)
/* 80591444  EC 01 00 24 */	fdivs f0, f1, f0
/* 80591448  EC 03 00 2A */	fadds f0, f3, f0
/* 8059144C  D0 1E 0A 04 */	stfs f0, 0xa04(r30)
/* 80591450  C0 3E 0A 04 */	lfs f1, 0xa04(r30)
/* 80591454  C0 1F 00 80 */	lfs f0, 0x80(r31)
/* 80591458  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8059145C  40 81 00 10 */	ble lbl_8059146C
/* 80591460  D0 1E 0A 04 */	stfs f0, 0xa04(r30)
/* 80591464  7F C3 F3 78 */	mr r3, r30
/* 80591468  48 00 01 25 */	bl init_typeC_modeRotate__11daObjMarm_cFv
lbl_8059146C:
/* 8059146C  7F C3 F3 78 */	mr r3, r30
/* 80591470  48 00 0A E1 */	bl seStartLevel_UP__11daObjMarm_cFv
lbl_80591474:
/* 80591474  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 80591478  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 8059147C  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80591480  7C 08 03 A6 */	mtlr r0
/* 80591484  38 21 00 20 */	addi r1, r1, 0x20
/* 80591488  4E 80 00 20 */	blr 
