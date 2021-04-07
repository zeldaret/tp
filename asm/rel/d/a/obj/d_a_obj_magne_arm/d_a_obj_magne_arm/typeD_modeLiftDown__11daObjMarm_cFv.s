lbl_8059194C:
/* 8059194C  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80591950  7C 08 02 A6 */	mflr r0
/* 80591954  90 01 00 24 */	stw r0, 0x24(r1)
/* 80591958  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 8059195C  93 C1 00 18 */	stw r30, 0x18(r1)
/* 80591960  7C 7E 1B 78 */	mr r30, r3
/* 80591964  3C 60 80 59 */	lis r3, l_magne_scale@ha /* 0x80592848@ha */
/* 80591968  3B E3 28 48 */	addi r31, r3, l_magne_scale@l /* 0x80592848@l */
/* 8059196C  38 7E 0A 17 */	addi r3, r30, 0xa17
/* 80591970  48 00 0E A5 */	bl func_80592814
/* 80591974  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80591978  40 82 00 A0 */	bne lbl_80591A18
/* 8059197C  38 7E 0A 0C */	addi r3, r30, 0xa0c
/* 80591980  38 9F 00 2C */	addi r4, r31, 0x2c
/* 80591984  A8 84 00 06 */	lha r4, 6(r4)
/* 80591988  38 A0 00 14 */	li r5, 0x14
/* 8059198C  38 C0 00 32 */	li r6, 0x32
/* 80591990  38 E0 00 0A */	li r7, 0xa
/* 80591994  4B CD EB AD */	bl cLib_addCalcAngleS__FPsssss
/* 80591998  A8 7E 0A 0C */	lha r3, 0xa0c(r30)
/* 8059199C  A8 1E 0A 00 */	lha r0, 0xa00(r30)
/* 805919A0  7C 03 00 50 */	subf r0, r3, r0
/* 805919A4  B0 1E 0A 00 */	sth r0, 0xa00(r30)
/* 805919A8  C0 7E 0A 04 */	lfs f3, 0xa04(r30)
/* 805919AC  C0 5F 00 F0 */	lfs f2, 0xf0(r31)
/* 805919B0  A8 1E 0A 0C */	lha r0, 0xa0c(r30)
/* 805919B4  C8 3F 00 78 */	lfd f1, 0x78(r31)
/* 805919B8  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 805919BC  90 01 00 0C */	stw r0, 0xc(r1)
/* 805919C0  3C 00 43 30 */	lis r0, 0x4330
/* 805919C4  90 01 00 08 */	stw r0, 8(r1)
/* 805919C8  C8 01 00 08 */	lfd f0, 8(r1)
/* 805919CC  EC 00 08 28 */	fsubs f0, f0, f1
/* 805919D0  EC 22 00 32 */	fmuls f1, f2, f0
/* 805919D4  C0 1F 00 F4 */	lfs f0, 0xf4(r31)
/* 805919D8  EC 01 00 24 */	fdivs f0, f1, f0
/* 805919DC  EC 03 00 28 */	fsubs f0, f3, f0
/* 805919E0  D0 1E 0A 04 */	stfs f0, 0xa04(r30)
/* 805919E4  C0 3E 0A 04 */	lfs f1, 0xa04(r30)
/* 805919E8  88 1E 0A 15 */	lbz r0, 0xa15(r30)
/* 805919EC  54 00 10 3A */	slwi r0, r0, 2
/* 805919F0  38 7F 00 0C */	addi r3, r31, 0xc
/* 805919F4  7C 03 04 2E */	lfsx f0, r3, r0
/* 805919F8  FC 00 00 50 */	fneg f0, f0
/* 805919FC  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80591A00  40 80 00 10 */	bge lbl_80591A10
/* 80591A04  D0 1E 0A 04 */	stfs f0, 0xa04(r30)
/* 80591A08  7F C3 F3 78 */	mr r3, r30
/* 80591A0C  4B FF FE 35 */	bl init_typeD_modeLiftUp__11daObjMarm_cFv
lbl_80591A10:
/* 80591A10  7F C3 F3 78 */	mr r3, r30
/* 80591A14  48 00 05 A5 */	bl seStartLevel_DOWN__11daObjMarm_cFv
lbl_80591A18:
/* 80591A18  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 80591A1C  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 80591A20  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80591A24  7C 08 03 A6 */	mtlr r0
/* 80591A28  38 21 00 20 */	addi r1, r1, 0x20
/* 80591A2C  4E 80 00 20 */	blr 
