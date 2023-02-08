lbl_80C1D588:
/* 80C1D588  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80C1D58C  7C 08 02 A6 */	mflr r0
/* 80C1D590  90 01 00 24 */	stw r0, 0x24(r1)
/* 80C1D594  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 80C1D598  93 C1 00 18 */	stw r30, 0x18(r1)
/* 80C1D59C  7C 7E 1B 78 */	mr r30, r3
/* 80C1D5A0  3C 80 80 C2 */	lis r4, lit_3647@ha /* 0x80C1DA94@ha */
/* 80C1D5A4  3B E4 DA 94 */	addi r31, r4, lit_3647@l /* 0x80C1DA94@l */
/* 80C1D5A8  80 03 05 DC */	lwz r0, 0x5dc(r3)
/* 80C1D5AC  28 00 00 00 */	cmplwi r0, 0
/* 80C1D5B0  40 82 00 08 */	bne lbl_80C1D5B8
/* 80C1D5B4  4B FF FC F9 */	bl init_modeRide__11daHeavySw_cFv
lbl_80C1D5B8:
/* 80C1D5B8  88 7E 05 C4 */	lbz r3, 0x5c4(r30)
/* 80C1D5BC  28 03 00 00 */	cmplwi r3, 0
/* 80C1D5C0  41 82 00 10 */	beq lbl_80C1D5D0
/* 80C1D5C4  38 03 FF FF */	addi r0, r3, -1
/* 80C1D5C8  98 1E 05 C4 */	stb r0, 0x5c4(r30)
/* 80C1D5CC  48 00 00 A4 */	b lbl_80C1D670
lbl_80C1D5D0:
/* 80C1D5D0  88 1E 07 FC */	lbz r0, 0x7fc(r30)
/* 80C1D5D4  28 00 00 00 */	cmplwi r0, 0
/* 80C1D5D8  40 82 00 58 */	bne lbl_80C1D630
/* 80C1D5DC  88 1E 04 E2 */	lbz r0, 0x4e2(r30)
/* 80C1D5E0  7C 03 07 74 */	extsb r3, r0
/* 80C1D5E4  4B 40 FA 89 */	bl dComIfGp_getReverb__Fi
/* 80C1D5E8  7C 67 1B 78 */	mr r7, r3
/* 80C1D5EC  3C 60 00 08 */	lis r3, 0x0008 /* 0x00080129@ha */
/* 80C1D5F0  38 03 01 29 */	addi r0, r3, 0x0129 /* 0x00080129@l */
/* 80C1D5F4  90 01 00 08 */	stw r0, 8(r1)
/* 80C1D5F8  3C 60 80 45 */	lis r3, mAudioMgrPtr__10Z2AudioMgr@ha /* 0x80451368@ha */
/* 80C1D5FC  38 63 13 68 */	addi r3, r3, mAudioMgrPtr__10Z2AudioMgr@l /* 0x80451368@l */
/* 80C1D600  80 63 00 00 */	lwz r3, 0(r3)
/* 80C1D604  38 81 00 08 */	addi r4, r1, 8
/* 80C1D608  38 BE 04 D0 */	addi r5, r30, 0x4d0
/* 80C1D60C  38 C0 00 00 */	li r6, 0
/* 80C1D610  C0 3F 00 28 */	lfs f1, 0x28(r31)
/* 80C1D614  FC 40 08 90 */	fmr f2, f1
/* 80C1D618  C0 7F 00 2C */	lfs f3, 0x2c(r31)
/* 80C1D61C  FC 80 18 90 */	fmr f4, f3
/* 80C1D620  39 00 00 00 */	li r8, 0
/* 80C1D624  4B 68 E3 61 */	bl seStart__7Z2SeMgrF10JAISoundIDPC3VecUlScffffUc
/* 80C1D628  38 00 00 01 */	li r0, 1
/* 80C1D62C  98 1E 07 FC */	stb r0, 0x7fc(r30)
lbl_80C1D630:
/* 80C1D630  C0 3E 05 D4 */	lfs f1, 0x5d4(r30)
/* 80C1D634  38 7E 05 2C */	addi r3, r30, 0x52c
/* 80C1D638  C0 1F 00 40 */	lfs f0, 0x40(r31)
/* 80C1D63C  EC 41 00 24 */	fdivs f2, f1, f0
/* 80C1D640  4B 65 31 01 */	bl cLib_chaseF__FPfff
/* 80C1D644  38 7E 05 BC */	addi r3, r30, 0x5bc
/* 80C1D648  C0 3F 00 20 */	lfs f1, 0x20(r31)
/* 80C1D64C  C0 5F 00 28 */	lfs f2, 0x28(r31)
/* 80C1D650  C0 7E 05 2C */	lfs f3, 0x52c(r30)
/* 80C1D654  C0 9F 00 3C */	lfs f4, 0x3c(r31)
/* 80C1D658  4B 65 23 25 */	bl cLib_addCalc__FPfffff
/* 80C1D65C  C0 1F 00 14 */	lfs f0, 0x14(r31)
/* 80C1D660  FC 00 08 00 */	fcmpu cr0, f0, f1
/* 80C1D664  40 82 00 0C */	bne lbl_80C1D670
/* 80C1D668  7F C3 F3 78 */	mr r3, r30
/* 80C1D66C  48 00 00 1D */	bl init_modeMoveEnd__11daHeavySw_cFv
lbl_80C1D670:
/* 80C1D670  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 80C1D674  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 80C1D678  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80C1D67C  7C 08 03 A6 */	mtlr r0
/* 80C1D680  38 21 00 20 */	addi r1, r1, 0x20
/* 80C1D684  4E 80 00 20 */	blr 
