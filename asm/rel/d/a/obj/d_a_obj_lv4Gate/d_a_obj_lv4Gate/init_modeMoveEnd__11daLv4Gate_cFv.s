lbl_80C5F0C4:
/* 80C5F0C4  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 80C5F0C8  7C 08 02 A6 */	mflr r0
/* 80C5F0CC  90 01 00 34 */	stw r0, 0x34(r1)
/* 80C5F0D0  93 E1 00 2C */	stw r31, 0x2c(r1)
/* 80C5F0D4  93 C1 00 28 */	stw r30, 0x28(r1)
/* 80C5F0D8  7C 7F 1B 78 */	mr r31, r3
/* 80C5F0DC  3C 60 80 C6 */	lis r3, lit_3625@ha
/* 80C5F0E0  3B C3 F3 F4 */	addi r30, r3, lit_3625@l
/* 80C5F0E4  88 1F 05 AD */	lbz r0, 0x5ad(r31)
/* 80C5F0E8  28 00 00 00 */	cmplwi r0, 0
/* 80C5F0EC  40 82 00 D8 */	bne lbl_80C5F1C4
/* 80C5F0F0  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80C5F0F4  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 80C5F0F8  A8 9F 04 E4 */	lha r4, 0x4e4(r31)
/* 80C5F0FC  A8 BF 04 E6 */	lha r5, 0x4e6(r31)
/* 80C5F100  A8 DF 04 E8 */	lha r6, 0x4e8(r31)
/* 80C5F104  4B 3A D1 04 */	b mDoMtx_ZXYrotS__FPA4_fsss
/* 80C5F108  C0 1F 05 B0 */	lfs f0, 0x5b0(r31)
/* 80C5F10C  D0 01 00 18 */	stfs f0, 0x18(r1)
/* 80C5F110  C0 1E 00 04 */	lfs f0, 4(r30)
/* 80C5F114  D0 01 00 1C */	stfs f0, 0x1c(r1)
/* 80C5F118  D0 01 00 20 */	stfs f0, 0x20(r1)
/* 80C5F11C  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80C5F120  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 80C5F124  38 81 00 18 */	addi r4, r1, 0x18
/* 80C5F128  7C 85 23 78 */	mr r5, r4
/* 80C5F12C  4B 6E 7C 40 */	b PSMTXMultVec
/* 80C5F130  38 61 00 18 */	addi r3, r1, 0x18
/* 80C5F134  38 9F 04 D0 */	addi r4, r31, 0x4d0
/* 80C5F138  7C 65 1B 78 */	mr r5, r3
/* 80C5F13C  4B 6E 7F 54 */	b PSVECAdd
/* 80C5F140  88 1F 04 E2 */	lbz r0, 0x4e2(r31)
/* 80C5F144  7C 03 07 74 */	extsb r3, r0
/* 80C5F148  4B 3C DF 24 */	b dComIfGp_getReverb__Fi
/* 80C5F14C  7C 67 1B 78 */	mr r7, r3
/* 80C5F150  3C 60 00 08 */	lis r3, 0x0008 /* 0x0008012C@ha */
/* 80C5F154  38 03 01 2C */	addi r0, r3, 0x012C /* 0x0008012C@l */
/* 80C5F158  90 01 00 08 */	stw r0, 8(r1)
/* 80C5F15C  3C 60 80 45 */	lis r3, mAudioMgrPtr__10Z2AudioMgr@ha
/* 80C5F160  38 63 13 68 */	addi r3, r3, mAudioMgrPtr__10Z2AudioMgr@l
/* 80C5F164  80 63 00 00 */	lwz r3, 0(r3)
/* 80C5F168  38 81 00 08 */	addi r4, r1, 8
/* 80C5F16C  38 A1 00 18 */	addi r5, r1, 0x18
/* 80C5F170  38 C0 00 00 */	li r6, 0
/* 80C5F174  C0 3E 00 10 */	lfs f1, 0x10(r30)
/* 80C5F178  FC 40 08 90 */	fmr f2, f1
/* 80C5F17C  C0 7E 00 14 */	lfs f3, 0x14(r30)
/* 80C5F180  FC 80 18 90 */	fmr f4, f3
/* 80C5F184  39 00 00 00 */	li r8, 0
/* 80C5F188  4B 64 C7 FC */	b seStart__7Z2SeMgrF10JAISoundIDPC3VecUlScffffUc
/* 80C5F18C  C0 3E 00 04 */	lfs f1, 4(r30)
/* 80C5F190  D0 21 00 0C */	stfs f1, 0xc(r1)
/* 80C5F194  C0 1E 00 10 */	lfs f0, 0x10(r30)
/* 80C5F198  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 80C5F19C  D0 21 00 14 */	stfs f1, 0x14(r1)
/* 80C5F1A0  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80C5F1A4  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80C5F1A8  38 63 5B D4 */	addi r3, r3, 0x5bd4
/* 80C5F1AC  3C 80 80 C6 */	lis r4, l_HIO@ha
/* 80C5F1B0  38 84 F5 2C */	addi r4, r4, l_HIO@l
/* 80C5F1B4  88 84 00 08 */	lbz r4, 8(r4)
/* 80C5F1B8  38 A0 00 0F */	li r5, 0xf
/* 80C5F1BC  38 C1 00 0C */	addi r6, r1, 0xc
/* 80C5F1C0  4B 41 08 64 */	b StartShock__12dVibration_cFii4cXyz
lbl_80C5F1C4:
/* 80C5F1C4  38 00 00 02 */	li r0, 2
/* 80C5F1C8  98 1F 05 AC */	stb r0, 0x5ac(r31)
/* 80C5F1CC  83 E1 00 2C */	lwz r31, 0x2c(r1)
/* 80C5F1D0  83 C1 00 28 */	lwz r30, 0x28(r1)
/* 80C5F1D4  80 01 00 34 */	lwz r0, 0x34(r1)
/* 80C5F1D8  7C 08 03 A6 */	mtlr r0
/* 80C5F1DC  38 21 00 30 */	addi r1, r1, 0x30
/* 80C5F1E0  4E 80 00 20 */	blr 
