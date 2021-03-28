lbl_8047D1D8:
/* 8047D1D8  94 21 FF 20 */	stwu r1, -0xe0(r1)
/* 8047D1DC  7C 08 02 A6 */	mflr r0
/* 8047D1E0  90 01 00 E4 */	stw r0, 0xe4(r1)
/* 8047D1E4  39 61 00 E0 */	addi r11, r1, 0xe0
/* 8047D1E8  4B EE 4F E0 */	b _savegpr_24
/* 8047D1EC  7C 7E 1B 78 */	mr r30, r3
/* 8047D1F0  3C 80 80 48 */	lis r4, lit_3770@ha
/* 8047D1F4  3B E4 D8 10 */	addi r31, r4, lit_3770@l
/* 8047D1F8  80 03 04 A0 */	lwz r0, 0x4a0(r3)
/* 8047D1FC  54 00 07 39 */	rlwinm. r0, r0, 0, 0x1c, 0x1c
/* 8047D200  40 82 00 E0 */	bne lbl_8047D2E0
/* 8047D204  7F C0 F3 79 */	or. r0, r30, r30
/* 8047D208  41 82 00 CC */	beq lbl_8047D2D4
/* 8047D20C  7C 1D 03 78 */	mr r29, r0
/* 8047D210  4B B9 B9 54 */	b __ct__10fopAc_ac_cFv
/* 8047D214  38 7D 05 7C */	addi r3, r29, 0x57c
/* 8047D218  4B E4 31 B0 */	b __ct__10Z2CreatureFv
/* 8047D21C  3C 60 80 3C */	lis r3, __vt__9cCcD_Stts@ha
/* 8047D220  38 03 37 28 */	addi r0, r3, __vt__9cCcD_Stts@l
/* 8047D224  90 1D 06 54 */	stw r0, 0x654(r29)
/* 8047D228  38 7D 06 58 */	addi r3, r29, 0x658
/* 8047D22C  4B C0 65 34 */	b __ct__10dCcD_GSttsFv
/* 8047D230  3C 60 80 3B */	lis r3, __vt__9dCcD_Stts@ha
/* 8047D234  38 63 C2 E4 */	addi r3, r3, __vt__9dCcD_Stts@l
/* 8047D238  90 7D 06 54 */	stw r3, 0x654(r29)
/* 8047D23C  38 03 00 20 */	addi r0, r3, 0x20
/* 8047D240  90 1D 06 58 */	stw r0, 0x658(r29)
/* 8047D244  38 7D 06 78 */	addi r3, r29, 0x678
/* 8047D248  3C 80 80 48 */	lis r4, __ct__8dCcD_SphFv@ha
/* 8047D24C  38 84 D6 64 */	addi r4, r4, __ct__8dCcD_SphFv@l
/* 8047D250  3C A0 80 48 */	lis r5, __dt__8dCcD_SphFv@ha
/* 8047D254  38 A5 D5 98 */	addi r5, r5, __dt__8dCcD_SphFv@l
/* 8047D258  38 C0 01 38 */	li r6, 0x138
/* 8047D25C  38 E0 00 08 */	li r7, 8
/* 8047D260  4B EE 4B 00 */	b __construct_array
/* 8047D264  3C 60 80 48 */	lis r3, __vt__18mDoExt_3DlineMat_c@ha
/* 8047D268  38 03 D9 A0 */	addi r0, r3, __vt__18mDoExt_3DlineMat_c@l
/* 8047D26C  90 1D 10 3C */	stw r0, 0x103c(r29)
/* 8047D270  3C 60 80 3A */	lis r3, __vt__19mDoExt_3DlineMat0_c@ha
/* 8047D274  38 03 32 5C */	addi r0, r3, __vt__19mDoExt_3DlineMat0_c@l
/* 8047D278  90 1D 10 3C */	stw r0, 0x103c(r29)
/* 8047D27C  38 7D 12 38 */	addi r3, r29, 0x1238
/* 8047D280  3C 80 80 48 */	lis r4, __ct__4cXyzFv@ha
/* 8047D284  38 84 D5 94 */	addi r4, r4, __ct__4cXyzFv@l
/* 8047D288  3C A0 80 48 */	lis r5, __dt__4cXyzFv@ha
/* 8047D28C  38 A5 B9 A4 */	addi r5, r5, __dt__4cXyzFv@l
/* 8047D290  38 C0 00 0C */	li r6, 0xc
/* 8047D294  38 E0 00 06 */	li r7, 6
/* 8047D298  4B EE 4A C8 */	b __construct_array
/* 8047D29C  3C 60 80 48 */	lis r3, __vt__18mDoExt_3DlineMat_c@ha
/* 8047D2A0  38 03 D9 A0 */	addi r0, r3, __vt__18mDoExt_3DlineMat_c@l
/* 8047D2A4  90 1D 12 98 */	stw r0, 0x1298(r29)
/* 8047D2A8  3C 60 80 3A */	lis r3, __vt__19mDoExt_3DlineMat0_c@ha
/* 8047D2AC  38 03 32 5C */	addi r0, r3, __vt__19mDoExt_3DlineMat0_c@l
/* 8047D2B0  90 1D 12 98 */	stw r0, 0x1298(r29)
/* 8047D2B4  38 7D 14 94 */	addi r3, r29, 0x1494
/* 8047D2B8  3C 80 80 48 */	lis r4, __ct__4cXyzFv@ha
/* 8047D2BC  38 84 D5 94 */	addi r4, r4, __ct__4cXyzFv@l
/* 8047D2C0  3C A0 80 48 */	lis r5, __dt__4cXyzFv@ha
/* 8047D2C4  38 A5 B9 A4 */	addi r5, r5, __dt__4cXyzFv@l
/* 8047D2C8  38 C0 00 0C */	li r6, 0xc
/* 8047D2CC  38 E0 00 06 */	li r7, 6
/* 8047D2D0  4B EE 4A 90 */	b __construct_array
lbl_8047D2D4:
/* 8047D2D4  80 1E 04 A0 */	lwz r0, 0x4a0(r30)
/* 8047D2D8  60 00 00 08 */	ori r0, r0, 8
/* 8047D2DC  90 1E 04 A0 */	stw r0, 0x4a0(r30)
lbl_8047D2E0:
/* 8047D2E0  38 7E 05 68 */	addi r3, r30, 0x568
/* 8047D2E4  3C 80 80 48 */	lis r4, stringBase0@ha
/* 8047D2E8  38 84 D8 D4 */	addi r4, r4, stringBase0@l
/* 8047D2EC  4B BA FB D0 */	b dComIfG_resLoad__FP30request_of_phase_process_classPCc
/* 8047D2F0  7C 7D 1B 78 */	mr r29, r3
/* 8047D2F4  2C 1D 00 04 */	cmpwi r29, 4
/* 8047D2F8  40 82 02 80 */	bne lbl_8047D578
/* 8047D2FC  80 1E 00 B0 */	lwz r0, 0xb0(r30)
/* 8047D300  54 00 07 FE */	clrlwi r0, r0, 0x1f
/* 8047D304  98 1E 05 70 */	stb r0, 0x570(r30)
/* 8047D308  80 1E 00 B0 */	lwz r0, 0xb0(r30)
/* 8047D30C  54 00 FF 3E */	rlwinm r0, r0, 0x1f, 0x1c, 0x1f
/* 8047D310  98 1E 05 71 */	stb r0, 0x571(r30)
/* 8047D314  7F C3 F3 78 */	mr r3, r30
/* 8047D318  3C 80 80 48 */	lis r4, useHeapInit__FP10fopAc_ac_c@ha
/* 8047D31C  38 84 D0 24 */	addi r4, r4, useHeapInit__FP10fopAc_ac_c@l
/* 8047D320  38 A0 5B 20 */	li r5, 0x5b20
/* 8047D324  4B B9 D1 8C */	b fopAcM_entrySolidHeap__FP10fopAc_ac_cPFP10fopAc_ac_c_iUl
/* 8047D328  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 8047D32C  40 82 00 0C */	bne lbl_8047D338
/* 8047D330  38 60 00 05 */	li r3, 5
/* 8047D334  48 00 02 48 */	b lbl_8047D57C
lbl_8047D338:
/* 8047D338  3C 60 80 48 */	lis r3, data_8047D9C8@ha
/* 8047D33C  8C 03 D9 C8 */	lbzu r0, data_8047D9C8@l(r3)
/* 8047D340  28 00 00 00 */	cmplwi r0, 0
/* 8047D344  40 82 00 20 */	bne lbl_8047D364
/* 8047D348  38 00 00 01 */	li r0, 1
/* 8047D34C  98 1E 15 0B */	stb r0, 0x150b(r30)
/* 8047D350  98 03 00 00 */	stb r0, 0(r3)
/* 8047D354  38 00 FF FF */	li r0, -1
/* 8047D358  3C 60 80 48 */	lis r3, l_HIO@ha
/* 8047D35C  38 63 D9 D8 */	addi r3, r3, l_HIO@l
/* 8047D360  98 03 00 04 */	stb r0, 4(r3)
lbl_8047D364:
/* 8047D364  80 7E 05 74 */	lwz r3, 0x574(r30)
/* 8047D368  38 03 00 24 */	addi r0, r3, 0x24
/* 8047D36C  90 1E 05 04 */	stw r0, 0x504(r30)
/* 8047D370  7F C3 F3 78 */	mr r3, r30
/* 8047D374  C0 3F 00 B0 */	lfs f1, 0xb0(r31)
/* 8047D378  FC 40 08 90 */	fmr f2, f1
/* 8047D37C  FC 60 08 90 */	fmr f3, f1
/* 8047D380  4B B9 D1 A8 */	b fopAcM_SetMin__FP10fopAc_ac_cfff
/* 8047D384  7F C3 F3 78 */	mr r3, r30
/* 8047D388  C0 3F 00 B4 */	lfs f1, 0xb4(r31)
/* 8047D38C  FC 40 08 90 */	fmr f2, f1
/* 8047D390  FC 60 08 90 */	fmr f3, f1
/* 8047D394  4B B9 D1 A4 */	b fopAcM_SetMax__FP10fopAc_ac_cfff
/* 8047D398  38 00 00 04 */	li r0, 4
/* 8047D39C  90 1E 05 5C */	stw r0, 0x55c(r30)
/* 8047D3A0  38 00 00 16 */	li r0, 0x16
/* 8047D3A4  98 1E 05 46 */	stb r0, 0x546(r30)
/* 8047D3A8  C0 3F 00 AC */	lfs f1, 0xac(r31)
/* 8047D3AC  4B DE A5 A8 */	b cM_rndF__Ff
/* 8047D3B0  FC 00 08 1E */	fctiwz f0, f1
/* 8047D3B4  D8 01 00 B8 */	stfd f0, 0xb8(r1)
/* 8047D3B8  80 01 00 BC */	lwz r0, 0xbc(r1)
/* 8047D3BC  B0 1E 06 0C */	sth r0, 0x60c(r30)
/* 8047D3C0  38 7E 06 3C */	addi r3, r30, 0x63c
/* 8047D3C4  38 80 00 FF */	li r4, 0xff
/* 8047D3C8  38 A0 00 00 */	li r5, 0
/* 8047D3CC  7F C6 F3 78 */	mr r6, r30
/* 8047D3D0  4B C0 64 90 */	b Init__9dCcD_SttsFiiP10fopAc_ac_c
/* 8047D3D4  3B 00 00 00 */	li r24, 0
/* 8047D3D8  3B 80 00 00 */	li r28, 0
/* 8047D3DC  3C 60 80 48 */	lis r3, cc_sph_src@ha
/* 8047D3E0  3B 43 D8 DC */	addi r26, r3, cc_sph_src@l
/* 8047D3E4  3B 7E 06 3C */	addi r27, r30, 0x63c
lbl_8047D3E8:
/* 8047D3E8  7F 3E E2 14 */	add r25, r30, r28
/* 8047D3EC  38 79 06 78 */	addi r3, r25, 0x678
/* 8047D3F0  7F 44 D3 78 */	mr r4, r26
/* 8047D3F4  4B C0 76 40 */	b Set__8dCcD_SphFRC11dCcD_SrcSph
/* 8047D3F8  93 79 06 BC */	stw r27, 0x6bc(r25)
/* 8047D3FC  3B 18 00 01 */	addi r24, r24, 1
/* 8047D400  2C 18 00 08 */	cmpwi r24, 8
/* 8047D404  3B 9C 01 38 */	addi r28, r28, 0x138
/* 8047D408  41 80 FF E0 */	blt lbl_8047D3E8
/* 8047D40C  38 7E 05 7C */	addi r3, r30, 0x57c
/* 8047D410  38 9E 04 D0 */	addi r4, r30, 0x4d0
/* 8047D414  7C 85 23 78 */	mr r5, r4
/* 8047D418  38 C0 00 03 */	li r6, 3
/* 8047D41C  38 E0 00 01 */	li r7, 1
/* 8047D420  4B E4 31 10 */	b init__10Z2CreatureFP3VecP3VecUcUc
/* 8047D424  88 1E 05 71 */	lbz r0, 0x571(r30)
/* 8047D428  54 00 10 3A */	slwi r0, r0, 2
/* 8047D42C  3C 60 80 48 */	lis r3, obj_size@ha
/* 8047D430  38 63 D9 1C */	addi r3, r3, obj_size@l
/* 8047D434  7C 03 04 2E */	lfsx f0, r3, r0
/* 8047D438  D0 1E 04 EC */	stfs f0, 0x4ec(r30)
/* 8047D43C  88 1E 04 E2 */	lbz r0, 0x4e2(r30)
/* 8047D440  2C 00 00 04 */	cmpwi r0, 4
/* 8047D444  40 82 00 20 */	bne lbl_8047D464
/* 8047D448  C0 1F 00 B8 */	lfs f0, 0xb8(r31)
/* 8047D44C  D0 1E 06 18 */	stfs f0, 0x618(r30)
/* 8047D450  C0 1F 00 BC */	lfs f0, 0xbc(r31)
/* 8047D454  D0 1E 06 1C */	stfs f0, 0x61c(r30)
/* 8047D458  C0 1F 00 C0 */	lfs f0, 0xc0(r31)
/* 8047D45C  D0 1E 06 20 */	stfs f0, 0x620(r30)
/* 8047D460  48 00 01 18 */	b lbl_8047D578
lbl_8047D464:
/* 8047D464  3C 60 80 45 */	lis r3, calc_mtx@ha
/* 8047D468  38 63 07 68 */	addi r3, r3, calc_mtx@l
/* 8047D46C  80 63 00 00 */	lwz r3, 0(r3)
/* 8047D470  A8 9E 04 DE */	lha r4, 0x4de(r30)
/* 8047D474  4B B8 EF 68 */	b mDoMtx_YrotS__FPA4_fs
/* 8047D478  3C 60 80 45 */	lis r3, calc_mtx@ha
/* 8047D47C  38 63 07 68 */	addi r3, r3, calc_mtx@l
/* 8047D480  80 63 00 00 */	lwz r3, 0(r3)
/* 8047D484  A8 9E 04 DC */	lha r4, 0x4dc(r30)
/* 8047D488  4B B8 EF 14 */	b mDoMtx_XrotM__FPA4_fs
/* 8047D48C  C0 1F 00 18 */	lfs f0, 0x18(r31)
/* 8047D490  D0 01 00 38 */	stfs f0, 0x38(r1)
/* 8047D494  88 1E 05 70 */	lbz r0, 0x570(r30)
/* 8047D498  28 00 00 00 */	cmplwi r0, 0
/* 8047D49C  40 82 00 10 */	bne lbl_8047D4AC
/* 8047D4A0  C0 1F 00 8C */	lfs f0, 0x8c(r31)
/* 8047D4A4  D0 01 00 3C */	stfs f0, 0x3c(r1)
/* 8047D4A8  48 00 00 0C */	b lbl_8047D4B4
lbl_8047D4AC:
/* 8047D4AC  C0 1F 00 90 */	lfs f0, 0x90(r31)
/* 8047D4B0  D0 01 00 3C */	stfs f0, 0x3c(r1)
lbl_8047D4B4:
/* 8047D4B4  C0 1F 00 18 */	lfs f0, 0x18(r31)
/* 8047D4B8  D0 01 00 40 */	stfs f0, 0x40(r1)
/* 8047D4BC  38 61 00 38 */	addi r3, r1, 0x38
/* 8047D4C0  38 81 00 2C */	addi r4, r1, 0x2c
/* 8047D4C4  4B DF 3A 28 */	b MtxPosition__FP4cXyzP4cXyz
/* 8047D4C8  38 61 00 44 */	addi r3, r1, 0x44
/* 8047D4CC  4B BF A7 9C */	b __ct__11dBgS_LinChkFv
/* 8047D4D0  38 61 00 14 */	addi r3, r1, 0x14
/* 8047D4D4  38 9E 04 D0 */	addi r4, r30, 0x4d0
/* 8047D4D8  38 A1 00 2C */	addi r5, r1, 0x2c
/* 8047D4DC  4B DE 96 08 */	b __pl__4cXyzCFRC3Vec
/* 8047D4E0  C0 01 00 14 */	lfs f0, 0x14(r1)
/* 8047D4E4  D0 01 00 20 */	stfs f0, 0x20(r1)
/* 8047D4E8  C0 01 00 18 */	lfs f0, 0x18(r1)
/* 8047D4EC  D0 01 00 24 */	stfs f0, 0x24(r1)
/* 8047D4F0  C0 01 00 1C */	lfs f0, 0x1c(r1)
/* 8047D4F4  D0 01 00 28 */	stfs f0, 0x28(r1)
/* 8047D4F8  38 61 00 44 */	addi r3, r1, 0x44
/* 8047D4FC  38 9E 04 D0 */	addi r4, r30, 0x4d0
/* 8047D500  38 A1 00 20 */	addi r5, r1, 0x20
/* 8047D504  7F C6 F3 78 */	mr r6, r30
/* 8047D508  4B BF A8 5C */	b Set__11dBgS_LinChkFPC4cXyzPC4cXyzPC10fopAc_ac_c
/* 8047D50C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 8047D510  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 8047D514  38 63 0F 38 */	addi r3, r3, 0xf38
/* 8047D518  38 81 00 44 */	addi r4, r1, 0x44
/* 8047D51C  4B BF 6E 98 */	b LineCross__4cBgSFP11cBgS_LinChk
/* 8047D520  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 8047D524  41 82 00 48 */	beq lbl_8047D56C
/* 8047D528  C0 21 00 3C */	lfs f1, 0x3c(r1)
/* 8047D52C  C0 1F 00 10 */	lfs f0, 0x10(r31)
/* 8047D530  EC 01 00 32 */	fmuls f0, f1, f0
/* 8047D534  D0 01 00 3C */	stfs f0, 0x3c(r1)
/* 8047D538  38 61 00 38 */	addi r3, r1, 0x38
/* 8047D53C  38 81 00 2C */	addi r4, r1, 0x2c
/* 8047D540  4B DF 39 AC */	b MtxPosition__FP4cXyzP4cXyz
/* 8047D544  38 61 00 08 */	addi r3, r1, 8
/* 8047D548  38 81 00 74 */	addi r4, r1, 0x74
/* 8047D54C  38 A1 00 2C */	addi r5, r1, 0x2c
/* 8047D550  4B DE 95 94 */	b __pl__4cXyzCFRC3Vec
/* 8047D554  C0 01 00 08 */	lfs f0, 8(r1)
/* 8047D558  D0 1E 06 18 */	stfs f0, 0x618(r30)
/* 8047D55C  C0 01 00 0C */	lfs f0, 0xc(r1)
/* 8047D560  D0 1E 06 1C */	stfs f0, 0x61c(r30)
/* 8047D564  C0 01 00 10 */	lfs f0, 0x10(r1)
/* 8047D568  D0 1E 06 20 */	stfs f0, 0x620(r30)
lbl_8047D56C:
/* 8047D56C  38 61 00 44 */	addi r3, r1, 0x44
/* 8047D570  38 80 FF FF */	li r4, -1
/* 8047D574  4B BF A7 68 */	b __dt__11dBgS_LinChkFv
lbl_8047D578:
/* 8047D578  7F A3 EB 78 */	mr r3, r29
lbl_8047D57C:
/* 8047D57C  39 61 00 E0 */	addi r11, r1, 0xe0
/* 8047D580  4B EE 4C 94 */	b _restgpr_24
/* 8047D584  80 01 00 E4 */	lwz r0, 0xe4(r1)
/* 8047D588  7C 08 03 A6 */	mtlr r0
/* 8047D58C  38 21 00 E0 */	addi r1, r1, 0xe0
/* 8047D590  4E 80 00 20 */	blr 
