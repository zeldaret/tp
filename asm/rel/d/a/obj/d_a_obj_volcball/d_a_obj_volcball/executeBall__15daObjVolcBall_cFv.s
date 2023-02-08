lbl_80D23438:
/* 80D23438  94 21 FF B0 */	stwu r1, -0x50(r1)
/* 80D2343C  7C 08 02 A6 */	mflr r0
/* 80D23440  90 01 00 54 */	stw r0, 0x54(r1)
/* 80D23444  39 61 00 50 */	addi r11, r1, 0x50
/* 80D23448  4B 63 ED 85 */	bl _savegpr_25
/* 80D2344C  7C 7A 1B 78 */	mr r26, r3
/* 80D23450  3C 60 80 D2 */	lis r3, l_sph_src@ha /* 0x80D23DCC@ha */
/* 80D23454  3B E3 3D CC */	addi r31, r3, l_sph_src@l /* 0x80D23DCC@l */
/* 80D23458  3B A0 00 00 */	li r29, 0
/* 80D2345C  3B 9A 06 0C */	addi r28, r26, 0x60c
/* 80D23460  3B 60 00 00 */	li r27, 0
/* 80D23464  3B 20 00 00 */	li r25, 0
/* 80D23468  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80D2346C  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80D23470  3B C3 0F 38 */	addi r30, r3, 0xf38
lbl_80D23474:
/* 80D23474  88 1C 03 76 */	lbz r0, 0x376(r28)
/* 80D23478  28 00 00 00 */	cmplwi r0, 0
/* 80D2347C  41 82 03 BC */	beq lbl_80D23838
/* 80D23480  C0 1C 00 04 */	lfs f0, 4(r28)
/* 80D23484  D0 1C 00 10 */	stfs f0, 0x10(r28)
/* 80D23488  C0 1C 00 08 */	lfs f0, 8(r28)
/* 80D2348C  D0 1C 00 14 */	stfs f0, 0x14(r28)
/* 80D23490  C0 1C 00 0C */	lfs f0, 0xc(r28)
/* 80D23494  D0 1C 00 18 */	stfs f0, 0x18(r28)
/* 80D23498  C0 1C 00 08 */	lfs f0, 8(r28)
/* 80D2349C  D0 1C 03 68 */	stfs f0, 0x368(r28)
/* 80D234A0  C0 3C 00 40 */	lfs f1, 0x40(r28)
/* 80D234A4  C0 1A 05 30 */	lfs f0, 0x530(r26)
/* 80D234A8  EC 01 00 2A */	fadds f0, f1, f0
/* 80D234AC  D0 1C 00 40 */	stfs f0, 0x40(r28)
/* 80D234B0  C0 1C 00 40 */	lfs f0, 0x40(r28)
/* 80D234B4  C0 3A 05 34 */	lfs f1, 0x534(r26)
/* 80D234B8  FC 00 08 40 */	fcmpo cr0, f0, f1
/* 80D234BC  40 80 00 08 */	bge lbl_80D234C4
/* 80D234C0  D0 3C 00 40 */	stfs f1, 0x40(r28)
lbl_80D234C4:
/* 80D234C4  A8 1C 03 74 */	lha r0, 0x374(r28)
/* 80D234C8  54 00 04 38 */	rlwinm r0, r0, 0, 0x10, 0x1c
/* 80D234CC  3C 60 80 44 */	lis r3, sincosTable___5JMath@ha /* 0x80439A20@ha */
/* 80D234D0  38 83 9A 20 */	addi r4, r3, sincosTable___5JMath@l /* 0x80439A20@l */
/* 80D234D4  7C 64 02 14 */	add r3, r4, r0
/* 80D234D8  C0 23 00 04 */	lfs f1, 4(r3)
/* 80D234DC  C0 1C 00 48 */	lfs f0, 0x48(r28)
/* 80D234E0  EC 00 00 72 */	fmuls f0, f0, f1
/* 80D234E4  D0 1C 00 3C */	stfs f0, 0x3c(r28)
/* 80D234E8  A8 1C 03 74 */	lha r0, 0x374(r28)
/* 80D234EC  54 00 04 38 */	rlwinm r0, r0, 0, 0x10, 0x1c
/* 80D234F0  7C 24 04 2E */	lfsx f1, r4, r0
/* 80D234F4  C0 1C 00 48 */	lfs f0, 0x48(r28)
/* 80D234F8  EC 00 00 72 */	fmuls f0, f0, f1
/* 80D234FC  D0 1C 00 44 */	stfs f0, 0x44(r28)
/* 80D23500  38 7C 00 04 */	addi r3, r28, 4
/* 80D23504  38 9C 00 3C */	addi r4, r28, 0x3c
/* 80D23508  7C 65 1B 78 */	mr r5, r3
/* 80D2350C  4B 62 3B 85 */	bl PSVECAdd
/* 80D23510  A8 7C 00 34 */	lha r3, 0x34(r28)
/* 80D23514  38 03 07 D0 */	addi r0, r3, 0x7d0
/* 80D23518  B0 1C 00 34 */	sth r0, 0x34(r28)
/* 80D2351C  2C 1B 00 08 */	cmpwi r27, 8
/* 80D23520  41 82 00 34 */	beq lbl_80D23554
/* 80D23524  38 7C 00 28 */	addi r3, r28, 0x28
/* 80D23528  C0 3C 00 1C */	lfs f1, 0x1c(r28)
/* 80D2352C  C0 5F 00 8C */	lfs f2, 0x8c(r31)
/* 80D23530  4B 54 D2 11 */	bl cLib_chaseF__FPfff
/* 80D23534  38 7C 00 2C */	addi r3, r28, 0x2c
/* 80D23538  C0 3C 00 20 */	lfs f1, 0x20(r28)
/* 80D2353C  C0 5F 00 8C */	lfs f2, 0x8c(r31)
/* 80D23540  4B 54 D2 01 */	bl cLib_chaseF__FPfff
/* 80D23544  38 7C 00 30 */	addi r3, r28, 0x30
/* 80D23548  C0 3C 00 24 */	lfs f1, 0x24(r28)
/* 80D2354C  C0 5F 00 8C */	lfs f2, 0x8c(r31)
/* 80D23550  4B 54 D1 F1 */	bl cLib_chaseF__FPfff
lbl_80D23554:
/* 80D23554  38 7C 00 04 */	addi r3, r28, 4
/* 80D23558  4B 2E 98 0D */	bl transS__14mDoMtx_stack_cFRC4cXyz
/* 80D2355C  38 7C 00 34 */	addi r3, r28, 0x34
/* 80D23560  4B 2E 99 E5 */	bl ZXYrotM__14mDoMtx_stack_cFRC5csXyz
/* 80D23564  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80D23568  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80D2356C  80 9C 00 00 */	lwz r4, 0(r28)
/* 80D23570  38 84 00 24 */	addi r4, r4, 0x24
/* 80D23574  4B 62 2F 3D */	bl PSMTXCopy
/* 80D23578  80 7C 00 00 */	lwz r3, 0(r28)
/* 80D2357C  C0 1C 00 28 */	lfs f0, 0x28(r28)
/* 80D23580  D0 03 00 18 */	stfs f0, 0x18(r3)
/* 80D23584  C0 1C 00 2C */	lfs f0, 0x2c(r28)
/* 80D23588  D0 03 00 1C */	stfs f0, 0x1c(r3)
/* 80D2358C  C0 1C 00 30 */	lfs f0, 0x30(r28)
/* 80D23590  D0 03 00 20 */	stfs f0, 0x20(r3)
/* 80D23594  38 7C 00 54 */	addi r3, r28, 0x54
/* 80D23598  7F C4 F3 78 */	mr r4, r30
/* 80D2359C  4B 35 35 11 */	bl CrrPos__9dBgS_AcchFR4dBgS
/* 80D235A0  80 1C 00 80 */	lwz r0, 0x80(r28)
/* 80D235A4  54 00 06 B5 */	rlwinm. r0, r0, 0, 0x1a, 0x1a
/* 80D235A8  40 82 00 14 */	bne lbl_80D235BC
/* 80D235AC  C0 3F 00 90 */	lfs f1, 0x90(r31)
/* 80D235B0  C0 1C 00 EC */	lfs f0, 0xec(r28)
/* 80D235B4  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 80D235B8  40 82 00 78 */	bne lbl_80D23630
lbl_80D235BC:
/* 80D235BC  88 1A 04 E2 */	lbz r0, 0x4e2(r26)
/* 80D235C0  7C 03 07 74 */	extsb r3, r0
/* 80D235C4  4B 30 9A A9 */	bl dComIfGp_getReverb__Fi
/* 80D235C8  7C 67 1B 78 */	mr r7, r3
/* 80D235CC  3C 60 00 08 */	lis r3, 0x0008 /* 0x0008003C@ha */
/* 80D235D0  38 03 00 3C */	addi r0, r3, 0x003C /* 0x0008003C@l */
/* 80D235D4  90 01 00 14 */	stw r0, 0x14(r1)
/* 80D235D8  3C 60 80 45 */	lis r3, mAudioMgrPtr__10Z2AudioMgr@ha /* 0x80451368@ha */
/* 80D235DC  38 63 13 68 */	addi r3, r3, mAudioMgrPtr__10Z2AudioMgr@l /* 0x80451368@l */
/* 80D235E0  80 63 00 00 */	lwz r3, 0(r3)
/* 80D235E4  38 81 00 14 */	addi r4, r1, 0x14
/* 80D235E8  38 B9 06 10 */	addi r5, r25, 0x610
/* 80D235EC  7C BA 2A 14 */	add r5, r26, r5
/* 80D235F0  38 C0 00 00 */	li r6, 0
/* 80D235F4  C0 3F 00 58 */	lfs f1, 0x58(r31)
/* 80D235F8  FC 40 08 90 */	fmr f2, f1
/* 80D235FC  C0 7F 00 5C */	lfs f3, 0x5c(r31)
/* 80D23600  FC 80 18 90 */	fmr f4, f3
/* 80D23604  39 00 00 00 */	li r8, 0
/* 80D23608  4B 58 83 7D */	bl seStart__7Z2SeMgrF10JAISoundIDPC3VecUlScffffUc
/* 80D2360C  7F 43 D3 78 */	mr r3, r26
/* 80D23610  7F 64 DB 78 */	mr r4, r27
/* 80D23614  4B FF F9 B9 */	bl endFallEffect__15daObjVolcBall_cFi
/* 80D23618  7F 43 D3 78 */	mr r3, r26
/* 80D2361C  7F 64 DB 78 */	mr r4, r27
/* 80D23620  4B FF F8 05 */	bl setEruptEffect__15daObjVolcBall_cFi
/* 80D23624  38 00 00 00 */	li r0, 0
/* 80D23628  98 1C 03 76 */	stb r0, 0x376(r28)
/* 80D2362C  48 00 02 08 */	b lbl_80D23834
lbl_80D23630:
/* 80D23630  2C 1B 00 08 */	cmpwi r27, 8
/* 80D23634  40 82 00 54 */	bne lbl_80D23688
/* 80D23638  88 1A 04 E2 */	lbz r0, 0x4e2(r26)
/* 80D2363C  7C 03 07 74 */	extsb r3, r0
/* 80D23640  4B 30 9A 2D */	bl dComIfGp_getReverb__Fi
/* 80D23644  7C 67 1B 78 */	mr r7, r3
/* 80D23648  3C 60 00 08 */	lis r3, 0x0008 /* 0x00080027@ha */
/* 80D2364C  38 03 00 27 */	addi r0, r3, 0x0027 /* 0x00080027@l */
/* 80D23650  90 01 00 10 */	stw r0, 0x10(r1)
/* 80D23654  3C 60 80 45 */	lis r3, mAudioMgrPtr__10Z2AudioMgr@ha /* 0x80451368@ha */
/* 80D23658  38 63 13 68 */	addi r3, r3, mAudioMgrPtr__10Z2AudioMgr@l /* 0x80451368@l */
/* 80D2365C  80 63 00 00 */	lwz r3, 0(r3)
/* 80D23660  38 81 00 10 */	addi r4, r1, 0x10
/* 80D23664  38 BC 00 04 */	addi r5, r28, 4
/* 80D23668  38 C0 00 00 */	li r6, 0
/* 80D2366C  C0 3F 00 58 */	lfs f1, 0x58(r31)
/* 80D23670  FC 40 08 90 */	fmr f2, f1
/* 80D23674  C0 7F 00 5C */	lfs f3, 0x5c(r31)
/* 80D23678  FC 80 18 90 */	fmr f4, f3
/* 80D2367C  39 00 00 00 */	li r8, 0
/* 80D23680  4B 58 8E 8D */	bl seStartLevel__7Z2SeMgrF10JAISoundIDPC3VecUlScffffUc
/* 80D23684  48 00 00 50 */	b lbl_80D236D4
lbl_80D23688:
/* 80D23688  88 1A 04 E2 */	lbz r0, 0x4e2(r26)
/* 80D2368C  7C 03 07 74 */	extsb r3, r0
/* 80D23690  4B 30 99 DD */	bl dComIfGp_getReverb__Fi
/* 80D23694  7C 67 1B 78 */	mr r7, r3
/* 80D23698  3C 60 00 08 */	lis r3, 0x0008 /* 0x00080026@ha */
/* 80D2369C  38 03 00 26 */	addi r0, r3, 0x0026 /* 0x00080026@l */
/* 80D236A0  90 01 00 0C */	stw r0, 0xc(r1)
/* 80D236A4  3C 60 80 45 */	lis r3, mAudioMgrPtr__10Z2AudioMgr@ha /* 0x80451368@ha */
/* 80D236A8  38 63 13 68 */	addi r3, r3, mAudioMgrPtr__10Z2AudioMgr@l /* 0x80451368@l */
/* 80D236AC  80 63 00 00 */	lwz r3, 0(r3)
/* 80D236B0  38 81 00 0C */	addi r4, r1, 0xc
/* 80D236B4  38 BC 00 04 */	addi r5, r28, 4
/* 80D236B8  38 C0 00 00 */	li r6, 0
/* 80D236BC  C0 3F 00 58 */	lfs f1, 0x58(r31)
/* 80D236C0  FC 40 08 90 */	fmr f2, f1
/* 80D236C4  C0 7F 00 5C */	lfs f3, 0x5c(r31)
/* 80D236C8  FC 80 18 90 */	fmr f4, f3
/* 80D236CC  39 00 00 00 */	li r8, 0
/* 80D236D0  4B 58 8E 3D */	bl seStartLevel__7Z2SeMgrF10JAISoundIDPC3VecUlScffffUc
lbl_80D236D4:
/* 80D236D4  C0 5C 00 0C */	lfs f2, 0xc(r28)
/* 80D236D8  C0 1C 00 04 */	lfs f0, 4(r28)
/* 80D236DC  D0 01 00 18 */	stfs f0, 0x18(r1)
/* 80D236E0  C0 3F 00 48 */	lfs f1, 0x48(r31)
/* 80D236E4  D0 21 00 1C */	stfs f1, 0x1c(r1)
/* 80D236E8  D0 41 00 20 */	stfs f2, 0x20(r1)
/* 80D236EC  C0 5C 00 18 */	lfs f2, 0x18(r28)
/* 80D236F0  C0 1C 00 10 */	lfs f0, 0x10(r28)
/* 80D236F4  D0 01 00 24 */	stfs f0, 0x24(r1)
/* 80D236F8  D0 21 00 28 */	stfs f1, 0x28(r1)
/* 80D236FC  D0 41 00 2C */	stfs f2, 0x2c(r1)
/* 80D23700  38 61 00 18 */	addi r3, r1, 0x18
/* 80D23704  38 81 00 24 */	addi r4, r1, 0x24
/* 80D23708  4B 62 3C 95 */	bl PSVECSquareDistance
/* 80D2370C  C0 1F 00 48 */	lfs f0, 0x48(r31)
/* 80D23710  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80D23714  40 81 00 58 */	ble lbl_80D2376C
/* 80D23718  FC 00 08 34 */	frsqrte f0, f1
/* 80D2371C  C8 9F 00 98 */	lfd f4, 0x98(r31)
/* 80D23720  FC 44 00 32 */	fmul f2, f4, f0
/* 80D23724  C8 7F 00 A0 */	lfd f3, 0xa0(r31)
/* 80D23728  FC 00 00 32 */	fmul f0, f0, f0
/* 80D2372C  FC 01 00 32 */	fmul f0, f1, f0
/* 80D23730  FC 03 00 28 */	fsub f0, f3, f0
/* 80D23734  FC 02 00 32 */	fmul f0, f2, f0
/* 80D23738  FC 44 00 32 */	fmul f2, f4, f0
/* 80D2373C  FC 00 00 32 */	fmul f0, f0, f0
/* 80D23740  FC 01 00 32 */	fmul f0, f1, f0
/* 80D23744  FC 03 00 28 */	fsub f0, f3, f0
/* 80D23748  FC 02 00 32 */	fmul f0, f2, f0
/* 80D2374C  FC 44 00 32 */	fmul f2, f4, f0
/* 80D23750  FC 00 00 32 */	fmul f0, f0, f0
/* 80D23754  FC 01 00 32 */	fmul f0, f1, f0
/* 80D23758  FC 03 00 28 */	fsub f0, f3, f0
/* 80D2375C  FC 02 00 32 */	fmul f0, f2, f0
/* 80D23760  FC 41 00 32 */	fmul f2, f1, f0
/* 80D23764  FC 40 10 18 */	frsp f2, f2
/* 80D23768  48 00 00 90 */	b lbl_80D237F8
lbl_80D2376C:
/* 80D2376C  C8 1F 00 A8 */	lfd f0, 0xa8(r31)
/* 80D23770  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80D23774  40 80 00 10 */	bge lbl_80D23784
/* 80D23778  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 80D2377C  C0 43 0A E0 */	lfs f2, __float_nan@l(r3)  /* 0x80450AE0@l */
/* 80D23780  48 00 00 78 */	b lbl_80D237F8
lbl_80D23784:
/* 80D23784  D0 21 00 08 */	stfs f1, 8(r1)
/* 80D23788  80 81 00 08 */	lwz r4, 8(r1)
/* 80D2378C  54 83 00 50 */	rlwinm r3, r4, 0, 1, 8
/* 80D23790  3C 00 7F 80 */	lis r0, 0x7f80
/* 80D23794  7C 03 00 00 */	cmpw r3, r0
/* 80D23798  41 82 00 14 */	beq lbl_80D237AC
/* 80D2379C  40 80 00 40 */	bge lbl_80D237DC
/* 80D237A0  2C 03 00 00 */	cmpwi r3, 0
/* 80D237A4  41 82 00 20 */	beq lbl_80D237C4
/* 80D237A8  48 00 00 34 */	b lbl_80D237DC
lbl_80D237AC:
/* 80D237AC  54 80 02 7F */	clrlwi. r0, r4, 9
/* 80D237B0  41 82 00 0C */	beq lbl_80D237BC
/* 80D237B4  38 00 00 01 */	li r0, 1
/* 80D237B8  48 00 00 28 */	b lbl_80D237E0
lbl_80D237BC:
/* 80D237BC  38 00 00 02 */	li r0, 2
/* 80D237C0  48 00 00 20 */	b lbl_80D237E0
lbl_80D237C4:
/* 80D237C4  54 80 02 7F */	clrlwi. r0, r4, 9
/* 80D237C8  41 82 00 0C */	beq lbl_80D237D4
/* 80D237CC  38 00 00 05 */	li r0, 5
/* 80D237D0  48 00 00 10 */	b lbl_80D237E0
lbl_80D237D4:
/* 80D237D4  38 00 00 03 */	li r0, 3
/* 80D237D8  48 00 00 08 */	b lbl_80D237E0
lbl_80D237DC:
/* 80D237DC  38 00 00 04 */	li r0, 4
lbl_80D237E0:
/* 80D237E0  2C 00 00 01 */	cmpwi r0, 1
/* 80D237E4  40 82 00 10 */	bne lbl_80D237F4
/* 80D237E8  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 80D237EC  C0 43 0A E0 */	lfs f2, __float_nan@l(r3)  /* 0x80450AE0@l */
/* 80D237F0  48 00 00 08 */	b lbl_80D237F8
lbl_80D237F4:
/* 80D237F4  FC 40 08 90 */	fmr f2, f1
lbl_80D237F8:
/* 80D237F8  C0 3C 00 08 */	lfs f1, 8(r28)
/* 80D237FC  C0 1C 00 14 */	lfs f0, 0x14(r28)
/* 80D23800  EC 21 00 28 */	fsubs f1, f1, f0
/* 80D23804  4B 54 3E 71 */	bl cM_atan2s__Fff
/* 80D23808  B0 7C 03 78 */	sth r3, 0x378(r28)
/* 80D2380C  C0 3C 00 0C */	lfs f1, 0xc(r28)
/* 80D23810  C0 1C 00 18 */	lfs f0, 0x18(r28)
/* 80D23814  EC 21 00 28 */	fsubs f1, f1, f0
/* 80D23818  C0 5C 00 04 */	lfs f2, 4(r28)
/* 80D2381C  C0 1C 00 10 */	lfs f0, 0x10(r28)
/* 80D23820  EC 42 00 28 */	fsubs f2, f2, f0
/* 80D23824  4B 54 3E 51 */	bl cM_atan2s__Fff
/* 80D23828  B0 7C 03 7A */	sth r3, 0x37a(r28)
/* 80D2382C  38 00 00 00 */	li r0, 0
/* 80D23830  B0 1C 03 7C */	sth r0, 0x37c(r28)
lbl_80D23834:
/* 80D23834  3B BD 00 01 */	addi r29, r29, 1
lbl_80D23838:
/* 80D23838  3B 7B 00 01 */	addi r27, r27, 1
/* 80D2383C  2C 1B 00 09 */	cmpwi r27, 9
/* 80D23840  3B 39 03 E0 */	addi r25, r25, 0x3e0
/* 80D23844  3B 9C 03 E0 */	addi r28, r28, 0x3e0
/* 80D23848  41 80 FC 2C */	blt lbl_80D23474
/* 80D2384C  7F A3 EB 78 */	mr r3, r29
/* 80D23850  39 61 00 50 */	addi r11, r1, 0x50
/* 80D23854  4B 63 E9 C5 */	bl _restgpr_25
/* 80D23858  80 01 00 54 */	lwz r0, 0x54(r1)
/* 80D2385C  7C 08 03 A6 */	mtlr r0
/* 80D23860  38 21 00 50 */	addi r1, r1, 0x50
/* 80D23864  4E 80 00 20 */	blr 
