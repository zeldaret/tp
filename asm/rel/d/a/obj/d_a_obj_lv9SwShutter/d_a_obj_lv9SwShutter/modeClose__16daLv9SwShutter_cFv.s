lbl_80C8D458:
/* 80C8D458  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 80C8D45C  7C 08 02 A6 */	mflr r0
/* 80C8D460  90 01 00 44 */	stw r0, 0x44(r1)
/* 80C8D464  DB E1 00 30 */	stfd f31, 0x30(r1)
/* 80C8D468  F3 E1 00 38 */	psq_st f31, 56(r1), 0, 0 /* qr0 */
/* 80C8D46C  93 E1 00 2C */	stw r31, 0x2c(r1)
/* 80C8D470  93 C1 00 28 */	stw r30, 0x28(r1)
/* 80C8D474  7C 7E 1B 78 */	mr r30, r3
/* 80C8D478  3C 60 80 C9 */	lis r3, lit_3627@ha
/* 80C8D47C  3B E3 D7 DC */	addi r31, r3, lit_3627@l
/* 80C8D480  38 7E 05 2C */	addi r3, r30, 0x52c
/* 80C8D484  3C 80 80 C9 */	lis r4, l_HIO@ha
/* 80C8D488  38 84 D9 1C */	addi r4, r4, l_HIO@l
/* 80C8D48C  C0 24 00 08 */	lfs f1, 8(r4)
/* 80C8D490  C0 44 00 0C */	lfs f2, 0xc(r4)
/* 80C8D494  4B 5E 32 AC */	b cLib_chaseF__FPfff
/* 80C8D498  38 7E 05 B0 */	addi r3, r30, 0x5b0
/* 80C8D49C  C0 3F 00 0C */	lfs f1, 0xc(r31)
/* 80C8D4A0  C0 5F 00 1C */	lfs f2, 0x1c(r31)
/* 80C8D4A4  C0 7E 05 2C */	lfs f3, 0x52c(r30)
/* 80C8D4A8  C0 9F 00 18 */	lfs f4, 0x18(r31)
/* 80C8D4AC  4B 5E 24 D0 */	b cLib_addCalc__FPfffff
/* 80C8D4B0  FF E0 08 90 */	fmr f31, f1
/* 80C8D4B4  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80C8D4B8  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 80C8D4BC  A8 9E 04 E4 */	lha r4, 0x4e4(r30)
/* 80C8D4C0  A8 BE 04 E6 */	lha r5, 0x4e6(r30)
/* 80C8D4C4  A8 DE 04 E8 */	lha r6, 0x4e8(r30)
/* 80C8D4C8  4B 37 ED 40 */	b mDoMtx_ZXYrotS__FPA4_fsss
/* 80C8D4CC  C0 3E 05 B0 */	lfs f1, 0x5b0(r30)
/* 80C8D4D0  C0 1F 00 0C */	lfs f0, 0xc(r31)
/* 80C8D4D4  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 80C8D4D8  D0 21 00 14 */	stfs f1, 0x14(r1)
/* 80C8D4DC  D0 01 00 18 */	stfs f0, 0x18(r1)
/* 80C8D4E0  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80C8D4E4  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 80C8D4E8  38 81 00 10 */	addi r4, r1, 0x10
/* 80C8D4EC  7C 85 23 78 */	mr r5, r4
/* 80C8D4F0  4B 6B 98 7C */	b PSMTXMultVec
/* 80C8D4F4  38 61 00 10 */	addi r3, r1, 0x10
/* 80C8D4F8  38 9E 04 D0 */	addi r4, r30, 0x4d0
/* 80C8D4FC  7C 65 1B 78 */	mr r5, r3
/* 80C8D500  4B 6B 9B 90 */	b PSVECAdd
/* 80C8D504  88 1E 04 E2 */	lbz r0, 0x4e2(r30)
/* 80C8D508  7C 03 07 74 */	extsb r3, r0
/* 80C8D50C  4B 39 FB 60 */	b dComIfGp_getReverb__Fi
/* 80C8D510  7C 67 1B 78 */	mr r7, r3
/* 80C8D514  3C 60 00 08 */	lis r3, 0x0008 /* 0x000802B2@ha */
/* 80C8D518  38 03 02 B2 */	addi r0, r3, 0x02B2 /* 0x000802B2@l */
/* 80C8D51C  90 01 00 0C */	stw r0, 0xc(r1)
/* 80C8D520  3C 60 80 45 */	lis r3, mAudioMgrPtr__10Z2AudioMgr@ha
/* 80C8D524  38 63 13 68 */	addi r3, r3, mAudioMgrPtr__10Z2AudioMgr@l
/* 80C8D528  80 63 00 00 */	lwz r3, 0(r3)
/* 80C8D52C  38 81 00 0C */	addi r4, r1, 0xc
/* 80C8D530  38 A1 00 10 */	addi r5, r1, 0x10
/* 80C8D534  38 C0 00 00 */	li r6, 0
/* 80C8D538  C0 3F 00 1C */	lfs f1, 0x1c(r31)
/* 80C8D53C  FC 40 08 90 */	fmr f2, f1
/* 80C8D540  C0 7F 00 20 */	lfs f3, 0x20(r31)
/* 80C8D544  FC 80 18 90 */	fmr f4, f3
/* 80C8D548  39 00 00 00 */	li r8, 0
/* 80C8D54C  4B 61 EF C0 */	b seStartLevel__7Z2SeMgrF10JAISoundIDPC3VecUlScffffUc
/* 80C8D550  C0 1F 00 0C */	lfs f0, 0xc(r31)
/* 80C8D554  FC 00 F8 00 */	fcmpu cr0, f0, f31
/* 80C8D558  40 82 00 58 */	bne lbl_80C8D5B0
/* 80C8D55C  88 1E 04 E2 */	lbz r0, 0x4e2(r30)
/* 80C8D560  7C 03 07 74 */	extsb r3, r0
/* 80C8D564  4B 39 FB 08 */	b dComIfGp_getReverb__Fi
/* 80C8D568  7C 67 1B 78 */	mr r7, r3
/* 80C8D56C  3C 60 00 08 */	lis r3, 0x0008 /* 0x000802B3@ha */
/* 80C8D570  38 03 02 B3 */	addi r0, r3, 0x02B3 /* 0x000802B3@l */
/* 80C8D574  90 01 00 08 */	stw r0, 8(r1)
/* 80C8D578  3C 60 80 45 */	lis r3, mAudioMgrPtr__10Z2AudioMgr@ha
/* 80C8D57C  38 63 13 68 */	addi r3, r3, mAudioMgrPtr__10Z2AudioMgr@l
/* 80C8D580  80 63 00 00 */	lwz r3, 0(r3)
/* 80C8D584  38 81 00 08 */	addi r4, r1, 8
/* 80C8D588  38 A1 00 10 */	addi r5, r1, 0x10
/* 80C8D58C  38 C0 00 00 */	li r6, 0
/* 80C8D590  C0 3F 00 1C */	lfs f1, 0x1c(r31)
/* 80C8D594  FC 40 08 90 */	fmr f2, f1
/* 80C8D598  C0 7F 00 20 */	lfs f3, 0x20(r31)
/* 80C8D59C  FC 80 18 90 */	fmr f4, f3
/* 80C8D5A0  39 00 00 00 */	li r8, 0
/* 80C8D5A4  4B 61 E3 E0 */	b seStart__7Z2SeMgrF10JAISoundIDPC3VecUlScffffUc
/* 80C8D5A8  7F C3 F3 78 */	mr r3, r30
/* 80C8D5AC  4B FF FD 11 */	bl init_modeWait__16daLv9SwShutter_cFv
lbl_80C8D5B0:
/* 80C8D5B0  E3 E1 00 38 */	psq_l f31, 56(r1), 0, 0 /* qr0 */
/* 80C8D5B4  CB E1 00 30 */	lfd f31, 0x30(r1)
/* 80C8D5B8  83 E1 00 2C */	lwz r31, 0x2c(r1)
/* 80C8D5BC  83 C1 00 28 */	lwz r30, 0x28(r1)
/* 80C8D5C0  80 01 00 44 */	lwz r0, 0x44(r1)
/* 80C8D5C4  7C 08 03 A6 */	mtlr r0
/* 80C8D5C8  38 21 00 40 */	addi r1, r1, 0x40
/* 80C8D5CC  4E 80 00 20 */	blr 
