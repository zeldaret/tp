lbl_80C760FC:
/* 80C760FC  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 80C76100  7C 08 02 A6 */	mflr r0
/* 80C76104  90 01 00 44 */	stw r0, 0x44(r1)
/* 80C76108  DB E1 00 30 */	stfd f31, 0x30(r1)
/* 80C7610C  F3 E1 00 38 */	psq_st f31, 56(r1), 0, 0 /* qr0 */
/* 80C76110  93 E1 00 2C */	stw r31, 0x2c(r1)
/* 80C76114  93 C1 00 28 */	stw r30, 0x28(r1)
/* 80C76118  7C 7E 1B 78 */	mr r30, r3
/* 80C7611C  3C 60 80 C7 */	lis r3, lit_3627@ha /* 0x80C76630@ha */
/* 80C76120  3B E3 66 30 */	addi r31, r3, lit_3627@l /* 0x80C76630@l */
/* 80C76124  38 7E 05 E4 */	addi r3, r30, 0x5e4
/* 80C76128  3C 80 80 C7 */	lis r4, l_HIO@ha /* 0x80C767E4@ha */
/* 80C7612C  38 84 67 E4 */	addi r4, r4, l_HIO@l /* 0x80C767E4@l */
/* 80C76130  C0 24 00 10 */	lfs f1, 0x10(r4)
/* 80C76134  C0 5F 00 20 */	lfs f2, 0x20(r31)
/* 80C76138  C0 64 00 04 */	lfs f3, 4(r4)
/* 80C7613C  C0 9F 00 24 */	lfs f4, 0x24(r31)
/* 80C76140  4B 5F 98 3D */	bl cLib_addCalc__FPfffff
/* 80C76144  FF E0 08 90 */	fmr f31, f1
/* 80C76148  88 1E 04 E2 */	lbz r0, 0x4e2(r30)
/* 80C7614C  7C 03 07 74 */	extsb r3, r0
/* 80C76150  4B 3B 6F 1D */	bl dComIfGp_getReverb__Fi
/* 80C76154  7C 67 1B 78 */	mr r7, r3
/* 80C76158  3C 60 00 08 */	lis r3, 0x0008 /* 0x000801EF@ha */
/* 80C7615C  38 03 01 EF */	addi r0, r3, 0x01EF /* 0x000801EF@l */
/* 80C76160  90 01 00 0C */	stw r0, 0xc(r1)
/* 80C76164  3C 60 80 45 */	lis r3, mAudioMgrPtr__10Z2AudioMgr@ha /* 0x80451368@ha */
/* 80C76168  38 63 13 68 */	addi r3, r3, mAudioMgrPtr__10Z2AudioMgr@l /* 0x80451368@l */
/* 80C7616C  80 63 00 00 */	lwz r3, 0(r3)
/* 80C76170  38 81 00 0C */	addi r4, r1, 0xc
/* 80C76174  38 BE 04 D0 */	addi r5, r30, 0x4d0
/* 80C76178  38 C0 00 00 */	li r6, 0
/* 80C7617C  C0 3F 00 18 */	lfs f1, 0x18(r31)
/* 80C76180  FC 40 08 90 */	fmr f2, f1
/* 80C76184  C0 7F 00 1C */	lfs f3, 0x1c(r31)
/* 80C76188  FC 80 18 90 */	fmr f4, f3
/* 80C7618C  39 00 00 00 */	li r8, 0
/* 80C76190  4B 63 63 7D */	bl seStartLevel__7Z2SeMgrF10JAISoundIDPC3VecUlScffffUc
/* 80C76194  C0 1F 00 14 */	lfs f0, 0x14(r31)
/* 80C76198  FC 00 F8 00 */	fcmpu cr0, f0, f31
/* 80C7619C  40 82 00 90 */	bne lbl_80C7622C
/* 80C761A0  88 1E 04 E2 */	lbz r0, 0x4e2(r30)
/* 80C761A4  7C 03 07 74 */	extsb r3, r0
/* 80C761A8  4B 3B 6E C5 */	bl dComIfGp_getReverb__Fi
/* 80C761AC  7C 67 1B 78 */	mr r7, r3
/* 80C761B0  3C 60 00 08 */	lis r3, 0x0008 /* 0x000801EE@ha */
/* 80C761B4  38 03 01 EE */	addi r0, r3, 0x01EE /* 0x000801EE@l */
/* 80C761B8  90 01 00 08 */	stw r0, 8(r1)
/* 80C761BC  3C 60 80 45 */	lis r3, mAudioMgrPtr__10Z2AudioMgr@ha /* 0x80451368@ha */
/* 80C761C0  38 63 13 68 */	addi r3, r3, mAudioMgrPtr__10Z2AudioMgr@l /* 0x80451368@l */
/* 80C761C4  80 63 00 00 */	lwz r3, 0(r3)
/* 80C761C8  38 81 00 08 */	addi r4, r1, 8
/* 80C761CC  38 BE 04 D0 */	addi r5, r30, 0x4d0
/* 80C761D0  38 C0 00 00 */	li r6, 0
/* 80C761D4  C0 3F 00 18 */	lfs f1, 0x18(r31)
/* 80C761D8  FC 40 08 90 */	fmr f2, f1
/* 80C761DC  C0 7F 00 1C */	lfs f3, 0x1c(r31)
/* 80C761E0  FC 80 18 90 */	fmr f4, f3
/* 80C761E4  39 00 00 00 */	li r8, 0
/* 80C761E8  4B 63 57 9D */	bl seStart__7Z2SeMgrF10JAISoundIDPC3VecUlScffffUc
/* 80C761EC  C0 3F 00 14 */	lfs f1, 0x14(r31)
/* 80C761F0  D0 21 00 10 */	stfs f1, 0x10(r1)
/* 80C761F4  C0 1F 00 18 */	lfs f0, 0x18(r31)
/* 80C761F8  D0 01 00 14 */	stfs f0, 0x14(r1)
/* 80C761FC  D0 21 00 18 */	stfs f1, 0x18(r1)
/* 80C76200  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80C76204  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80C76208  38 63 5B D4 */	addi r3, r3, 0x5bd4
/* 80C7620C  3C 80 80 C7 */	lis r4, l_HIO@ha /* 0x80C767E4@ha */
/* 80C76210  38 84 67 E4 */	addi r4, r4, l_HIO@l /* 0x80C767E4@l */
/* 80C76214  88 84 00 14 */	lbz r4, 0x14(r4)
/* 80C76218  38 A0 00 0F */	li r5, 0xf
/* 80C7621C  38 C1 00 10 */	addi r6, r1, 0x10
/* 80C76220  4B 3F 98 05 */	bl StartShock__12dVibration_cFii4cXyz
/* 80C76224  7F C3 F3 78 */	mr r3, r30
/* 80C76228  48 00 01 01 */	bl init_modeEnd__13daLv6SzGate_cFv
lbl_80C7622C:
/* 80C7622C  E3 E1 00 38 */	psq_l f31, 56(r1), 0, 0 /* qr0 */
/* 80C76230  CB E1 00 30 */	lfd f31, 0x30(r1)
/* 80C76234  83 E1 00 2C */	lwz r31, 0x2c(r1)
/* 80C76238  83 C1 00 28 */	lwz r30, 0x28(r1)
/* 80C7623C  80 01 00 44 */	lwz r0, 0x44(r1)
/* 80C76240  7C 08 03 A6 */	mtlr r0
/* 80C76244  38 21 00 40 */	addi r1, r1, 0x40
/* 80C76248  4E 80 00 20 */	blr 
