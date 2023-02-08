lbl_807A266C:
/* 807A266C  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 807A2670  7C 08 02 A6 */	mflr r0
/* 807A2674  90 01 00 44 */	stw r0, 0x44(r1)
/* 807A2678  93 E1 00 3C */	stw r31, 0x3c(r1)
/* 807A267C  93 C1 00 38 */	stw r30, 0x38(r1)
/* 807A2680  7C 7E 1B 78 */	mr r30, r3
/* 807A2684  3C 60 80 7A */	lis r3, lit_3903@ha /* 0x807A6824@ha */
/* 807A2688  3B E3 68 24 */	addi r31, r3, lit_3903@l /* 0x807A6824@l */
/* 807A268C  38 61 00 0C */	addi r3, r1, 0xc
/* 807A2690  38 9E 04 A8 */	addi r4, r30, 0x4a8
/* 807A2694  38 BE 04 D0 */	addi r5, r30, 0x4d0
/* 807A2698  4B AC 44 9D */	bl __mi__4cXyzCFRC3Vec
/* 807A269C  C0 01 00 0C */	lfs f0, 0xc(r1)
/* 807A26A0  D0 01 00 24 */	stfs f0, 0x24(r1)
/* 807A26A4  C0 01 00 10 */	lfs f0, 0x10(r1)
/* 807A26A8  D0 01 00 28 */	stfs f0, 0x28(r1)
/* 807A26AC  C0 01 00 14 */	lfs f0, 0x14(r1)
/* 807A26B0  D0 01 00 2C */	stfs f0, 0x2c(r1)
/* 807A26B4  A8 1E 06 80 */	lha r0, 0x680(r30)
/* 807A26B8  2C 00 00 01 */	cmpwi r0, 1
/* 807A26BC  41 82 00 7C */	beq lbl_807A2738
/* 807A26C0  40 80 01 14 */	bge lbl_807A27D4
/* 807A26C4  2C 00 00 00 */	cmpwi r0, 0
/* 807A26C8  40 80 00 08 */	bge lbl_807A26D0
/* 807A26CC  48 00 01 08 */	b lbl_807A27D4
lbl_807A26D0:
/* 807A26D0  C0 1F 00 04 */	lfs f0, 4(r31)
/* 807A26D4  80 7E 05 CC */	lwz r3, 0x5cc(r30)
/* 807A26D8  D0 03 00 18 */	stfs f0, 0x18(r3)
/* 807A26DC  38 60 00 01 */	li r3, 1
/* 807A26E0  B0 7E 06 80 */	sth r3, 0x680(r30)
/* 807A26E4  38 00 00 28 */	li r0, 0x28
/* 807A26E8  B0 1E 06 82 */	sth r0, 0x682(r30)
/* 807A26EC  D0 1E 04 FC */	stfs f0, 0x4fc(r30)
/* 807A26F0  98 7E 07 E4 */	stb r3, 0x7e4(r30)
/* 807A26F4  7F C3 F3 78 */	mr r3, r30
/* 807A26F8  38 80 00 24 */	li r4, 0x24
/* 807A26FC  C0 3F 00 AC */	lfs f1, 0xac(r31)
/* 807A2700  38 A0 00 02 */	li r5, 2
/* 807A2704  C0 5F 00 08 */	lfs f2, 8(r31)
/* 807A2708  4B FF B7 45 */	bl anm_init__FP10e_st_classifUcf
/* 807A270C  3C 60 00 07 */	lis r3, 0x0007 /* 0x0007022B@ha */
/* 807A2710  38 03 02 2B */	addi r0, r3, 0x022B /* 0x0007022B@l */
/* 807A2714  90 01 00 08 */	stw r0, 8(r1)
/* 807A2718  38 7E 05 D0 */	addi r3, r30, 0x5d0
/* 807A271C  38 81 00 08 */	addi r4, r1, 8
/* 807A2720  38 A0 00 00 */	li r5, 0
/* 807A2724  38 C0 FF FF */	li r6, -1
/* 807A2728  81 9E 05 D0 */	lwz r12, 0x5d0(r30)
/* 807A272C  81 8C 00 14 */	lwz r12, 0x14(r12)
/* 807A2730  7D 89 03 A6 */	mtctr r12
/* 807A2734  4E 80 04 21 */	bctrl 
lbl_807A2738:
/* 807A2738  C0 3E 04 D4 */	lfs f1, 0x4d4(r30)
/* 807A273C  C0 1E 04 FC */	lfs f0, 0x4fc(r30)
/* 807A2740  EC 01 00 2A */	fadds f0, f1, f0
/* 807A2744  D0 1E 04 D4 */	stfs f0, 0x4d4(r30)
/* 807A2748  C0 3E 04 FC */	lfs f1, 0x4fc(r30)
/* 807A274C  C0 1F 00 94 */	lfs f0, 0x94(r31)
/* 807A2750  EC 01 00 28 */	fsubs f0, f1, f0
/* 807A2754  D0 1E 04 FC */	stfs f0, 0x4fc(r30)
/* 807A2758  C0 3E 04 FC */	lfs f1, 0x4fc(r30)
/* 807A275C  C0 1F 01 14 */	lfs f0, 0x114(r31)
/* 807A2760  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 807A2764  40 80 00 08 */	bge lbl_807A276C
/* 807A2768  D0 1E 04 FC */	stfs f0, 0x4fc(r30)
lbl_807A276C:
/* 807A276C  A8 1E 06 82 */	lha r0, 0x682(r30)
/* 807A2770  2C 00 00 00 */	cmpwi r0, 0
/* 807A2774  40 82 00 60 */	bne lbl_807A27D4
/* 807A2778  7F C3 F3 78 */	mr r3, r30
/* 807A277C  38 9E 04 D0 */	addi r4, r30, 0x4d0
/* 807A2780  C0 3F 00 5C */	lfs f1, 0x5c(r31)
/* 807A2784  3C A0 80 7A */	lis r5, l_HIO@ha /* 0x807A6DF4@ha */
/* 807A2788  38 A5 6D F4 */	addi r5, r5, l_HIO@l /* 0x807A6DF4@l */
/* 807A278C  C0 05 00 08 */	lfs f0, 8(r5)
/* 807A2790  EC 01 00 32 */	fmuls f0, f1, f0
/* 807A2794  FC 00 00 1E */	fctiwz f0, f0
/* 807A2798  D8 01 00 30 */	stfd f0, 0x30(r1)
/* 807A279C  80 A1 00 34 */	lwz r5, 0x34(r1)
/* 807A27A0  38 C0 00 00 */	li r6, 0
/* 807A27A4  38 E0 00 06 */	li r7, 6
/* 807A27A8  4B 87 A3 31 */	bl fopAcM_createDisappear__FPC10fopAc_ac_cPC4cXyzUcUcUc
/* 807A27AC  7F C3 F3 78 */	mr r3, r30
/* 807A27B0  4B 87 74 CD */	bl fopAcM_delete__FP10fopAc_ac_c
/* 807A27B4  88 9E 05 B8 */	lbz r4, 0x5b8(r30)
/* 807A27B8  28 04 00 FF */	cmplwi r4, 0xff
/* 807A27BC  41 82 00 18 */	beq lbl_807A27D4
/* 807A27C0  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 807A27C4  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 807A27C8  88 1E 04 E2 */	lbz r0, 0x4e2(r30)
/* 807A27CC  7C 05 07 74 */	extsb r5, r0
/* 807A27D0  4B 89 2A 31 */	bl onSwitch__10dSv_info_cFii
lbl_807A27D4:
/* 807A27D4  C0 3E 04 D0 */	lfs f1, 0x4d0(r30)
/* 807A27D8  C0 1E 04 F8 */	lfs f0, 0x4f8(r30)
/* 807A27DC  EC 01 00 2A */	fadds f0, f1, f0
/* 807A27E0  D0 1E 04 D0 */	stfs f0, 0x4d0(r30)
/* 807A27E4  C0 3E 04 D8 */	lfs f1, 0x4d8(r30)
/* 807A27E8  C0 1E 05 00 */	lfs f0, 0x500(r30)
/* 807A27EC  EC 01 00 2A */	fadds f0, f1, f0
/* 807A27F0  D0 1E 04 D8 */	stfs f0, 0x4d8(r30)
/* 807A27F4  38 7E 08 40 */	addi r3, r30, 0x840
/* 807A27F8  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 807A27FC  38 84 61 C0 */	addi r4, r4, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 807A2800  38 84 0F 38 */	addi r4, r4, 0xf38
/* 807A2804  4B 8D 42 A9 */	bl CrrPos__9dBgS_AcchFR4dBgS
/* 807A2808  C0 1E 04 F8 */	lfs f0, 0x4f8(r30)
/* 807A280C  C0 3F 01 18 */	lfs f1, 0x118(r31)
/* 807A2810  EC 00 00 72 */	fmuls f0, f0, f1
/* 807A2814  D0 1E 04 F8 */	stfs f0, 0x4f8(r30)
/* 807A2818  C0 1E 05 00 */	lfs f0, 0x500(r30)
/* 807A281C  EC 00 00 72 */	fmuls f0, f0, f1
/* 807A2820  D0 1E 05 00 */	stfs f0, 0x500(r30)
/* 807A2824  C0 1E 04 D0 */	lfs f0, 0x4d0(r30)
/* 807A2828  D0 01 00 18 */	stfs f0, 0x18(r1)
/* 807A282C  C0 1E 04 D4 */	lfs f0, 0x4d4(r30)
/* 807A2830  D0 01 00 1C */	stfs f0, 0x1c(r1)
/* 807A2834  C0 1E 04 D8 */	lfs f0, 0x4d8(r30)
/* 807A2838  D0 01 00 20 */	stfs f0, 0x20(r1)
/* 807A283C  C0 3E 0A 18 */	lfs f1, 0xa18(r30)
/* 807A2840  D0 21 00 1C */	stfs f1, 0x1c(r1)
/* 807A2844  C0 1E 04 D4 */	lfs f0, 0x4d4(r30)
/* 807A2848  EC 01 00 28 */	fsubs f0, f1, f0
/* 807A284C  FC 00 02 10 */	fabs f0, f0
/* 807A2850  FC 20 00 18 */	frsp f1, f0
/* 807A2854  C0 1F 00 C4 */	lfs f0, 0xc4(r31)
/* 807A2858  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 807A285C  40 80 00 2C */	bge lbl_807A2888
/* 807A2860  C0 3F 00 60 */	lfs f1, 0x60(r31)
/* 807A2864  3C 60 80 7A */	lis r3, small@ha /* 0x807A6DE0@ha */
/* 807A2868  80 03 6D E0 */	lwz r0, small@l(r3)  /* 0x807A6DE0@l */
/* 807A286C  2C 00 00 00 */	cmpwi r0, 0
/* 807A2870  41 82 00 08 */	beq lbl_807A2878
/* 807A2874  C0 3F 00 08 */	lfs f1, 8(r31)
lbl_807A2878:
/* 807A2878  38 7E 0F 7C */	addi r3, r30, 0xf7c
/* 807A287C  38 81 00 18 */	addi r4, r1, 0x18
/* 807A2880  C0 5F 00 F4 */	lfs f2, 0xf4(r31)
/* 807A2884  4B 87 A8 89 */	bl fopAcM_effHamonSet__FPUlPC4cXyzff
lbl_807A2888:
/* 807A2888  83 E1 00 3C */	lwz r31, 0x3c(r1)
/* 807A288C  83 C1 00 38 */	lwz r30, 0x38(r1)
/* 807A2890  80 01 00 44 */	lwz r0, 0x44(r1)
/* 807A2894  7C 08 03 A6 */	mtlr r0
/* 807A2898  38 21 00 40 */	addi r1, r1, 0x40
/* 807A289C  4E 80 00 20 */	blr 
