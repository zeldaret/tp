lbl_80C1D434:
/* 80C1D434  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80C1D438  7C 08 02 A6 */	mflr r0
/* 80C1D43C  90 01 00 24 */	stw r0, 0x24(r1)
/* 80C1D440  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 80C1D444  93 C1 00 18 */	stw r30, 0x18(r1)
/* 80C1D448  7C 7E 1B 78 */	mr r30, r3
/* 80C1D44C  3C 80 80 C2 */	lis r4, lit_3647@ha /* 0x80C1DA94@ha */
/* 80C1D450  3B E4 DA 94 */	addi r31, r4, lit_3647@l /* 0x80C1DA94@l */
/* 80C1D454  80 03 05 DC */	lwz r0, 0x5dc(r3)
/* 80C1D458  28 00 00 00 */	cmplwi r0, 0
/* 80C1D45C  40 82 00 08 */	bne lbl_80C1D464
/* 80C1D460  4B FF FE 4D */	bl init_modeRide__11daHeavySw_cFv
lbl_80C1D464:
/* 80C1D464  88 7E 05 C4 */	lbz r3, 0x5c4(r30)
/* 80C1D468  28 03 00 00 */	cmplwi r3, 0
/* 80C1D46C  41 82 00 78 */	beq lbl_80C1D4E4
/* 80C1D470  38 03 FF FF */	addi r0, r3, -1
/* 80C1D474  98 1E 05 C4 */	stb r0, 0x5c4(r30)
/* 80C1D478  88 1E 05 C4 */	lbz r0, 0x5c4(r30)
/* 80C1D47C  28 00 00 00 */	cmplwi r0, 0
/* 80C1D480  40 82 00 B4 */	bne lbl_80C1D534
/* 80C1D484  3C 60 80 C2 */	lis r3, l_HIO@ha /* 0x80C1DC54@ha */
/* 80C1D488  38 63 DC 54 */	addi r3, r3, l_HIO@l /* 0x80C1DC54@l */
/* 80C1D48C  C0 03 00 08 */	lfs f0, 8(r3)
/* 80C1D490  D0 1E 05 B0 */	stfs f0, 0x5b0(r30)
/* 80C1D494  88 1E 04 E2 */	lbz r0, 0x4e2(r30)
/* 80C1D498  7C 03 07 74 */	extsb r3, r0
/* 80C1D49C  4B 40 FB D1 */	bl dComIfGp_getReverb__Fi
/* 80C1D4A0  7C 67 1B 78 */	mr r7, r3
/* 80C1D4A4  3C 60 00 08 */	lis r3, 0x0008 /* 0x000801C0@ha */
/* 80C1D4A8  38 03 01 C0 */	addi r0, r3, 0x01C0 /* 0x000801C0@l */
/* 80C1D4AC  90 01 00 08 */	stw r0, 8(r1)
/* 80C1D4B0  3C 60 80 45 */	lis r3, mAudioMgrPtr__10Z2AudioMgr@ha /* 0x80451368@ha */
/* 80C1D4B4  38 63 13 68 */	addi r3, r3, mAudioMgrPtr__10Z2AudioMgr@l /* 0x80451368@l */
/* 80C1D4B8  80 63 00 00 */	lwz r3, 0(r3)
/* 80C1D4BC  38 81 00 08 */	addi r4, r1, 8
/* 80C1D4C0  38 BE 04 D0 */	addi r5, r30, 0x4d0
/* 80C1D4C4  38 C0 00 00 */	li r6, 0
/* 80C1D4C8  C0 3F 00 28 */	lfs f1, 0x28(r31)
/* 80C1D4CC  FC 40 08 90 */	fmr f2, f1
/* 80C1D4D0  C0 7F 00 2C */	lfs f3, 0x2c(r31)
/* 80C1D4D4  FC 80 18 90 */	fmr f4, f3
/* 80C1D4D8  39 00 00 00 */	li r8, 0
/* 80C1D4DC  4B 68 E4 A9 */	bl seStart__7Z2SeMgrF10JAISoundIDPC3VecUlScffffUc
/* 80C1D4E0  48 00 00 54 */	b lbl_80C1D534
lbl_80C1D4E4:
/* 80C1D4E4  C0 3E 05 D4 */	lfs f1, 0x5d4(r30)
/* 80C1D4E8  38 7E 05 2C */	addi r3, r30, 0x52c
/* 80C1D4EC  C0 1F 00 40 */	lfs f0, 0x40(r31)
/* 80C1D4F0  EC 41 00 24 */	fdivs f2, f1, f0
/* 80C1D4F4  4B 65 32 4D */	bl cLib_chaseF__FPfff
/* 80C1D4F8  38 7E 05 BC */	addi r3, r30, 0x5bc
/* 80C1D4FC  3C 80 80 C2 */	lis r4, l_HIO@ha /* 0x80C1DC54@ha */
/* 80C1D500  38 84 DC 54 */	addi r4, r4, l_HIO@l /* 0x80C1DC54@l */
/* 80C1D504  C0 24 00 10 */	lfs f1, 0x10(r4)
/* 80C1D508  C0 04 00 14 */	lfs f0, 0x14(r4)
/* 80C1D50C  EC 21 00 2A */	fadds f1, f1, f0
/* 80C1D510  C0 5F 00 28 */	lfs f2, 0x28(r31)
/* 80C1D514  C0 7E 05 2C */	lfs f3, 0x52c(r30)
/* 80C1D518  C0 9F 00 3C */	lfs f4, 0x3c(r31)
/* 80C1D51C  4B 65 24 61 */	bl cLib_addCalc__FPfffff
/* 80C1D520  C0 1F 00 14 */	lfs f0, 0x14(r31)
/* 80C1D524  FC 00 08 00 */	fcmpu cr0, f0, f1
/* 80C1D528  40 82 00 0C */	bne lbl_80C1D534
/* 80C1D52C  7F C3 F3 78 */	mr r3, r30
/* 80C1D530  48 00 00 1D */	bl init_modeMove__11daHeavySw_cFv
lbl_80C1D534:
/* 80C1D534  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 80C1D538  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 80C1D53C  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80C1D540  7C 08 03 A6 */	mtlr r0
/* 80C1D544  38 21 00 20 */	addi r1, r1, 0x20
/* 80C1D548  4E 80 00 20 */	blr 
