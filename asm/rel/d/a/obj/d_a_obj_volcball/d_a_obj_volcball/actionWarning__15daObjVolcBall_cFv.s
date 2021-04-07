lbl_80D227E4:
/* 80D227E4  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 80D227E8  7C 08 02 A6 */	mflr r0
/* 80D227EC  90 01 00 34 */	stw r0, 0x34(r1)
/* 80D227F0  DB E1 00 20 */	stfd f31, 0x20(r1)
/* 80D227F4  F3 E1 00 28 */	psq_st f31, 40(r1), 0, 0 /* qr0 */
/* 80D227F8  39 61 00 20 */	addi r11, r1, 0x20
/* 80D227FC  4B 63 F9 E1 */	bl _savegpr_29
/* 80D22800  7C 7D 1B 78 */	mr r29, r3
/* 80D22804  3C 60 80 D2 */	lis r3, l_sph_src@ha /* 0x80D23DCC@ha */
/* 80D22808  3B E3 3D CC */	addi r31, r3, l_sph_src@l /* 0x80D23DCC@l */
/* 80D2280C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80D22810  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80D22814  3B C3 5B D4 */	addi r30, r3, 0x5bd4
/* 80D22818  7F C3 F3 78 */	mr r3, r30
/* 80D2281C  4B 34 D6 41 */	bl CheckQuake__12dVibration_cFv
/* 80D22820  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80D22824  40 82 00 0C */	bne lbl_80D22830
/* 80D22828  7F A3 EB 78 */	mr r3, r29
/* 80D2282C  48 00 10 3D */	bl startQuake__15daObjVolcBall_cFv
lbl_80D22830:
/* 80D22830  80 1D 00 B0 */	lwz r0, 0xb0(r29)
/* 80D22834  54 04 06 3E */	clrlwi r4, r0, 0x18
/* 80D22838  28 04 00 FF */	cmplwi r4, 0xff
/* 80D2283C  41 82 00 34 */	beq lbl_80D22870
/* 80D22840  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80D22844  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80D22848  88 1D 04 BA */	lbz r0, 0x4ba(r29)
/* 80D2284C  7C 05 07 74 */	extsb r5, r0
/* 80D22850  4B 31 2B 11 */	bl isSwitch__10dSv_info_cCFii
/* 80D22854  2C 03 00 00 */	cmpwi r3, 0
/* 80D22858  40 82 00 18 */	bne lbl_80D22870
/* 80D2285C  7F C3 F3 78 */	mr r3, r30
/* 80D22860  38 80 00 1F */	li r4, 0x1f
/* 80D22864  4B 34 D5 31 */	bl StopQuake__12dVibration_cFi
/* 80D22868  38 00 00 01 */	li r0, 1
/* 80D2286C  98 1D 06 01 */	stb r0, 0x601(r29)
lbl_80D22870:
/* 80D22870  38 7D 06 04 */	addi r3, r29, 0x604
/* 80D22874  48 00 15 15 */	bl func_80D23D88
/* 80D22878  28 03 00 00 */	cmplwi r3, 0
/* 80D2287C  40 82 00 5C */	bne lbl_80D228D8
/* 80D22880  38 00 00 04 */	li r0, 4
/* 80D22884  98 1D 06 01 */	stb r0, 0x601(r29)
/* 80D22888  7F A3 EB 78 */	mr r3, r29
/* 80D2288C  4B FF F2 8D */	bl getData__15daObjVolcBall_cFv
/* 80D22890  C0 23 00 38 */	lfs f1, 0x38(r3)
/* 80D22894  C0 1F 00 40 */	lfs f0, 0x40(r31)
/* 80D22898  EC 20 00 72 */	fmuls f1, f0, f1
/* 80D2289C  4B 54 50 F1 */	bl cM_rndFX__Ff
/* 80D228A0  FF E0 08 90 */	fmr f31, f1
/* 80D228A4  7F A3 EB 78 */	mr r3, r29
/* 80D228A8  4B FF F2 71 */	bl getData__15daObjVolcBall_cFv
/* 80D228AC  C0 23 00 34 */	lfs f1, 0x34(r3)
/* 80D228B0  C0 1F 00 40 */	lfs f0, 0x40(r31)
/* 80D228B4  EC 00 00 72 */	fmuls f0, f0, f1
/* 80D228B8  EC 20 F8 2A */	fadds f1, f0, f31
/* 80D228BC  4B 63 F7 F1 */	bl __cvt_fp2unsigned
/* 80D228C0  90 7D 06 04 */	stw r3, 0x604(r29)
/* 80D228C4  7F A3 EB 78 */	mr r3, r29
/* 80D228C8  4B FF F2 51 */	bl getData__15daObjVolcBall_cFv
/* 80D228CC  88 03 00 50 */	lbz r0, 0x50(r3)
/* 80D228D0  1C 00 00 1E */	mulli r0, r0, 0x1e
/* 80D228D4  90 1D 06 08 */	stw r0, 0x608(r29)
lbl_80D228D8:
/* 80D228D8  88 1D 04 E2 */	lbz r0, 0x4e2(r29)
/* 80D228DC  7C 03 07 74 */	extsb r3, r0
/* 80D228E0  4B 30 A7 8D */	bl dComIfGp_getReverb__Fi
/* 80D228E4  7C 67 1B 78 */	mr r7, r3
/* 80D228E8  3C 60 00 09 */	lis r3, 0x0009 /* 0x0009000E@ha */
/* 80D228EC  38 03 00 0E */	addi r0, r3, 0x000E /* 0x0009000E@l */
/* 80D228F0  90 01 00 08 */	stw r0, 8(r1)
/* 80D228F4  3C 60 80 45 */	lis r3, mAudioMgrPtr__10Z2AudioMgr@ha /* 0x80451368@ha */
/* 80D228F8  38 63 13 68 */	addi r3, r3, mAudioMgrPtr__10Z2AudioMgr@l /* 0x80451368@l */
/* 80D228FC  80 63 00 00 */	lwz r3, 0(r3)
/* 80D22900  38 81 00 08 */	addi r4, r1, 8
/* 80D22904  38 A0 00 00 */	li r5, 0
/* 80D22908  38 C0 00 00 */	li r6, 0
/* 80D2290C  C0 3F 00 58 */	lfs f1, 0x58(r31)
/* 80D22910  FC 40 08 90 */	fmr f2, f1
/* 80D22914  C0 7F 00 5C */	lfs f3, 0x5c(r31)
/* 80D22918  FC 80 18 90 */	fmr f4, f3
/* 80D2291C  39 00 00 00 */	li r8, 0
/* 80D22920  4B 58 9B ED */	bl seStartLevel__7Z2SeMgrF10JAISoundIDPC3VecUlScffffUc
/* 80D22924  E3 E1 00 28 */	psq_l f31, 40(r1), 0, 0 /* qr0 */
/* 80D22928  CB E1 00 20 */	lfd f31, 0x20(r1)
/* 80D2292C  39 61 00 20 */	addi r11, r1, 0x20
/* 80D22930  4B 63 F8 F9 */	bl _restgpr_29
/* 80D22934  80 01 00 34 */	lwz r0, 0x34(r1)
/* 80D22938  7C 08 03 A6 */	mtlr r0
/* 80D2293C  38 21 00 30 */	addi r1, r1, 0x30
/* 80D22940  4E 80 00 20 */	blr 
