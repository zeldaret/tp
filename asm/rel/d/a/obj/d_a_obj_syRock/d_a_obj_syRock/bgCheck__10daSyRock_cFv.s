lbl_80D036DC:
/* 80D036DC  94 21 FF 90 */	stwu r1, -0x70(r1)
/* 80D036E0  7C 08 02 A6 */	mflr r0
/* 80D036E4  90 01 00 74 */	stw r0, 0x74(r1)
/* 80D036E8  DB E1 00 60 */	stfd f31, 0x60(r1)
/* 80D036EC  F3 E1 00 68 */	psq_st f31, 104(r1), 0, 0 /* qr0 */
/* 80D036F0  DB C1 00 50 */	stfd f30, 0x50(r1)
/* 80D036F4  F3 C1 00 58 */	psq_st f30, 88(r1), 0, 0 /* qr0 */
/* 80D036F8  39 61 00 50 */	addi r11, r1, 0x50
/* 80D036FC  4B 65 EA D5 */	bl _savegpr_26
/* 80D03700  7C 7B 1B 78 */	mr r27, r3
/* 80D03704  3C 60 80 D0 */	lis r3, lit_3662@ha /* 0x80D03F90@ha */
/* 80D03708  3B E3 3F 90 */	addi r31, r3, lit_3662@l /* 0x80D03F90@l */
/* 80D0370C  80 1B 07 E8 */	lwz r0, 0x7e8(r27)
/* 80D03710  54 1E DF FE */	rlwinm r30, r0, 0x1b, 0x1f, 0x1f
/* 80D03714  54 1D AF FE */	rlwinm r29, r0, 0x15, 0x1f, 0x1f
/* 80D03718  54 1A A7 FE */	rlwinm r26, r0, 0x14, 0x1f, 0x1f
/* 80D0371C  3B 80 00 00 */	li r28, 0
/* 80D03720  88 1B 05 C8 */	lbz r0, 0x5c8(r27)
/* 80D03724  28 00 00 02 */	cmplwi r0, 2
/* 80D03728  40 82 01 64 */	bne lbl_80D0388C
/* 80D0372C  80 7B 09 94 */	lwz r3, 0x994(r27)
/* 80D03730  28 03 00 00 */	cmplwi r3, 0
/* 80D03734  41 82 00 30 */	beq lbl_80D03764
/* 80D03738  48 02 A6 79 */	bl getPillarHeight__12daWtPillar_cFv
/* 80D0373C  80 7B 09 94 */	lwz r3, 0x994(r27)
/* 80D03740  C0 03 04 D4 */	lfs f0, 0x4d4(r3)
/* 80D03744  EC 20 08 2A */	fadds f1, f0, f1
/* 80D03748  C0 1F 00 98 */	lfs f0, 0x98(r31)
/* 80D0374C  EC 21 00 28 */	fsubs f1, f1, f0
/* 80D03750  C0 1B 04 D4 */	lfs f0, 0x4d4(r27)
/* 80D03754  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80D03758  4C 41 13 82 */	cror 2, 1, 2
/* 80D0375C  40 82 00 08 */	bne lbl_80D03764
/* 80D03760  3B 80 00 01 */	li r28, 1
lbl_80D03764:
/* 80D03764  C3 FB 09 88 */	lfs f31, 0x988(r27)
/* 80D03768  28 1D 00 00 */	cmplwi r29, 0
/* 80D0376C  41 82 01 10 */	beq lbl_80D0387C
/* 80D03770  C3 DB 04 FC */	lfs f30, 0x4fc(r27)
/* 80D03774  7F 63 DB 78 */	mr r3, r27
/* 80D03778  4B FF FF 41 */	bl chkWaterLineIn__10daSyRock_cFv
/* 80D0377C  2C 03 00 00 */	cmpwi r3, 0
/* 80D03780  41 82 00 0C */	beq lbl_80D0378C
/* 80D03784  7F 63 DB 78 */	mr r3, r27
/* 80D03788  4B FF FC 49 */	bl init_modeSink__10daSyRock_cFv
lbl_80D0378C:
/* 80D0378C  28 1A 00 00 */	cmplwi r26, 0
/* 80D03790  41 82 00 EC */	beq lbl_80D0387C
/* 80D03794  88 1B 07 78 */	lbz r0, 0x778(r27)
/* 80D03798  28 00 00 00 */	cmplwi r0, 0
/* 80D0379C  40 82 00 E0 */	bne lbl_80D0387C
/* 80D037A0  C0 1B 04 D0 */	lfs f0, 0x4d0(r27)
/* 80D037A4  D0 01 00 20 */	stfs f0, 0x20(r1)
/* 80D037A8  C0 1B 04 D4 */	lfs f0, 0x4d4(r27)
/* 80D037AC  D0 01 00 24 */	stfs f0, 0x24(r1)
/* 80D037B0  C0 1B 04 D8 */	lfs f0, 0x4d8(r27)
/* 80D037B4  D0 01 00 28 */	stfs f0, 0x28(r1)
/* 80D037B8  D3 E1 00 24 */	stfs f31, 0x24(r1)
/* 80D037BC  38 61 00 20 */	addi r3, r1, 0x20
/* 80D037C0  3C 80 80 D0 */	lis r4, l_HIO@ha /* 0x80D0426C@ha */
/* 80D037C4  38 84 42 6C */	addi r4, r4, l_HIO@l /* 0x80D0426C@l */
/* 80D037C8  C0 24 00 28 */	lfs f1, 0x28(r4)
/* 80D037CC  38 80 00 03 */	li r4, 3
/* 80D037D0  4B 31 C0 AD */	bl fopKyM_createWpillar__FPC4cXyzfi
/* 80D037D4  C0 1F 00 90 */	lfs f0, 0x90(r31)
/* 80D037D8  FC 1E 00 40 */	fcmpo cr0, f30, f0
/* 80D037DC  40 80 00 54 */	bge lbl_80D03830
/* 80D037E0  88 1B 04 E2 */	lbz r0, 0x4e2(r27)
/* 80D037E4  7C 03 07 74 */	extsb r3, r0
/* 80D037E8  4B 32 98 85 */	bl dComIfGp_getReverb__Fi
/* 80D037EC  7C 67 1B 78 */	mr r7, r3
/* 80D037F0  3C 60 00 08 */	lis r3, 0x0008 /* 0x0008002A@ha */
/* 80D037F4  38 03 00 2A */	addi r0, r3, 0x002A /* 0x0008002A@l */
/* 80D037F8  90 01 00 08 */	stw r0, 8(r1)
/* 80D037FC  3C 60 80 45 */	lis r3, mAudioMgrPtr__10Z2AudioMgr@ha /* 0x80451368@ha */
/* 80D03800  38 63 13 68 */	addi r3, r3, mAudioMgrPtr__10Z2AudioMgr@l /* 0x80451368@l */
/* 80D03804  80 63 00 00 */	lwz r3, 0(r3)
/* 80D03808  38 81 00 08 */	addi r4, r1, 8
/* 80D0380C  38 BB 05 38 */	addi r5, r27, 0x538
/* 80D03810  38 C0 00 00 */	li r6, 0
/* 80D03814  C0 3F 00 70 */	lfs f1, 0x70(r31)
/* 80D03818  FC 40 08 90 */	fmr f2, f1
/* 80D0381C  C0 7F 00 74 */	lfs f3, 0x74(r31)
/* 80D03820  FC 80 18 90 */	fmr f4, f3
/* 80D03824  39 00 00 00 */	li r8, 0
/* 80D03828  4B 5A 81 5D */	bl seStart__7Z2SeMgrF10JAISoundIDPC3VecUlScffffUc
/* 80D0382C  48 00 00 50 */	b lbl_80D0387C
lbl_80D03830:
/* 80D03830  88 1B 04 E2 */	lbz r0, 0x4e2(r27)
/* 80D03834  7C 03 07 74 */	extsb r3, r0
/* 80D03838  4B 32 98 35 */	bl dComIfGp_getReverb__Fi
/* 80D0383C  7C 67 1B 78 */	mr r7, r3
/* 80D03840  3C 60 00 08 */	lis r3, 0x0008 /* 0x00080166@ha */
/* 80D03844  38 03 01 66 */	addi r0, r3, 0x0166 /* 0x00080166@l */
/* 80D03848  90 01 00 10 */	stw r0, 0x10(r1)
/* 80D0384C  3C 60 80 45 */	lis r3, mAudioMgrPtr__10Z2AudioMgr@ha /* 0x80451368@ha */
/* 80D03850  38 63 13 68 */	addi r3, r3, mAudioMgrPtr__10Z2AudioMgr@l /* 0x80451368@l */
/* 80D03854  80 63 00 00 */	lwz r3, 0(r3)
/* 80D03858  38 81 00 10 */	addi r4, r1, 0x10
/* 80D0385C  38 BB 04 D0 */	addi r5, r27, 0x4d0
/* 80D03860  38 C0 00 00 */	li r6, 0
/* 80D03864  C0 3F 00 70 */	lfs f1, 0x70(r31)
/* 80D03868  FC 40 08 90 */	fmr f2, f1
/* 80D0386C  C0 7F 00 74 */	lfs f3, 0x74(r31)
/* 80D03870  FC 80 18 90 */	fmr f4, f3
/* 80D03874  39 00 00 00 */	li r8, 0
/* 80D03878  4B 5A 81 0D */	bl seStart__7Z2SeMgrF10JAISoundIDPC3VecUlScffffUc
lbl_80D0387C:
/* 80D0387C  57 80 06 3F */	clrlwi. r0, r28, 0x18
/* 80D03880  41 82 00 0C */	beq lbl_80D0388C
/* 80D03884  7F 63 DB 78 */	mr r3, r27
/* 80D03888  4B FF FC 61 */	bl init_modeMove__10daSyRock_cFv
lbl_80D0388C:
/* 80D0388C  28 1E 00 00 */	cmplwi r30, 0
/* 80D03890  41 82 00 CC */	beq lbl_80D0395C
/* 80D03894  28 1D 00 00 */	cmplwi r29, 0
/* 80D03898  40 82 00 A4 */	bne lbl_80D0393C
/* 80D0389C  80 1B 09 94 */	lwz r0, 0x994(r27)
/* 80D038A0  28 00 00 00 */	cmplwi r0, 0
/* 80D038A4  40 82 00 98 */	bne lbl_80D0393C
/* 80D038A8  88 1B 04 E2 */	lbz r0, 0x4e2(r27)
/* 80D038AC  7C 03 07 74 */	extsb r3, r0
/* 80D038B0  4B 32 97 BD */	bl dComIfGp_getReverb__Fi
/* 80D038B4  7C 67 1B 78 */	mr r7, r3
/* 80D038B8  3C 60 00 08 */	lis r3, 0x0008 /* 0x00080165@ha */
/* 80D038BC  38 03 01 65 */	addi r0, r3, 0x0165 /* 0x00080165@l */
/* 80D038C0  90 01 00 0C */	stw r0, 0xc(r1)
/* 80D038C4  3C 60 80 45 */	lis r3, mAudioMgrPtr__10Z2AudioMgr@ha /* 0x80451368@ha */
/* 80D038C8  38 63 13 68 */	addi r3, r3, mAudioMgrPtr__10Z2AudioMgr@l /* 0x80451368@l */
/* 80D038CC  80 63 00 00 */	lwz r3, 0(r3)
/* 80D038D0  38 81 00 0C */	addi r4, r1, 0xc
/* 80D038D4  38 BB 04 D0 */	addi r5, r27, 0x4d0
/* 80D038D8  38 C0 00 00 */	li r6, 0
/* 80D038DC  C0 3F 00 70 */	lfs f1, 0x70(r31)
/* 80D038E0  FC 40 08 90 */	fmr f2, f1
/* 80D038E4  C0 7F 00 74 */	lfs f3, 0x74(r31)
/* 80D038E8  FC 80 18 90 */	fmr f4, f3
/* 80D038EC  39 00 00 00 */	li r8, 0
/* 80D038F0  4B 5A 80 95 */	bl seStart__7Z2SeMgrF10JAISoundIDPC3VecUlScffffUc
/* 80D038F4  3C 60 80 D0 */	lis r3, l_HIO@ha /* 0x80D0426C@ha */
/* 80D038F8  38 63 42 6C */	addi r3, r3, l_HIO@l /* 0x80D0426C@l */
/* 80D038FC  C0 03 00 28 */	lfs f0, 0x28(r3)
/* 80D03900  D0 01 00 14 */	stfs f0, 0x14(r1)
/* 80D03904  D0 01 00 18 */	stfs f0, 0x18(r1)
/* 80D03908  D0 01 00 1C */	stfs f0, 0x1c(r1)
/* 80D0390C  38 61 00 14 */	addi r3, r1, 0x14
/* 80D03910  7C 64 1B 78 */	mr r4, r3
/* 80D03914  C0 3F 00 9C */	lfs f1, 0x9c(r31)
/* 80D03918  4B 64 37 C1 */	bl PSVECScale
/* 80D0391C  38 60 03 01 */	li r3, 0x301
/* 80D03920  38 80 00 03 */	li r4, 3
/* 80D03924  38 BB 04 D0 */	addi r5, r27, 0x4d0
/* 80D03928  38 C0 FF FF */	li r6, -1
/* 80D0392C  38 E0 00 00 */	li r7, 0
/* 80D03930  39 01 00 14 */	addi r8, r1, 0x14
/* 80D03934  39 20 FF FF */	li r9, -1
/* 80D03938  4B 31 64 61 */	bl fopAcM_create__FsUlPC4cXyziPC5csXyzPC4cXyzSc
lbl_80D0393C:
/* 80D0393C  80 1B 09 94 */	lwz r0, 0x994(r27)
/* 80D03940  28 00 00 00 */	cmplwi r0, 0
/* 80D03944  41 82 00 10 */	beq lbl_80D03954
/* 80D03948  7F 63 DB 78 */	mr r3, r27
/* 80D0394C  4B FF FB 9D */	bl init_modeMove__10daSyRock_cFv
/* 80D03950  48 00 00 0C */	b lbl_80D0395C
lbl_80D03954:
/* 80D03954  7F 63 DB 78 */	mr r3, r27
/* 80D03958  48 00 00 2D */	bl init_modeDropEnd__10daSyRock_cFv
lbl_80D0395C:
/* 80D0395C  E3 E1 00 68 */	psq_l f31, 104(r1), 0, 0 /* qr0 */
/* 80D03960  CB E1 00 60 */	lfd f31, 0x60(r1)
/* 80D03964  E3 C1 00 58 */	psq_l f30, 88(r1), 0, 0 /* qr0 */
/* 80D03968  CB C1 00 50 */	lfd f30, 0x50(r1)
/* 80D0396C  39 61 00 50 */	addi r11, r1, 0x50
/* 80D03970  4B 65 E8 AD */	bl _restgpr_26
/* 80D03974  80 01 00 74 */	lwz r0, 0x74(r1)
/* 80D03978  7C 08 03 A6 */	mtlr r0
/* 80D0397C  38 21 00 70 */	addi r1, r1, 0x70
/* 80D03980  4E 80 00 20 */	blr 
