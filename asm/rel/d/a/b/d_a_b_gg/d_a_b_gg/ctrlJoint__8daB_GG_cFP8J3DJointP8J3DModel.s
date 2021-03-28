lbl_805DEB44:
/* 805DEB44  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 805DEB48  7C 08 02 A6 */	mflr r0
/* 805DEB4C  90 01 00 34 */	stw r0, 0x34(r1)
/* 805DEB50  39 61 00 30 */	addi r11, r1, 0x30
/* 805DEB54  4B D8 36 84 */	b _savegpr_28
/* 805DEB58  7C 7F 1B 78 */	mr r31, r3
/* 805DEB5C  7C BE 2B 78 */	mr r30, r5
/* 805DEB60  A3 84 00 14 */	lhz r28, 0x14(r4)
/* 805DEB64  80 65 00 84 */	lwz r3, 0x84(r5)
/* 805DEB68  80 03 00 0C */	lwz r0, 0xc(r3)
/* 805DEB6C  1F BC 00 30 */	mulli r29, r28, 0x30
/* 805DEB70  7C 60 EA 14 */	add r3, r0, r29
/* 805DEB74  3C 80 80 3E */	lis r4, now__14mDoMtx_stack_c@ha
/* 805DEB78  38 84 D4 70 */	addi r4, r4, now__14mDoMtx_stack_c@l
/* 805DEB7C  4B D6 79 34 */	b PSMTXCopy
/* 805DEB80  2C 1C 00 05 */	cmpwi r28, 5
/* 805DEB84  41 82 00 78 */	beq lbl_805DEBFC
/* 805DEB88  40 80 00 10 */	bge lbl_805DEB98
/* 805DEB8C  2C 1C 00 01 */	cmpwi r28, 1
/* 805DEB90  41 82 00 20 */	beq lbl_805DEBB0
/* 805DEB94  48 00 01 30 */	b lbl_805DECC4
lbl_805DEB98:
/* 805DEB98  2C 1C 00 0A */	cmpwi r28, 0xa
/* 805DEB9C  41 82 00 F8 */	beq lbl_805DEC94
/* 805DEBA0  40 80 01 24 */	bge lbl_805DECC4
/* 805DEBA4  2C 1C 00 09 */	cmpwi r28, 9
/* 805DEBA8  40 80 00 B8 */	bge lbl_805DEC60
/* 805DEBAC  48 00 01 18 */	b lbl_805DECC4
lbl_805DEBB0:
/* 805DEBB0  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 805DEBB4  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 805DEBB8  3C 80 80 5F */	lis r4, lit_4147@ha
/* 805DEBBC  C0 44 D1 B8 */	lfs f2, lit_4147@l(r4)
/* 805DEBC0  A8 1F 06 C4 */	lha r0, 0x6c4(r31)
/* 805DEBC4  3C 80 80 5F */	lis r4, lit_4066@ha
/* 805DEBC8  C8 24 D1 A8 */	lfd f1, lit_4066@l(r4)
/* 805DEBCC  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 805DEBD0  90 01 00 0C */	stw r0, 0xc(r1)
/* 805DEBD4  3C 00 43 30 */	lis r0, 0x4330
/* 805DEBD8  90 01 00 08 */	stw r0, 8(r1)
/* 805DEBDC  C8 01 00 08 */	lfd f0, 8(r1)
/* 805DEBE0  EC 00 08 28 */	fsubs f0, f0, f1
/* 805DEBE4  EC 02 00 32 */	fmuls f0, f2, f0
/* 805DEBE8  FC 00 00 1E */	fctiwz f0, f0
/* 805DEBEC  D8 01 00 10 */	stfd f0, 0x10(r1)
/* 805DEBF0  80 81 00 14 */	lwz r4, 0x14(r1)
/* 805DEBF4  4B A2 D8 D8 */	b mDoMtx_ZrotM__FPA4_fs
/* 805DEBF8  48 00 00 CC */	b lbl_805DECC4
lbl_805DEBFC:
/* 805DEBFC  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 805DEC00  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 805DEC04  A8 1F 06 BE */	lha r0, 0x6be(r31)
/* 805DEC08  7C 00 00 D0 */	neg r0, r0
/* 805DEC0C  7C 04 07 34 */	extsh r4, r0
/* 805DEC10  4B A2 D8 24 */	b mDoMtx_YrotM__FPA4_fs
/* 805DEC14  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 805DEC18  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 805DEC1C  3C 80 80 5F */	lis r4, lit_4148@ha
/* 805DEC20  C0 44 D1 BC */	lfs f2, lit_4148@l(r4)
/* 805DEC24  A8 1F 06 C4 */	lha r0, 0x6c4(r31)
/* 805DEC28  3C 80 80 5F */	lis r4, lit_4066@ha
/* 805DEC2C  C8 24 D1 A8 */	lfd f1, lit_4066@l(r4)
/* 805DEC30  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 805DEC34  90 01 00 14 */	stw r0, 0x14(r1)
/* 805DEC38  3C 00 43 30 */	lis r0, 0x4330
/* 805DEC3C  90 01 00 10 */	stw r0, 0x10(r1)
/* 805DEC40  C8 01 00 10 */	lfd f0, 0x10(r1)
/* 805DEC44  EC 00 08 28 */	fsubs f0, f0, f1
/* 805DEC48  EC 02 00 32 */	fmuls f0, f2, f0
/* 805DEC4C  FC 00 00 1E */	fctiwz f0, f0
/* 805DEC50  D8 01 00 08 */	stfd f0, 8(r1)
/* 805DEC54  80 81 00 0C */	lwz r4, 0xc(r1)
/* 805DEC58  4B A2 D8 74 */	b mDoMtx_ZrotM__FPA4_fs
/* 805DEC5C  48 00 00 68 */	b lbl_805DECC4
lbl_805DEC60:
/* 805DEC60  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 805DEC64  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 805DEC68  A8 9F 06 CC */	lha r4, 0x6cc(r31)
/* 805DEC6C  4B A2 D8 60 */	b mDoMtx_ZrotM__FPA4_fs
/* 805DEC70  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 805DEC74  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 805DEC78  A8 9F 06 C8 */	lha r4, 0x6c8(r31)
/* 805DEC7C  4B A2 D7 20 */	b mDoMtx_XrotM__FPA4_fs
/* 805DEC80  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 805DEC84  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 805DEC88  A8 9F 06 CA */	lha r4, 0x6ca(r31)
/* 805DEC8C  4B A2 D7 A8 */	b mDoMtx_YrotM__FPA4_fs
/* 805DEC90  48 00 00 34 */	b lbl_805DECC4
lbl_805DEC94:
/* 805DEC94  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 805DEC98  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 805DEC9C  A8 9F 06 D2 */	lha r4, 0x6d2(r31)
/* 805DECA0  4B A2 D8 2C */	b mDoMtx_ZrotM__FPA4_fs
/* 805DECA4  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 805DECA8  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 805DECAC  A8 9F 06 CE */	lha r4, 0x6ce(r31)
/* 805DECB0  4B A2 D6 EC */	b mDoMtx_XrotM__FPA4_fs
/* 805DECB4  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 805DECB8  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 805DECBC  A8 9F 06 D0 */	lha r4, 0x6d0(r31)
/* 805DECC0  4B A2 D7 74 */	b mDoMtx_YrotM__FPA4_fs
lbl_805DECC4:
/* 805DECC4  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 805DECC8  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 805DECCC  80 9E 00 84 */	lwz r4, 0x84(r30)
/* 805DECD0  80 04 00 0C */	lwz r0, 0xc(r4)
/* 805DECD4  7C 80 EA 14 */	add r4, r0, r29
/* 805DECD8  4B D6 77 D8 */	b PSMTXCopy
/* 805DECDC  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 805DECE0  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 805DECE4  3C 80 80 43 */	lis r4, mCurrentMtx__6J3DSys@ha
/* 805DECE8  38 84 4B E4 */	addi r4, r4, mCurrentMtx__6J3DSys@l
/* 805DECEC  4B D6 77 C4 */	b PSMTXCopy
/* 805DECF0  38 60 00 01 */	li r3, 1
/* 805DECF4  39 61 00 30 */	addi r11, r1, 0x30
/* 805DECF8  4B D8 35 2C */	b _restgpr_28
/* 805DECFC  80 01 00 34 */	lwz r0, 0x34(r1)
/* 805DED00  7C 08 03 A6 */	mtlr r0
/* 805DED04  38 21 00 30 */	addi r1, r1, 0x30
/* 805DED08  4E 80 00 20 */	blr 
