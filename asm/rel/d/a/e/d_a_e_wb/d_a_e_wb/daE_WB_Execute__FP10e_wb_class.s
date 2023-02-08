lbl_807E0388:
/* 807E0388  94 21 FE 80 */	stwu r1, -0x180(r1)
/* 807E038C  7C 08 02 A6 */	mflr r0
/* 807E0390  90 01 01 84 */	stw r0, 0x184(r1)
/* 807E0394  DB E1 01 70 */	stfd f31, 0x170(r1)
/* 807E0398  F3 E1 01 78 */	psq_st f31, 376(r1), 0, 0 /* qr0 */
/* 807E039C  39 61 01 70 */	addi r11, r1, 0x170
/* 807E03A0  4B B8 1E 25 */	bl _savegpr_23
/* 807E03A4  7C 7F 1B 78 */	mr r31, r3
/* 807E03A8  3C 60 80 7E */	lis r3, lit_1109@ha /* 0x807E3578@ha */
/* 807E03AC  3B A3 35 78 */	addi r29, r3, lit_1109@l /* 0x807E3578@l */
/* 807E03B0  3C 60 80 7E */	lis r3, lit_3882@ha /* 0x807E298C@ha */
/* 807E03B4  3B C3 29 8C */	addi r30, r3, lit_3882@l /* 0x807E298C@l */
/* 807E03B8  80 1D 03 24 */	lwz r0, 0x324(r29)
/* 807E03BC  2C 00 00 00 */	cmpwi r0, 0
/* 807E03C0  40 82 00 38 */	bne lbl_807E03F8
/* 807E03C4  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 807E03C8  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 807E03CC  88 03 4F AD */	lbz r0, 0x4fad(r3)
/* 807E03D0  28 00 00 00 */	cmplwi r0, 0
/* 807E03D4  41 82 00 24 */	beq lbl_807E03F8
/* 807E03D8  88 1D 00 3E */	lbz r0, 0x3e(r29)
/* 807E03DC  7C 00 07 75 */	extsb. r0, r0
/* 807E03E0  40 82 00 10 */	bne lbl_807E03F0
/* 807E03E4  4B 83 7E C5 */	bl cDmrNowMidnaTalk__Fv
/* 807E03E8  2C 03 00 00 */	cmpwi r3, 0
/* 807E03EC  41 82 00 0C */	beq lbl_807E03F8
lbl_807E03F0:
/* 807E03F0  38 60 00 01 */	li r3, 1
/* 807E03F4  48 00 0C 0C */	b lbl_807E1000
lbl_807E03F8:
/* 807E03F8  A8 1F 16 9E */	lha r0, 0x169e(r31)
/* 807E03FC  2C 00 03 E8 */	cmpwi r0, 0x3e8
/* 807E0400  40 82 00 0C */	bne lbl_807E040C
/* 807E0404  38 60 00 01 */	li r3, 1
/* 807E0408  48 00 0B F8 */	b lbl_807E1000
lbl_807E040C:
/* 807E040C  3B 9D 00 50 */	addi r28, r29, 0x50
/* 807E0410  C0 1C 00 08 */	lfs f0, 8(r28)
/* 807E0414  D0 1F 04 F4 */	stfs f0, 0x4f4(r31)
/* 807E0418  80 1F 04 A0 */	lwz r0, 0x4a0(r31)
/* 807E041C  54 00 07 7B */	rlwinm. r0, r0, 0, 0x1d, 0x1d
/* 807E0420  41 82 00 10 */	beq lbl_807E0430
/* 807E0424  38 00 00 01 */	li r0, 1
/* 807E0428  98 1F 05 BF */	stb r0, 0x5bf(r31)
/* 807E042C  48 00 00 0C */	b lbl_807E0438
lbl_807E0430:
/* 807E0430  38 00 00 00 */	li r0, 0
/* 807E0434  98 1F 05 BF */	stb r0, 0x5bf(r31)
lbl_807E0438:
/* 807E0438  88 1F 07 9D */	lbz r0, 0x79d(r31)
/* 807E043C  7C 00 07 75 */	extsb. r0, r0
/* 807E0440  41 82 00 18 */	beq lbl_807E0458
/* 807E0444  C0 3F 04 F4 */	lfs f1, 0x4f4(r31)
/* 807E0448  38 7D 00 50 */	addi r3, r29, 0x50
/* 807E044C  C0 03 00 0C */	lfs f0, 0xc(r3)
/* 807E0450  EC 01 00 32 */	fmuls f0, f1, f0
/* 807E0454  D0 1F 04 F4 */	stfs f0, 0x4f4(r31)
lbl_807E0458:
/* 807E0458  A8 7F 06 8E */	lha r3, 0x68e(r31)
/* 807E045C  38 03 00 01 */	addi r0, r3, 1
/* 807E0460  B0 1F 06 8E */	sth r0, 0x68e(r31)
/* 807E0464  88 1F 14 30 */	lbz r0, 0x1430(r31)
/* 807E0468  7C 00 07 75 */	extsb. r0, r0
/* 807E046C  40 82 00 7C */	bne lbl_807E04E8
/* 807E0470  80 1F 04 9C */	lwz r0, 0x49c(r31)
/* 807E0474  54 00 00 3E */	slwi r0, r0, 0
/* 807E0478  90 1F 04 9C */	stw r0, 0x49c(r31)
/* 807E047C  38 80 00 00 */	li r4, 0
/* 807E0480  90 9F 05 5C */	stw r4, 0x55c(r31)
/* 807E0484  A0 1F 06 BE */	lhz r0, 0x6be(r31)
/* 807E0488  54 00 07 BE */	clrlwi r0, r0, 0x1e
/* 807E048C  B0 1F 06 BE */	sth r0, 0x6be(r31)
/* 807E0490  38 00 00 04 */	li r0, 4
/* 807E0494  7C 09 03 A6 */	mtctr r0
lbl_807E0498:
/* 807E0498  38 A4 06 98 */	addi r5, r4, 0x698
/* 807E049C  7C 7F 2A AE */	lhax r3, r31, r5
/* 807E04A0  2C 03 00 00 */	cmpwi r3, 0
/* 807E04A4  41 82 00 0C */	beq lbl_807E04B0
/* 807E04A8  38 03 FF FF */	addi r0, r3, -1
/* 807E04AC  7C 1F 2B 2E */	sthx r0, r31, r5
lbl_807E04B0:
/* 807E04B0  38 84 00 02 */	addi r4, r4, 2
/* 807E04B4  42 00 FF E4 */	bdnz lbl_807E0498
/* 807E04B8  A8 7F 06 A0 */	lha r3, 0x6a0(r31)
/* 807E04BC  2C 03 00 00 */	cmpwi r3, 0
/* 807E04C0  41 82 00 0C */	beq lbl_807E04CC
/* 807E04C4  38 03 FF FF */	addi r0, r3, -1
/* 807E04C8  B0 1F 06 A0 */	sth r0, 0x6a0(r31)
lbl_807E04CC:
/* 807E04CC  A8 7F 14 32 */	lha r3, 0x1432(r31)
/* 807E04D0  2C 03 00 00 */	cmpwi r3, 0
/* 807E04D4  41 82 00 0C */	beq lbl_807E04E0
/* 807E04D8  38 03 FF FF */	addi r0, r3, -1
/* 807E04DC  B0 1F 14 32 */	sth r0, 0x1432(r31)
lbl_807E04E0:
/* 807E04E0  7F E3 FB 78 */	mr r3, r31
/* 807E04E4  4B FF B3 01 */	bl action__FP10e_wb_class
lbl_807E04E8:
/* 807E04E8  88 1F 07 9D */	lbz r0, 0x79d(r31)
/* 807E04EC  7C 00 07 75 */	extsb. r0, r0
/* 807E04F0  40 82 00 10 */	bne lbl_807E0500
/* 807E04F4  A8 1F 16 9E */	lha r0, 0x169e(r31)
/* 807E04F8  2C 00 00 00 */	cmpwi r0, 0
/* 807E04FC  41 82 00 0C */	beq lbl_807E0508
lbl_807E0500:
/* 807E0500  7F E3 FB 78 */	mr r3, r31
/* 807E0504  4B FF BC 65 */	bl demo_camera__FP10e_wb_class
lbl_807E0508:
/* 807E0508  88 1F 14 30 */	lbz r0, 0x1430(r31)
/* 807E050C  7C 00 07 75 */	extsb. r0, r0
/* 807E0510  41 82 00 24 */	beq lbl_807E0534
/* 807E0514  C0 1F 04 D0 */	lfs f0, 0x4d0(r31)
/* 807E0518  D0 1F 05 38 */	stfs f0, 0x538(r31)
/* 807E051C  C0 1F 04 D4 */	lfs f0, 0x4d4(r31)
/* 807E0520  D0 1F 05 3C */	stfs f0, 0x53c(r31)
/* 807E0524  C0 1F 04 D8 */	lfs f0, 0x4d8(r31)
/* 807E0528  D0 1F 05 40 */	stfs f0, 0x540(r31)
/* 807E052C  38 60 00 01 */	li r3, 1
/* 807E0530  48 00 0A D0 */	b lbl_807E1000
lbl_807E0534:
/* 807E0534  88 1F 07 9D */	lbz r0, 0x79d(r31)
/* 807E0538  7C 00 07 75 */	extsb. r0, r0
/* 807E053C  41 82 00 10 */	beq lbl_807E054C
/* 807E0540  88 1F 14 2F */	lbz r0, 0x142f(r31)
/* 807E0544  7C 00 07 75 */	extsb. r0, r0
/* 807E0548  40 82 00 4C */	bne lbl_807E0594
lbl_807E054C:
/* 807E054C  34 7F 09 C4 */	addic. r3, r31, 0x9c4
/* 807E0550  41 82 00 44 */	beq lbl_807E0594
/* 807E0554  C0 3F 04 D0 */	lfs f1, 0x4d0(r31)
/* 807E0558  C0 03 00 00 */	lfs f0, 0(r3)
/* 807E055C  C0 5E 01 00 */	lfs f2, 0x100(r30)
/* 807E0560  EC 00 00 B2 */	fmuls f0, f0, f2
/* 807E0564  EC 01 00 2A */	fadds f0, f1, f0
/* 807E0568  D0 1F 04 D0 */	stfs f0, 0x4d0(r31)
/* 807E056C  C0 3F 04 D4 */	lfs f1, 0x4d4(r31)
/* 807E0570  C0 03 00 04 */	lfs f0, 4(r3)
/* 807E0574  EC 00 00 B2 */	fmuls f0, f0, f2
/* 807E0578  EC 01 00 2A */	fadds f0, f1, f0
/* 807E057C  D0 1F 04 D4 */	stfs f0, 0x4d4(r31)
/* 807E0580  C0 3F 04 D8 */	lfs f1, 0x4d8(r31)
/* 807E0584  C0 03 00 08 */	lfs f0, 8(r3)
/* 807E0588  EC 00 00 B2 */	fmuls f0, f0, f2
/* 807E058C  EC 01 00 2A */	fadds f0, f1, f0
/* 807E0590  D0 1F 04 D8 */	stfs f0, 0x4d8(r31)
lbl_807E0594:
/* 807E0594  88 1F 05 BF */	lbz r0, 0x5bf(r31)
/* 807E0598  28 00 00 00 */	cmplwi r0, 0
/* 807E059C  40 82 02 00 */	bne lbl_807E079C
/* 807E05A0  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 807E05A4  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 807E05A8  3B 43 0F 38 */	addi r26, r3, 0xf38
/* 807E05AC  88 03 4F AD */	lbz r0, 0x4fad(r3)
/* 807E05B0  28 00 00 00 */	cmplwi r0, 0
/* 807E05B4  40 82 01 E8 */	bne lbl_807E079C
/* 807E05B8  7F E3 FB 78 */	mr r3, r31
/* 807E05BC  4B FF 30 B1 */	bl e_wb_wall_check__FP10e_wb_class
/* 807E05C0  7C 60 07 35 */	extsh. r0, r3
/* 807E05C4  41 82 01 D8 */	beq lbl_807E079C
/* 807E05C8  7C 60 07 34 */	extsh r0, r3
/* 807E05CC  2C 00 E0 00 */	cmpwi r0, -8192
/* 807E05D0  40 81 01 CC */	ble lbl_807E079C
/* 807E05D4  2C 00 20 00 */	cmpwi r0, 0x2000
/* 807E05D8  40 80 01 C4 */	bge lbl_807E079C
/* 807E05DC  A8 1F 06 90 */	lha r0, 0x690(r31)
/* 807E05E0  2C 00 00 06 */	cmpwi r0, 6
/* 807E05E4  41 82 00 14 */	beq lbl_807E05F8
/* 807E05E8  2C 00 00 66 */	cmpwi r0, 0x66
/* 807E05EC  41 82 00 0C */	beq lbl_807E05F8
/* 807E05F0  2C 00 00 07 */	cmpwi r0, 7
/* 807E05F4  40 82 00 F0 */	bne lbl_807E06E4
lbl_807E05F8:
/* 807E05F8  C0 5F 05 2C */	lfs f2, 0x52c(r31)
/* 807E05FC  C0 3E 00 F8 */	lfs f1, 0xf8(r30)
/* 807E0600  FC 02 08 40 */	fcmpo cr0, f2, f1
/* 807E0604  4C 41 13 82 */	cror 2, 1, 2
/* 807E0608  40 82 00 DC */	bne lbl_807E06E4
/* 807E060C  38 7D 00 50 */	addi r3, r29, 0x50
/* 807E0610  C0 03 00 14 */	lfs f0, 0x14(r3)
/* 807E0614  EC 00 08 28 */	fsubs f0, f0, f1
/* 807E0618  FC 02 00 40 */	fcmpo cr0, f2, f0
/* 807E061C  40 81 00 78 */	ble lbl_807E0694
/* 807E0620  2C 00 00 66 */	cmpwi r0, 0x66
/* 807E0624  40 82 00 2C */	bne lbl_807E0650
/* 807E0628  C0 3E 00 48 */	lfs f1, 0x48(r30)
/* 807E062C  D0 21 00 1C */	stfs f1, 0x1c(r1)
/* 807E0630  C0 1E 00 60 */	lfs f0, 0x60(r30)
/* 807E0634  D0 01 00 20 */	stfs f0, 0x20(r1)
/* 807E0638  D0 21 00 24 */	stfs f1, 0x24(r1)
/* 807E063C  38 7A 4C 9C */	addi r3, r26, 0x4c9c
/* 807E0640  38 80 00 08 */	li r4, 8
/* 807E0644  38 A0 00 4F */	li r5, 0x4f
/* 807E0648  38 C1 00 1C */	addi r6, r1, 0x1c
/* 807E064C  4B 88 F3 D9 */	bl StartShock__12dVibration_cFii4cXyz
lbl_807E0650:
/* 807E0650  38 00 00 17 */	li r0, 0x17
/* 807E0654  B0 1F 06 90 */	sth r0, 0x690(r31)
/* 807E0658  38 00 00 00 */	li r0, 0
/* 807E065C  B0 1F 05 B4 */	sth r0, 0x5b4(r31)
/* 807E0660  C0 1E 00 1C */	lfs f0, 0x1c(r30)
/* 807E0664  D0 1F 16 84 */	stfs f0, 0x1684(r31)
/* 807E0668  3C 60 00 05 */	lis r3, 0x0005 /* 0x0005007D@ha */
/* 807E066C  38 03 00 7D */	addi r0, r3, 0x007D /* 0x0005007D@l */
/* 807E0670  90 01 00 0C */	stw r0, 0xc(r1)
/* 807E0674  38 7F 05 EC */	addi r3, r31, 0x5ec
/* 807E0678  38 81 00 0C */	addi r4, r1, 0xc
/* 807E067C  38 A0 FF FF */	li r5, -1
/* 807E0680  81 9F 05 EC */	lwz r12, 0x5ec(r31)
/* 807E0684  81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 807E0688  7D 89 03 A6 */	mtctr r12
/* 807E068C  4E 80 04 21 */	bctrl 
/* 807E0690  48 00 00 30 */	b lbl_807E06C0
lbl_807E0694:
/* 807E0694  2C 00 00 66 */	cmpwi r0, 0x66
/* 807E0698  41 82 00 28 */	beq lbl_807E06C0
/* 807E069C  2C 00 00 06 */	cmpwi r0, 6
/* 807E06A0  40 82 00 10 */	bne lbl_807E06B0
/* 807E06A4  38 00 00 05 */	li r0, 5
/* 807E06A8  B0 1F 06 90 */	sth r0, 0x690(r31)
/* 807E06AC  48 00 00 0C */	b lbl_807E06B8
lbl_807E06B0:
/* 807E06B0  38 00 00 00 */	li r0, 0
/* 807E06B4  B0 1F 06 90 */	sth r0, 0x690(r31)
lbl_807E06B8:
/* 807E06B8  38 00 00 00 */	li r0, 0
/* 807E06BC  B0 1F 05 B4 */	sth r0, 0x5b4(r31)
lbl_807E06C0:
/* 807E06C0  A8 1F 06 90 */	lha r0, 0x690(r31)
/* 807E06C4  2C 00 00 66 */	cmpwi r0, 0x66
/* 807E06C8  41 82 00 1C */	beq lbl_807E06E4
/* 807E06CC  C0 1F 04 BC */	lfs f0, 0x4bc(r31)
/* 807E06D0  D0 1F 04 D0 */	stfs f0, 0x4d0(r31)
/* 807E06D4  C0 1F 04 C0 */	lfs f0, 0x4c0(r31)
/* 807E06D8  D0 1F 04 D4 */	stfs f0, 0x4d4(r31)
/* 807E06DC  C0 1F 04 C4 */	lfs f0, 0x4c4(r31)
/* 807E06E0  D0 1F 04 D8 */	stfs f0, 0x4d8(r31)
lbl_807E06E4:
/* 807E06E4  38 61 00 C4 */	addi r3, r1, 0xc4
/* 807E06E8  4B 89 75 81 */	bl __ct__11dBgS_LinChkFv
/* 807E06EC  C0 1F 04 D0 */	lfs f0, 0x4d0(r31)
/* 807E06F0  D0 01 00 4C */	stfs f0, 0x4c(r1)
/* 807E06F4  C0 3F 04 D4 */	lfs f1, 0x4d4(r31)
/* 807E06F8  D0 21 00 50 */	stfs f1, 0x50(r1)
/* 807E06FC  C0 1F 04 D8 */	lfs f0, 0x4d8(r31)
/* 807E0700  D0 01 00 54 */	stfs f0, 0x54(r1)
/* 807E0704  C0 1E 00 70 */	lfs f0, 0x70(r30)
/* 807E0708  EC 01 00 2A */	fadds f0, f1, f0
/* 807E070C  D0 01 00 50 */	stfs f0, 0x50(r1)
/* 807E0710  38 61 00 C4 */	addi r3, r1, 0xc4
/* 807E0714  38 81 00 4C */	addi r4, r1, 0x4c
/* 807E0718  38 BF 05 38 */	addi r5, r31, 0x538
/* 807E071C  7F E6 FB 78 */	mr r6, r31
/* 807E0720  4B 89 76 45 */	bl Set__11dBgS_LinChkFPC4cXyzPC4cXyzPC10fopAc_ac_c
/* 807E0724  7F 43 D3 78 */	mr r3, r26
/* 807E0728  38 81 00 C4 */	addi r4, r1, 0xc4
/* 807E072C  4B 89 3C 89 */	bl LineCross__4cBgSFP11cBgS_LinChk
/* 807E0730  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 807E0734  41 82 00 5C */	beq lbl_807E0790
/* 807E0738  3C 60 80 45 */	lis r3, calc_mtx@ha /* 0x80450768@ha */
/* 807E073C  38 63 07 68 */	addi r3, r3, calc_mtx@l /* 0x80450768@l */
/* 807E0740  80 63 00 00 */	lwz r3, 0(r3)
/* 807E0744  A8 9F 04 E6 */	lha r4, 0x4e6(r31)
/* 807E0748  4B 82 BC 95 */	bl mDoMtx_YrotS__FPA4_fs
/* 807E074C  C0 1E 00 48 */	lfs f0, 0x48(r30)
/* 807E0750  D0 01 00 64 */	stfs f0, 0x64(r1)
/* 807E0754  D0 01 00 68 */	stfs f0, 0x68(r1)
/* 807E0758  C0 1E 00 80 */	lfs f0, 0x80(r30)
/* 807E075C  D0 01 00 6C */	stfs f0, 0x6c(r1)
/* 807E0760  38 61 00 64 */	addi r3, r1, 0x64
/* 807E0764  38 81 00 58 */	addi r4, r1, 0x58
/* 807E0768  4B A9 07 85 */	bl MtxPosition__FP4cXyzP4cXyz
/* 807E076C  38 7F 04 D0 */	addi r3, r31, 0x4d0
/* 807E0770  38 81 00 58 */	addi r4, r1, 0x58
/* 807E0774  7C 65 1B 78 */	mr r5, r3
/* 807E0778  4B B6 69 19 */	bl PSVECAdd
/* 807E077C  A8 1F 06 90 */	lha r0, 0x690(r31)
/* 807E0780  2C 00 00 66 */	cmpwi r0, 0x66
/* 807E0784  41 82 00 0C */	beq lbl_807E0790
/* 807E0788  C0 1E 00 48 */	lfs f0, 0x48(r30)
/* 807E078C  D0 1F 05 2C */	stfs f0, 0x52c(r31)
lbl_807E0790:
/* 807E0790  38 61 00 C4 */	addi r3, r1, 0xc4
/* 807E0794  38 80 FF FF */	li r4, -1
/* 807E0798  4B 89 75 45 */	bl __dt__11dBgS_LinChkFv
lbl_807E079C:
/* 807E079C  38 7F 07 EC */	addi r3, r31, 0x7ec
/* 807E07A0  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 807E07A4  38 84 61 C0 */	addi r4, r4, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 807E07A8  3B 64 0F 38 */	addi r27, r4, 0xf38
/* 807E07AC  7F 64 DB 78 */	mr r4, r27
/* 807E07B0  4B 89 62 FD */	bl CrrPos__9dBgS_AcchFR4dBgS
/* 807E07B4  38 7F 04 E6 */	addi r3, r31, 0x4e6
/* 807E07B8  A8 9F 04 DE */	lha r4, 0x4de(r31)
/* 807E07BC  38 A0 00 04 */	li r5, 4
/* 807E07C0  38 C0 20 00 */	li r6, 0x2000
/* 807E07C4  4B A8 FE 45 */	bl cLib_addCalcAngleS2__FPssss
/* 807E07C8  80 1F 08 18 */	lwz r0, 0x818(r31)
/* 807E07CC  54 00 06 B5 */	rlwinm. r0, r0, 0, 0x1a, 0x1a
/* 807E07D0  41 82 01 24 */	beq lbl_807E08F4
/* 807E07D4  38 61 00 70 */	addi r3, r1, 0x70
/* 807E07D8  4B 89 6D A5 */	bl __ct__11dBgS_GndChkFv
/* 807E07DC  3C 60 80 45 */	lis r3, calc_mtx@ha /* 0x80450768@ha */
/* 807E07E0  38 63 07 68 */	addi r3, r3, calc_mtx@l /* 0x80450768@l */
/* 807E07E4  80 63 00 00 */	lwz r3, 0(r3)
/* 807E07E8  A8 9F 04 E6 */	lha r4, 0x4e6(r31)
/* 807E07EC  4B 82 BB F1 */	bl mDoMtx_YrotS__FPA4_fs
/* 807E07F0  C0 1E 00 48 */	lfs f0, 0x48(r30)
/* 807E07F4  D0 01 00 64 */	stfs f0, 0x64(r1)
/* 807E07F8  C0 1E 00 B4 */	lfs f0, 0xb4(r30)
/* 807E07FC  D0 01 00 68 */	stfs f0, 0x68(r1)
/* 807E0800  C0 1E 00 70 */	lfs f0, 0x70(r30)
/* 807E0804  D0 01 00 6C */	stfs f0, 0x6c(r1)
/* 807E0808  38 61 00 64 */	addi r3, r1, 0x64
/* 807E080C  38 81 00 58 */	addi r4, r1, 0x58
/* 807E0810  4B A9 06 DD */	bl MtxPosition__FP4cXyzP4cXyz
/* 807E0814  38 61 00 58 */	addi r3, r1, 0x58
/* 807E0818  38 9F 04 D0 */	addi r4, r31, 0x4d0
/* 807E081C  7C 65 1B 78 */	mr r5, r3
/* 807E0820  4B B6 68 71 */	bl PSVECAdd
/* 807E0824  C0 1E 05 58 */	lfs f0, 0x558(r30)
/* 807E0828  D0 01 00 6C */	stfs f0, 0x6c(r1)
/* 807E082C  38 61 00 64 */	addi r3, r1, 0x64
/* 807E0830  38 81 00 34 */	addi r4, r1, 0x34
/* 807E0834  4B A9 06 B9 */	bl MtxPosition__FP4cXyzP4cXyz
/* 807E0838  38 61 00 34 */	addi r3, r1, 0x34
/* 807E083C  38 9F 04 D0 */	addi r4, r31, 0x4d0
/* 807E0840  7C 65 1B 78 */	mr r5, r3
/* 807E0844  4B B6 68 4D */	bl PSVECAdd
/* 807E0848  C0 01 00 58 */	lfs f0, 0x58(r1)
/* 807E084C  D0 01 00 40 */	stfs f0, 0x40(r1)
/* 807E0850  C0 01 00 5C */	lfs f0, 0x5c(r1)
/* 807E0854  D0 01 00 44 */	stfs f0, 0x44(r1)
/* 807E0858  C0 01 00 60 */	lfs f0, 0x60(r1)
/* 807E085C  D0 01 00 48 */	stfs f0, 0x48(r1)
/* 807E0860  38 61 00 70 */	addi r3, r1, 0x70
/* 807E0864  38 81 00 40 */	addi r4, r1, 0x40
/* 807E0868  4B A8 74 A5 */	bl SetPos__11cBgS_GndChkFPC3Vec
/* 807E086C  7F 63 DB 78 */	mr r3, r27
/* 807E0870  38 81 00 70 */	addi r4, r1, 0x70
/* 807E0874  4B 89 3C 2D */	bl GroundCross__4cBgSFP11cBgS_GndChk
/* 807E0878  D0 21 00 5C */	stfs f1, 0x5c(r1)
/* 807E087C  C0 01 00 34 */	lfs f0, 0x34(r1)
/* 807E0880  D0 01 00 40 */	stfs f0, 0x40(r1)
/* 807E0884  C0 01 00 38 */	lfs f0, 0x38(r1)
/* 807E0888  D0 01 00 44 */	stfs f0, 0x44(r1)
/* 807E088C  C0 01 00 3C */	lfs f0, 0x3c(r1)
/* 807E0890  D0 01 00 48 */	stfs f0, 0x48(r1)
/* 807E0894  38 61 00 70 */	addi r3, r1, 0x70
/* 807E0898  38 81 00 40 */	addi r4, r1, 0x40
/* 807E089C  4B A8 74 71 */	bl SetPos__11cBgS_GndChkFPC3Vec
/* 807E08A0  7F 63 DB 78 */	mr r3, r27
/* 807E08A4  38 81 00 70 */	addi r4, r1, 0x70
/* 807E08A8  4B 89 3B F9 */	bl GroundCross__4cBgSFP11cBgS_GndChk
/* 807E08AC  D0 21 00 38 */	stfs f1, 0x38(r1)
/* 807E08B0  C0 41 00 5C */	lfs f2, 0x5c(r1)
/* 807E08B4  FC 00 08 18 */	frsp f0, f1
/* 807E08B8  EC 22 00 28 */	fsubs f1, f2, f0
/* 807E08BC  FC 00 0A 10 */	fabs f0, f1
/* 807E08C0  FC 00 00 18 */	frsp f0, f0
/* 807E08C4  C0 5E 00 B4 */	lfs f2, 0xb4(r30)
/* 807E08C8  FC 00 10 40 */	fcmpo cr0, f0, f2
/* 807E08CC  4C 40 13 82 */	cror 2, 0, 2
/* 807E08D0  40 82 00 10 */	bne lbl_807E08E0
/* 807E08D4  4B A8 6D A1 */	bl cM_atan2s__Fff
/* 807E08D8  7C 03 00 D0 */	neg r0, r3
/* 807E08DC  B0 1F 04 DC */	sth r0, 0x4dc(r31)
lbl_807E08E0:
/* 807E08E0  C0 1E 00 80 */	lfs f0, 0x80(r30)
/* 807E08E4  D0 1F 04 FC */	stfs f0, 0x4fc(r31)
/* 807E08E8  38 61 00 70 */	addi r3, r1, 0x70
/* 807E08EC  38 80 FF FF */	li r4, -1
/* 807E08F0  4B 89 6D 01 */	bl __dt__11dBgS_GndChkFv
lbl_807E08F4:
/* 807E08F4  38 7F 04 E4 */	addi r3, r31, 0x4e4
/* 807E08F8  A8 9F 04 DC */	lha r4, 0x4dc(r31)
/* 807E08FC  38 A0 00 04 */	li r5, 4
/* 807E0900  38 C0 10 00 */	li r6, 0x1000
/* 807E0904  4B A8 FD 05 */	bl cLib_addCalcAngleS2__FPssss
/* 807E0908  38 7F 04 E8 */	addi r3, r31, 0x4e8
/* 807E090C  A8 9F 04 E0 */	lha r4, 0x4e0(r31)
/* 807E0910  38 A0 00 04 */	li r5, 4
/* 807E0914  38 C0 10 00 */	li r6, 0x1000
/* 807E0918  4B A8 FC F1 */	bl cLib_addCalcAngleS2__FPssss
/* 807E091C  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 807E0920  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 807E0924  C0 3F 04 D0 */	lfs f1, 0x4d0(r31)
/* 807E0928  C0 5F 04 D4 */	lfs f2, 0x4d4(r31)
/* 807E092C  C0 7F 04 D8 */	lfs f3, 0x4d8(r31)
/* 807E0930  4B B6 5F B9 */	bl PSMTXTrans
/* 807E0934  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 807E0938  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 807E093C  A8 9F 04 E6 */	lha r4, 0x4e6(r31)
/* 807E0940  A8 1F 07 A4 */	lha r0, 0x7a4(r31)
/* 807E0944  7C 04 02 14 */	add r0, r4, r0
/* 807E0948  7C 04 07 34 */	extsh r4, r0
/* 807E094C  4B 82 BA E9 */	bl mDoMtx_YrotM__FPA4_fs
/* 807E0950  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 807E0954  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 807E0958  A8 9F 04 E4 */	lha r4, 0x4e4(r31)
/* 807E095C  4B 82 BA 41 */	bl mDoMtx_XrotM__FPA4_fs
/* 807E0960  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 807E0964  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 807E0968  A8 9F 04 E8 */	lha r4, 0x4e8(r31)
/* 807E096C  4B 82 BB 61 */	bl mDoMtx_ZrotM__FPA4_fs
/* 807E0970  C0 3E 00 48 */	lfs f1, 0x48(r30)
/* 807E0974  C0 5E 00 C4 */	lfs f2, 0xc4(r30)
/* 807E0978  FC 60 08 90 */	fmr f3, f1
/* 807E097C  4B 82 C4 21 */	bl transM__14mDoMtx_stack_cFfff
/* 807E0980  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 807E0984  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 807E0988  A8 9F 06 B0 */	lha r4, 0x6b0(r31)
/* 807E098C  4B 82 BA A9 */	bl mDoMtx_YrotM__FPA4_fs
/* 807E0990  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 807E0994  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 807E0998  A8 9F 06 AE */	lha r4, 0x6ae(r31)
/* 807E099C  4B 82 BA 01 */	bl mDoMtx_XrotM__FPA4_fs
/* 807E09A0  C0 3E 00 48 */	lfs f1, 0x48(r30)
/* 807E09A4  C0 5E 02 2C */	lfs f2, 0x22c(r30)
/* 807E09A8  C0 7E 01 E4 */	lfs f3, 0x1e4(r30)
/* 807E09AC  4B 82 C3 F1 */	bl transM__14mDoMtx_stack_cFfff
/* 807E09B0  C0 3F 04 F4 */	lfs f1, 0x4f4(r31)
/* 807E09B4  FC 40 08 90 */	fmr f2, f1
/* 807E09B8  FC 60 08 90 */	fmr f3, f1
/* 807E09BC  4B 82 C4 7D */	bl scaleM__14mDoMtx_stack_cFfff
/* 807E09C0  80 7F 05 E0 */	lwz r3, 0x5e0(r31)
/* 807E09C4  83 43 00 04 */	lwz r26, 4(r3)
/* 807E09C8  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 807E09CC  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 807E09D0  38 9A 00 24 */	addi r4, r26, 0x24
/* 807E09D4  4B B6 5A DD */	bl PSMTXCopy
/* 807E09D8  C0 3E 05 5C */	lfs f1, 0x55c(r30)
/* 807E09DC  C0 1F 08 84 */	lfs f0, 0x884(r31)
/* 807E09E0  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 807E09E4  41 82 00 50 */	beq lbl_807E0A34
/* 807E09E8  80 7F 08 18 */	lwz r3, 0x818(r31)
/* 807E09EC  54 60 05 29 */	rlwinm. r0, r3, 0, 0x14, 0x14
/* 807E09F0  41 82 00 24 */	beq lbl_807E0A14
/* 807E09F4  C0 3F 09 B8 */	lfs f1, 0x9b8(r31)
/* 807E09F8  C0 1F 04 D4 */	lfs f0, 0x4d4(r31)
/* 807E09FC  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 807E0A00  40 81 00 14 */	ble lbl_807E0A14
/* 807E0A04  38 7F 09 6C */	addi r3, r31, 0x96c
/* 807E0A08  4B 9C AA B9 */	bl dKy_pol_sound_get__FPC13cBgS_PolyInfo
/* 807E0A0C  54 77 06 3E */	clrlwi r23, r3, 0x18
/* 807E0A10  48 00 00 28 */	b lbl_807E0A38
lbl_807E0A14:
/* 807E0A14  54 60 06 B5 */	rlwinm. r0, r3, 0, 0x1a, 0x1a
/* 807E0A18  41 82 00 14 */	beq lbl_807E0A2C
/* 807E0A1C  38 7F 08 DC */	addi r3, r31, 0x8dc
/* 807E0A20  4B 9C AA A1 */	bl dKy_pol_sound_get__FPC13cBgS_PolyInfo
/* 807E0A24  54 77 06 3E */	clrlwi r23, r3, 0x18
/* 807E0A28  48 00 00 10 */	b lbl_807E0A38
lbl_807E0A2C:
/* 807E0A2C  3A E0 00 00 */	li r23, 0
/* 807E0A30  48 00 00 08 */	b lbl_807E0A38
lbl_807E0A34:
/* 807E0A34  3A E0 00 00 */	li r23, 0
lbl_807E0A38:
/* 807E0A38  88 1F 04 E2 */	lbz r0, 0x4e2(r31)
/* 807E0A3C  7C 03 07 74 */	extsb r3, r0
/* 807E0A40  4B 84 C6 2D */	bl dComIfGp_getReverb__Fi
/* 807E0A44  7C 65 1B 78 */	mr r5, r3
/* 807E0A48  80 7F 05 E0 */	lwz r3, 0x5e0(r31)
/* 807E0A4C  7E E4 BB 78 */	mr r4, r23
/* 807E0A50  4B 83 06 61 */	bl play__16mDoExt_McaMorfSOFUlSc
/* 807E0A54  80 7F 05 E0 */	lwz r3, 0x5e0(r31)
/* 807E0A58  4B 83 07 95 */	bl modelCalc__16mDoExt_McaMorfSOFv
/* 807E0A5C  7F E3 FB 78 */	mr r3, r31
/* 807E0A60  4B FF F0 B9 */	bl anm_se_eff_set__FP10e_wb_class
/* 807E0A64  A8 1F 06 90 */	lha r0, 0x690(r31)
/* 807E0A68  2C 00 00 32 */	cmpwi r0, 0x32
/* 807E0A6C  41 82 05 1C */	beq lbl_807E0F88
/* 807E0A70  C3 FE 00 60 */	lfs f31, 0x60(r30)
/* 807E0A74  88 1F 07 9D */	lbz r0, 0x79d(r31)
/* 807E0A78  7C 00 07 74 */	extsb r0, r0
/* 807E0A7C  2C 00 00 02 */	cmpwi r0, 2
/* 807E0A80  41 80 00 0C */	blt lbl_807E0A8C
/* 807E0A84  C0 1E 05 60 */	lfs f0, 0x560(r30)
/* 807E0A88  EF FF 00 2A */	fadds f31, f31, f0
lbl_807E0A8C:
/* 807E0A8C  80 7A 00 84 */	lwz r3, 0x84(r26)
/* 807E0A90  80 83 00 0C */	lwz r4, 0xc(r3)
/* 807E0A94  80 7F 06 88 */	lwz r3, 0x688(r31)
/* 807E0A98  38 03 00 0D */	addi r0, r3, 0xd
/* 807E0A9C  1C 00 00 30 */	mulli r0, r0, 0x30
/* 807E0AA0  7C 64 02 14 */	add r3, r4, r0
/* 807E0AA4  3C 80 80 45 */	lis r4, calc_mtx@ha /* 0x80450768@ha */
/* 807E0AA8  38 84 07 68 */	addi r4, r4, calc_mtx@l /* 0x80450768@l */
/* 807E0AAC  80 84 00 00 */	lwz r4, 0(r4)
/* 807E0AB0  4B B6 5A 01 */	bl PSMTXCopy
/* 807E0AB4  C0 1E 00 80 */	lfs f0, 0x80(r30)
/* 807E0AB8  D0 01 00 64 */	stfs f0, 0x64(r1)
/* 807E0ABC  C0 1E 01 34 */	lfs f0, 0x134(r30)
/* 807E0AC0  D0 01 00 68 */	stfs f0, 0x68(r1)
/* 807E0AC4  C0 1E 00 48 */	lfs f0, 0x48(r30)
/* 807E0AC8  D0 01 00 6C */	stfs f0, 0x6c(r1)
/* 807E0ACC  38 61 00 64 */	addi r3, r1, 0x64
/* 807E0AD0  38 9F 05 38 */	addi r4, r31, 0x538
/* 807E0AD4  4B A9 04 19 */	bl MtxPosition__FP4cXyzP4cXyz
/* 807E0AD8  3C 60 80 44 */	lis r3, sincosTable___5JMath@ha /* 0x80439A20@ha */
/* 807E0ADC  38 83 9A 20 */	addi r4, r3, sincosTable___5JMath@l /* 0x80439A20@l */
/* 807E0AE0  A8 1F 04 E6 */	lha r0, 0x4e6(r31)
/* 807E0AE4  54 00 04 38 */	rlwinm r0, r0, 0, 0x10, 0x1c
/* 807E0AE8  7C 64 02 14 */	add r3, r4, r0
/* 807E0AEC  C0 03 00 04 */	lfs f0, 4(r3)
/* 807E0AF0  C0 3F 04 D8 */	lfs f1, 0x4d8(r31)
/* 807E0AF4  C0 5E 00 38 */	lfs f2, 0x38(r30)
/* 807E0AF8  EC 02 00 32 */	fmuls f0, f2, f0
/* 807E0AFC  EC 81 00 28 */	fsubs f4, f1, f0
/* 807E0B00  C0 3E 00 C4 */	lfs f1, 0xc4(r30)
/* 807E0B04  C0 1F 04 D4 */	lfs f0, 0x4d4(r31)
/* 807E0B08  EC 61 00 2A */	fadds f3, f1, f0
/* 807E0B0C  7C 04 04 2E */	lfsx f0, r4, r0
/* 807E0B10  C0 3F 04 D0 */	lfs f1, 0x4d0(r31)
/* 807E0B14  EC 02 00 32 */	fmuls f0, f2, f0
/* 807E0B18  EC 01 00 28 */	fsubs f0, f1, f0
/* 807E0B1C  D0 1F 05 50 */	stfs f0, 0x550(r31)
/* 807E0B20  D0 7F 05 54 */	stfs f3, 0x554(r31)
/* 807E0B24  D0 9F 05 58 */	stfs f4, 0x558(r31)
/* 807E0B28  38 7F 0B 24 */	addi r3, r31, 0xb24
/* 807E0B2C  38 9F 05 38 */	addi r4, r31, 0x538
/* 807E0B30  4B A8 EB 19 */	bl SetC__8cM3dGSphFRC4cXyz
/* 807E0B34  38 7F 0B 24 */	addi r3, r31, 0xb24
/* 807E0B38  C0 3E 00 24 */	lfs f1, 0x24(r30)
/* 807E0B3C  C0 1C 00 08 */	lfs f0, 8(r28)
/* 807E0B40  EC 01 00 32 */	fmuls f0, f1, f0
/* 807E0B44  EC 20 07 F2 */	fmuls f1, f0, f31
/* 807E0B48  4B A8 EB C1 */	bl SetR__8cM3dGSphFf
/* 807E0B4C  A8 1F 06 90 */	lha r0, 0x690(r31)
/* 807E0B50  2C 00 00 65 */	cmpwi r0, 0x65
/* 807E0B54  38 00 00 02 */	li r0, 2
/* 807E0B58  40 82 00 08 */	bne lbl_807E0B60
/* 807E0B5C  38 00 00 04 */	li r0, 4
lbl_807E0B60:
/* 807E0B60  7C 17 03 78 */	mr r23, r0
/* 807E0B64  3B 00 00 00 */	li r24, 0
/* 807E0B68  3B 20 00 00 */	li r25, 0
lbl_807E0B6C:
/* 807E0B6C  38 79 0A 18 */	addi r3, r25, 0xa18
/* 807E0B70  7C 7F 1A 14 */	add r3, r31, r3
/* 807E0B74  7E E4 BB 78 */	mr r4, r23
/* 807E0B78  4B A8 3D 1D */	bl SetGrp__10cCcD_ObjTgFUl
/* 807E0B7C  3B 18 00 01 */	addi r24, r24, 1
/* 807E0B80  2C 18 00 07 */	cmpwi r24, 7
/* 807E0B84  3B 39 01 38 */	addi r25, r25, 0x138
/* 807E0B88  41 80 FF E4 */	blt lbl_807E0B6C
/* 807E0B8C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 807E0B90  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 807E0B94  3B 23 23 3C */	addi r25, r3, 0x233c
/* 807E0B98  7F 23 CB 78 */	mr r3, r25
/* 807E0B9C  38 9F 0A 00 */	addi r4, r31, 0xa00
/* 807E0BA0  4B A8 40 09 */	bl Set__4cCcSFP8cCcD_Obj
/* 807E0BA4  88 1F 06 BD */	lbz r0, 0x6bd(r31)
/* 807E0BA8  7C 00 07 75 */	extsb. r0, r0
/* 807E0BAC  41 82 01 AC */	beq lbl_807E0D58
/* 807E0BB0  C0 1E 01 34 */	lfs f0, 0x134(r30)
/* 807E0BB4  D0 01 00 64 */	stfs f0, 0x64(r1)
/* 807E0BB8  C0 1E 01 E4 */	lfs f0, 0x1e4(r30)
/* 807E0BBC  D0 01 00 68 */	stfs f0, 0x68(r1)
/* 807E0BC0  C0 1E 00 48 */	lfs f0, 0x48(r30)
/* 807E0BC4  D0 01 00 6C */	stfs f0, 0x6c(r1)
/* 807E0BC8  38 61 00 64 */	addi r3, r1, 0x64
/* 807E0BCC  38 81 00 58 */	addi r4, r1, 0x58
/* 807E0BD0  4B A9 03 1D */	bl MtxPosition__FP4cXyzP4cXyz
/* 807E0BD4  38 7F 13 AC */	addi r3, r31, 0x13ac
/* 807E0BD8  38 81 00 58 */	addi r4, r1, 0x58
/* 807E0BDC  4B A8 EA 6D */	bl SetC__8cM3dGSphFRC4cXyz
/* 807E0BE0  38 7F 13 AC */	addi r3, r31, 0x13ac
/* 807E0BE4  C0 3E 00 34 */	lfs f1, 0x34(r30)
/* 807E0BE8  C0 1C 00 08 */	lfs f0, 8(r28)
/* 807E0BEC  EC 21 00 32 */	fmuls f1, f1, f0
/* 807E0BF0  4B A8 EB 19 */	bl SetR__8cM3dGSphFf
/* 807E0BF4  7F 23 CB 78 */	mr r3, r25
/* 807E0BF8  38 9F 12 88 */	addi r4, r31, 0x1288
/* 807E0BFC  4B A8 3F AD */	bl Set__4cCcSFP8cCcD_Obj
/* 807E0C00  A8 1F 06 90 */	lha r0, 0x690(r31)
/* 807E0C04  2C 00 00 65 */	cmpwi r0, 0x65
/* 807E0C08  41 82 00 0C */	beq lbl_807E0C14
/* 807E0C0C  2C 00 00 66 */	cmpwi r0, 0x66
/* 807E0C10  40 82 00 10 */	bne lbl_807E0C20
lbl_807E0C14:
/* 807E0C14  38 00 00 02 */	li r0, 2
/* 807E0C18  90 1F 12 98 */	stw r0, 0x1298(r31)
/* 807E0C1C  48 00 00 0C */	b lbl_807E0C28
lbl_807E0C20:
/* 807E0C20  38 00 10 00 */	li r0, 0x1000
/* 807E0C24  90 1F 12 98 */	stw r0, 0x1298(r31)
lbl_807E0C28:
/* 807E0C28  C0 5F 05 2C */	lfs f2, 0x52c(r31)
/* 807E0C2C  38 7D 00 50 */	addi r3, r29, 0x50
/* 807E0C30  C0 23 00 14 */	lfs f1, 0x14(r3)
/* 807E0C34  C0 1E 00 DC */	lfs f0, 0xdc(r30)
/* 807E0C38  EC 01 00 28 */	fsubs f0, f1, f0
/* 807E0C3C  FC 02 00 40 */	fcmpo cr0, f2, f0
/* 807E0C40  40 81 00 C4 */	ble lbl_807E0D04
/* 807E0C44  38 00 00 07 */	li r0, 7
/* 807E0C48  98 1F 12 FF */	stb r0, 0x12ff(r31)
/* 807E0C4C  38 7F 12 88 */	addi r3, r31, 0x1288
/* 807E0C50  4B 8A 36 71 */	bl ChkAtHit__12dCcD_GObjInfFv
/* 807E0C54  28 03 00 00 */	cmplwi r3, 0
/* 807E0C58  41 82 00 B4 */	beq lbl_807E0D0C
/* 807E0C5C  38 7F 12 88 */	addi r3, r31, 0x1288
/* 807E0C60  4B 8A 36 F9 */	bl GetAtHitObj__12dCcD_GObjInfFv
/* 807E0C64  4B A8 2D E5 */	bl GetAc__8cCcD_ObjFv
/* 807E0C68  28 03 00 00 */	cmplwi r3, 0
/* 807E0C6C  41 82 00 A0 */	beq lbl_807E0D0C
/* 807E0C70  A8 03 00 08 */	lha r0, 8(r3)
/* 807E0C74  2C 00 01 D4 */	cmpwi r0, 0x1d4
/* 807E0C78  40 82 00 34 */	bne lbl_807E0CAC
/* 807E0C7C  3C 60 00 07 */	lis r3, 0x0007 /* 0x00070170@ha */
/* 807E0C80  38 03 01 70 */	addi r0, r3, 0x0170 /* 0x00070170@l */
/* 807E0C84  90 01 00 08 */	stw r0, 8(r1)
/* 807E0C88  38 7F 05 EC */	addi r3, r31, 0x5ec
/* 807E0C8C  38 81 00 08 */	addi r4, r1, 8
/* 807E0C90  38 A0 00 00 */	li r5, 0
/* 807E0C94  38 C0 FF FF */	li r6, -1
/* 807E0C98  81 9F 05 EC */	lwz r12, 0x5ec(r31)
/* 807E0C9C  81 8C 00 14 */	lwz r12, 0x14(r12)
/* 807E0CA0  7D 89 03 A6 */	mtctr r12
/* 807E0CA4  4E 80 04 21 */	bctrl 
/* 807E0CA8  48 00 00 64 */	b lbl_807E0D0C
lbl_807E0CAC:
/* 807E0CAC  2C 00 00 FD */	cmpwi r0, 0xfd
/* 807E0CB0  40 82 00 5C */	bne lbl_807E0D0C
/* 807E0CB4  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 807E0CB8  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 807E0CBC  80 63 5D AC */	lwz r3, 0x5dac(r3)
/* 807E0CC0  81 83 06 28 */	lwz r12, 0x628(r3)
/* 807E0CC4  81 8C 00 40 */	lwz r12, 0x40(r12)
/* 807E0CC8  7D 89 03 A6 */	mtctr r12
/* 807E0CCC  4E 80 04 21 */	bctrl 
/* 807E0CD0  2C 03 00 00 */	cmpwi r3, 0
/* 807E0CD4  41 82 00 38 */	beq lbl_807E0D0C
/* 807E0CD8  C0 3E 00 48 */	lfs f1, 0x48(r30)
/* 807E0CDC  D0 21 00 10 */	stfs f1, 0x10(r1)
/* 807E0CE0  C0 1E 00 60 */	lfs f0, 0x60(r30)
/* 807E0CE4  D0 01 00 14 */	stfs f0, 0x14(r1)
/* 807E0CE8  D0 21 00 18 */	stfs f1, 0x18(r1)
/* 807E0CEC  38 7B 4C 9C */	addi r3, r27, 0x4c9c
/* 807E0CF0  38 80 00 04 */	li r4, 4
/* 807E0CF4  38 A0 00 1F */	li r5, 0x1f
/* 807E0CF8  38 C1 00 10 */	addi r6, r1, 0x10
/* 807E0CFC  4B 88 ED 29 */	bl StartShock__12dVibration_cFii4cXyz
/* 807E0D00  48 00 00 0C */	b lbl_807E0D0C
lbl_807E0D04:
/* 807E0D04  38 00 00 00 */	li r0, 0
/* 807E0D08  98 1F 12 FF */	stb r0, 0x12ff(r31)
lbl_807E0D0C:
/* 807E0D0C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 807E0D10  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 807E0D14  80 63 5D AC */	lwz r3, 0x5dac(r3)
/* 807E0D18  81 83 06 28 */	lwz r12, 0x628(r3)
/* 807E0D1C  81 8C 01 88 */	lwz r12, 0x188(r12)
/* 807E0D20  7D 89 03 A6 */	mtctr r12
/* 807E0D24  4E 80 04 21 */	bctrl 
/* 807E0D28  28 03 00 00 */	cmplwi r3, 0
/* 807E0D2C  41 82 00 14 */	beq lbl_807E0D40
/* 807E0D30  80 1F 12 88 */	lwz r0, 0x1288(r31)
/* 807E0D34  54 00 07 B6 */	rlwinm r0, r0, 0, 0x1e, 0x1b
/* 807E0D38  90 1F 12 88 */	stw r0, 0x1288(r31)
/* 807E0D3C  48 00 00 10 */	b lbl_807E0D4C
lbl_807E0D40:
/* 807E0D40  80 1F 12 88 */	lwz r0, 0x1288(r31)
/* 807E0D44  60 00 00 0C */	ori r0, r0, 0xc
/* 807E0D48  90 1F 12 88 */	stw r0, 0x1288(r31)
lbl_807E0D4C:
/* 807E0D4C  38 00 00 00 */	li r0, 0
/* 807E0D50  98 1F 06 BD */	stb r0, 0x6bd(r31)
/* 807E0D54  48 00 00 24 */	b lbl_807E0D78
lbl_807E0D58:
/* 807E0D58  C0 1E 05 64 */	lfs f0, 0x564(r30)
/* 807E0D5C  D0 01 00 28 */	stfs f0, 0x28(r1)
/* 807E0D60  D0 01 00 2C */	stfs f0, 0x2c(r1)
/* 807E0D64  C0 1E 05 68 */	lfs f0, 0x568(r30)
/* 807E0D68  D0 01 00 30 */	stfs f0, 0x30(r1)
/* 807E0D6C  38 7F 13 AC */	addi r3, r31, 0x13ac
/* 807E0D70  38 81 00 28 */	addi r4, r1, 0x28
/* 807E0D74  4B A8 E8 D5 */	bl SetC__8cM3dGSphFRC4cXyz
lbl_807E0D78:
/* 807E0D78  C0 1E 01 34 */	lfs f0, 0x134(r30)
/* 807E0D7C  D0 01 00 64 */	stfs f0, 0x64(r1)
/* 807E0D80  C0 1E 00 48 */	lfs f0, 0x48(r30)
/* 807E0D84  D0 01 00 68 */	stfs f0, 0x68(r1)
/* 807E0D88  D0 01 00 6C */	stfs f0, 0x6c(r1)
/* 807E0D8C  80 7A 00 84 */	lwz r3, 0x84(r26)
/* 807E0D90  80 83 00 0C */	lwz r4, 0xc(r3)
/* 807E0D94  80 7F 06 88 */	lwz r3, 0x688(r31)
/* 807E0D98  38 03 00 0B */	addi r0, r3, 0xb
/* 807E0D9C  1C 00 00 30 */	mulli r0, r0, 0x30
/* 807E0DA0  7C 64 02 14 */	add r3, r4, r0
/* 807E0DA4  3C 80 80 45 */	lis r4, calc_mtx@ha /* 0x80450768@ha */
/* 807E0DA8  38 84 07 68 */	addi r4, r4, calc_mtx@l /* 0x80450768@l */
/* 807E0DAC  80 84 00 00 */	lwz r4, 0(r4)
/* 807E0DB0  4B B6 57 01 */	bl PSMTXCopy
/* 807E0DB4  38 61 00 64 */	addi r3, r1, 0x64
/* 807E0DB8  38 81 00 58 */	addi r4, r1, 0x58
/* 807E0DBC  4B A9 01 31 */	bl MtxPosition__FP4cXyzP4cXyz
/* 807E0DC0  38 7F 0C 5C */	addi r3, r31, 0xc5c
/* 807E0DC4  38 81 00 58 */	addi r4, r1, 0x58
/* 807E0DC8  4B A8 E8 81 */	bl SetC__8cM3dGSphFRC4cXyz
/* 807E0DCC  38 7F 0C 5C */	addi r3, r31, 0xc5c
/* 807E0DD0  C0 3E 00 1C */	lfs f1, 0x1c(r30)
/* 807E0DD4  C0 1C 00 08 */	lfs f0, 8(r28)
/* 807E0DD8  EC 21 00 32 */	fmuls f1, f1, f0
/* 807E0DDC  4B A8 E9 2D */	bl SetR__8cM3dGSphFf
/* 807E0DE0  80 7A 00 84 */	lwz r3, 0x84(r26)
/* 807E0DE4  80 83 00 0C */	lwz r4, 0xc(r3)
/* 807E0DE8  80 7F 06 88 */	lwz r3, 0x688(r31)
/* 807E0DEC  38 03 00 11 */	addi r0, r3, 0x11
/* 807E0DF0  1C 00 00 30 */	mulli r0, r0, 0x30
/* 807E0DF4  7C 64 02 14 */	add r3, r4, r0
/* 807E0DF8  3C 80 80 45 */	lis r4, calc_mtx@ha /* 0x80450768@ha */
/* 807E0DFC  38 84 07 68 */	addi r4, r4, calc_mtx@l /* 0x80450768@l */
/* 807E0E00  80 84 00 00 */	lwz r4, 0(r4)
/* 807E0E04  4B B6 56 AD */	bl PSMTXCopy
/* 807E0E08  C0 1E 00 20 */	lfs f0, 0x20(r30)
/* 807E0E0C  D0 01 00 64 */	stfs f0, 0x64(r1)
/* 807E0E10  C0 1E 00 50 */	lfs f0, 0x50(r30)
/* 807E0E14  D0 01 00 68 */	stfs f0, 0x68(r1)
/* 807E0E18  C0 1E 00 48 */	lfs f0, 0x48(r30)
/* 807E0E1C  D0 01 00 6C */	stfs f0, 0x6c(r1)
/* 807E0E20  38 61 00 64 */	addi r3, r1, 0x64
/* 807E0E24  38 81 00 58 */	addi r4, r1, 0x58
/* 807E0E28  4B A9 00 C5 */	bl MtxPosition__FP4cXyzP4cXyz
/* 807E0E2C  38 7F 0D 94 */	addi r3, r31, 0xd94
/* 807E0E30  38 81 00 58 */	addi r4, r1, 0x58
/* 807E0E34  4B A8 E8 15 */	bl SetC__8cM3dGSphFRC4cXyz
/* 807E0E38  38 7F 0D 94 */	addi r3, r31, 0xd94
/* 807E0E3C  C0 5E 00 50 */	lfs f2, 0x50(r30)
/* 807E0E40  C0 3E 00 24 */	lfs f1, 0x24(r30)
/* 807E0E44  C0 1C 00 08 */	lfs f0, 8(r28)
/* 807E0E48  EC 01 00 32 */	fmuls f0, f1, f0
/* 807E0E4C  EC 22 00 2A */	fadds f1, f2, f0
/* 807E0E50  4B A8 E8 B9 */	bl SetR__8cM3dGSphFf
/* 807E0E54  7F 23 CB 78 */	mr r3, r25
/* 807E0E58  38 9F 0B 38 */	addi r4, r31, 0xb38
/* 807E0E5C  4B A8 3D 4D */	bl Set__4cCcSFP8cCcD_Obj
/* 807E0E60  7F 23 CB 78 */	mr r3, r25
/* 807E0E64  38 9F 0C 70 */	addi r4, r31, 0xc70
/* 807E0E68  4B A8 3D 41 */	bl Set__4cCcSFP8cCcD_Obj
/* 807E0E6C  C0 1E 00 48 */	lfs f0, 0x48(r30)
/* 807E0E70  D0 01 00 64 */	stfs f0, 0x64(r1)
/* 807E0E74  D0 01 00 68 */	stfs f0, 0x68(r1)
/* 807E0E78  D0 01 00 6C */	stfs f0, 0x6c(r1)
/* 807E0E7C  3B 60 00 00 */	li r27, 0
/* 807E0E80  3B A0 00 00 */	li r29, 0
/* 807E0E84  C3 FE 00 50 */	lfs f31, 0x50(r30)
lbl_807E0E88:
/* 807E0E88  88 1F 07 9D */	lbz r0, 0x79d(r31)
/* 807E0E8C  7C 00 07 75 */	extsb. r0, r0
/* 807E0E90  41 82 00 34 */	beq lbl_807E0EC4
/* 807E0E94  80 7A 00 84 */	lwz r3, 0x84(r26)
/* 807E0E98  80 83 00 0C */	lwz r4, 0xc(r3)
/* 807E0E9C  3C 60 80 7E */	lis r3, foot_no_B@ha /* 0x807E33DC@ha */
/* 807E0EA0  38 63 33 DC */	addi r3, r3, foot_no_B@l /* 0x807E33DC@l */
/* 807E0EA4  7C 03 E8 2E */	lwzx r0, r3, r29
/* 807E0EA8  1C 00 00 30 */	mulli r0, r0, 0x30
/* 807E0EAC  7C 64 02 14 */	add r3, r4, r0
/* 807E0EB0  3C 80 80 45 */	lis r4, calc_mtx@ha /* 0x80450768@ha */
/* 807E0EB4  38 84 07 68 */	addi r4, r4, calc_mtx@l /* 0x80450768@l */
/* 807E0EB8  80 84 00 00 */	lwz r4, 0(r4)
/* 807E0EBC  4B B6 55 F5 */	bl PSMTXCopy
/* 807E0EC0  48 00 00 30 */	b lbl_807E0EF0
lbl_807E0EC4:
/* 807E0EC4  80 7A 00 84 */	lwz r3, 0x84(r26)
/* 807E0EC8  80 83 00 0C */	lwz r4, 0xc(r3)
/* 807E0ECC  3C 60 80 7E */	lis r3, foot_no@ha /* 0x807E33CC@ha */
/* 807E0ED0  38 63 33 CC */	addi r3, r3, foot_no@l /* 0x807E33CC@l */
/* 807E0ED4  7C 03 E8 2E */	lwzx r0, r3, r29
/* 807E0ED8  1C 00 00 30 */	mulli r0, r0, 0x30
/* 807E0EDC  7C 64 02 14 */	add r3, r4, r0
/* 807E0EE0  3C 80 80 45 */	lis r4, calc_mtx@ha /* 0x80450768@ha */
/* 807E0EE4  38 84 07 68 */	addi r4, r4, calc_mtx@l /* 0x80450768@l */
/* 807E0EE8  80 84 00 00 */	lwz r4, 0(r4)
/* 807E0EEC  4B B6 55 C5 */	bl PSMTXCopy
lbl_807E0EF0:
/* 807E0EF0  38 61 00 64 */	addi r3, r1, 0x64
/* 807E0EF4  38 81 00 58 */	addi r4, r1, 0x58
/* 807E0EF8  4B A8 FF F5 */	bl MtxPosition__FP4cXyzP4cXyz
/* 807E0EFC  38 1B 00 03 */	addi r0, r27, 3
/* 807E0F00  1C 00 01 38 */	mulli r0, r0, 0x138
/* 807E0F04  7E FF 02 14 */	add r23, r31, r0
/* 807E0F08  3B 17 0B 24 */	addi r24, r23, 0xb24
/* 807E0F0C  7F 03 C3 78 */	mr r3, r24
/* 807E0F10  38 81 00 58 */	addi r4, r1, 0x58
/* 807E0F14  4B A8 E7 35 */	bl SetC__8cM3dGSphFRC4cXyz
/* 807E0F18  7F 03 C3 78 */	mr r3, r24
/* 807E0F1C  C0 1C 00 08 */	lfs f0, 8(r28)
/* 807E0F20  EC 3F 00 32 */	fmuls f1, f31, f0
/* 807E0F24  4B A8 E7 E5 */	bl SetR__8cM3dGSphFf
/* 807E0F28  7F 23 CB 78 */	mr r3, r25
/* 807E0F2C  38 97 0A 00 */	addi r4, r23, 0xa00
/* 807E0F30  4B A8 3C 79 */	bl Set__4cCcSFP8cCcD_Obj
/* 807E0F34  3B 7B 00 01 */	addi r27, r27, 1
/* 807E0F38  2C 1B 00 04 */	cmpwi r27, 4
/* 807E0F3C  3B BD 00 04 */	addi r29, r29, 4
/* 807E0F40  41 80 FF 48 */	blt lbl_807E0E88
/* 807E0F44  38 60 00 00 */	li r3, 0
/* 807E0F48  38 00 00 06 */	li r0, 6
/* 807E0F4C  7C 09 03 A6 */	mtctr r0
lbl_807E0F50:
/* 807E0F50  88 1F 07 9D */	lbz r0, 0x79d(r31)
/* 807E0F54  7C 00 07 75 */	extsb. r0, r0
/* 807E0F58  40 82 00 18 */	bne lbl_807E0F70
/* 807E0F5C  38 83 0B 50 */	addi r4, r3, 0xb50
/* 807E0F60  7C 1F 20 2E */	lwzx r0, r31, r4
/* 807E0F64  60 00 00 01 */	ori r0, r0, 1
/* 807E0F68  7C 1F 21 2E */	stwx r0, r31, r4
/* 807E0F6C  48 00 00 14 */	b lbl_807E0F80
lbl_807E0F70:
/* 807E0F70  38 83 0B 50 */	addi r4, r3, 0xb50
/* 807E0F74  7C 1F 20 2E */	lwzx r0, r31, r4
/* 807E0F78  54 00 00 3C */	rlwinm r0, r0, 0, 0, 0x1e
/* 807E0F7C  7C 1F 21 2E */	stwx r0, r31, r4
lbl_807E0F80:
/* 807E0F80  38 63 01 38 */	addi r3, r3, 0x138
/* 807E0F84  42 00 FF CC */	bdnz lbl_807E0F50
lbl_807E0F88:
/* 807E0F88  A8 7F 16 88 */	lha r3, 0x1688(r31)
/* 807E0F8C  A8 1F 16 8A */	lha r0, 0x168a(r31)
/* 807E0F90  7C 03 02 14 */	add r0, r3, r0
/* 807E0F94  B0 1F 16 88 */	sth r0, 0x1688(r31)
/* 807E0F98  38 7F 16 8A */	addi r3, r31, 0x168a
/* 807E0F9C  C0 5E 01 0C */	lfs f2, 0x10c(r30)
/* 807E0FA0  C0 3E 00 1C */	lfs f1, 0x1c(r30)
/* 807E0FA4  C0 1F 05 2C */	lfs f0, 0x52c(r31)
/* 807E0FA8  EC 01 00 32 */	fmuls f0, f1, f0
/* 807E0FAC  EC 02 00 2A */	fadds f0, f2, f0
/* 807E0FB0  FC 00 00 1E */	fctiwz f0, f0
/* 807E0FB4  D8 01 01 38 */	stfd f0, 0x138(r1)
/* 807E0FB8  80 81 01 3C */	lwz r4, 0x13c(r1)
/* 807E0FBC  38 A0 00 01 */	li r5, 1
/* 807E0FC0  38 C0 00 3C */	li r6, 0x3c
/* 807E0FC4  4B A8 F6 45 */	bl cLib_addCalcAngleS2__FPssss
/* 807E0FC8  38 7F 16 84 */	addi r3, r31, 0x1684
/* 807E0FCC  C0 3E 00 E8 */	lfs f1, 0xe8(r30)
/* 807E0FD0  C0 1F 05 2C */	lfs f0, 0x52c(r31)
/* 807E0FD4  EC 21 00 32 */	fmuls f1, f1, f0
/* 807E0FD8  C0 5E 00 60 */	lfs f2, 0x60(r30)
/* 807E0FDC  C0 7E 05 6C */	lfs f3, 0x56c(r30)
/* 807E0FE0  4B A8 EA 5D */	bl cLib_addCalc2__FPffff
/* 807E0FE4  38 00 FF FF */	li r0, -1
/* 807E0FE8  90 1F 14 34 */	stw r0, 0x1434(r31)
/* 807E0FEC  7F E3 FB 78 */	mr r3, r31
/* 807E0FF0  4B FF 8D 55 */	bl effect_set__FP10e_wb_class
/* 807E0FF4  38 00 00 00 */	li r0, 0
/* 807E0FF8  98 1F 06 C0 */	stb r0, 0x6c0(r31)
/* 807E0FFC  38 60 00 01 */	li r3, 1
lbl_807E1000:
/* 807E1000  E3 E1 01 78 */	psq_l f31, 376(r1), 0, 0 /* qr0 */
/* 807E1004  CB E1 01 70 */	lfd f31, 0x170(r1)
/* 807E1008  39 61 01 70 */	addi r11, r1, 0x170
/* 807E100C  4B B8 12 05 */	bl _restgpr_23
/* 807E1010  80 01 01 84 */	lwz r0, 0x184(r1)
/* 807E1014  7C 08 03 A6 */	mtlr r0
/* 807E1018  38 21 01 80 */	addi r1, r1, 0x180
/* 807E101C  4E 80 00 20 */	blr 
