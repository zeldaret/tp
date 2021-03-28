lbl_804B265C:
/* 804B265C  94 21 FE 90 */	stwu r1, -0x170(r1)
/* 804B2660  7C 08 02 A6 */	mflr r0
/* 804B2664  90 01 01 74 */	stw r0, 0x174(r1)
/* 804B2668  DB E1 01 60 */	stfd f31, 0x160(r1)
/* 804B266C  F3 E1 01 68 */	psq_st f31, 360(r1), 0, 0 /* qr0 */
/* 804B2670  DB C1 01 50 */	stfd f30, 0x150(r1)
/* 804B2674  F3 C1 01 58 */	psq_st f30, 344(r1), 0, 0 /* qr0 */
/* 804B2678  39 61 01 50 */	addi r11, r1, 0x150
/* 804B267C  4B EA FB 5C */	b _savegpr_28
/* 804B2680  7C 7D 1B 78 */	mr r29, r3
/* 804B2684  3C 60 80 4C */	lis r3, lit_3879@ha
/* 804B2688  3B E3 B5 34 */	addi r31, r3, lit_3879@l
/* 804B268C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 804B2690  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 804B2694  83 C3 5D AC */	lwz r30, 0x5dac(r3)
/* 804B2698  3B 80 00 00 */	li r28, 0
/* 804B269C  80 03 5F 18 */	lwz r0, 0x5f18(r3)
/* 804B26A0  54 00 02 D7 */	rlwinm. r0, r0, 0, 0xb, 0xb
/* 804B26A4  41 82 00 14 */	beq lbl_804B26B8
/* 804B26A8  38 00 00 1E */	li r0, 0x1e
/* 804B26AC  98 1D 11 65 */	stb r0, 0x1165(r29)
/* 804B26B0  38 00 00 00 */	li r0, 0
/* 804B26B4  98 1D 10 0D */	stb r0, 0x100d(r29)
lbl_804B26B8:
/* 804B26B8  C0 5D 10 64 */	lfs f2, 0x1064(r29)
/* 804B26BC  C0 3F 01 5C */	lfs f1, 0x15c(r31)
/* 804B26C0  C0 1D 05 90 */	lfs f0, 0x590(r29)
/* 804B26C4  EC 01 00 2A */	fadds f0, f1, f0
/* 804B26C8  FC 02 00 40 */	fcmpo cr0, f2, f0
/* 804B26CC  40 80 01 C0 */	bge lbl_804B288C
/* 804B26D0  7F A3 EB 78 */	mr r3, r29
/* 804B26D4  38 9D 10 60 */	addi r4, r29, 0x1060
/* 804B26D8  4B FF 98 CD */	bl depth_check__FP13dmg_rod_classP4cXyz
/* 804B26DC  C0 1F 00 58 */	lfs f0, 0x58(r31)
/* 804B26E0  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 804B26E4  40 81 01 A8 */	ble lbl_804B288C
/* 804B26E8  88 1D 10 0D */	lbz r0, 0x100d(r29)
/* 804B26EC  7C 00 07 75 */	extsb. r0, r0
/* 804B26F0  40 82 00 D4 */	bne lbl_804B27C4
/* 804B26F4  38 00 00 01 */	li r0, 1
/* 804B26F8  98 1D 10 0D */	stb r0, 0x100d(r29)
/* 804B26FC  88 1D 11 65 */	lbz r0, 0x1165(r29)
/* 804B2700  7C 00 07 75 */	extsb. r0, r0
/* 804B2704  40 82 00 60 */	bne lbl_804B2764
/* 804B2708  C0 1D 10 60 */	lfs f0, 0x1060(r29)
/* 804B270C  D0 01 00 58 */	stfs f0, 0x58(r1)
/* 804B2710  C0 1D 05 90 */	lfs f0, 0x590(r29)
/* 804B2714  D0 01 00 5C */	stfs f0, 0x5c(r1)
/* 804B2718  C0 1D 10 68 */	lfs f0, 0x1068(r29)
/* 804B271C  D0 01 00 60 */	stfs f0, 0x60(r1)
/* 804B2720  38 61 00 58 */	addi r3, r1, 0x58
/* 804B2724  C0 3F 00 50 */	lfs f1, 0x50(r31)
/* 804B2728  38 80 00 00 */	li r4, 0
/* 804B272C  4B B6 D1 50 */	b fopKyM_createWpillar__FPC4cXyzfi
/* 804B2730  38 00 00 14 */	li r0, 0x14
/* 804B2734  98 1D 11 65 */	stb r0, 0x1165(r29)
/* 804B2738  3C 60 00 02 */	lis r3, 0x0002 /* 0x00020082@ha */
/* 804B273C  38 03 00 82 */	addi r0, r3, 0x0082 /* 0x00020082@l */
/* 804B2740  90 01 00 0C */	stw r0, 0xc(r1)
/* 804B2744  38 7D 10 B4 */	addi r3, r29, 0x10b4
/* 804B2748  38 81 00 0C */	addi r4, r1, 0xc
/* 804B274C  38 A0 00 00 */	li r5, 0
/* 804B2750  38 C0 FF FF */	li r6, -1
/* 804B2754  81 9D 10 B4 */	lwz r12, 0x10b4(r29)
/* 804B2758  81 8C 00 14 */	lwz r12, 0x14(r12)
/* 804B275C  7D 89 03 A6 */	mtctr r12
/* 804B2760  4E 80 04 21 */	bctrl 
lbl_804B2764:
/* 804B2764  C0 3F 01 EC */	lfs f1, 0x1ec(r31)
/* 804B2768  4B DB 51 EC */	b cM_rndF__Ff
/* 804B276C  C0 1F 01 EC */	lfs f0, 0x1ec(r31)
/* 804B2770  EC 00 08 2A */	fadds f0, f0, f1
/* 804B2774  FC 00 00 1E */	fctiwz f0, f0
/* 804B2778  D8 01 01 28 */	stfd f0, 0x128(r1)
/* 804B277C  80 01 01 2C */	lwz r0, 0x12c(r1)
/* 804B2780  B0 1D 10 8A */	sth r0, 0x108a(r29)
/* 804B2784  C0 3F 01 58 */	lfs f1, 0x158(r31)
/* 804B2788  4B DB 51 CC */	b cM_rndF__Ff
/* 804B278C  C0 1F 01 F4 */	lfs f0, 0x1f4(r31)
/* 804B2790  EC 00 08 2A */	fadds f0, f0, f1
/* 804B2794  FC 00 00 1E */	fctiwz f0, f0
/* 804B2798  D8 01 01 30 */	stfd f0, 0x130(r1)
/* 804B279C  80 01 01 34 */	lwz r0, 0x134(r1)
/* 804B27A0  B0 1D 10 8C */	sth r0, 0x108c(r29)
/* 804B27A4  C0 3F 00 0C */	lfs f1, 0xc(r31)
/* 804B27A8  4B DB 51 AC */	b cM_rndF__Ff
/* 804B27AC  C0 1F 00 9C */	lfs f0, 0x9c(r31)
/* 804B27B0  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 804B27B4  40 80 00 10 */	bge lbl_804B27C4
/* 804B27B8  A8 1D 10 8C */	lha r0, 0x108c(r29)
/* 804B27BC  1C 00 FF FF */	mulli r0, r0, -1
/* 804B27C0  B0 1D 10 8C */	sth r0, 0x108c(r29)
lbl_804B27C4:
/* 804B27C4  88 1D 10 A5 */	lbz r0, 0x10a5(r29)
/* 804B27C8  7C 00 07 75 */	extsb. r0, r0
/* 804B27CC  40 82 00 20 */	bne lbl_804B27EC
/* 804B27D0  A8 7D 10 84 */	lha r3, 0x1084(r29)
/* 804B27D4  4B EB 28 FC */	b abs
/* 804B27D8  2C 03 30 00 */	cmpwi r3, 0x3000
/* 804B27DC  41 80 00 10 */	blt lbl_804B27EC
/* 804B27E0  A8 1D 10 A2 */	lha r0, 0x10a2(r29)
/* 804B27E4  2C 00 07 D0 */	cmpwi r0, 0x7d0
/* 804B27E8  40 81 00 38 */	ble lbl_804B2820
lbl_804B27EC:
/* 804B27EC  C0 1D 10 60 */	lfs f0, 0x1060(r29)
/* 804B27F0  D0 01 00 40 */	stfs f0, 0x40(r1)
/* 804B27F4  C0 1D 10 64 */	lfs f0, 0x1064(r29)
/* 804B27F8  D0 01 00 44 */	stfs f0, 0x44(r1)
/* 804B27FC  C0 1D 10 68 */	lfs f0, 0x1068(r29)
/* 804B2800  D0 01 00 48 */	stfs f0, 0x48(r1)
/* 804B2804  C0 1D 05 90 */	lfs f0, 0x590(r29)
/* 804B2808  D0 01 00 44 */	stfs f0, 0x44(r1)
/* 804B280C  38 7D 11 78 */	addi r3, r29, 0x1178
/* 804B2810  38 81 00 40 */	addi r4, r1, 0x40
/* 804B2814  C0 3F 00 50 */	lfs f1, 0x50(r31)
/* 804B2818  C0 5F 00 C4 */	lfs f2, 0xc4(r31)
/* 804B281C  4B B6 A8 F0 */	b fopAcM_effHamonSet__FPUlPC4cXyzff
lbl_804B2820:
/* 804B2820  C0 3D 05 90 */	lfs f1, 0x590(r29)
/* 804B2824  C0 1D 0B 70 */	lfs f0, 0xb70(r29)
/* 804B2828  EC 21 00 28 */	fsubs f1, f1, f0
/* 804B282C  C0 1F 01 F8 */	lfs f0, 0x1f8(r31)
/* 804B2830  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 804B2834  40 81 00 4C */	ble lbl_804B2880
/* 804B2838  38 7D 10 8A */	addi r3, r29, 0x108a
/* 804B283C  38 80 00 00 */	li r4, 0
/* 804B2840  38 A0 00 08 */	li r5, 8
/* 804B2844  38 C0 00 32 */	li r6, 0x32
/* 804B2848  4B DB DD C0 */	b cLib_addCalcAngleS2__FPssss
/* 804B284C  A8 1D 10 8A */	lha r0, 0x108a(r29)
/* 804B2850  2C 00 00 0A */	cmpwi r0, 0xa
/* 804B2854  40 81 00 14 */	ble lbl_804B2868
/* 804B2858  A8 7D 10 8E */	lha r3, 0x108e(r29)
/* 804B285C  A8 1D 10 8C */	lha r0, 0x108c(r29)
/* 804B2860  7C 03 02 14 */	add r0, r3, r0
/* 804B2864  B0 1D 10 8E */	sth r0, 0x108e(r29)
lbl_804B2868:
/* 804B2868  38 7D 10 90 */	addi r3, r29, 0x1090
/* 804B286C  C0 3F 00 9C */	lfs f1, 0x9c(r31)
/* 804B2870  C0 5F 00 0C */	lfs f2, 0xc(r31)
/* 804B2874  C0 7F 00 DC */	lfs f3, 0xdc(r31)
/* 804B2878  4B DB D1 C4 */	b cLib_addCalc2__FPffff
/* 804B287C  48 00 00 A8 */	b lbl_804B2924
lbl_804B2880:
/* 804B2880  C0 1F 00 58 */	lfs f0, 0x58(r31)
/* 804B2884  D0 1D 10 90 */	stfs f0, 0x1090(r29)
/* 804B2888  48 00 00 9C */	b lbl_804B2924
lbl_804B288C:
/* 804B288C  88 1D 10 0D */	lbz r0, 0x100d(r29)
/* 804B2890  7C 00 07 75 */	extsb. r0, r0
/* 804B2894  41 82 00 6C */	beq lbl_804B2900
/* 804B2898  88 1D 11 65 */	lbz r0, 0x1165(r29)
/* 804B289C  7C 00 07 75 */	extsb. r0, r0
/* 804B28A0  40 82 00 60 */	bne lbl_804B2900
/* 804B28A4  C0 1D 10 60 */	lfs f0, 0x1060(r29)
/* 804B28A8  D0 01 00 58 */	stfs f0, 0x58(r1)
/* 804B28AC  C0 1D 05 90 */	lfs f0, 0x590(r29)
/* 804B28B0  D0 01 00 5C */	stfs f0, 0x5c(r1)
/* 804B28B4  C0 1D 10 68 */	lfs f0, 0x1068(r29)
/* 804B28B8  D0 01 00 60 */	stfs f0, 0x60(r1)
/* 804B28BC  38 61 00 58 */	addi r3, r1, 0x58
/* 804B28C0  C0 3F 00 50 */	lfs f1, 0x50(r31)
/* 804B28C4  38 80 00 00 */	li r4, 0
/* 804B28C8  4B B6 CF B4 */	b fopKyM_createWpillar__FPC4cXyzfi
/* 804B28CC  38 00 00 14 */	li r0, 0x14
/* 804B28D0  98 1D 11 65 */	stb r0, 0x1165(r29)
/* 804B28D4  3C 60 00 02 */	lis r3, 0x0002 /* 0x00020089@ha */
/* 804B28D8  38 03 00 89 */	addi r0, r3, 0x0089 /* 0x00020089@l */
/* 804B28DC  90 01 00 08 */	stw r0, 8(r1)
/* 804B28E0  38 7D 10 B4 */	addi r3, r29, 0x10b4
/* 804B28E4  38 81 00 08 */	addi r4, r1, 8
/* 804B28E8  38 A0 00 00 */	li r5, 0
/* 804B28EC  38 C0 FF FF */	li r6, -1
/* 804B28F0  81 9D 10 B4 */	lwz r12, 0x10b4(r29)
/* 804B28F4  81 8C 00 14 */	lwz r12, 0x14(r12)
/* 804B28F8  7D 89 03 A6 */	mtctr r12
/* 804B28FC  4E 80 04 21 */	bctrl 
lbl_804B2900:
/* 804B2900  C0 1F 00 6C */	lfs f0, 0x6c(r31)
/* 804B2904  D0 1D 10 90 */	stfs f0, 0x1090(r29)
/* 804B2908  38 00 00 00 */	li r0, 0
/* 804B290C  98 1D 10 0D */	stb r0, 0x100d(r29)
/* 804B2910  38 7D 10 8A */	addi r3, r29, 0x108a
/* 804B2914  38 80 00 00 */	li r4, 0
/* 804B2918  38 A0 00 02 */	li r5, 2
/* 804B291C  38 C0 00 64 */	li r6, 0x64
/* 804B2920  4B DB DC E8 */	b cLib_addCalcAngleS2__FPssss
lbl_804B2924:
/* 804B2924  A8 1D 0F 7E */	lha r0, 0xf7e(r29)
/* 804B2928  2C 00 00 06 */	cmpwi r0, 6
/* 804B292C  40 82 00 20 */	bne lbl_804B294C
/* 804B2930  C0 1D 09 D4 */	lfs f0, 0x9d4(r29)
/* 804B2934  D0 01 00 34 */	stfs f0, 0x34(r1)
/* 804B2938  C0 1D 09 D8 */	lfs f0, 0x9d8(r29)
/* 804B293C  D0 01 00 38 */	stfs f0, 0x38(r1)
/* 804B2940  C0 1D 09 DC */	lfs f0, 0x9dc(r29)
/* 804B2944  D0 01 00 3C */	stfs f0, 0x3c(r1)
/* 804B2948  48 00 00 1C */	b lbl_804B2964
lbl_804B294C:
/* 804B294C  C0 1D 0A A0 */	lfs f0, 0xaa0(r29)
/* 804B2950  D0 01 00 34 */	stfs f0, 0x34(r1)
/* 804B2954  C0 1D 0A A4 */	lfs f0, 0xaa4(r29)
/* 804B2958  D0 01 00 38 */	stfs f0, 0x38(r1)
/* 804B295C  C0 1D 0A A8 */	lfs f0, 0xaa8(r29)
/* 804B2960  D0 01 00 3C */	stfs f0, 0x3c(r1)
lbl_804B2964:
/* 804B2964  3C 60 80 45 */	lis r3, calc_mtx@ha
/* 804B2968  38 63 07 68 */	addi r3, r3, calc_mtx@l
/* 804B296C  80 63 00 00 */	lwz r3, 0(r3)
/* 804B2970  A8 9E 04 E6 */	lha r4, 0x4e6(r30)
/* 804B2974  4B B5 9A 68 */	b mDoMtx_YrotS__FPA4_fs
/* 804B2978  C0 1F 00 58 */	lfs f0, 0x58(r31)
/* 804B297C  D0 01 00 58 */	stfs f0, 0x58(r1)
/* 804B2980  D0 01 00 5C */	stfs f0, 0x5c(r1)
/* 804B2984  C0 1F 00 50 */	lfs f0, 0x50(r31)
/* 804B2988  D0 01 00 60 */	stfs f0, 0x60(r1)
/* 804B298C  38 61 00 58 */	addi r3, r1, 0x58
/* 804B2990  38 81 00 28 */	addi r4, r1, 0x28
/* 804B2994  4B DB E5 58 */	b MtxPosition__FP4cXyzP4cXyz
/* 804B2998  C0 41 00 28 */	lfs f2, 0x28(r1)
/* 804B299C  C0 3D 10 60 */	lfs f1, 0x1060(r29)
/* 804B29A0  C0 01 00 34 */	lfs f0, 0x34(r1)
/* 804B29A4  EC 01 00 28 */	fsubs f0, f1, f0
/* 804B29A8  EF E2 00 2A */	fadds f31, f2, f0
/* 804B29AC  38 61 00 D4 */	addi r3, r1, 0xd4
/* 804B29B0  4B BC 4B CC */	b __ct__11dBgS_GndChkFv
/* 804B29B4  C0 1D 10 60 */	lfs f0, 0x1060(r29)
/* 804B29B8  D0 01 00 1C */	stfs f0, 0x1c(r1)
/* 804B29BC  C0 3F 00 B4 */	lfs f1, 0xb4(r31)
/* 804B29C0  C0 1D 10 64 */	lfs f0, 0x1064(r29)
/* 804B29C4  EC 01 00 2A */	fadds f0, f1, f0
/* 804B29C8  D0 01 00 20 */	stfs f0, 0x20(r1)
/* 804B29CC  C0 1D 10 68 */	lfs f0, 0x1068(r29)
/* 804B29D0  D0 01 00 24 */	stfs f0, 0x24(r1)
/* 804B29D4  38 61 00 D4 */	addi r3, r1, 0xd4
/* 804B29D8  38 81 00 1C */	addi r4, r1, 0x1c
/* 804B29DC  4B DB 53 30 */	b SetPos__11cBgS_GndChkFPC3Vec
/* 804B29E0  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 804B29E4  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 804B29E8  3B C3 0F 38 */	addi r30, r3, 0xf38
/* 804B29EC  7F C3 F3 78 */	mr r3, r30
/* 804B29F0  38 81 00 D4 */	addi r4, r1, 0xd4
/* 804B29F4  4B BC 1A AC */	b GroundCross__4cBgSFP11cBgS_GndChk
/* 804B29F8  C0 1F 01 FC */	lfs f0, 0x1fc(r31)
/* 804B29FC  EC 40 08 2A */	fadds f2, f0, f1
/* 804B2A00  C0 3F 00 60 */	lfs f1, 0x60(r31)
/* 804B2A04  C0 1D 05 90 */	lfs f0, 0x590(r29)
/* 804B2A08  EC 01 00 2A */	fadds f0, f1, f0
/* 804B2A0C  FC 02 00 40 */	fcmpo cr0, f2, f0
/* 804B2A10  40 80 00 18 */	bge lbl_804B2A28
/* 804B2A14  A8 1D 0F 7E */	lha r0, 0xf7e(r29)
/* 804B2A18  2C 00 00 05 */	cmpwi r0, 5
/* 804B2A1C  40 80 00 10 */	bge lbl_804B2A2C
/* 804B2A20  FC 40 00 90 */	fmr f2, f0
/* 804B2A24  48 00 00 08 */	b lbl_804B2A2C
lbl_804B2A28:
/* 804B2A28  3B 80 00 01 */	li r28, 1
lbl_804B2A2C:
/* 804B2A2C  C0 3D 10 64 */	lfs f1, 0x1064(r29)
/* 804B2A30  C0 1D 10 90 */	lfs f0, 0x1090(r29)
/* 804B2A34  EC 21 00 2A */	fadds f1, f1, f0
/* 804B2A38  FC 01 10 40 */	fcmpo cr0, f1, f2
/* 804B2A3C  7C 00 00 26 */	mfcr r0
/* 804B2A40  54 00 0F FF */	rlwinm. r0, r0, 1, 0x1f, 0x1f
/* 804B2A44  41 82 00 08 */	beq lbl_804B2A4C
/* 804B2A48  FC 20 10 90 */	fmr f1, f2
lbl_804B2A4C:
/* 804B2A4C  28 00 00 00 */	cmplwi r0, 0
/* 804B2A50  40 82 00 08 */	bne lbl_804B2A58
/* 804B2A54  3B 80 00 00 */	li r28, 0
lbl_804B2A58:
/* 804B2A58  C0 01 00 38 */	lfs f0, 0x38(r1)
/* 804B2A5C  EC 21 00 28 */	fsubs f1, f1, f0
/* 804B2A60  C0 61 00 30 */	lfs f3, 0x30(r1)
/* 804B2A64  C0 5D 10 68 */	lfs f2, 0x1068(r29)
/* 804B2A68  C0 01 00 3C */	lfs f0, 0x3c(r1)
/* 804B2A6C  EC 02 00 28 */	fsubs f0, f2, f0
/* 804B2A70  EF C3 00 2A */	fadds f30, f3, f0
/* 804B2A74  EC 5F 07 F2 */	fmuls f2, f31, f31
/* 804B2A78  EC 1E 07 B2 */	fmuls f0, f30, f30
/* 804B2A7C  EC 42 00 2A */	fadds f2, f2, f0
/* 804B2A80  C0 1F 00 58 */	lfs f0, 0x58(r31)
/* 804B2A84  FC 02 00 40 */	fcmpo cr0, f2, f0
/* 804B2A88  40 81 00 0C */	ble lbl_804B2A94
/* 804B2A8C  FC 00 10 34 */	frsqrte f0, f2
/* 804B2A90  EC 40 00 B2 */	fmuls f2, f0, f2
lbl_804B2A94:
/* 804B2A94  4B DB 4B E0 */	b cM_atan2s__Fff
/* 804B2A98  7C 03 00 D0 */	neg r0, r3
/* 804B2A9C  7C 04 07 35 */	extsh. r4, r0
/* 804B2AA0  41 81 00 20 */	bgt lbl_804B2AC0
/* 804B2AA4  C0 3D 10 90 */	lfs f1, 0x1090(r29)
/* 804B2AA8  C0 1F 00 58 */	lfs f0, 0x58(r31)
/* 804B2AAC  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 804B2AB0  41 81 00 10 */	bgt lbl_804B2AC0
/* 804B2AB4  A8 1D 0F 7E */	lha r0, 0xf7e(r29)
/* 804B2AB8  2C 00 00 05 */	cmpwi r0, 5
/* 804B2ABC  41 80 00 44 */	blt lbl_804B2B00
lbl_804B2AC0:
/* 804B2AC0  7C 80 07 35 */	extsh. r0, r4
/* 804B2AC4  41 81 00 10 */	bgt lbl_804B2AD4
/* 804B2AC8  A8 1D 0F 7E */	lha r0, 0xf7e(r29)
/* 804B2ACC  2C 00 00 05 */	cmpwi r0, 5
/* 804B2AD0  41 80 00 0C */	blt lbl_804B2ADC
lbl_804B2AD4:
/* 804B2AD4  38 C0 08 00 */	li r6, 0x800
/* 804B2AD8  48 00 00 1C */	b lbl_804B2AF4
lbl_804B2ADC:
/* 804B2ADC  C0 3F 02 00 */	lfs f1, 0x200(r31)
/* 804B2AE0  C0 1D 10 90 */	lfs f0, 0x1090(r29)
/* 804B2AE4  EC 01 00 32 */	fmuls f0, f1, f0
/* 804B2AE8  FC 00 00 1E */	fctiwz f0, f0
/* 804B2AEC  D8 01 01 30 */	stfd f0, 0x130(r1)
/* 804B2AF0  80 C1 01 34 */	lwz r6, 0x134(r1)
lbl_804B2AF4:
/* 804B2AF4  38 7D 10 84 */	addi r3, r29, 0x1084
/* 804B2AF8  38 A0 00 02 */	li r5, 2
/* 804B2AFC  4B DB DB 0C */	b cLib_addCalcAngleS2__FPssss
lbl_804B2B00:
/* 804B2B00  FC 20 F8 90 */	fmr f1, f31
/* 804B2B04  FC 40 F0 90 */	fmr f2, f30
/* 804B2B08  4B DB 4B 6C */	b cM_atan2s__Fff
/* 804B2B0C  7C 64 07 34 */	extsh r4, r3
/* 804B2B10  38 7D 10 86 */	addi r3, r29, 0x1086
/* 804B2B14  38 A0 00 02 */	li r5, 2
/* 804B2B18  38 C0 08 00 */	li r6, 0x800
/* 804B2B1C  4B DB DA EC */	b cLib_addCalcAngleS2__FPssss
/* 804B2B20  3C 60 80 45 */	lis r3, calc_mtx@ha
/* 804B2B24  38 63 07 68 */	addi r3, r3, calc_mtx@l
/* 804B2B28  80 63 00 00 */	lwz r3, 0(r3)
/* 804B2B2C  A8 9D 10 86 */	lha r4, 0x1086(r29)
/* 804B2B30  4B B5 98 AC */	b mDoMtx_YrotS__FPA4_fs
/* 804B2B34  3C 60 80 45 */	lis r3, calc_mtx@ha
/* 804B2B38  38 63 07 68 */	addi r3, r3, calc_mtx@l
/* 804B2B3C  80 63 00 00 */	lwz r3, 0(r3)
/* 804B2B40  A8 9D 10 84 */	lha r4, 0x1084(r29)
/* 804B2B44  4B B5 98 58 */	b mDoMtx_XrotM__FPA4_fs
/* 804B2B48  C0 1F 00 58 */	lfs f0, 0x58(r31)
/* 804B2B4C  D0 01 00 58 */	stfs f0, 0x58(r1)
/* 804B2B50  D0 01 00 5C */	stfs f0, 0x5c(r1)
/* 804B2B54  C0 1F 02 04 */	lfs f0, 0x204(r31)
/* 804B2B58  D0 01 00 60 */	stfs f0, 0x60(r1)
/* 804B2B5C  38 61 00 58 */	addi r3, r1, 0x58
/* 804B2B60  38 81 00 4C */	addi r4, r1, 0x4c
/* 804B2B64  4B DB E3 88 */	b MtxPosition__FP4cXyzP4cXyz
/* 804B2B68  38 61 00 10 */	addi r3, r1, 0x10
/* 804B2B6C  38 81 00 34 */	addi r4, r1, 0x34
/* 804B2B70  38 A1 00 4C */	addi r5, r1, 0x4c
/* 804B2B74  4B DB 3F 70 */	b __pl__4cXyzCFRC3Vec
/* 804B2B78  C0 01 00 10 */	lfs f0, 0x10(r1)
/* 804B2B7C  D0 1D 10 60 */	stfs f0, 0x1060(r29)
/* 804B2B80  C0 01 00 14 */	lfs f0, 0x14(r1)
/* 804B2B84  D0 1D 10 64 */	stfs f0, 0x1064(r29)
/* 804B2B88  C0 01 00 18 */	lfs f0, 0x18(r1)
/* 804B2B8C  D0 1D 10 68 */	stfs f0, 0x1068(r29)
/* 804B2B90  C0 3D 06 E0 */	lfs f1, 0x6e0(r29)
/* 804B2B94  C0 1F 00 78 */	lfs f0, 0x78(r31)
/* 804B2B98  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 804B2B9C  40 81 00 68 */	ble lbl_804B2C04
/* 804B2BA0  38 61 00 64 */	addi r3, r1, 0x64
/* 804B2BA4  4B BC 50 C4 */	b __ct__11dBgS_LinChkFv
/* 804B2BA8  38 61 00 BC */	addi r3, r1, 0xbc
/* 804B2BAC  4B BC 63 34 */	b SetRope__16dBgS_PolyPassChkFv
/* 804B2BB0  38 61 00 64 */	addi r3, r1, 0x64
/* 804B2BB4  38 9D 10 6C */	addi r4, r29, 0x106c
/* 804B2BB8  38 BD 10 60 */	addi r5, r29, 0x1060
/* 804B2BBC  7F A6 EB 78 */	mr r6, r29
/* 804B2BC0  4B BC 51 A4 */	b Set__11dBgS_LinChkFPC4cXyzPC4cXyzPC10fopAc_ac_c
/* 804B2BC4  7F C3 F3 78 */	mr r3, r30
/* 804B2BC8  38 81 00 64 */	addi r4, r1, 0x64
/* 804B2BCC  4B BC 17 E8 */	b LineCross__4cBgSFP11cBgS_LinChk
/* 804B2BD0  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 804B2BD4  41 82 00 24 */	beq lbl_804B2BF8
/* 804B2BD8  C0 1F 01 C4 */	lfs f0, 0x1c4(r31)
/* 804B2BDC  D0 1D 06 E0 */	stfs f0, 0x6e0(r29)
/* 804B2BE0  C0 1D 10 6C */	lfs f0, 0x106c(r29)
/* 804B2BE4  D0 1D 10 60 */	stfs f0, 0x1060(r29)
/* 804B2BE8  C0 1D 10 70 */	lfs f0, 0x1070(r29)
/* 804B2BEC  D0 1D 10 64 */	stfs f0, 0x1064(r29)
/* 804B2BF0  C0 1D 10 74 */	lfs f0, 0x1074(r29)
/* 804B2BF4  D0 1D 10 68 */	stfs f0, 0x1068(r29)
lbl_804B2BF8:
/* 804B2BF8  38 61 00 64 */	addi r3, r1, 0x64
/* 804B2BFC  38 80 FF FF */	li r4, -1
/* 804B2C00  4B BC 50 DC */	b __dt__11dBgS_LinChkFv
lbl_804B2C04:
/* 804B2C04  C0 1D 10 60 */	lfs f0, 0x1060(r29)
/* 804B2C08  D0 1D 10 6C */	stfs f0, 0x106c(r29)
/* 804B2C0C  C0 1D 10 64 */	lfs f0, 0x1064(r29)
/* 804B2C10  D0 1D 10 70 */	stfs f0, 0x1070(r29)
/* 804B2C14  C0 1D 10 68 */	lfs f0, 0x1068(r29)
/* 804B2C18  D0 1D 10 74 */	stfs f0, 0x1074(r29)
/* 804B2C1C  38 61 00 D4 */	addi r3, r1, 0xd4
/* 804B2C20  38 80 FF FF */	li r4, -1
/* 804B2C24  4B BC 49 CC */	b __dt__11dBgS_GndChkFv
/* 804B2C28  7F 83 E3 78 */	mr r3, r28
/* 804B2C2C  E3 E1 01 68 */	psq_l f31, 360(r1), 0, 0 /* qr0 */
/* 804B2C30  CB E1 01 60 */	lfd f31, 0x160(r1)
/* 804B2C34  E3 C1 01 58 */	psq_l f30, 344(r1), 0, 0 /* qr0 */
/* 804B2C38  CB C1 01 50 */	lfd f30, 0x150(r1)
/* 804B2C3C  39 61 01 50 */	addi r11, r1, 0x150
/* 804B2C40  4B EA F5 E4 */	b _restgpr_28
/* 804B2C44  80 01 01 74 */	lwz r0, 0x174(r1)
/* 804B2C48  7C 08 03 A6 */	mtlr r0
/* 804B2C4C  38 21 01 70 */	addi r1, r1, 0x170
/* 804B2C50  4E 80 00 20 */	blr 
