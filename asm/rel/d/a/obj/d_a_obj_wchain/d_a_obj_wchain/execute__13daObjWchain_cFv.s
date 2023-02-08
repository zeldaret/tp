lbl_80D310AC:
/* 80D310AC  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80D310B0  7C 08 02 A6 */	mflr r0
/* 80D310B4  90 01 00 24 */	stw r0, 0x24(r1)
/* 80D310B8  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 80D310BC  93 C1 00 18 */	stw r30, 0x18(r1)
/* 80D310C0  7C 7F 1B 78 */	mr r31, r3
/* 80D310C4  3C 60 80 D3 */	lis r3, l_arcName@ha /* 0x80D31924@ha */
/* 80D310C8  3B C3 19 24 */	addi r30, r3, l_arcName@l /* 0x80D31924@l */
/* 80D310CC  88 7F 07 77 */	lbz r3, 0x777(r31)
/* 80D310D0  28 03 00 00 */	cmplwi r3, 0
/* 80D310D4  40 82 00 60 */	bne lbl_80D31134
/* 80D310D8  88 1F 07 74 */	lbz r0, 0x774(r31)
/* 80D310DC  28 00 00 00 */	cmplwi r0, 0
/* 80D310E0  41 82 00 54 */	beq lbl_80D31134
/* 80D310E4  88 1F 04 E2 */	lbz r0, 0x4e2(r31)
/* 80D310E8  7C 03 07 74 */	extsb r3, r0
/* 80D310EC  4B 2F BF 81 */	bl dComIfGp_getReverb__Fi
/* 80D310F0  7C 67 1B 78 */	mr r7, r3
/* 80D310F4  3C 60 00 08 */	lis r3, 0x0008 /* 0x00080096@ha */
/* 80D310F8  38 03 00 96 */	addi r0, r3, 0x0096 /* 0x00080096@l */
/* 80D310FC  90 01 00 14 */	stw r0, 0x14(r1)
/* 80D31100  3C 60 80 45 */	lis r3, mAudioMgrPtr__10Z2AudioMgr@ha /* 0x80451368@ha */
/* 80D31104  38 63 13 68 */	addi r3, r3, mAudioMgrPtr__10Z2AudioMgr@l /* 0x80451368@l */
/* 80D31108  80 63 00 00 */	lwz r3, 0(r3)
/* 80D3110C  38 81 00 14 */	addi r4, r1, 0x14
/* 80D31110  38 BF 04 D0 */	addi r5, r31, 0x4d0
/* 80D31114  38 C0 00 00 */	li r6, 0
/* 80D31118  C0 3E 00 94 */	lfs f1, 0x94(r30)
/* 80D3111C  FC 40 08 90 */	fmr f2, f1
/* 80D31120  C0 7E 00 B0 */	lfs f3, 0xb0(r30)
/* 80D31124  FC 80 18 90 */	fmr f4, f3
/* 80D31128  39 00 00 00 */	li r8, 0
/* 80D3112C  4B 57 A8 59 */	bl seStart__7Z2SeMgrF10JAISoundIDPC3VecUlScffffUc
/* 80D31130  48 00 00 64 */	b lbl_80D31194
lbl_80D31134:
/* 80D31134  28 03 00 00 */	cmplwi r3, 0
/* 80D31138  41 82 00 5C */	beq lbl_80D31194
/* 80D3113C  88 1F 07 74 */	lbz r0, 0x774(r31)
/* 80D31140  28 00 00 00 */	cmplwi r0, 0
/* 80D31144  40 82 00 50 */	bne lbl_80D31194
/* 80D31148  88 1F 04 E2 */	lbz r0, 0x4e2(r31)
/* 80D3114C  7C 03 07 74 */	extsb r3, r0
/* 80D31150  4B 2F BF 1D */	bl dComIfGp_getReverb__Fi
/* 80D31154  7C 67 1B 78 */	mr r7, r3
/* 80D31158  3C 60 00 08 */	lis r3, 0x0008 /* 0x00080096@ha */
/* 80D3115C  38 03 00 96 */	addi r0, r3, 0x0096 /* 0x00080096@l */
/* 80D31160  90 01 00 10 */	stw r0, 0x10(r1)
/* 80D31164  3C 60 80 45 */	lis r3, mAudioMgrPtr__10Z2AudioMgr@ha /* 0x80451368@ha */
/* 80D31168  38 63 13 68 */	addi r3, r3, mAudioMgrPtr__10Z2AudioMgr@l /* 0x80451368@l */
/* 80D3116C  80 63 00 00 */	lwz r3, 0(r3)
/* 80D31170  38 81 00 10 */	addi r4, r1, 0x10
/* 80D31174  38 BF 04 D0 */	addi r5, r31, 0x4d0
/* 80D31178  38 C0 00 00 */	li r6, 0
/* 80D3117C  C0 3E 00 94 */	lfs f1, 0x94(r30)
/* 80D31180  FC 40 08 90 */	fmr f2, f1
/* 80D31184  C0 7E 00 B0 */	lfs f3, 0xb0(r30)
/* 80D31188  FC 80 18 90 */	fmr f4, f3
/* 80D3118C  39 00 00 00 */	li r8, 0
/* 80D31190  4B 57 A7 F5 */	bl seStart__7Z2SeMgrF10JAISoundIDPC3VecUlScffffUc
lbl_80D31194:
/* 80D31194  88 1F 07 74 */	lbz r0, 0x774(r31)
/* 80D31198  28 00 00 00 */	cmplwi r0, 0
/* 80D3119C  40 82 00 0C */	bne lbl_80D311A8
/* 80D311A0  38 00 00 00 */	li r0, 0
/* 80D311A4  98 1F 07 7B */	stb r0, 0x77b(r31)
lbl_80D311A8:
/* 80D311A8  38 7F 04 A8 */	addi r3, r31, 0x4a8
/* 80D311AC  4B 2E CB 71 */	bl roofCheck__11fopAcM_rc_cFPC4cXyz
/* 80D311B0  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80D311B4  41 82 00 44 */	beq lbl_80D311F8
/* 80D311B8  3C 60 80 45 */	lis r3, mRoofY__11fopAcM_rc_c@ha /* 0x80450CD4@ha */
/* 80D311BC  C0 03 0C D4 */	lfs f0, mRoofY__11fopAcM_rc_c@l(r3)  /* 0x80450CD4@l */
/* 80D311C0  D0 1F 07 AC */	stfs f0, 0x7ac(r31)
/* 80D311C4  C0 1F 07 B4 */	lfs f0, 0x7b4(r31)
/* 80D311C8  C0 3F 07 AC */	lfs f1, 0x7ac(r31)
/* 80D311CC  FC 00 08 40 */	fcmpo cr0, f0, f1
/* 80D311D0  40 81 00 18 */	ble lbl_80D311E8
/* 80D311D4  D0 3F 07 B4 */	stfs f1, 0x7b4(r31)
/* 80D311D8  C0 3F 07 B4 */	lfs f1, 0x7b4(r31)
/* 80D311DC  C0 1F 04 AC */	lfs f0, 0x4ac(r31)
/* 80D311E0  EC 01 00 28 */	fsubs f0, f1, f0
/* 80D311E4  D0 1F 07 A4 */	stfs f0, 0x7a4(r31)
lbl_80D311E8:
/* 80D311E8  C0 3F 07 AC */	lfs f1, 0x7ac(r31)
/* 80D311EC  C0 1E 00 24 */	lfs f0, 0x24(r30)
/* 80D311F0  EC 01 00 2A */	fadds f0, f1, f0
/* 80D311F4  D0 1F 07 AC */	stfs f0, 0x7ac(r31)
lbl_80D311F8:
/* 80D311F8  7F E3 FB 78 */	mr r3, r31
/* 80D311FC  4B FF F6 11 */	bl setChainPos__13daObjWchain_cFv
/* 80D31200  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80D31204  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80D31208  80 63 5D B4 */	lwz r3, 0x5db4(r3)
/* 80D3120C  80 03 05 74 */	lwz r0, 0x574(r3)
/* 80D31210  54 00 01 8D */	rlwinm. r0, r0, 0, 6, 6
/* 80D31214  41 82 00 30 */	beq lbl_80D31244
/* 80D31218  88 1F 07 74 */	lbz r0, 0x774(r31)
/* 80D3121C  28 00 00 00 */	cmplwi r0, 0
/* 80D31220  40 82 00 24 */	bne lbl_80D31244
/* 80D31224  C0 3F 07 A0 */	lfs f1, 0x7a0(r31)
/* 80D31228  C0 1E 00 B4 */	lfs f0, 0xb4(r30)
/* 80D3122C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80D31230  40 80 00 14 */	bge lbl_80D31244
/* 80D31234  80 1F 05 5C */	lwz r0, 0x55c(r31)
/* 80D31238  60 00 00 01 */	ori r0, r0, 1
/* 80D3123C  90 1F 05 5C */	stw r0, 0x55c(r31)
/* 80D31240  48 00 00 10 */	b lbl_80D31250
lbl_80D31244:
/* 80D31244  80 1F 05 5C */	lwz r0, 0x55c(r31)
/* 80D31248  54 00 00 3C */	rlwinm r0, r0, 0, 0, 0x1e
/* 80D3124C  90 1F 05 5C */	stw r0, 0x55c(r31)
lbl_80D31250:
/* 80D31250  C0 1F 04 D0 */	lfs f0, 0x4d0(r31)
/* 80D31254  D0 1F 05 50 */	stfs f0, 0x550(r31)
/* 80D31258  C0 1F 04 D4 */	lfs f0, 0x4d4(r31)
/* 80D3125C  D0 1F 05 54 */	stfs f0, 0x554(r31)
/* 80D31260  C0 1F 04 D8 */	lfs f0, 0x4d8(r31)
/* 80D31264  D0 1F 05 58 */	stfs f0, 0x558(r31)
/* 80D31268  C0 3F 05 54 */	lfs f1, 0x554(r31)
/* 80D3126C  C0 1E 00 B8 */	lfs f0, 0xb8(r30)
/* 80D31270  EC 01 00 2A */	fadds f0, f1, f0
/* 80D31274  D0 1F 05 54 */	stfs f0, 0x554(r31)
/* 80D31278  7F E3 FB 78 */	mr r3, r31
/* 80D3127C  4B FF F2 B9 */	bl setMatrix__13daObjWchain_cFv
/* 80D31280  88 1F 07 75 */	lbz r0, 0x775(r31)
/* 80D31284  28 00 00 00 */	cmplwi r0, 0
/* 80D31288  41 82 00 E8 */	beq lbl_80D31370
/* 80D3128C  88 1F 04 E2 */	lbz r0, 0x4e2(r31)
/* 80D31290  7C 03 07 74 */	extsb r3, r0
/* 80D31294  4B 2F BD D9 */	bl dComIfGp_getReverb__Fi
/* 80D31298  7C 67 1B 78 */	mr r7, r3
/* 80D3129C  3C 60 00 08 */	lis r3, 0x0008 /* 0x00080098@ha */
/* 80D312A0  38 03 00 98 */	addi r0, r3, 0x0098 /* 0x00080098@l */
/* 80D312A4  90 01 00 0C */	stw r0, 0xc(r1)
/* 80D312A8  3C 60 80 45 */	lis r3, mAudioMgrPtr__10Z2AudioMgr@ha /* 0x80451368@ha */
/* 80D312AC  38 63 13 68 */	addi r3, r3, mAudioMgrPtr__10Z2AudioMgr@l /* 0x80451368@l */
/* 80D312B0  80 63 00 00 */	lwz r3, 0(r3)
/* 80D312B4  38 81 00 0C */	addi r4, r1, 0xc
/* 80D312B8  38 BF 04 D0 */	addi r5, r31, 0x4d0
/* 80D312BC  38 C0 00 00 */	li r6, 0
/* 80D312C0  C0 3E 00 94 */	lfs f1, 0x94(r30)
/* 80D312C4  FC 40 08 90 */	fmr f2, f1
/* 80D312C8  C0 7E 00 B0 */	lfs f3, 0xb0(r30)
/* 80D312CC  FC 80 18 90 */	fmr f4, f3
/* 80D312D0  39 00 00 00 */	li r8, 0
/* 80D312D4  4B 57 A6 B1 */	bl seStart__7Z2SeMgrF10JAISoundIDPC3VecUlScffffUc
/* 80D312D8  38 00 00 00 */	li r0, 0
/* 80D312DC  98 1F 07 75 */	stb r0, 0x775(r31)
/* 80D312E0  88 1F 07 79 */	lbz r0, 0x779(r31)
/* 80D312E4  28 00 00 00 */	cmplwi r0, 0
/* 80D312E8  41 82 00 64 */	beq lbl_80D3134C
/* 80D312EC  38 00 00 01 */	li r0, 1
/* 80D312F0  98 1F 07 7A */	stb r0, 0x77a(r31)
/* 80D312F4  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80D312F8  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80D312FC  88 9F 07 78 */	lbz r4, 0x778(r31)
/* 80D31300  88 1F 04 BA */	lbz r0, 0x4ba(r31)
/* 80D31304  7C 05 07 74 */	extsb r5, r0
/* 80D31308  4B 30 40 59 */	bl isSwitch__10dSv_info_cCFii
/* 80D3130C  2C 03 00 00 */	cmpwi r3, 0
/* 80D31310  41 82 00 20 */	beq lbl_80D31330
/* 80D31314  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80D31318  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80D3131C  88 9F 07 78 */	lbz r4, 0x778(r31)
/* 80D31320  88 1F 04 BA */	lbz r0, 0x4ba(r31)
/* 80D31324  7C 05 07 74 */	extsb r5, r0
/* 80D31328  4B 30 3F 89 */	bl offSwitch__10dSv_info_cFii
/* 80D3132C  48 00 00 38 */	b lbl_80D31364
lbl_80D31330:
/* 80D31330  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80D31334  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80D31338  88 9F 07 78 */	lbz r4, 0x778(r31)
/* 80D3133C  88 1F 04 BA */	lbz r0, 0x4ba(r31)
/* 80D31340  7C 05 07 74 */	extsb r5, r0
/* 80D31344  4B 30 3E BD */	bl onSwitch__10dSv_info_cFii
/* 80D31348  48 00 00 1C */	b lbl_80D31364
lbl_80D3134C:
/* 80D3134C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80D31350  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80D31354  88 9F 07 78 */	lbz r4, 0x778(r31)
/* 80D31358  88 1F 04 BA */	lbz r0, 0x4ba(r31)
/* 80D3135C  7C 05 07 74 */	extsb r5, r0
/* 80D31360  4B 30 3E A1 */	bl onSwitch__10dSv_info_cFii
lbl_80D31364:
/* 80D31364  38 00 00 14 */	li r0, 0x14
/* 80D31368  B0 1F 07 7E */	sth r0, 0x77e(r31)
/* 80D3136C  48 00 00 68 */	b lbl_80D313D4
lbl_80D31370:
/* 80D31370  88 1F 07 74 */	lbz r0, 0x774(r31)
/* 80D31374  28 00 00 00 */	cmplwi r0, 0
/* 80D31378  41 82 00 5C */	beq lbl_80D313D4
/* 80D3137C  88 1F 07 7B */	lbz r0, 0x77b(r31)
/* 80D31380  28 00 00 00 */	cmplwi r0, 0
/* 80D31384  40 82 00 50 */	bne lbl_80D313D4
/* 80D31388  88 1F 04 E2 */	lbz r0, 0x4e2(r31)
/* 80D3138C  7C 03 07 74 */	extsb r3, r0
/* 80D31390  4B 2F BC DD */	bl dComIfGp_getReverb__Fi
/* 80D31394  7C 67 1B 78 */	mr r7, r3
/* 80D31398  3C 60 00 08 */	lis r3, 0x0008 /* 0x00080097@ha */
/* 80D3139C  38 03 00 97 */	addi r0, r3, 0x0097 /* 0x00080097@l */
/* 80D313A0  90 01 00 08 */	stw r0, 8(r1)
/* 80D313A4  3C 60 80 45 */	lis r3, mAudioMgrPtr__10Z2AudioMgr@ha /* 0x80451368@ha */
/* 80D313A8  38 63 13 68 */	addi r3, r3, mAudioMgrPtr__10Z2AudioMgr@l /* 0x80451368@l */
/* 80D313AC  80 63 00 00 */	lwz r3, 0(r3)
/* 80D313B0  38 81 00 08 */	addi r4, r1, 8
/* 80D313B4  38 BF 04 D0 */	addi r5, r31, 0x4d0
/* 80D313B8  38 C0 00 00 */	li r6, 0
/* 80D313BC  C0 3E 00 94 */	lfs f1, 0x94(r30)
/* 80D313C0  FC 40 08 90 */	fmr f2, f1
/* 80D313C4  C0 7E 00 B0 */	lfs f3, 0xb0(r30)
/* 80D313C8  FC 80 18 90 */	fmr f4, f3
/* 80D313CC  39 00 00 00 */	li r8, 0
/* 80D313D0  4B 57 B1 3D */	bl seStartLevel__7Z2SeMgrF10JAISoundIDPC3VecUlScffffUc
lbl_80D313D4:
/* 80D313D4  88 1F 07 74 */	lbz r0, 0x774(r31)
/* 80D313D8  98 1F 07 77 */	stb r0, 0x777(r31)
/* 80D313DC  38 60 00 01 */	li r3, 1
/* 80D313E0  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 80D313E4  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 80D313E8  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80D313EC  7C 08 03 A6 */	mtlr r0
/* 80D313F0  38 21 00 20 */	addi r1, r1, 0x20
/* 80D313F4  4E 80 00 20 */	blr 
