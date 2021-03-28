lbl_80799084:
/* 80799084  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80799088  7C 08 02 A6 */	mflr r0
/* 8079908C  90 01 00 24 */	stw r0, 0x24(r1)
/* 80799090  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 80799094  93 C1 00 18 */	stw r30, 0x18(r1)
/* 80799098  7C 7E 1B 78 */	mr r30, r3
/* 8079909C  3C 80 80 7A */	lis r4, lit_3790@ha
/* 807990A0  3B E4 D5 B0 */	addi r31, r4, lit_3790@l
/* 807990A4  88 03 08 3D */	lbz r0, 0x83d(r3)
/* 807990A8  28 00 00 00 */	cmplwi r0, 0
/* 807990AC  40 82 00 30 */	bne lbl_807990DC
/* 807990B0  4B 88 0B CC */	b fopAcM_delete__FP10fopAc_ac_c
/* 807990B4  80 1E 00 B0 */	lwz r0, 0xb0(r30)
/* 807990B8  54 04 46 3E */	srwi r4, r0, 0x18
/* 807990BC  2C 04 00 FF */	cmpwi r4, 0xff
/* 807990C0  41 82 00 88 */	beq lbl_80799148
/* 807990C4  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 807990C8  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 807990CC  88 1E 04 E2 */	lbz r0, 0x4e2(r30)
/* 807990D0  7C 05 07 74 */	extsb r5, r0
/* 807990D4  4B 89 C1 2C */	b onSwitch__10dSv_info_cFii
/* 807990D8  48 00 00 70 */	b lbl_80799148
lbl_807990DC:
/* 807990DC  38 00 00 0A */	li r0, 0xa
/* 807990E0  B0 1E 06 82 */	sth r0, 0x682(r30)
/* 807990E4  38 00 00 00 */	li r0, 0
/* 807990E8  B0 1E 06 84 */	sth r0, 0x684(r30)
/* 807990EC  C0 3F 00 40 */	lfs f1, 0x40(r31)
/* 807990F0  4B AC E8 64 */	b cM_rndF__Ff
/* 807990F4  C0 1F 00 3C */	lfs f0, 0x3c(r31)
/* 807990F8  EC 00 08 2A */	fadds f0, f0, f1
/* 807990FC  FC 00 00 1E */	fctiwz f0, f0
/* 80799100  D8 01 00 08 */	stfd f0, 8(r1)
/* 80799104  80 01 00 0C */	lwz r0, 0xc(r1)
/* 80799108  B0 1E 06 86 */	sth r0, 0x686(r30)
/* 8079910C  C0 1E 04 A8 */	lfs f0, 0x4a8(r30)
/* 80799110  D0 1E 04 D0 */	stfs f0, 0x4d0(r30)
/* 80799114  C0 1E 04 AC */	lfs f0, 0x4ac(r30)
/* 80799118  D0 1E 04 D4 */	stfs f0, 0x4d4(r30)
/* 8079911C  C0 1E 04 B0 */	lfs f0, 0x4b0(r30)
/* 80799120  D0 1E 04 D8 */	stfs f0, 0x4d8(r30)
/* 80799124  C0 1F 00 08 */	lfs f0, 8(r31)
/* 80799128  D0 1E 06 C4 */	stfs f0, 0x6c4(r30)
/* 8079912C  D0 1E 06 B0 */	stfs f0, 0x6b0(r30)
/* 80799130  38 00 00 00 */	li r0, 0
/* 80799134  98 1E 05 D8 */	stb r0, 0x5d8(r30)
/* 80799138  98 1E 08 3C */	stb r0, 0x83c(r30)
/* 8079913C  88 7E 08 3C */	lbz r3, 0x83c(r30)
/* 80799140  4B FF FF 31 */	bl size_get__FUc
/* 80799144  D0 3E 08 34 */	stfs f1, 0x834(r30)
lbl_80799148:
/* 80799148  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 8079914C  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 80799150  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80799154  7C 08 03 A6 */	mtlr r0
/* 80799158  38 21 00 20 */	addi r1, r1, 0x20
/* 8079915C  4E 80 00 20 */	blr 
