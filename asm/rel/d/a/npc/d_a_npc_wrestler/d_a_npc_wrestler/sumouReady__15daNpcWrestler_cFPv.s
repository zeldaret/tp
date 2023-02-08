lbl_80B32850:
/* 80B32850  94 21 FF 10 */	stwu r1, -0xf0(r1)
/* 80B32854  7C 08 02 A6 */	mflr r0
/* 80B32858  90 01 00 F4 */	stw r0, 0xf4(r1)
/* 80B3285C  39 61 00 F0 */	addi r11, r1, 0xf0
/* 80B32860  4B 82 F9 75 */	bl _savegpr_27
/* 80B32864  7C 7B 1B 78 */	mr r27, r3
/* 80B32868  3C 60 80 B4 */	lis r3, m__21daNpcWrestler_Param_c@ha /* 0x80B416DC@ha */
/* 80B3286C  3B C3 16 DC */	addi r30, r3, m__21daNpcWrestler_Param_c@l /* 0x80B416DC@l */
/* 80B32870  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80B32874  3B E3 61 C0 */	addi r31, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80B32878  83 BF 5D AC */	lwz r29, 0x5dac(r31)
/* 80B3287C  4B 64 ED C5 */	bl dCam_getBody__Fv
/* 80B32880  7C 7C 1B 78 */	mr r28, r3
/* 80B32884  A0 1B 0E 96 */	lhz r0, 0xe96(r27)
/* 80B32888  2C 00 00 02 */	cmpwi r0, 2
/* 80B3288C  41 82 02 84 */	beq lbl_80B32B10
/* 80B32890  40 80 09 20 */	bge lbl_80B331B0
/* 80B32894  2C 00 00 00 */	cmpwi r0, 0
/* 80B32898  41 82 00 0C */	beq lbl_80B328A4
/* 80B3289C  48 00 09 14 */	b lbl_80B331B0
/* 80B328A0  48 00 09 10 */	b lbl_80B331B0
lbl_80B328A4:
/* 80B328A4  38 00 00 00 */	li r0, 0
/* 80B328A8  90 1B 0E 84 */	stw r0, 0xe84(r27)
/* 80B328AC  88 1B 0E 9B */	lbz r0, 0xe9b(r27)
/* 80B328B0  28 00 00 00 */	cmplwi r0, 0
/* 80B328B4  40 82 00 0C */	bne lbl_80B328C0
/* 80B328B8  38 00 00 07 */	li r0, 7
/* 80B328BC  90 1B 0E 88 */	stw r0, 0xe88(r27)
lbl_80B328C0:
/* 80B328C0  80 7F 5D AC */	lwz r3, 0x5dac(r31)
/* 80B328C4  80 03 05 70 */	lwz r0, 0x570(r3)
/* 80B328C8  54 00 01 46 */	rlwinm r0, r0, 0, 5, 3
/* 80B328CC  90 03 05 70 */	stw r0, 0x570(r3)
/* 80B328D0  38 00 00 00 */	li r0, 0
/* 80B328D4  98 1B 0E 9C */	stb r0, 0xe9c(r27)
/* 80B328D8  3C 60 80 45 */	lis r3, mAudioMgrPtr__10Z2AudioMgr@ha /* 0x80451368@ha */
/* 80B328DC  38 63 13 68 */	addi r3, r3, mAudioMgrPtr__10Z2AudioMgr@l /* 0x80451368@l */
/* 80B328E0  80 63 00 00 */	lwz r3, 0(r3)
/* 80B328E4  38 63 03 D0 */	addi r3, r3, 0x3d0
/* 80B328E8  3C 80 01 00 */	lis r4, 0x0100 /* 0x01000024@ha */
/* 80B328EC  38 84 00 24 */	addi r4, r4, 0x0024 /* 0x01000024@l */
/* 80B328F0  4B 77 CB AD */	bl subBgmStart__8Z2SeqMgrFUl
/* 80B328F4  A8 1B 0E 90 */	lha r0, 0xe90(r27)
/* 80B328F8  2C 00 00 02 */	cmpwi r0, 2
/* 80B328FC  41 82 00 0C */	beq lbl_80B32908
/* 80B32900  38 00 00 02 */	li r0, 2
/* 80B32904  B0 1B 0E 90 */	sth r0, 0xe90(r27)
lbl_80B32908:
/* 80B32908  38 7B 0C 80 */	addi r3, r27, 0xc80
/* 80B3290C  80 9F 5D AC */	lwz r4, 0x5dac(r31)
/* 80B32910  4B 61 DD AD */	bl entry__18daNpcF_ActorMngr_cFP10fopAc_ac_c
/* 80B32914  7F 63 DB 78 */	mr r3, r27
/* 80B32918  38 80 00 03 */	li r4, 3
/* 80B3291C  C0 3E 01 C8 */	lfs f1, 0x1c8(r30)
/* 80B32920  81 9B 0B 44 */	lwz r12, 0xb44(r27)
/* 80B32924  81 8C 00 34 */	lwz r12, 0x34(r12)
/* 80B32928  7D 89 03 A6 */	mtctr r12
/* 80B3292C  4E 80 04 21 */	bctrl 
/* 80B32930  7F 63 DB 78 */	mr r3, r27
/* 80B32934  38 80 00 1E */	li r4, 0x1e
/* 80B32938  C0 3E 01 B8 */	lfs f1, 0x1b8(r30)
/* 80B3293C  81 9B 0B 44 */	lwz r12, 0xb44(r27)
/* 80B32940  81 8C 00 38 */	lwz r12, 0x38(r12)
/* 80B32944  7D 89 03 A6 */	mtctr r12
/* 80B32948  4E 80 04 21 */	bctrl 
/* 80B3294C  80 7B 05 68 */	lwz r3, 0x568(r27)
/* 80B32950  4B 4D E8 9D */	bl modelCalc__16mDoExt_McaMorfSOFv
/* 80B32954  7F A3 EB 78 */	mr r3, r29
/* 80B32958  7F 64 DB 78 */	mr r4, r27
/* 80B3295C  81 9D 06 28 */	lwz r12, 0x628(r29)
/* 80B32960  81 8C 02 18 */	lwz r12, 0x218(r12)
/* 80B32964  7D 89 03 A6 */	mtctr r12
/* 80B32968  4E 80 04 21 */	bctrl 
/* 80B3296C  4B 64 EC D5 */	bl dCam_getBody__Fv
/* 80B32970  C0 23 00 58 */	lfs f1, 0x58(r3)
/* 80B32974  C0 03 06 F4 */	lfs f0, 0x6f4(r3)
/* 80B32978  EC 01 00 2A */	fadds f0, f1, f0
/* 80B3297C  D0 1B 0E 50 */	stfs f0, 0xe50(r27)
/* 80B32980  80 7B 0B D8 */	lwz r3, 0xbd8(r27)
/* 80B32984  A8 03 00 AC */	lha r0, 0xac(r3)
/* 80B32988  C8 3E 05 98 */	lfd f1, 0x598(r30)
/* 80B3298C  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 80B32990  90 01 00 BC */	stw r0, 0xbc(r1)
/* 80B32994  3C 00 43 30 */	lis r0, 0x4330
/* 80B32998  90 01 00 B8 */	stw r0, 0xb8(r1)
/* 80B3299C  C8 01 00 B8 */	lfd f0, 0xb8(r1)
/* 80B329A0  EC 00 08 28 */	fsubs f0, f0, f1
/* 80B329A4  D0 1B 0E 58 */	stfs f0, 0xe58(r27)
/* 80B329A8  C0 3E 05 A8 */	lfs f1, 0x5a8(r30)
/* 80B329AC  80 7B 0B D8 */	lwz r3, 0xbd8(r27)
/* 80B329B0  C0 03 00 7C */	lfs f0, 0x7c(r3)
/* 80B329B4  EC 01 00 32 */	fmuls f0, f1, f0
/* 80B329B8  D0 1B 0E 54 */	stfs f0, 0xe54(r27)
/* 80B329BC  C0 5B 0D F8 */	lfs f2, 0xdf8(r27)
/* 80B329C0  C0 3E 05 AC */	lfs f1, 0x5ac(r30)
/* 80B329C4  C0 1B 0D F4 */	lfs f0, 0xdf4(r27)
/* 80B329C8  EC 21 00 2A */	fadds f1, f1, f0
/* 80B329CC  C0 1B 0D F0 */	lfs f0, 0xdf0(r27)
/* 80B329D0  D0 1B 0E 08 */	stfs f0, 0xe08(r27)
/* 80B329D4  D0 3B 0E 0C */	stfs f1, 0xe0c(r27)
/* 80B329D8  D0 5B 0E 10 */	stfs f2, 0xe10(r27)
/* 80B329DC  A8 1B 0E 00 */	lha r0, 0xe00(r27)
/* 80B329E0  B0 1B 0E 5E */	sth r0, 0xe5e(r27)
/* 80B329E4  38 7B 0E 08 */	addi r3, r27, 0xe08
/* 80B329E8  4B 4D A3 7D */	bl transS__14mDoMtx_stack_cFRC4cXyz
/* 80B329EC  80 9F 5D AC */	lwz r4, 0x5dac(r31)
/* 80B329F0  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80B329F4  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80B329F8  C0 5B 0E 54 */	lfs f2, 0xe54(r27)
/* 80B329FC  A8 04 04 E6 */	lha r0, 0x4e6(r4)
/* 80B32A00  C8 3E 05 98 */	lfd f1, 0x598(r30)
/* 80B32A04  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 80B32A08  90 01 00 C4 */	stw r0, 0xc4(r1)
/* 80B32A0C  3C 00 43 30 */	lis r0, 0x4330
/* 80B32A10  90 01 00 C0 */	stw r0, 0xc0(r1)
/* 80B32A14  C8 01 00 C0 */	lfd f0, 0xc0(r1)
/* 80B32A18  EC 00 08 28 */	fsubs f0, f0, f1
/* 80B32A1C  EC 02 00 2A */	fadds f0, f2, f0
/* 80B32A20  FC 00 00 1E */	fctiwz f0, f0
/* 80B32A24  D8 01 00 C8 */	stfd f0, 0xc8(r1)
/* 80B32A28  80 81 00 CC */	lwz r4, 0xcc(r1)
/* 80B32A2C  4B 4D 9A 09 */	bl mDoMtx_YrotM__FPA4_fs
/* 80B32A30  C0 3E 01 B8 */	lfs f1, 0x1b8(r30)
/* 80B32A34  C0 5E 05 AC */	lfs f2, 0x5ac(r30)
/* 80B32A38  80 7B 0B D8 */	lwz r3, 0xbd8(r27)
/* 80B32A3C  C0 03 00 B0 */	lfs f0, 0xb0(r3)
/* 80B32A40  FC 60 00 50 */	fneg f3, f0
/* 80B32A44  4B 4D A3 59 */	bl transM__14mDoMtx_stack_cFfff
/* 80B32A48  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80B32A4C  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80B32A50  C0 03 00 0C */	lfs f0, 0xc(r3)
/* 80B32A54  D0 1B 0E 14 */	stfs f0, 0xe14(r27)
/* 80B32A58  C0 03 00 1C */	lfs f0, 0x1c(r3)
/* 80B32A5C  D0 1B 0E 18 */	stfs f0, 0xe18(r27)
/* 80B32A60  C0 03 00 2C */	lfs f0, 0x2c(r3)
/* 80B32A64  D0 1B 0E 1C */	stfs f0, 0xe1c(r27)
/* 80B32A68  88 1B 0E 9A */	lbz r0, 0xe9a(r27)
/* 80B32A6C  28 00 00 00 */	cmplwi r0, 0
/* 80B32A70  41 82 00 8C */	beq lbl_80B32AFC
/* 80B32A74  C0 3E 01 B4 */	lfs f1, 0x1b4(r30)
/* 80B32A78  80 7B 0B D8 */	lwz r3, 0xbd8(r27)
/* 80B32A7C  C0 03 00 88 */	lfs f0, 0x88(r3)
/* 80B32A80  EC 01 00 24 */	fdivs f0, f1, f0
/* 80B32A84  FC 00 00 1E */	fctiwz f0, f0
/* 80B32A88  D8 01 00 C8 */	stfd f0, 0xc8(r1)
/* 80B32A8C  80 01 00 CC */	lwz r0, 0xcc(r1)
/* 80B32A90  90 1B 0E 80 */	stw r0, 0xe80(r27)
/* 80B32A94  80 7B 0B D8 */	lwz r3, 0xbd8(r27)
/* 80B32A98  C0 03 00 88 */	lfs f0, 0x88(r3)
/* 80B32A9C  FC 20 00 50 */	fneg f1, f0
/* 80B32AA0  4B 4D 56 31 */	bl fadeOut__13mDoGph_gInf_cFf
/* 80B32AA4  7F 83 E3 78 */	mr r3, r28
/* 80B32AA8  38 80 00 02 */	li r4, 2
/* 80B32AAC  4B 63 05 61 */	bl SetTrimSize__9dCamera_cFl
/* 80B32AB0  C0 1B 0E 08 */	lfs f0, 0xe08(r27)
/* 80B32AB4  D0 01 00 AC */	stfs f0, 0xac(r1)
/* 80B32AB8  C0 1B 0E 0C */	lfs f0, 0xe0c(r27)
/* 80B32ABC  D0 01 00 B0 */	stfs f0, 0xb0(r1)
/* 80B32AC0  C0 1B 0E 10 */	lfs f0, 0xe10(r27)
/* 80B32AC4  D0 01 00 B4 */	stfs f0, 0xb4(r1)
/* 80B32AC8  C0 1B 0E 14 */	lfs f0, 0xe14(r27)
/* 80B32ACC  D0 01 00 A0 */	stfs f0, 0xa0(r1)
/* 80B32AD0  C0 1B 0E 18 */	lfs f0, 0xe18(r27)
/* 80B32AD4  D0 01 00 A4 */	stfs f0, 0xa4(r1)
/* 80B32AD8  C0 1B 0E 1C */	lfs f0, 0xe1c(r27)
/* 80B32ADC  D0 01 00 A8 */	stfs f0, 0xa8(r1)
/* 80B32AE0  7F 83 E3 78 */	mr r3, r28
/* 80B32AE4  38 81 00 AC */	addi r4, r1, 0xac
/* 80B32AE8  38 A1 00 A0 */	addi r5, r1, 0xa0
/* 80B32AEC  C0 3B 0E 50 */	lfs f1, 0xe50(r27)
/* 80B32AF0  38 C0 00 00 */	li r6, 0
/* 80B32AF4  4B 64 DF ED */	bl Set__9dCamera_cF4cXyz4cXyzfs
/* 80B32AF8  48 00 00 0C */	b lbl_80B32B04
lbl_80B32AFC:
/* 80B32AFC  38 00 00 00 */	li r0, 0
/* 80B32B00  90 1B 0E 80 */	stw r0, 0xe80(r27)
lbl_80B32B04:
/* 80B32B04  38 00 00 02 */	li r0, 2
/* 80B32B08  B0 1B 0E 96 */	sth r0, 0xe96(r27)
/* 80B32B0C  48 00 06 A4 */	b lbl_80B331B0
lbl_80B32B10:
/* 80B32B10  80 1B 0E 84 */	lwz r0, 0xe84(r27)
/* 80B32B14  28 00 00 06 */	cmplwi r0, 6
/* 80B32B18  41 81 06 98 */	bgt lbl_80B331B0
/* 80B32B1C  3C 80 80 B4 */	lis r4, lit_6092@ha /* 0x80B4290C@ha */
/* 80B32B20  38 84 29 0C */	addi r4, r4, lit_6092@l /* 0x80B4290C@l */
/* 80B32B24  54 00 10 3A */	slwi r0, r0, 2
/* 80B32B28  7C 04 00 2E */	lwzx r0, r4, r0
/* 80B32B2C  7C 09 03 A6 */	mtctr r0
/* 80B32B30  4E 80 04 20 */	bctr 
lbl_80B32B34:
/* 80B32B34  88 1B 0E 9A */	lbz r0, 0xe9a(r27)
/* 80B32B38  28 00 00 00 */	cmplwi r0, 0
/* 80B32B3C  40 82 00 C4 */	bne lbl_80B32C00
/* 80B32B40  A0 1B 00 F8 */	lhz r0, 0xf8(r27)
/* 80B32B44  28 00 00 02 */	cmplwi r0, 2
/* 80B32B48  41 82 00 30 */	beq lbl_80B32B78
/* 80B32B4C  7F 63 DB 78 */	mr r3, r27
/* 80B32B50  38 80 00 01 */	li r4, 1
/* 80B32B54  3C A0 00 01 */	lis r5, 0x0001 /* 0x0000FFFF@ha */
/* 80B32B58  38 A5 FF FF */	addi r5, r5, 0xFFFF /* 0x0000FFFF@l */
/* 80B32B5C  38 C0 00 00 */	li r6, 0
/* 80B32B60  4B 4E 8D A9 */	bl fopAcM_orderPotentialEvent__FP10fopAc_ac_cUsUsUs
/* 80B32B64  A0 1B 00 FA */	lhz r0, 0xfa(r27)
/* 80B32B68  60 00 00 02 */	ori r0, r0, 2
/* 80B32B6C  B0 1B 00 FA */	sth r0, 0xfa(r27)
/* 80B32B70  38 60 00 00 */	li r3, 0
/* 80B32B74  48 00 06 40 */	b lbl_80B331B4
lbl_80B32B78:
/* 80B32B78  4B 62 E9 59 */	bl Stop__9dCamera_cFv
/* 80B32B7C  7F 83 E3 78 */	mr r3, r28
/* 80B32B80  38 80 00 02 */	li r4, 2
/* 80B32B84  4B 63 04 89 */	bl SetTrimSize__9dCamera_cFl
/* 80B32B88  C0 1B 0E 08 */	lfs f0, 0xe08(r27)
/* 80B32B8C  D0 01 00 94 */	stfs f0, 0x94(r1)
/* 80B32B90  C0 1B 0E 0C */	lfs f0, 0xe0c(r27)
/* 80B32B94  D0 01 00 98 */	stfs f0, 0x98(r1)
/* 80B32B98  C0 1B 0E 10 */	lfs f0, 0xe10(r27)
/* 80B32B9C  D0 01 00 9C */	stfs f0, 0x9c(r1)
/* 80B32BA0  C0 1B 0E 14 */	lfs f0, 0xe14(r27)
/* 80B32BA4  D0 01 00 88 */	stfs f0, 0x88(r1)
/* 80B32BA8  C0 1B 0E 18 */	lfs f0, 0xe18(r27)
/* 80B32BAC  D0 01 00 8C */	stfs f0, 0x8c(r1)
/* 80B32BB0  C0 1B 0E 1C */	lfs f0, 0xe1c(r27)
/* 80B32BB4  D0 01 00 90 */	stfs f0, 0x90(r1)
/* 80B32BB8  7F 83 E3 78 */	mr r3, r28
/* 80B32BBC  38 81 00 94 */	addi r4, r1, 0x94
/* 80B32BC0  38 A1 00 88 */	addi r5, r1, 0x88
/* 80B32BC4  C0 3B 0E 50 */	lfs f1, 0xe50(r27)
/* 80B32BC8  38 C0 00 00 */	li r6, 0
/* 80B32BCC  4B 64 DF 15 */	bl Set__9dCamera_cF4cXyz4cXyzfs
/* 80B32BD0  7F 63 DB 78 */	mr r3, r27
/* 80B32BD4  C0 3E 05 88 */	lfs f1, 0x588(r30)
/* 80B32BD8  80 9B 0B DC */	lwz r4, 0xbdc(r27)
/* 80B32BDC  C0 04 00 14 */	lfs f0, 0x14(r4)
/* 80B32BE0  EC 21 00 32 */	fmuls f1, f1, f0
/* 80B32BE4  4B FF E1 65 */	bl setOnToArena__15daNpcWrestler_cFf
/* 80B32BE8  38 00 00 00 */	li r0, 0
/* 80B32BEC  98 1B 0E 9A */	stb r0, 0xe9a(r27)
/* 80B32BF0  80 7B 0E 84 */	lwz r3, 0xe84(r27)
/* 80B32BF4  38 03 00 01 */	addi r0, r3, 1
/* 80B32BF8  90 1B 0E 84 */	stw r0, 0xe84(r27)
/* 80B32BFC  48 00 05 B4 */	b lbl_80B331B0
lbl_80B32C00:
/* 80B32C00  7F 63 DB 78 */	mr r3, r27
/* 80B32C04  C0 3E 05 88 */	lfs f1, 0x588(r30)
/* 80B32C08  80 9B 0B DC */	lwz r4, 0xbdc(r27)
/* 80B32C0C  C0 04 00 14 */	lfs f0, 0x14(r4)
/* 80B32C10  EC 21 00 32 */	fmuls f1, f1, f0
/* 80B32C14  4B FF E1 35 */	bl setOnToArena__15daNpcWrestler_cFf
/* 80B32C18  38 00 00 00 */	li r0, 0
/* 80B32C1C  98 1B 0E 9A */	stb r0, 0xe9a(r27)
/* 80B32C20  80 7B 0E 84 */	lwz r3, 0xe84(r27)
/* 80B32C24  38 03 00 01 */	addi r0, r3, 1
/* 80B32C28  90 1B 0E 84 */	stw r0, 0xe84(r27)
lbl_80B32C2C:
/* 80B32C2C  7F A3 EB 78 */	mr r3, r29
/* 80B32C30  81 9D 06 28 */	lwz r12, 0x628(r29)
/* 80B32C34  81 8C 02 6C */	lwz r12, 0x26c(r12)
/* 80B32C38  7D 89 03 A6 */	mtctr r12
/* 80B32C3C  4E 80 04 21 */	bctrl 
/* 80B32C40  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80B32C44  40 82 05 6C */	bne lbl_80B331B0
/* 80B32C48  80 7B 0E 84 */	lwz r3, 0xe84(r27)
/* 80B32C4C  38 03 00 01 */	addi r0, r3, 1
/* 80B32C50  90 1B 0E 84 */	stw r0, 0xe84(r27)
lbl_80B32C54:
/* 80B32C54  A8 9B 0E 5E */	lha r4, 0xe5e(r27)
/* 80B32C58  80 7B 0B D8 */	lwz r3, 0xbd8(r27)
/* 80B32C5C  A8 03 00 AC */	lha r0, 0xac(r3)
/* 80B32C60  7C 04 02 14 */	add r0, r4, r0
/* 80B32C64  B0 1B 0E 5E */	sth r0, 0xe5e(r27)
/* 80B32C68  80 7B 0B D8 */	lwz r3, 0xbd8(r27)
/* 80B32C6C  A8 03 00 AC */	lha r0, 0xac(r3)
/* 80B32C70  C8 3E 05 98 */	lfd f1, 0x598(r30)
/* 80B32C74  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 80B32C78  90 01 00 CC */	stw r0, 0xcc(r1)
/* 80B32C7C  3C 80 43 30 */	lis r4, 0x4330
/* 80B32C80  90 81 00 C8 */	stw r4, 0xc8(r1)
/* 80B32C84  C8 01 00 C8 */	lfd f0, 0xc8(r1)
/* 80B32C88  EC 00 08 28 */	fsubs f0, f0, f1
/* 80B32C8C  FC 00 02 10 */	fabs f0, f0
/* 80B32C90  FC 40 00 18 */	frsp f2, f0
/* 80B32C94  C0 1B 0E 54 */	lfs f0, 0xe54(r27)
/* 80B32C98  EC 00 10 28 */	fsubs f0, f0, f2
/* 80B32C9C  D0 1B 0E 54 */	stfs f0, 0xe54(r27)
/* 80B32CA0  80 7B 0B D8 */	lwz r3, 0xbd8(r27)
/* 80B32CA4  A8 03 00 AC */	lha r0, 0xac(r3)
/* 80B32CA8  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 80B32CAC  90 01 00 C4 */	stw r0, 0xc4(r1)
/* 80B32CB0  90 81 00 C0 */	stw r4, 0xc0(r1)
/* 80B32CB4  C8 01 00 C0 */	lfd f0, 0xc0(r1)
/* 80B32CB8  EC 00 08 28 */	fsubs f0, f0, f1
/* 80B32CBC  FC 00 02 10 */	fabs f0, f0
/* 80B32CC0  FC 20 00 18 */	frsp f1, f0
/* 80B32CC4  C0 1B 0E 54 */	lfs f0, 0xe54(r27)
/* 80B32CC8  FC 00 08 40 */	fcmpo cr0, f0, f1
/* 80B32CCC  40 80 00 18 */	bge lbl_80B32CE4
/* 80B32CD0  38 00 00 01 */	li r0, 1
/* 80B32CD4  90 1B 0E 80 */	stw r0, 0xe80(r27)
/* 80B32CD8  80 7B 0E 84 */	lwz r3, 0xe84(r27)
/* 80B32CDC  38 03 00 01 */	addi r0, r3, 1
/* 80B32CE0  90 1B 0E 84 */	stw r0, 0xe84(r27)
lbl_80B32CE4:
/* 80B32CE4  C0 1E 05 B0 */	lfs f0, 0x5b0(r30)
/* 80B32CE8  D0 1B 0E 50 */	stfs f0, 0xe50(r27)
/* 80B32CEC  38 7B 0E 08 */	addi r3, r27, 0xe08
/* 80B32CF0  4B 4D A0 75 */	bl transS__14mDoMtx_stack_cFRC4cXyz
/* 80B32CF4  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80B32CF8  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80B32CFC  A8 9B 0E 5E */	lha r4, 0xe5e(r27)
/* 80B32D00  4B 4D 97 35 */	bl mDoMtx_YrotM__FPA4_fs
/* 80B32D04  80 7B 0B D8 */	lwz r3, 0xbd8(r27)
/* 80B32D08  C0 03 00 B0 */	lfs f0, 0xb0(r3)
/* 80B32D0C  FC 20 00 50 */	fneg f1, f0
/* 80B32D10  C0 1E 01 B8 */	lfs f0, 0x1b8(r30)
/* 80B32D14  D0 1B 0E 14 */	stfs f0, 0xe14(r27)
/* 80B32D18  C0 1E 05 AC */	lfs f0, 0x5ac(r30)
/* 80B32D1C  D0 1B 0E 18 */	stfs f0, 0xe18(r27)
/* 80B32D20  D0 3B 0E 1C */	stfs f1, 0xe1c(r27)
/* 80B32D24  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80B32D28  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80B32D2C  38 9B 0E 14 */	addi r4, r27, 0xe14
/* 80B32D30  7C 85 23 78 */	mr r5, r4
/* 80B32D34  4B 81 40 39 */	bl PSMTXMultVec
/* 80B32D38  C0 1B 0E 08 */	lfs f0, 0xe08(r27)
/* 80B32D3C  D0 01 00 7C */	stfs f0, 0x7c(r1)
/* 80B32D40  C0 1B 0E 0C */	lfs f0, 0xe0c(r27)
/* 80B32D44  D0 01 00 80 */	stfs f0, 0x80(r1)
/* 80B32D48  C0 1B 0E 10 */	lfs f0, 0xe10(r27)
/* 80B32D4C  D0 01 00 84 */	stfs f0, 0x84(r1)
/* 80B32D50  C0 1B 0E 14 */	lfs f0, 0xe14(r27)
/* 80B32D54  D0 01 00 70 */	stfs f0, 0x70(r1)
/* 80B32D58  C0 1B 0E 18 */	lfs f0, 0xe18(r27)
/* 80B32D5C  D0 01 00 74 */	stfs f0, 0x74(r1)
/* 80B32D60  C0 1B 0E 1C */	lfs f0, 0xe1c(r27)
/* 80B32D64  D0 01 00 78 */	stfs f0, 0x78(r1)
/* 80B32D68  7F 83 E3 78 */	mr r3, r28
/* 80B32D6C  38 81 00 7C */	addi r4, r1, 0x7c
/* 80B32D70  38 A1 00 70 */	addi r5, r1, 0x70
/* 80B32D74  C0 3B 0E 50 */	lfs f1, 0xe50(r27)
/* 80B32D78  38 C0 00 00 */	li r6, 0
/* 80B32D7C  4B 64 DD 65 */	bl Set__9dCamera_cF4cXyz4cXyzfs
/* 80B32D80  48 00 04 30 */	b lbl_80B331B0
lbl_80B32D84:
/* 80B32D84  80 9B 0E 80 */	lwz r4, 0xe80(r27)
/* 80B32D88  38 04 FF FF */	addi r0, r4, -1
/* 80B32D8C  90 1B 0E 80 */	stw r0, 0xe80(r27)
/* 80B32D90  2C 04 00 00 */	cmpwi r4, 0
/* 80B32D94  41 81 00 C4 */	bgt lbl_80B32E58
/* 80B32D98  C0 1B 0E 08 */	lfs f0, 0xe08(r27)
/* 80B32D9C  D0 01 00 64 */	stfs f0, 0x64(r1)
/* 80B32DA0  C0 1B 0E 0C */	lfs f0, 0xe0c(r27)
/* 80B32DA4  D0 01 00 68 */	stfs f0, 0x68(r1)
/* 80B32DA8  C0 1B 0E 10 */	lfs f0, 0xe10(r27)
/* 80B32DAC  D0 01 00 6C */	stfs f0, 0x6c(r1)
/* 80B32DB0  C0 1B 0E 14 */	lfs f0, 0xe14(r27)
/* 80B32DB4  D0 01 00 58 */	stfs f0, 0x58(r1)
/* 80B32DB8  C0 1B 0E 18 */	lfs f0, 0xe18(r27)
/* 80B32DBC  D0 01 00 5C */	stfs f0, 0x5c(r1)
/* 80B32DC0  C0 1B 0E 1C */	lfs f0, 0xe1c(r27)
/* 80B32DC4  D0 01 00 60 */	stfs f0, 0x60(r1)
/* 80B32DC8  38 81 00 64 */	addi r4, r1, 0x64
/* 80B32DCC  38 A1 00 58 */	addi r5, r1, 0x58
/* 80B32DD0  C0 3B 0E 50 */	lfs f1, 0xe50(r27)
/* 80B32DD4  38 C0 00 00 */	li r6, 0
/* 80B32DD8  4B 64 DD 09 */	bl Set__9dCamera_cF4cXyz4cXyzfs
/* 80B32DDC  C0 1B 0E 08 */	lfs f0, 0xe08(r27)
/* 80B32DE0  D0 01 00 4C */	stfs f0, 0x4c(r1)
/* 80B32DE4  C0 1B 0E 0C */	lfs f0, 0xe0c(r27)
/* 80B32DE8  D0 01 00 50 */	stfs f0, 0x50(r1)
/* 80B32DEC  C0 1B 0E 10 */	lfs f0, 0xe10(r27)
/* 80B32DF0  D0 01 00 54 */	stfs f0, 0x54(r1)
/* 80B32DF4  C0 1B 0E 14 */	lfs f0, 0xe14(r27)
/* 80B32DF8  D0 01 00 40 */	stfs f0, 0x40(r1)
/* 80B32DFC  C0 1B 0E 18 */	lfs f0, 0xe18(r27)
/* 80B32E00  D0 01 00 44 */	stfs f0, 0x44(r1)
/* 80B32E04  C0 1B 0E 1C */	lfs f0, 0xe1c(r27)
/* 80B32E08  D0 01 00 48 */	stfs f0, 0x48(r1)
/* 80B32E0C  7F 83 E3 78 */	mr r3, r28
/* 80B32E10  38 81 00 4C */	addi r4, r1, 0x4c
/* 80B32E14  38 A1 00 40 */	addi r5, r1, 0x40
/* 80B32E18  4B 64 DE 01 */	bl Reset__9dCamera_cF4cXyz4cXyz
/* 80B32E1C  7F 83 E3 78 */	mr r3, r28
/* 80B32E20  38 80 00 00 */	li r4, 0
/* 80B32E24  4B 63 01 E9 */	bl SetTrimSize__9dCamera_cFl
/* 80B32E28  7F 83 E3 78 */	mr r3, r28
/* 80B32E2C  4B 62 E6 81 */	bl Start__9dCamera_cFv
/* 80B32E30  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80B32E34  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80B32E38  38 63 4E C8 */	addi r3, r3, 0x4ec8
/* 80B32E3C  4B 50 F6 2D */	bl reset__14dEvt_control_cFv
/* 80B32E40  38 00 00 00 */	li r0, 0
/* 80B32E44  90 1B 0E 80 */	stw r0, 0xe80(r27)
/* 80B32E48  80 7B 0E 84 */	lwz r3, 0xe84(r27)
/* 80B32E4C  38 03 00 01 */	addi r0, r3, 1
/* 80B32E50  90 1B 0E 84 */	stw r0, 0xe84(r27)
/* 80B32E54  48 00 03 5C */	b lbl_80B331B0
lbl_80B32E58:
/* 80B32E58  38 7B 0E 08 */	addi r3, r27, 0xe08
/* 80B32E5C  4B 4D 9F 09 */	bl transS__14mDoMtx_stack_cFRC4cXyz
/* 80B32E60  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80B32E64  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80B32E68  A8 9B 0E 00 */	lha r4, 0xe00(r27)
/* 80B32E6C  3C 84 00 01 */	addis r4, r4, 1
/* 80B32E70  38 04 80 00 */	addi r0, r4, -32768
/* 80B32E74  7C 04 07 34 */	extsh r4, r0
/* 80B32E78  4B 4D 95 BD */	bl mDoMtx_YrotM__FPA4_fs
/* 80B32E7C  80 7B 0B D8 */	lwz r3, 0xbd8(r27)
/* 80B32E80  C0 03 00 B0 */	lfs f0, 0xb0(r3)
/* 80B32E84  FC 20 00 50 */	fneg f1, f0
/* 80B32E88  C0 1E 01 B8 */	lfs f0, 0x1b8(r30)
/* 80B32E8C  D0 1B 0E 14 */	stfs f0, 0xe14(r27)
/* 80B32E90  C0 1E 05 AC */	lfs f0, 0x5ac(r30)
/* 80B32E94  D0 1B 0E 18 */	stfs f0, 0xe18(r27)
/* 80B32E98  D0 3B 0E 1C */	stfs f1, 0xe1c(r27)
/* 80B32E9C  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80B32EA0  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80B32EA4  38 9B 0E 14 */	addi r4, r27, 0xe14
/* 80B32EA8  7C 85 23 78 */	mr r5, r4
/* 80B32EAC  4B 81 3E C1 */	bl PSMTXMultVec
/* 80B32EB0  C0 1B 0E 08 */	lfs f0, 0xe08(r27)
/* 80B32EB4  D0 01 00 34 */	stfs f0, 0x34(r1)
/* 80B32EB8  C0 1B 0E 0C */	lfs f0, 0xe0c(r27)
/* 80B32EBC  D0 01 00 38 */	stfs f0, 0x38(r1)
/* 80B32EC0  C0 1B 0E 10 */	lfs f0, 0xe10(r27)
/* 80B32EC4  D0 01 00 3C */	stfs f0, 0x3c(r1)
/* 80B32EC8  C0 1B 0E 14 */	lfs f0, 0xe14(r27)
/* 80B32ECC  D0 01 00 28 */	stfs f0, 0x28(r1)
/* 80B32ED0  C0 1B 0E 18 */	lfs f0, 0xe18(r27)
/* 80B32ED4  D0 01 00 2C */	stfs f0, 0x2c(r1)
/* 80B32ED8  C0 1B 0E 1C */	lfs f0, 0xe1c(r27)
/* 80B32EDC  D0 01 00 30 */	stfs f0, 0x30(r1)
/* 80B32EE0  7F 83 E3 78 */	mr r3, r28
/* 80B32EE4  38 81 00 34 */	addi r4, r1, 0x34
/* 80B32EE8  38 A1 00 28 */	addi r5, r1, 0x28
/* 80B32EEC  C0 3B 0E 50 */	lfs f1, 0xe50(r27)
/* 80B32EF0  38 C0 00 00 */	li r6, 0
/* 80B32EF4  4B 64 DB ED */	bl Set__9dCamera_cF4cXyz4cXyzfs
/* 80B32EF8  48 00 02 B8 */	b lbl_80B331B0
lbl_80B32EFC:
/* 80B32EFC  80 9B 0E 80 */	lwz r4, 0xe80(r27)
/* 80B32F00  38 04 00 01 */	addi r0, r4, 1
/* 80B32F04  90 1B 0E 80 */	stw r0, 0xe80(r27)
/* 80B32F08  80 7B 0B D8 */	lwz r3, 0xbd8(r27)
/* 80B32F0C  A8 03 00 6E */	lha r0, 0x6e(r3)
/* 80B32F10  7C 04 00 00 */	cmpw r4, r0
/* 80B32F14  40 81 02 9C */	ble lbl_80B331B0
/* 80B32F18  3C 60 80 43 */	lis r3, g_meter2_info@ha /* 0x80430188@ha */
/* 80B32F1C  38 63 01 88 */	addi r3, r3, g_meter2_info@l /* 0x80430188@l */
/* 80B32F20  38 80 05 15 */	li r4, 0x515
/* 80B32F24  4B 6E 9A 4D */	bl setMeterString__13dMeter2Info_cFl
/* 80B32F28  38 00 00 78 */	li r0, 0x78
/* 80B32F2C  90 01 00 0C */	stw r0, 0xc(r1)
/* 80B32F30  3C 60 80 45 */	lis r3, mAudioMgrPtr__10Z2AudioMgr@ha /* 0x80451368@ha */
/* 80B32F34  38 63 13 68 */	addi r3, r3, mAudioMgrPtr__10Z2AudioMgr@l /* 0x80451368@l */
/* 80B32F38  80 63 00 00 */	lwz r3, 0(r3)
/* 80B32F3C  38 81 00 0C */	addi r4, r1, 0xc
/* 80B32F40  38 A0 00 00 */	li r5, 0
/* 80B32F44  38 C0 00 00 */	li r6, 0
/* 80B32F48  38 E0 00 00 */	li r7, 0
/* 80B32F4C  C0 3E 01 B4 */	lfs f1, 0x1b4(r30)
/* 80B32F50  FC 40 08 90 */	fmr f2, f1
/* 80B32F54  C0 7E 01 C8 */	lfs f3, 0x1c8(r30)
/* 80B32F58  FC 80 18 90 */	fmr f4, f3
/* 80B32F5C  39 00 00 00 */	li r8, 0
/* 80B32F60  4B 77 8A 25 */	bl seStart__7Z2SeMgrF10JAISoundIDPC3VecUlScffffUc
/* 80B32F64  38 00 00 00 */	li r0, 0
/* 80B32F68  90 1B 0E 80 */	stw r0, 0xe80(r27)
/* 80B32F6C  80 7B 0E 84 */	lwz r3, 0xe84(r27)
/* 80B32F70  38 03 00 01 */	addi r0, r3, 1
/* 80B32F74  90 1B 0E 84 */	stw r0, 0xe84(r27)
/* 80B32F78  48 00 02 38 */	b lbl_80B331B0
lbl_80B32F7C:
/* 80B32F7C  80 9B 0E 80 */	lwz r4, 0xe80(r27)
/* 80B32F80  38 04 00 01 */	addi r0, r4, 1
/* 80B32F84  90 1B 0E 80 */	stw r0, 0xe80(r27)
/* 80B32F88  80 7B 0B D8 */	lwz r3, 0xbd8(r27)
/* 80B32F8C  A8 03 00 70 */	lha r0, 0x70(r3)
/* 80B32F90  7C 04 00 00 */	cmpw r4, r0
/* 80B32F94  40 81 02 1C */	ble lbl_80B331B0
/* 80B32F98  3C 60 80 43 */	lis r3, g_meter2_info@ha /* 0x80430188@ha */
/* 80B32F9C  38 63 01 88 */	addi r3, r3, g_meter2_info@l /* 0x80430188@l */
/* 80B32FA0  38 80 05 16 */	li r4, 0x516
/* 80B32FA4  4B 6E 99 CD */	bl setMeterString__13dMeter2Info_cFl
/* 80B32FA8  38 00 00 79 */	li r0, 0x79
/* 80B32FAC  90 01 00 08 */	stw r0, 8(r1)
/* 80B32FB0  3C 60 80 45 */	lis r3, mAudioMgrPtr__10Z2AudioMgr@ha /* 0x80451368@ha */
/* 80B32FB4  38 63 13 68 */	addi r3, r3, mAudioMgrPtr__10Z2AudioMgr@l /* 0x80451368@l */
/* 80B32FB8  80 63 00 00 */	lwz r3, 0(r3)
/* 80B32FBC  38 81 00 08 */	addi r4, r1, 8
/* 80B32FC0  38 A0 00 00 */	li r5, 0
/* 80B32FC4  38 C0 00 00 */	li r6, 0
/* 80B32FC8  38 E0 00 00 */	li r7, 0
/* 80B32FCC  C0 3E 01 B4 */	lfs f1, 0x1b4(r30)
/* 80B32FD0  FC 40 08 90 */	fmr f2, f1
/* 80B32FD4  C0 7E 01 C8 */	lfs f3, 0x1c8(r30)
/* 80B32FD8  FC 80 18 90 */	fmr f4, f3
/* 80B32FDC  39 00 00 00 */	li r8, 0
/* 80B32FE0  4B 77 89 A5 */	bl seStart__7Z2SeMgrF10JAISoundIDPC3VecUlScffffUc
/* 80B32FE4  3C 60 80 45 */	lis r3, mAudioMgrPtr__10Z2AudioMgr@ha /* 0x80451368@ha */
/* 80B32FE8  38 63 13 68 */	addi r3, r3, mAudioMgrPtr__10Z2AudioMgr@l /* 0x80451368@l */
/* 80B32FEC  80 63 00 00 */	lwz r3, 0(r3)
/* 80B32FF0  38 63 03 D0 */	addi r3, r3, 0x3d0
/* 80B32FF4  38 80 00 01 */	li r4, 1
/* 80B32FF8  4B 77 ED FD */	bl changeSubBgmStatus__8Z2SeqMgrFl
/* 80B32FFC  38 00 00 15 */	li r0, 0x15
/* 80B33000  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80B33004  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80B33008  98 03 5E 24 */	stb r0, 0x5e24(r3)
/* 80B3300C  38 00 00 00 */	li r0, 0
/* 80B33010  98 03 5E 4A */	stb r0, 0x5e4a(r3)
/* 80B33014  38 00 00 02 */	li r0, 2
/* 80B33018  98 1D 05 6A */	stb r0, 0x56a(r29)
/* 80B3301C  38 00 00 03 */	li r0, 3
/* 80B33020  98 1D 05 6A */	stb r0, 0x56a(r29)
/* 80B33024  7F 63 DB 78 */	mr r3, r27
/* 80B33028  38 80 00 1F */	li r4, 0x1f
/* 80B3302C  C0 3E 05 B4 */	lfs f1, 0x5b4(r30)
/* 80B33030  81 9B 0B 44 */	lwz r12, 0xb44(r27)
/* 80B33034  81 8C 00 38 */	lwz r12, 0x38(r12)
/* 80B33038  7D 89 03 A6 */	mtctr r12
/* 80B3303C  4E 80 04 21 */	bctrl 
/* 80B33040  80 7B 0E 84 */	lwz r3, 0xe84(r27)
/* 80B33044  38 03 00 01 */	addi r0, r3, 1
/* 80B33048  90 1B 0E 84 */	stw r0, 0xe84(r27)
/* 80B3304C  48 00 01 64 */	b lbl_80B331B0
lbl_80B33050:
/* 80B33050  88 1B 0E 9B */	lbz r0, 0xe9b(r27)
/* 80B33054  28 00 00 00 */	cmplwi r0, 0
/* 80B33058  40 82 00 C8 */	bne lbl_80B33120
/* 80B3305C  80 7B 05 68 */	lwz r3, 0x568(r27)
/* 80B33060  38 80 00 01 */	li r4, 1
/* 80B33064  88 03 00 11 */	lbz r0, 0x11(r3)
/* 80B33068  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 80B3306C  40 82 00 18 */	bne lbl_80B33084
/* 80B33070  C0 3E 01 B8 */	lfs f1, 0x1b8(r30)
/* 80B33074  C0 03 00 18 */	lfs f0, 0x18(r3)
/* 80B33078  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 80B3307C  41 82 00 08 */	beq lbl_80B33084
/* 80B33080  38 80 00 00 */	li r4, 0
lbl_80B33084:
/* 80B33084  54 80 06 3F */	clrlwi. r0, r4, 0x18
/* 80B33088  41 82 01 28 */	beq lbl_80B331B0
/* 80B3308C  3C 60 80 B4 */	lis r3, lit_5948@ha /* 0x80B428F4@ha */
/* 80B33090  38 83 28 F4 */	addi r4, r3, lit_5948@l /* 0x80B428F4@l */
/* 80B33094  80 64 00 00 */	lwz r3, 0(r4)
/* 80B33098  80 04 00 04 */	lwz r0, 4(r4)
/* 80B3309C  90 61 00 1C */	stw r3, 0x1c(r1)
/* 80B330A0  90 01 00 20 */	stw r0, 0x20(r1)
/* 80B330A4  80 04 00 08 */	lwz r0, 8(r4)
/* 80B330A8  90 01 00 24 */	stw r0, 0x24(r1)
/* 80B330AC  38 00 00 03 */	li r0, 3
/* 80B330B0  B0 1B 0E 96 */	sth r0, 0xe96(r27)
/* 80B330B4  38 7B 0D CC */	addi r3, r27, 0xdcc
/* 80B330B8  4B 82 EF 61 */	bl __ptmf_test
/* 80B330BC  2C 03 00 00 */	cmpwi r3, 0
/* 80B330C0  41 82 00 18 */	beq lbl_80B330D8
/* 80B330C4  7F 63 DB 78 */	mr r3, r27
/* 80B330C8  38 80 00 00 */	li r4, 0
/* 80B330CC  39 9B 0D CC */	addi r12, r27, 0xdcc
/* 80B330D0  4B 82 EF B5 */	bl __ptmf_scall
/* 80B330D4  60 00 00 00 */	nop 
lbl_80B330D8:
/* 80B330D8  38 00 00 00 */	li r0, 0
/* 80B330DC  B0 1B 0E 96 */	sth r0, 0xe96(r27)
/* 80B330E0  80 61 00 1C */	lwz r3, 0x1c(r1)
/* 80B330E4  80 01 00 20 */	lwz r0, 0x20(r1)
/* 80B330E8  90 7B 0D CC */	stw r3, 0xdcc(r27)
/* 80B330EC  90 1B 0D D0 */	stw r0, 0xdd0(r27)
/* 80B330F0  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80B330F4  90 1B 0D D4 */	stw r0, 0xdd4(r27)
/* 80B330F8  38 7B 0D CC */	addi r3, r27, 0xdcc
/* 80B330FC  4B 82 EF 1D */	bl __ptmf_test
/* 80B33100  2C 03 00 00 */	cmpwi r3, 0
/* 80B33104  41 82 00 AC */	beq lbl_80B331B0
/* 80B33108  7F 63 DB 78 */	mr r3, r27
/* 80B3310C  38 80 00 00 */	li r4, 0
/* 80B33110  39 9B 0D CC */	addi r12, r27, 0xdcc
/* 80B33114  4B 82 EF 71 */	bl __ptmf_scall
/* 80B33118  60 00 00 00 */	nop 
/* 80B3311C  48 00 00 94 */	b lbl_80B331B0
lbl_80B33120:
/* 80B33120  3C 60 80 B4 */	lis r3, lit_5951@ha /* 0x80B42900@ha */
/* 80B33124  38 83 29 00 */	addi r4, r3, lit_5951@l /* 0x80B42900@l */
/* 80B33128  80 64 00 00 */	lwz r3, 0(r4)
/* 80B3312C  80 04 00 04 */	lwz r0, 4(r4)
/* 80B33130  90 61 00 10 */	stw r3, 0x10(r1)
/* 80B33134  90 01 00 14 */	stw r0, 0x14(r1)
/* 80B33138  80 04 00 08 */	lwz r0, 8(r4)
/* 80B3313C  90 01 00 18 */	stw r0, 0x18(r1)
/* 80B33140  38 00 00 03 */	li r0, 3
/* 80B33144  B0 1B 0E 96 */	sth r0, 0xe96(r27)
/* 80B33148  38 7B 0D CC */	addi r3, r27, 0xdcc
/* 80B3314C  4B 82 EE CD */	bl __ptmf_test
/* 80B33150  2C 03 00 00 */	cmpwi r3, 0
/* 80B33154  41 82 00 18 */	beq lbl_80B3316C
/* 80B33158  7F 63 DB 78 */	mr r3, r27
/* 80B3315C  38 80 00 00 */	li r4, 0
/* 80B33160  39 9B 0D CC */	addi r12, r27, 0xdcc
/* 80B33164  4B 82 EF 21 */	bl __ptmf_scall
/* 80B33168  60 00 00 00 */	nop 
lbl_80B3316C:
/* 80B3316C  38 00 00 00 */	li r0, 0
/* 80B33170  B0 1B 0E 96 */	sth r0, 0xe96(r27)
/* 80B33174  80 61 00 10 */	lwz r3, 0x10(r1)
/* 80B33178  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80B3317C  90 7B 0D CC */	stw r3, 0xdcc(r27)
/* 80B33180  90 1B 0D D0 */	stw r0, 0xdd0(r27)
/* 80B33184  80 01 00 18 */	lwz r0, 0x18(r1)
/* 80B33188  90 1B 0D D4 */	stw r0, 0xdd4(r27)
/* 80B3318C  38 7B 0D CC */	addi r3, r27, 0xdcc
/* 80B33190  4B 82 EE 89 */	bl __ptmf_test
/* 80B33194  2C 03 00 00 */	cmpwi r3, 0
/* 80B33198  41 82 00 18 */	beq lbl_80B331B0
/* 80B3319C  7F 63 DB 78 */	mr r3, r27
/* 80B331A0  38 80 00 00 */	li r4, 0
/* 80B331A4  39 9B 0D CC */	addi r12, r27, 0xdcc
/* 80B331A8  4B 82 EE DD */	bl __ptmf_scall
/* 80B331AC  60 00 00 00 */	nop 
lbl_80B331B0:
/* 80B331B0  38 60 00 01 */	li r3, 1
lbl_80B331B4:
/* 80B331B4  39 61 00 F0 */	addi r11, r1, 0xf0
/* 80B331B8  4B 82 F0 69 */	bl _restgpr_27
/* 80B331BC  80 01 00 F4 */	lwz r0, 0xf4(r1)
/* 80B331C0  7C 08 03 A6 */	mtlr r0
/* 80B331C4  38 21 00 F0 */	addi r1, r1, 0xf0
/* 80B331C8  4E 80 00 20 */	blr 
