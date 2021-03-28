lbl_80C7B448:
/* 80C7B448  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 80C7B44C  7C 08 02 A6 */	mflr r0
/* 80C7B450  90 01 00 34 */	stw r0, 0x34(r1)
/* 80C7B454  DB E1 00 20 */	stfd f31, 0x20(r1)
/* 80C7B458  F3 E1 00 28 */	psq_st f31, 40(r1), 0, 0 /* qr0 */
/* 80C7B45C  39 61 00 20 */	addi r11, r1, 0x20
/* 80C7B460  4B 6E 6D 7C */	b _savegpr_29
/* 80C7B464  7C 7D 1B 78 */	mr r29, r3
/* 80C7B468  3C 60 80 C8 */	lis r3, lit_3631@ha
/* 80C7B46C  3B E3 C6 18 */	addi r31, r3, lit_3631@l
/* 80C7B470  C0 5D 05 D4 */	lfs f2, 0x5d4(r29)
/* 80C7B474  38 7D 04 D0 */	addi r3, r29, 0x4d0
/* 80C7B478  38 9D 05 B0 */	addi r4, r29, 0x5b0
/* 80C7B47C  C0 3F 00 04 */	lfs f1, 4(r31)
/* 80C7B480  FC 60 10 90 */	fmr f3, f2
/* 80C7B484  4B 5F 46 34 */	b cLib_addCalcPos__FP4cXyzRC4cXyzfff
/* 80C7B488  FF E0 08 90 */	fmr f31, f1
/* 80C7B48C  88 1D 04 E2 */	lbz r0, 0x4e2(r29)
/* 80C7B490  7C 03 07 74 */	extsb r3, r0
/* 80C7B494  4B 3B 1B D8 */	b dComIfGp_getReverb__Fi
/* 80C7B498  7C 7E 1B 78 */	mr r30, r3
/* 80C7B49C  C0 3D 05 D4 */	lfs f1, 0x5d4(r29)
/* 80C7B4A0  4B 6E 6C 0C */	b __cvt_fp2unsigned
/* 80C7B4A4  7C 66 1B 78 */	mr r6, r3
/* 80C7B4A8  3C 60 00 08 */	lis r3, 0x0008 /* 0x000801A9@ha */
/* 80C7B4AC  38 03 01 A9 */	addi r0, r3, 0x01A9 /* 0x000801A9@l */
/* 80C7B4B0  90 01 00 08 */	stw r0, 8(r1)
/* 80C7B4B4  3C 60 80 45 */	lis r3, mAudioMgrPtr__10Z2AudioMgr@ha
/* 80C7B4B8  38 63 13 68 */	addi r3, r3, mAudioMgrPtr__10Z2AudioMgr@l
/* 80C7B4BC  80 63 00 00 */	lwz r3, 0(r3)
/* 80C7B4C0  38 81 00 08 */	addi r4, r1, 8
/* 80C7B4C4  38 BD 04 D0 */	addi r5, r29, 0x4d0
/* 80C7B4C8  7F C7 F3 78 */	mr r7, r30
/* 80C7B4CC  C0 3F 00 04 */	lfs f1, 4(r31)
/* 80C7B4D0  FC 40 08 90 */	fmr f2, f1
/* 80C7B4D4  C0 7F 01 10 */	lfs f3, 0x110(r31)
/* 80C7B4D8  FC 80 18 90 */	fmr f4, f3
/* 80C7B4DC  39 00 00 00 */	li r8, 0
/* 80C7B4E0  4B 63 10 2C */	b seStartLevel__7Z2SeMgrF10JAISoundIDPC3VecUlScffffUc
/* 80C7B4E4  C0 1F 00 D0 */	lfs f0, 0xd0(r31)
/* 80C7B4E8  FC 00 F8 00 */	fcmpu cr0, f0, f31
/* 80C7B4EC  40 82 00 0C */	bne lbl_80C7B4F8
/* 80C7B4F0  7F A3 EB 78 */	mr r3, r29
/* 80C7B4F4  48 00 00 25 */	bl init_modeWaitInit__15daLv6TogeTrap_cFv
lbl_80C7B4F8:
/* 80C7B4F8  E3 E1 00 28 */	psq_l f31, 40(r1), 0, 0 /* qr0 */
/* 80C7B4FC  CB E1 00 20 */	lfd f31, 0x20(r1)
/* 80C7B500  39 61 00 20 */	addi r11, r1, 0x20
/* 80C7B504  4B 6E 6D 24 */	b _restgpr_29
/* 80C7B508  80 01 00 34 */	lwz r0, 0x34(r1)
/* 80C7B50C  7C 08 03 A6 */	mtlr r0
/* 80C7B510  38 21 00 30 */	addi r1, r1, 0x30
/* 80C7B514  4E 80 00 20 */	blr 
