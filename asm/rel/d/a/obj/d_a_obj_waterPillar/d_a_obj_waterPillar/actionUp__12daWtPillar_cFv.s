lbl_80D2D850:
/* 80D2D850  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 80D2D854  7C 08 02 A6 */	mflr r0
/* 80D2D858  90 01 00 34 */	stw r0, 0x34(r1)
/* 80D2D85C  DB E1 00 20 */	stfd f31, 0x20(r1)
/* 80D2D860  F3 E1 00 28 */	psq_st f31, 40(r1), 0, 0 /* qr0 */
/* 80D2D864  39 61 00 20 */	addi r11, r1, 0x20
/* 80D2D868  4B 63 49 75 */	bl _savegpr_29
/* 80D2D86C  7C 7D 1B 78 */	mr r29, r3
/* 80D2D870  3C 60 80 D3 */	lis r3, lit_3645@ha /* 0x80D2E770@ha */
/* 80D2D874  3B E3 E7 70 */	addi r31, r3, lit_3645@l /* 0x80D2E770@l */
/* 80D2D878  C0 3D 0B 04 */	lfs f1, 0xb04(r29)
/* 80D2D87C  38 7D 05 2C */	addi r3, r29, 0x52c
/* 80D2D880  C0 1F 00 AC */	lfs f0, 0xac(r31)
/* 80D2D884  EC 41 00 24 */	fdivs f2, f1, f0
/* 80D2D888  4B 54 2E B9 */	bl cLib_chaseF__FPfff
/* 80D2D88C  38 7D 0A E0 */	addi r3, r29, 0xae0
/* 80D2D890  C0 3D 0B 14 */	lfs f1, 0xb14(r29)
/* 80D2D894  C0 1D 0B 18 */	lfs f0, 0xb18(r29)
/* 80D2D898  EC 21 00 2A */	fadds f1, f1, f0
/* 80D2D89C  C0 5F 00 00 */	lfs f2, 0(r31)
/* 80D2D8A0  C0 7D 05 2C */	lfs f3, 0x52c(r29)
/* 80D2D8A4  C0 9F 00 C0 */	lfs f4, 0xc0(r31)
/* 80D2D8A8  4B 54 20 D5 */	bl cLib_addCalc__FPfffff
/* 80D2D8AC  FF E0 08 90 */	fmr f31, f1
/* 80D2D8B0  88 1D 04 E2 */	lbz r0, 0x4e2(r29)
/* 80D2D8B4  7C 03 07 74 */	extsb r3, r0
/* 80D2D8B8  4B 2F F7 B5 */	bl dComIfGp_getReverb__Fi
/* 80D2D8BC  7C 7E 1B 78 */	mr r30, r3
/* 80D2D8C0  C0 3D 0B 14 */	lfs f1, 0xb14(r29)
/* 80D2D8C4  C0 1D 0B 18 */	lfs f0, 0xb18(r29)
/* 80D2D8C8  EC 21 00 2A */	fadds f1, f1, f0
/* 80D2D8CC  4B 63 47 E1 */	bl __cvt_fp2unsigned
/* 80D2D8D0  7C 66 1B 78 */	mr r6, r3
/* 80D2D8D4  3C 60 00 08 */	lis r3, 0x0008 /* 0x00080184@ha */
/* 80D2D8D8  38 03 01 84 */	addi r0, r3, 0x0184 /* 0x00080184@l */
/* 80D2D8DC  90 01 00 08 */	stw r0, 8(r1)
/* 80D2D8E0  3C 60 80 45 */	lis r3, mAudioMgrPtr__10Z2AudioMgr@ha /* 0x80451368@ha */
/* 80D2D8E4  38 63 13 68 */	addi r3, r3, mAudioMgrPtr__10Z2AudioMgr@l /* 0x80451368@l */
/* 80D2D8E8  80 63 00 00 */	lwz r3, 0(r3)
/* 80D2D8EC  38 81 00 08 */	addi r4, r1, 8
/* 80D2D8F0  38 BD 0B 6C */	addi r5, r29, 0xb6c
/* 80D2D8F4  7F C7 F3 78 */	mr r7, r30
/* 80D2D8F8  C0 3F 00 00 */	lfs f1, 0(r31)
/* 80D2D8FC  FC 40 08 90 */	fmr f2, f1
/* 80D2D900  C0 7F 00 B4 */	lfs f3, 0xb4(r31)
/* 80D2D904  FC 80 18 90 */	fmr f4, f3
/* 80D2D908  39 00 00 00 */	li r8, 0
/* 80D2D90C  4B 57 EC 01 */	bl seStartLevel__7Z2SeMgrF10JAISoundIDPC3VecUlScffffUc
/* 80D2D910  C0 1F 00 90 */	lfs f0, 0x90(r31)
/* 80D2D914  FC 00 F8 00 */	fcmpu cr0, f0, f31
/* 80D2D918  40 82 00 24 */	bne lbl_80D2D93C
/* 80D2D91C  88 1D 0B 09 */	lbz r0, 0xb09(r29)
/* 80D2D920  28 00 00 00 */	cmplwi r0, 0
/* 80D2D924  40 82 00 10 */	bne lbl_80D2D934
/* 80D2D928  7F A3 EB 78 */	mr r3, r29
/* 80D2D92C  48 00 02 3D */	bl actionRockWaitInit__12daWtPillar_cFv
/* 80D2D930  48 00 00 0C */	b lbl_80D2D93C
lbl_80D2D934:
/* 80D2D934  7F A3 EB 78 */	mr r3, r29
/* 80D2D938  48 00 00 25 */	bl actionUpWaitInit__12daWtPillar_cFv
lbl_80D2D93C:
/* 80D2D93C  E3 E1 00 28 */	psq_l f31, 40(r1), 0, 0 /* qr0 */
/* 80D2D940  CB E1 00 20 */	lfd f31, 0x20(r1)
/* 80D2D944  39 61 00 20 */	addi r11, r1, 0x20
/* 80D2D948  4B 63 48 E1 */	bl _restgpr_29
/* 80D2D94C  80 01 00 34 */	lwz r0, 0x34(r1)
/* 80D2D950  7C 08 03 A6 */	mtlr r0
/* 80D2D954  38 21 00 30 */	addi r1, r1, 0x30
/* 80D2D958  4E 80 00 20 */	blr 
