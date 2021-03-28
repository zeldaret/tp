lbl_80BEB778:
/* 80BEB778  94 21 FF A0 */	stwu r1, -0x60(r1)
/* 80BEB77C  7C 08 02 A6 */	mflr r0
/* 80BEB780  90 01 00 64 */	stw r0, 0x64(r1)
/* 80BEB784  93 E1 00 5C */	stw r31, 0x5c(r1)
/* 80BEB788  7C 7F 1B 78 */	mr r31, r3
/* 80BEB78C  4B 44 60 E4 */	b getArcName__12daSetBgObj_cFP10fopAc_ac_c
/* 80BEB790  3C 80 80 BF */	lis r4, stringBase0@ha
/* 80BEB794  38 84 C5 54 */	addi r4, r4, stringBase0@l
/* 80BEB798  3C A0 80 40 */	lis r5, g_dComIfG_gameInfo@ha
/* 80BEB79C  38 A5 61 C0 */	addi r5, r5, g_dComIfG_gameInfo@l
/* 80BEB7A0  3C A5 00 02 */	addis r5, r5, 2
/* 80BEB7A4  38 C0 00 80 */	li r6, 0x80
/* 80BEB7A8  38 A5 C2 F8 */	addi r5, r5, -15624
/* 80BEB7AC  4B 45 0B D0 */	b getRes__14dRes_control_cFPCcPCcP11dRes_info_ci
/* 80BEB7B0  80 03 00 00 */	lwz r0, 0(r3)
/* 80BEB7B4  54 00 04 3E */	clrlwi r0, r0, 0x10
/* 80BEB7B8  3C 60 80 BF */	lis r3, lit_3639@ha
/* 80BEB7BC  C8 23 C5 24 */	lfd f1, lit_3639@l(r3)
/* 80BEB7C0  90 01 00 1C */	stw r0, 0x1c(r1)
/* 80BEB7C4  3C 00 43 30 */	lis r0, 0x4330
/* 80BEB7C8  90 01 00 18 */	stw r0, 0x18(r1)
/* 80BEB7CC  C8 01 00 18 */	lfd f0, 0x18(r1)
/* 80BEB7D0  EC 00 08 28 */	fsubs f0, f0, f1
/* 80BEB7D4  D0 1F 05 DC */	stfs f0, 0x5dc(r31)
/* 80BEB7D8  C0 5F 04 D8 */	lfs f2, 0x4d8(r31)
/* 80BEB7DC  C0 3F 04 D4 */	lfs f1, 0x4d4(r31)
/* 80BEB7E0  C0 1F 05 DC */	lfs f0, 0x5dc(r31)
/* 80BEB7E4  EC 21 00 2A */	fadds f1, f1, f0
/* 80BEB7E8  C0 1F 04 D0 */	lfs f0, 0x4d0(r31)
/* 80BEB7EC  D0 01 00 08 */	stfs f0, 8(r1)
/* 80BEB7F0  D0 21 00 0C */	stfs f1, 0xc(r1)
/* 80BEB7F4  D0 41 00 10 */	stfs f2, 0x10(r1)
/* 80BEB7F8  D0 1F 05 D0 */	stfs f0, 0x5d0(r31)
/* 80BEB7FC  D0 3F 05 D4 */	stfs f1, 0x5d4(r31)
/* 80BEB800  D0 5F 05 D8 */	stfs f2, 0x5d8(r31)
/* 80BEB804  4B 67 C0 68 */	b cM_rnd__Fv
/* 80BEB808  3C 60 80 BF */	lis r3, lit_3637@ha
/* 80BEB80C  C0 03 C5 20 */	lfs f0, lit_3637@l(r3)
/* 80BEB810  EC 00 00 72 */	fmuls f0, f0, f1
/* 80BEB814  FC 00 00 1E */	fctiwz f0, f0
/* 80BEB818  D8 01 00 20 */	stfd f0, 0x20(r1)
/* 80BEB81C  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80BEB820  B0 1F 05 92 */	sth r0, 0x592(r31)
/* 80BEB824  4B 67 C0 48 */	b cM_rnd__Fv
/* 80BEB828  3C 60 80 BF */	lis r3, lit_3637@ha
/* 80BEB82C  C0 03 C5 20 */	lfs f0, lit_3637@l(r3)
/* 80BEB830  EC 00 00 72 */	fmuls f0, f0, f1
/* 80BEB834  FC 00 00 1E */	fctiwz f0, f0
/* 80BEB838  D8 01 00 28 */	stfd f0, 0x28(r1)
/* 80BEB83C  80 01 00 2C */	lwz r0, 0x2c(r1)
/* 80BEB840  B0 1F 05 A6 */	sth r0, 0x5a6(r31)
/* 80BEB844  A8 1F 05 A6 */	lha r0, 0x5a6(r31)
/* 80BEB848  B0 1F 05 BA */	sth r0, 0x5ba(r31)
/* 80BEB84C  A8 1F 05 BA */	lha r0, 0x5ba(r31)
/* 80BEB850  B0 1F 05 CE */	sth r0, 0x5ce(r31)
/* 80BEB854  4B 67 C0 18 */	b cM_rnd__Fv
/* 80BEB858  3C 60 80 BF */	lis r3, lit_3637@ha
/* 80BEB85C  C0 03 C5 20 */	lfs f0, lit_3637@l(r3)
/* 80BEB860  EC 00 00 72 */	fmuls f0, f0, f1
/* 80BEB864  FC 00 00 1E */	fctiwz f0, f0
/* 80BEB868  D8 01 00 30 */	stfd f0, 0x30(r1)
/* 80BEB86C  80 01 00 34 */	lwz r0, 0x34(r1)
/* 80BEB870  B0 1F 05 E2 */	sth r0, 0x5e2(r31)
/* 80BEB874  4B 67 BF F8 */	b cM_rnd__Fv
/* 80BEB878  3C 60 80 BF */	lis r3, lit_3637@ha
/* 80BEB87C  C0 03 C5 20 */	lfs f0, lit_3637@l(r3)
/* 80BEB880  EC 00 00 72 */	fmuls f0, f0, f1
/* 80BEB884  FC 00 00 1E */	fctiwz f0, f0
/* 80BEB888  D8 01 00 38 */	stfd f0, 0x38(r1)
/* 80BEB88C  80 01 00 3C */	lwz r0, 0x3c(r1)
/* 80BEB890  B0 1F 05 E4 */	sth r0, 0x5e4(r31)
/* 80BEB894  4B 67 BF D8 */	b cM_rnd__Fv
/* 80BEB898  3C 60 80 BF */	lis r3, lit_3637@ha
/* 80BEB89C  C0 03 C5 20 */	lfs f0, lit_3637@l(r3)
/* 80BEB8A0  EC 00 00 72 */	fmuls f0, f0, f1
/* 80BEB8A4  FC 00 00 1E */	fctiwz f0, f0
/* 80BEB8A8  D8 01 00 40 */	stfd f0, 0x40(r1)
/* 80BEB8AC  80 01 00 44 */	lwz r0, 0x44(r1)
/* 80BEB8B0  B0 1F 05 E6 */	sth r0, 0x5e6(r31)
/* 80BEB8B4  4B 67 BF B8 */	b cM_rnd__Fv
/* 80BEB8B8  3C 60 80 BF */	lis r3, lit_3637@ha
/* 80BEB8BC  C0 03 C5 20 */	lfs f0, lit_3637@l(r3)
/* 80BEB8C0  EC 00 00 72 */	fmuls f0, f0, f1
/* 80BEB8C4  FC 00 00 1E */	fctiwz f0, f0
/* 80BEB8C8  D8 01 00 48 */	stfd f0, 0x48(r1)
/* 80BEB8CC  80 01 00 4C */	lwz r0, 0x4c(r1)
/* 80BEB8D0  B0 1F 05 E8 */	sth r0, 0x5e8(r31)
/* 80BEB8D4  7F E3 FB 78 */	mr r3, r31
/* 80BEB8D8  48 00 00 19 */	bl initBaseMtx__11daObjFlag_cFv
/* 80BEB8DC  83 E1 00 5C */	lwz r31, 0x5c(r1)
/* 80BEB8E0  80 01 00 64 */	lwz r0, 0x64(r1)
/* 80BEB8E4  7C 08 03 A6 */	mtlr r0
/* 80BEB8E8  38 21 00 60 */	addi r1, r1, 0x60
/* 80BEB8EC  4E 80 00 20 */	blr 
