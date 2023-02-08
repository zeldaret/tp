lbl_80C2A630:
/* 80C2A630  94 21 FF B0 */	stwu r1, -0x50(r1)
/* 80C2A634  7C 08 02 A6 */	mflr r0
/* 80C2A638  90 01 00 54 */	stw r0, 0x54(r1)
/* 80C2A63C  DB E1 00 40 */	stfd f31, 0x40(r1)
/* 80C2A640  F3 E1 00 48 */	psq_st f31, 72(r1), 0, 0 /* qr0 */
/* 80C2A644  39 61 00 40 */	addi r11, r1, 0x40
/* 80C2A648  4B 73 7B 95 */	bl _savegpr_29
/* 80C2A64C  7C 7E 1B 78 */	mr r30, r3
/* 80C2A650  7C 9D 23 78 */	mr r29, r4
/* 80C2A654  3C A0 80 C3 */	lis r5, m__21daObj_ItaMato_Param_c@ha /* 0x80C2AB70@ha */
/* 80C2A658  3B E5 AB 70 */	addi r31, r5, m__21daObj_ItaMato_Param_c@l /* 0x80C2AB70@l */
/* 80C2A65C  C3 FF 00 54 */	lfs f31, 0x54(r31)
/* 80C2A660  80 BF 00 8C */	lwz r5, 0x8c(r31)
/* 80C2A664  80 1F 00 90 */	lwz r0, 0x90(r31)
/* 80C2A668  90 A1 00 08 */	stw r5, 8(r1)
/* 80C2A66C  90 01 00 0C */	stw r0, 0xc(r1)
/* 80C2A670  80 1F 00 94 */	lwz r0, 0x94(r31)
/* 80C2A674  90 01 00 10 */	stw r0, 0x10(r1)
/* 80C2A678  38 BF 00 00 */	addi r5, r31, 0
/* 80C2A67C  C0 05 00 10 */	lfs f0, 0x10(r5)
/* 80C2A680  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 80C2A684  4B 3F 00 8D */	bl fopAcM_searchActorAngleY__FPC10fopAc_ac_cPC10fopAc_ac_c
/* 80C2A688  A8 1E 04 E6 */	lha r0, 0x4e6(r30)
/* 80C2A68C  7C 60 18 50 */	subf r3, r0, r3
/* 80C2A690  3C 63 00 01 */	addis r3, r3, 1
/* 80C2A694  38 03 80 00 */	addi r0, r3, -32768
/* 80C2A698  B0 1E 0A 02 */	sth r0, 0xa02(r30)
/* 80C2A69C  38 00 00 08 */	li r0, 8
/* 80C2A6A0  90 1E 09 E8 */	stw r0, 0x9e8(r30)
/* 80C2A6A4  38 00 00 00 */	li r0, 0
/* 80C2A6A8  98 1E 0A 17 */	stb r0, 0xa17(r30)
/* 80C2A6AC  A8 1D 00 0E */	lha r0, 0xe(r29)
/* 80C2A6B0  2C 00 00 FD */	cmpwi r0, 0xfd
/* 80C2A6B4  40 82 00 7C */	bne lbl_80C2A730
/* 80C2A6B8  80 1E 09 E4 */	lwz r0, 0x9e4(r30)
/* 80C2A6BC  2C 00 00 05 */	cmpwi r0, 5
/* 80C2A6C0  41 82 00 68 */	beq lbl_80C2A728
/* 80C2A6C4  40 80 00 10 */	bge lbl_80C2A6D4
/* 80C2A6C8  2C 00 00 03 */	cmpwi r0, 3
/* 80C2A6CC  40 80 00 14 */	bge lbl_80C2A6E0
/* 80C2A6D0  48 00 00 58 */	b lbl_80C2A728
lbl_80C2A6D4:
/* 80C2A6D4  2C 00 00 08 */	cmpwi r0, 8
/* 80C2A6D8  41 82 00 3C */	beq lbl_80C2A714
/* 80C2A6DC  40 80 00 4C */	bge lbl_80C2A728
lbl_80C2A6E0:
/* 80C2A6E0  2C 00 00 03 */	cmpwi r0, 3
/* 80C2A6E4  40 82 00 10 */	bne lbl_80C2A6F4
/* 80C2A6E8  A8 7E 0A 02 */	lha r3, 0xa02(r30)
/* 80C2A6EC  38 03 C0 00 */	addi r0, r3, -16384
/* 80C2A6F0  B0 1E 0A 02 */	sth r0, 0xa02(r30)
lbl_80C2A6F4:
/* 80C2A6F4  80 1E 09 E4 */	lwz r0, 0x9e4(r30)
/* 80C2A6F8  2C 00 00 04 */	cmpwi r0, 4
/* 80C2A6FC  40 82 00 10 */	bne lbl_80C2A70C
/* 80C2A700  A8 7E 0A 02 */	lha r3, 0xa02(r30)
/* 80C2A704  38 03 40 00 */	addi r0, r3, 0x4000
/* 80C2A708  B0 1E 0A 02 */	sth r0, 0xa02(r30)
lbl_80C2A70C:
/* 80C2A70C  C3 FF 00 98 */	lfs f31, 0x98(r31)
/* 80C2A710  48 00 00 24 */	b lbl_80C2A734
lbl_80C2A714:
/* 80C2A714  38 00 00 14 */	li r0, 0x14
/* 80C2A718  90 1E 09 E8 */	stw r0, 0x9e8(r30)
/* 80C2A71C  38 00 00 01 */	li r0, 1
/* 80C2A720  98 1E 0A 17 */	stb r0, 0xa17(r30)
/* 80C2A724  48 00 00 10 */	b lbl_80C2A734
lbl_80C2A728:
/* 80C2A728  C3 FF 00 98 */	lfs f31, 0x98(r31)
/* 80C2A72C  48 00 00 08 */	b lbl_80C2A734
lbl_80C2A730:
/* 80C2A730  C3 FF 00 98 */	lfs f31, 0x98(r31)
lbl_80C2A734:
/* 80C2A734  38 60 00 00 */	li r3, 0
/* 80C2A738  38 80 00 00 */	li r4, 0
/* 80C2A73C  C0 5F 00 9C */	lfs f2, 0x9c(r31)
/* 80C2A740  38 E1 00 08 */	addi r7, r1, 8
/* 80C2A744  C8 3F 00 A0 */	lfd f1, 0xa0(r31)
/* 80C2A748  3C C0 43 30 */	lis r6, 0x4330
/* 80C2A74C  38 A0 40 00 */	li r5, 0x4000
/* 80C2A750  38 00 00 03 */	li r0, 3
/* 80C2A754  7C 09 03 A6 */	mtctr r0
lbl_80C2A758:
/* 80C2A758  7C 07 24 2E */	lfsx f0, r7, r4
/* 80C2A75C  EC 02 00 32 */	fmuls f0, f2, f0
/* 80C2A760  FC 00 00 1E */	fctiwz f0, f0
/* 80C2A764  D8 01 00 18 */	stfd f0, 0x18(r1)
/* 80C2A768  80 01 00 1C */	lwz r0, 0x1c(r1)
/* 80C2A76C  7C 00 07 34 */	extsh r0, r0
/* 80C2A770  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 80C2A774  90 01 00 24 */	stw r0, 0x24(r1)
/* 80C2A778  90 C1 00 20 */	stw r6, 0x20(r1)
/* 80C2A77C  C8 01 00 20 */	lfd f0, 0x20(r1)
/* 80C2A780  EC 00 08 28 */	fsubs f0, f0, f1
/* 80C2A784  EC 1F 00 32 */	fmuls f0, f31, f0
/* 80C2A788  38 04 09 F0 */	addi r0, r4, 0x9f0
/* 80C2A78C  7C 1E 05 2E */	stfsx f0, r30, r0
/* 80C2A790  38 03 09 FC */	addi r0, r3, 0x9fc
/* 80C2A794  7C BE 03 2E */	sthx r5, r30, r0
/* 80C2A798  38 63 00 02 */	addi r3, r3, 2
/* 80C2A79C  38 84 00 04 */	addi r4, r4, 4
/* 80C2A7A0  42 00 FF B8 */	bdnz lbl_80C2A758
/* 80C2A7A4  E3 E1 00 48 */	psq_l f31, 72(r1), 0, 0 /* qr0 */
/* 80C2A7A8  CB E1 00 40 */	lfd f31, 0x40(r1)
/* 80C2A7AC  39 61 00 40 */	addi r11, r1, 0x40
/* 80C2A7B0  4B 73 7A 79 */	bl _restgpr_29
/* 80C2A7B4  80 01 00 54 */	lwz r0, 0x54(r1)
/* 80C2A7B8  7C 08 03 A6 */	mtlr r0
/* 80C2A7BC  38 21 00 50 */	addi r1, r1, 0x50
/* 80C2A7C0  4E 80 00 20 */	blr 
