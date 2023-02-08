lbl_809A2740:
/* 809A2740  94 21 FF 80 */	stwu r1, -0x80(r1)
/* 809A2744  7C 08 02 A6 */	mflr r0
/* 809A2748  90 01 00 84 */	stw r0, 0x84(r1)
/* 809A274C  DB E1 00 70 */	stfd f31, 0x70(r1)
/* 809A2750  F3 E1 00 78 */	psq_st f31, 120(r1), 0, 0 /* qr0 */
/* 809A2754  39 61 00 70 */	addi r11, r1, 0x70
/* 809A2758  4B 9B FA 81 */	bl _savegpr_28
/* 809A275C  7C 7D 1B 78 */	mr r29, r3
/* 809A2760  3C 60 80 9A */	lis r3, M_attr__12daNpcCoach_c@ha /* 0x809A4ED0@ha */
/* 809A2764  3B E3 4E D0 */	addi r31, r3, M_attr__12daNpcCoach_c@l /* 0x809A4ED0@l */
/* 809A2768  80 9D 24 68 */	lwz r4, 0x2468(r29)
/* 809A276C  28 04 00 00 */	cmplwi r4, 0
/* 809A2770  41 82 07 08 */	beq lbl_809A2E78
/* 809A2774  80 7D 24 C4 */	lwz r3, 0x24c4(r29)
/* 809A2778  3B DF 00 00 */	addi r30, r31, 0
/* 809A277C  80 1E 00 74 */	lwz r0, 0x74(r30)
/* 809A2780  7C 03 00 00 */	cmpw r3, r0
/* 809A2784  41 80 00 08 */	blt lbl_809A278C
/* 809A2788  48 00 06 F0 */	b lbl_809A2E78
lbl_809A278C:
/* 809A278C  80 64 00 08 */	lwz r3, 8(r4)
/* 809A2790  80 1D 24 78 */	lwz r0, 0x2478(r29)
/* 809A2794  54 00 20 36 */	slwi r0, r0, 4
/* 809A2798  7C 63 02 14 */	add r3, r3, r0
/* 809A279C  88 03 00 03 */	lbz r0, 3(r3)
/* 809A27A0  7C 00 07 75 */	extsb. r0, r0
/* 809A27A4  41 80 00 24 */	blt lbl_809A27C8
/* 809A27A8  C8 3F 01 78 */	lfd f1, 0x178(r31)
/* 809A27AC  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 809A27B0  90 01 00 5C */	stw r0, 0x5c(r1)
/* 809A27B4  3C 00 43 30 */	lis r0, 0x4330
/* 809A27B8  90 01 00 58 */	stw r0, 0x58(r1)
/* 809A27BC  C8 01 00 58 */	lfd f0, 0x58(r1)
/* 809A27C0  EC 00 08 28 */	fsubs f0, f0, f1
/* 809A27C4  D0 1D 0C E8 */	stfs f0, 0xce8(r29)
lbl_809A27C8:
/* 809A27C8  C0 1D 0C E8 */	lfs f0, 0xce8(r29)
/* 809A27CC  38 7F 00 00 */	addi r3, r31, 0
/* 809A27D0  C0 23 00 1C */	lfs f1, 0x1c(r3)
/* 809A27D4  FC 00 08 40 */	fcmpo cr0, f0, f1
/* 809A27D8  40 81 00 08 */	ble lbl_809A27E0
/* 809A27DC  D0 3D 0C E8 */	stfs f1, 0xce8(r29)
lbl_809A27E0:
/* 809A27E0  80 7D 24 68 */	lwz r3, 0x2468(r29)
/* 809A27E4  28 03 00 00 */	cmplwi r3, 0
/* 809A27E8  41 82 00 24 */	beq lbl_809A280C
/* 809A27EC  80 9D 24 78 */	lwz r4, 0x2478(r29)
/* 809A27F0  4B 6A EF C1 */	bl dPath_GetPnt__FPC5dPathi
/* 809A27F4  C0 03 00 04 */	lfs f0, 4(r3)
/* 809A27F8  D0 01 00 48 */	stfs f0, 0x48(r1)
/* 809A27FC  C0 03 00 08 */	lfs f0, 8(r3)
/* 809A2800  D0 01 00 4C */	stfs f0, 0x4c(r1)
/* 809A2804  C0 03 00 0C */	lfs f0, 0xc(r3)
/* 809A2808  D0 01 00 50 */	stfs f0, 0x50(r1)
lbl_809A280C:
/* 809A280C  38 7D 04 D0 */	addi r3, r29, 0x4d0
/* 809A2810  38 81 00 48 */	addi r4, r1, 0x48
/* 809A2814  4B 8C E3 F1 */	bl cLib_targetAngleY__FPC3VecPC3Vec
/* 809A2818  7C 64 1B 78 */	mr r4, r3
/* 809A281C  38 7D 04 DE */	addi r3, r29, 0x4de
/* 809A2820  38 A0 00 0F */	li r5, 0xf
/* 809A2824  38 C0 02 00 */	li r6, 0x200
/* 809A2828  38 E0 00 40 */	li r7, 0x40
/* 809A282C  4B 8C DD 15 */	bl cLib_addCalcAngleS__FPsssss
/* 809A2830  80 7D 24 68 */	lwz r3, 0x2468(r29)
/* 809A2834  80 83 00 08 */	lwz r4, 8(r3)
/* 809A2838  80 1D 24 78 */	lwz r0, 0x2478(r29)
/* 809A283C  54 03 20 36 */	slwi r3, r0, 4
/* 809A2840  7C 04 18 AE */	lbzx r0, r4, r3
/* 809A2844  7C 1C 07 74 */	extsb r28, r0
/* 809A2848  7C 84 1A 14 */	add r4, r4, r3
/* 809A284C  88 04 00 01 */	lbz r0, 1(r4)
/* 809A2850  7C 00 07 74 */	extsb r0, r0
/* 809A2854  2C 00 00 01 */	cmpwi r0, 1
/* 809A2858  41 82 00 B8 */	beq lbl_809A2910
/* 809A285C  40 80 00 14 */	bge lbl_809A2870
/* 809A2860  2C 00 FF FF */	cmpwi r0, -1
/* 809A2864  41 82 00 18 */	beq lbl_809A287C
/* 809A2868  40 80 00 34 */	bge lbl_809A289C
/* 809A286C  48 00 00 A4 */	b lbl_809A2910
lbl_809A2870:
/* 809A2870  2C 00 00 03 */	cmpwi r0, 3
/* 809A2874  40 80 00 9C */	bge lbl_809A2910
/* 809A2878  48 00 00 80 */	b lbl_809A28F8
lbl_809A287C:
/* 809A287C  2C 1C FF FF */	cmpwi r28, -1
/* 809A2880  41 82 00 90 */	beq lbl_809A2910
/* 809A2884  7F A3 EB 78 */	mr r3, r29
/* 809A2888  7F 84 E3 78 */	mr r4, r28
/* 809A288C  38 BD 04 D0 */	addi r5, r29, 0x4d0
/* 809A2890  38 DD 04 E4 */	addi r6, r29, 0x4e4
/* 809A2894  4B FF B8 A5 */	bl changeAtherPath__12daNpcCoach_cFScR4cXyzR5csXyz
/* 809A2898  48 00 00 78 */	b lbl_809A2910
lbl_809A289C:
/* 809A289C  2C 1C FF FF */	cmpwi r28, -1
/* 809A28A0  41 82 00 70 */	beq lbl_809A2910
/* 809A28A4  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 809A28A8  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 809A28AC  38 63 09 78 */	addi r3, r3, 0x978
/* 809A28B0  88 04 00 02 */	lbz r0, 2(r4)
/* 809A28B4  7C 04 07 74 */	extsb r4, r0
/* 809A28B8  4B 69 23 31 */	bl isSwitch__12dSv_danBit_cCFi
/* 809A28BC  2C 03 00 00 */	cmpwi r3, 0
/* 809A28C0  41 82 00 14 */	beq lbl_809A28D4
/* 809A28C4  80 7D 24 C4 */	lwz r3, 0x24c4(r29)
/* 809A28C8  80 1E 00 74 */	lwz r0, 0x74(r30)
/* 809A28CC  7C 03 00 00 */	cmpw r3, r0
/* 809A28D0  41 80 00 10 */	blt lbl_809A28E0
lbl_809A28D4:
/* 809A28D4  C0 1F 00 A0 */	lfs f0, 0xa0(r31)
/* 809A28D8  D0 1D 0C E8 */	stfs f0, 0xce8(r29)
/* 809A28DC  48 00 00 34 */	b lbl_809A2910
lbl_809A28E0:
/* 809A28E0  7F A3 EB 78 */	mr r3, r29
/* 809A28E4  7F 84 E3 78 */	mr r4, r28
/* 809A28E8  38 BD 04 D0 */	addi r5, r29, 0x4d0
/* 809A28EC  38 DD 04 E4 */	addi r6, r29, 0x4e4
/* 809A28F0  4B FF B8 49 */	bl changeAtherPath__12daNpcCoach_cFScR4cXyzR5csXyz
/* 809A28F4  48 00 00 1C */	b lbl_809A2910
lbl_809A28F8:
/* 809A28F8  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 809A28FC  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 809A2900  38 63 09 78 */	addi r3, r3, 0x978
/* 809A2904  88 04 00 02 */	lbz r0, 2(r4)
/* 809A2908  7C 04 07 74 */	extsb r4, r0
/* 809A290C  4B 69 22 8D */	bl onSwitch__12dSv_danBit_cFi
lbl_809A2910:
/* 809A2910  38 A0 00 05 */	li r5, 5
/* 809A2914  80 7D 24 78 */	lwz r3, 0x2478(r29)
/* 809A2918  34 83 FF FE */	addic. r4, r3, -2
/* 809A291C  40 80 00 28 */	bge lbl_809A2944
/* 809A2920  80 7D 24 68 */	lwz r3, 0x2468(r29)
/* 809A2924  88 03 00 05 */	lbz r0, 5(r3)
/* 809A2928  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 809A292C  41 82 00 10 */	beq lbl_809A293C
/* 809A2930  A0 03 00 00 */	lhz r0, 0(r3)
/* 809A2934  7C 80 22 14 */	add r4, r0, r4
/* 809A2938  48 00 00 0C */	b lbl_809A2944
lbl_809A293C:
/* 809A293C  38 A4 00 05 */	addi r5, r4, 5
/* 809A2940  38 80 00 00 */	li r4, 0
lbl_809A2944:
/* 809A2944  7C A9 03 A6 */	mtctr r5
/* 809A2948  2C 05 00 00 */	cmpwi r5, 0
/* 809A294C  40 81 00 50 */	ble lbl_809A299C
lbl_809A2950:
/* 809A2950  80 BD 24 68 */	lwz r5, 0x2468(r29)
/* 809A2954  80 65 00 08 */	lwz r3, 8(r5)
/* 809A2958  54 80 20 36 */	slwi r0, r4, 4
/* 809A295C  7C 63 02 14 */	add r3, r3, r0
/* 809A2960  88 03 00 01 */	lbz r0, 1(r3)
/* 809A2964  28 00 00 01 */	cmplwi r0, 1
/* 809A2968  40 82 00 10 */	bne lbl_809A2978
/* 809A296C  88 03 00 00 */	lbz r0, 0(r3)
/* 809A2970  7C 1E 07 74 */	extsb r30, r0
/* 809A2974  48 00 00 2C */	b lbl_809A29A0
lbl_809A2978:
/* 809A2978  A0 05 00 00 */	lhz r0, 0(r5)
/* 809A297C  38 84 00 01 */	addi r4, r4, 1
/* 809A2980  7C 04 00 00 */	cmpw r4, r0
/* 809A2984  41 80 00 14 */	blt lbl_809A2998
/* 809A2988  88 05 00 05 */	lbz r0, 5(r5)
/* 809A298C  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 809A2990  41 82 00 0C */	beq lbl_809A299C
/* 809A2994  38 80 00 00 */	li r4, 0
lbl_809A2998:
/* 809A2998  42 00 FF B8 */	bdnz lbl_809A2950
lbl_809A299C:
/* 809A299C  3B C0 FF FF */	li r30, -1
lbl_809A29A0:
/* 809A29A0  7F C0 07 74 */	extsb r0, r30
/* 809A29A4  2C 00 FF FF */	cmpwi r0, -1
/* 809A29A8  41 82 01 44 */	beq lbl_809A2AEC
/* 809A29AC  3C 60 80 9A */	lis r3, s_sub__FPvPv@ha /* 0x8099E0E0@ha */
/* 809A29B0  38 63 E0 E0 */	addi r3, r3, s_sub__FPvPv@l /* 0x8099E0E0@l */
/* 809A29B4  7F A4 EB 78 */	mr r4, r29
/* 809A29B8  4B 67 E9 81 */	bl fpcEx_Search__FPFPvPv_PvPv
/* 809A29BC  28 03 00 00 */	cmplwi r3, 0
/* 809A29C0  41 82 00 18 */	beq lbl_809A29D8
/* 809A29C4  80 03 0F 04 */	lwz r0, 0xf04(r3)
/* 809A29C8  2C 00 00 00 */	cmpwi r0, 0
/* 809A29CC  41 82 00 0C */	beq lbl_809A29D8
/* 809A29D0  38 00 00 01 */	li r0, 1
/* 809A29D4  48 00 00 08 */	b lbl_809A29DC
lbl_809A29D8:
/* 809A29D8  38 00 00 00 */	li r0, 0
lbl_809A29DC:
/* 809A29DC  54 00 06 3F */	clrlwi. r0, r0, 0x18
/* 809A29E0  41 82 01 0C */	beq lbl_809A2AEC
/* 809A29E4  7F A3 EB 78 */	mr r3, r29
/* 809A29E8  7F C4 F3 78 */	mr r4, r30
/* 809A29EC  38 BD 04 D0 */	addi r5, r29, 0x4d0
/* 809A29F0  38 DD 04 E4 */	addi r6, r29, 0x4e4
/* 809A29F4  4B FF B7 45 */	bl changeAtherPath__12daNpcCoach_cFScR4cXyzR5csXyz
/* 809A29F8  3C 60 80 9A */	lis r3, l_arcName@ha /* 0x809A5130@ha */
/* 809A29FC  38 63 51 30 */	addi r3, r3, l_arcName@l /* 0x809A5130@l */
/* 809A2A00  80 63 00 00 */	lwz r3, 0(r3)
/* 809A2A04  38 80 00 0C */	li r4, 0xc
/* 809A2A08  3C A0 80 40 */	lis r5, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 809A2A0C  38 A5 61 C0 */	addi r5, r5, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 809A2A10  3C A5 00 02 */	addis r5, r5, 2
/* 809A2A14  38 C0 00 80 */	li r6, 0x80
/* 809A2A18  38 A5 C2 F8 */	addi r5, r5, -15624
/* 809A2A1C  4B 69 98 D1 */	bl getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 809A2A20  7C 64 1B 78 */	mr r4, r3
/* 809A2A24  80 7D 05 70 */	lwz r3, 0x570(r29)
/* 809A2A28  38 A0 00 01 */	li r5, 1
/* 809A2A2C  38 C0 00 00 */	li r6, 0
/* 809A2A30  C0 3F 01 5C */	lfs f1, 0x15c(r31)
/* 809A2A34  38 E0 00 00 */	li r7, 0
/* 809A2A38  39 00 FF FF */	li r8, -1
/* 809A2A3C  39 20 00 01 */	li r9, 1
/* 809A2A40  4B 66 AD 9D */	bl init__13mDoExt_bckAnmFP15J3DAnmTransformiifssb
/* 809A2A44  2C 03 00 00 */	cmpwi r3, 0
/* 809A2A48  41 82 00 0C */	beq lbl_809A2A54
/* 809A2A4C  38 00 00 01 */	li r0, 1
/* 809A2A50  90 1D 0C F4 */	stw r0, 0xcf4(r29)
lbl_809A2A54:
/* 809A2A54  3C 60 00 05 */	lis r3, 0x0005 /* 0x0005009E@ha */
/* 809A2A58  38 03 00 9E */	addi r0, r3, 0x009E /* 0x0005009E@l */
/* 809A2A5C  90 01 00 14 */	stw r0, 0x14(r1)
/* 809A2A60  38 7D 0C 3C */	addi r3, r29, 0xc3c
/* 809A2A64  38 81 00 14 */	addi r4, r1, 0x14
/* 809A2A68  38 A0 FF FF */	li r5, -1
/* 809A2A6C  81 9D 0C 3C */	lwz r12, 0xc3c(r29)
/* 809A2A70  81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 809A2A74  7D 89 03 A6 */	mtctr r12
/* 809A2A78  4E 80 04 21 */	bctrl 
/* 809A2A7C  3C 60 00 06 */	lis r3, 0x0006 /* 0x00060050@ha */
/* 809A2A80  38 03 00 50 */	addi r0, r3, 0x0050 /* 0x00060050@l */
/* 809A2A84  90 01 00 10 */	stw r0, 0x10(r1)
/* 809A2A88  38 7D 1B F0 */	addi r3, r29, 0x1bf0
/* 809A2A8C  38 81 00 10 */	addi r4, r1, 0x10
/* 809A2A90  38 A0 00 00 */	li r5, 0
/* 809A2A94  38 C0 FF FF */	li r6, -1
/* 809A2A98  81 9D 1C 00 */	lwz r12, 0x1c00(r29)
/* 809A2A9C  81 8C 00 18 */	lwz r12, 0x18(r12)
/* 809A2AA0  7D 89 03 A6 */	mtctr r12
/* 809A2AA4  4E 80 04 21 */	bctrl 
/* 809A2AA8  4B 8C 4D C5 */	bl cM_rnd__Fv
/* 809A2AAC  C0 1F 01 BC */	lfs f0, 0x1bc(r31)
/* 809A2AB0  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 809A2AB4  40 80 00 0C */	bge lbl_809A2AC0
/* 809A2AB8  C0 3F 02 08 */	lfs f1, 0x208(r31)
/* 809A2ABC  48 00 00 08 */	b lbl_809A2AC4
lbl_809A2AC0:
/* 809A2AC0  C0 3F 02 0C */	lfs f1, 0x20c(r31)
lbl_809A2AC4:
/* 809A2AC4  C0 1D 1D 64 */	lfs f0, 0x1d64(r29)
/* 809A2AC8  EC 00 08 2A */	fadds f0, f0, f1
/* 809A2ACC  D0 1D 1D 64 */	stfs f0, 0x1d64(r29)
/* 809A2AD0  C0 3D 1D 60 */	lfs f1, 0x1d60(r29)
/* 809A2AD4  C0 1F 02 10 */	lfs f0, 0x210(r31)
/* 809A2AD8  EC 01 00 28 */	fsubs f0, f1, f0
/* 809A2ADC  D0 1D 1D 60 */	stfs f0, 0x1d60(r29)
/* 809A2AE0  38 7F 00 00 */	addi r3, r31, 0
/* 809A2AE4  80 03 00 9C */	lwz r0, 0x9c(r3)
/* 809A2AE8  90 1D 25 50 */	stw r0, 0x2550(r29)
lbl_809A2AEC:
/* 809A2AEC  C3 FD 05 2C */	lfs f31, 0x52c(r29)
/* 809A2AF0  80 7D 24 68 */	lwz r3, 0x2468(r29)
/* 809A2AF4  80 9D 24 78 */	lwz r4, 0x2478(r29)
/* 809A2AF8  4B 6A EC B9 */	bl dPath_GetPnt__FPC5dPathi
/* 809A2AFC  C0 5D 04 D8 */	lfs f2, 0x4d8(r29)
/* 809A2B00  C0 1D 04 D0 */	lfs f0, 0x4d0(r29)
/* 809A2B04  D0 01 00 18 */	stfs f0, 0x18(r1)
/* 809A2B08  C0 3F 00 A0 */	lfs f1, 0xa0(r31)
/* 809A2B0C  D0 21 00 1C */	stfs f1, 0x1c(r1)
/* 809A2B10  D0 41 00 20 */	stfs f2, 0x20(r1)
/* 809A2B14  C0 43 00 0C */	lfs f2, 0xc(r3)
/* 809A2B18  C0 03 00 04 */	lfs f0, 4(r3)
/* 809A2B1C  D0 01 00 24 */	stfs f0, 0x24(r1)
/* 809A2B20  D0 21 00 28 */	stfs f1, 0x28(r1)
/* 809A2B24  D0 41 00 2C */	stfs f2, 0x2c(r1)
/* 809A2B28  38 61 00 18 */	addi r3, r1, 0x18
/* 809A2B2C  38 81 00 24 */	addi r4, r1, 0x24
/* 809A2B30  4B 9A 48 6D */	bl PSVECSquareDistance
/* 809A2B34  C0 1F 00 A0 */	lfs f0, 0xa0(r31)
/* 809A2B38  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 809A2B3C  40 81 00 58 */	ble lbl_809A2B94
/* 809A2B40  FC 00 08 34 */	frsqrte f0, f1
/* 809A2B44  C8 9F 01 30 */	lfd f4, 0x130(r31)
/* 809A2B48  FC 44 00 32 */	fmul f2, f4, f0
/* 809A2B4C  C8 7F 01 38 */	lfd f3, 0x138(r31)
/* 809A2B50  FC 00 00 32 */	fmul f0, f0, f0
/* 809A2B54  FC 01 00 32 */	fmul f0, f1, f0
/* 809A2B58  FC 03 00 28 */	fsub f0, f3, f0
/* 809A2B5C  FC 02 00 32 */	fmul f0, f2, f0
/* 809A2B60  FC 44 00 32 */	fmul f2, f4, f0
/* 809A2B64  FC 00 00 32 */	fmul f0, f0, f0
/* 809A2B68  FC 01 00 32 */	fmul f0, f1, f0
/* 809A2B6C  FC 03 00 28 */	fsub f0, f3, f0
/* 809A2B70  FC 02 00 32 */	fmul f0, f2, f0
/* 809A2B74  FC 44 00 32 */	fmul f2, f4, f0
/* 809A2B78  FC 00 00 32 */	fmul f0, f0, f0
/* 809A2B7C  FC 01 00 32 */	fmul f0, f1, f0
/* 809A2B80  FC 03 00 28 */	fsub f0, f3, f0
/* 809A2B84  FC 02 00 32 */	fmul f0, f2, f0
/* 809A2B88  FC 21 00 32 */	fmul f1, f1, f0
/* 809A2B8C  FC 20 08 18 */	frsp f1, f1
/* 809A2B90  48 00 00 88 */	b lbl_809A2C18
lbl_809A2B94:
/* 809A2B94  C8 1F 01 40 */	lfd f0, 0x140(r31)
/* 809A2B98  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 809A2B9C  40 80 00 10 */	bge lbl_809A2BAC
/* 809A2BA0  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 809A2BA4  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)  /* 0x80450AE0@l */
/* 809A2BA8  48 00 00 70 */	b lbl_809A2C18
lbl_809A2BAC:
/* 809A2BAC  D0 21 00 0C */	stfs f1, 0xc(r1)
/* 809A2BB0  80 81 00 0C */	lwz r4, 0xc(r1)
/* 809A2BB4  54 83 00 50 */	rlwinm r3, r4, 0, 1, 8
/* 809A2BB8  3C 00 7F 80 */	lis r0, 0x7f80
/* 809A2BBC  7C 03 00 00 */	cmpw r3, r0
/* 809A2BC0  41 82 00 14 */	beq lbl_809A2BD4
/* 809A2BC4  40 80 00 40 */	bge lbl_809A2C04
/* 809A2BC8  2C 03 00 00 */	cmpwi r3, 0
/* 809A2BCC  41 82 00 20 */	beq lbl_809A2BEC
/* 809A2BD0  48 00 00 34 */	b lbl_809A2C04
lbl_809A2BD4:
/* 809A2BD4  54 80 02 7F */	clrlwi. r0, r4, 9
/* 809A2BD8  41 82 00 0C */	beq lbl_809A2BE4
/* 809A2BDC  38 00 00 01 */	li r0, 1
/* 809A2BE0  48 00 00 28 */	b lbl_809A2C08
lbl_809A2BE4:
/* 809A2BE4  38 00 00 02 */	li r0, 2
/* 809A2BE8  48 00 00 20 */	b lbl_809A2C08
lbl_809A2BEC:
/* 809A2BEC  54 80 02 7F */	clrlwi. r0, r4, 9
/* 809A2BF0  41 82 00 0C */	beq lbl_809A2BFC
/* 809A2BF4  38 00 00 05 */	li r0, 5
/* 809A2BF8  48 00 00 10 */	b lbl_809A2C08
lbl_809A2BFC:
/* 809A2BFC  38 00 00 03 */	li r0, 3
/* 809A2C00  48 00 00 08 */	b lbl_809A2C08
lbl_809A2C04:
/* 809A2C04  38 00 00 04 */	li r0, 4
lbl_809A2C08:
/* 809A2C08  2C 00 00 01 */	cmpwi r0, 1
/* 809A2C0C  40 82 00 0C */	bne lbl_809A2C18
/* 809A2C10  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 809A2C14  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)  /* 0x80450AE0@l */
lbl_809A2C18:
/* 809A2C18  80 1D 24 6C */	lwz r0, 0x246c(r29)
/* 809A2C1C  28 00 00 00 */	cmplwi r0, 0
/* 809A2C20  41 82 00 10 */	beq lbl_809A2C30
/* 809A2C24  C0 1D 24 70 */	lfs f0, 0x2470(r29)
/* 809A2C28  EC 00 F8 28 */	fsubs f0, f0, f31
/* 809A2C2C  D0 1D 24 70 */	stfs f0, 0x2470(r29)
lbl_809A2C30:
/* 809A2C30  FC 01 F8 40 */	fcmpo cr0, f1, f31
/* 809A2C34  41 80 00 24 */	blt lbl_809A2C58
/* 809A2C38  C0 1F 02 14 */	lfs f0, 0x214(r31)
/* 809A2C3C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 809A2C40  41 80 00 18 */	blt lbl_809A2C58
/* 809A2C44  C0 3D 24 70 */	lfs f1, 0x2470(r29)
/* 809A2C48  C0 1F 00 A0 */	lfs f0, 0xa0(r31)
/* 809A2C4C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 809A2C50  4C 40 13 82 */	cror 2, 0, 2
/* 809A2C54  40 82 00 0C */	bne lbl_809A2C60
lbl_809A2C58:
/* 809A2C58  38 00 00 01 */	li r0, 1
/* 809A2C5C  48 00 00 08 */	b lbl_809A2C64
lbl_809A2C60:
/* 809A2C60  38 00 00 00 */	li r0, 0
lbl_809A2C64:
/* 809A2C64  54 00 06 3F */	clrlwi. r0, r0, 0x18
/* 809A2C68  41 82 02 10 */	beq lbl_809A2E78
/* 809A2C6C  80 7D 24 78 */	lwz r3, 0x2478(r29)
/* 809A2C70  38 03 00 01 */	addi r0, r3, 1
/* 809A2C74  90 1D 24 78 */	stw r0, 0x2478(r29)
/* 809A2C78  80 7D 24 78 */	lwz r3, 0x2478(r29)
/* 809A2C7C  80 9D 24 68 */	lwz r4, 0x2468(r29)
/* 809A2C80  A0 04 00 00 */	lhz r0, 0(r4)
/* 809A2C84  7C 03 00 00 */	cmpw r3, r0
/* 809A2C88  41 80 00 2C */	blt lbl_809A2CB4
/* 809A2C8C  88 04 00 05 */	lbz r0, 5(r4)
/* 809A2C90  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 809A2C94  41 82 00 10 */	beq lbl_809A2CA4
/* 809A2C98  38 00 00 00 */	li r0, 0
/* 809A2C9C  90 1D 24 78 */	stw r0, 0x2478(r29)
/* 809A2CA0  48 00 00 14 */	b lbl_809A2CB4
lbl_809A2CA4:
/* 809A2CA4  38 03 FF FF */	addi r0, r3, -1
/* 809A2CA8  90 1D 24 78 */	stw r0, 0x2478(r29)
/* 809A2CAC  38 00 00 00 */	li r0, 0
/* 809A2CB0  48 00 00 08 */	b lbl_809A2CB8
lbl_809A2CB4:
/* 809A2CB4  38 00 00 01 */	li r0, 1
lbl_809A2CB8:
/* 809A2CB8  54 00 06 3F */	clrlwi. r0, r0, 0x18
/* 809A2CBC  41 82 01 30 */	beq lbl_809A2DEC
/* 809A2CC0  80 1D 24 6C */	lwz r0, 0x246c(r29)
/* 809A2CC4  28 00 00 00 */	cmplwi r0, 0
/* 809A2CC8  41 82 01 24 */	beq lbl_809A2DEC
/* 809A2CCC  80 7D 24 68 */	lwz r3, 0x2468(r29)
/* 809A2CD0  28 03 00 00 */	cmplwi r3, 0
/* 809A2CD4  41 82 00 24 */	beq lbl_809A2CF8
/* 809A2CD8  80 9D 24 78 */	lwz r4, 0x2478(r29)
/* 809A2CDC  4B 6A EA D5 */	bl dPath_GetPnt__FPC5dPathi
/* 809A2CE0  C0 03 00 04 */	lfs f0, 4(r3)
/* 809A2CE4  D0 01 00 3C */	stfs f0, 0x3c(r1)
/* 809A2CE8  C0 03 00 08 */	lfs f0, 8(r3)
/* 809A2CEC  D0 01 00 40 */	stfs f0, 0x40(r1)
/* 809A2CF0  C0 03 00 0C */	lfs f0, 0xc(r3)
/* 809A2CF4  D0 01 00 44 */	stfs f0, 0x44(r1)
lbl_809A2CF8:
/* 809A2CF8  80 7D 24 6C */	lwz r3, 0x246c(r29)
/* 809A2CFC  38 81 00 3C */	addi r4, r1, 0x3c
/* 809A2D00  4B 9A 46 9D */	bl PSVECSquareDistance
/* 809A2D04  C0 1F 00 A0 */	lfs f0, 0xa0(r31)
/* 809A2D08  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 809A2D0C  40 81 00 58 */	ble lbl_809A2D64
/* 809A2D10  FC 00 08 34 */	frsqrte f0, f1
/* 809A2D14  C8 9F 01 30 */	lfd f4, 0x130(r31)
/* 809A2D18  FC 44 00 32 */	fmul f2, f4, f0
/* 809A2D1C  C8 7F 01 38 */	lfd f3, 0x138(r31)
/* 809A2D20  FC 00 00 32 */	fmul f0, f0, f0
/* 809A2D24  FC 01 00 32 */	fmul f0, f1, f0
/* 809A2D28  FC 03 00 28 */	fsub f0, f3, f0
/* 809A2D2C  FC 02 00 32 */	fmul f0, f2, f0
/* 809A2D30  FC 44 00 32 */	fmul f2, f4, f0
/* 809A2D34  FC 00 00 32 */	fmul f0, f0, f0
/* 809A2D38  FC 01 00 32 */	fmul f0, f1, f0
/* 809A2D3C  FC 03 00 28 */	fsub f0, f3, f0
/* 809A2D40  FC 02 00 32 */	fmul f0, f2, f0
/* 809A2D44  FC 44 00 32 */	fmul f2, f4, f0
/* 809A2D48  FC 00 00 32 */	fmul f0, f0, f0
/* 809A2D4C  FC 01 00 32 */	fmul f0, f1, f0
/* 809A2D50  FC 03 00 28 */	fsub f0, f3, f0
/* 809A2D54  FC 02 00 32 */	fmul f0, f2, f0
/* 809A2D58  FC 21 00 32 */	fmul f1, f1, f0
/* 809A2D5C  FC 20 08 18 */	frsp f1, f1
/* 809A2D60  48 00 00 88 */	b lbl_809A2DE8
lbl_809A2D64:
/* 809A2D64  C8 1F 01 40 */	lfd f0, 0x140(r31)
/* 809A2D68  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 809A2D6C  40 80 00 10 */	bge lbl_809A2D7C
/* 809A2D70  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 809A2D74  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)  /* 0x80450AE0@l */
/* 809A2D78  48 00 00 70 */	b lbl_809A2DE8
lbl_809A2D7C:
/* 809A2D7C  D0 21 00 08 */	stfs f1, 8(r1)
/* 809A2D80  80 81 00 08 */	lwz r4, 8(r1)
/* 809A2D84  54 83 00 50 */	rlwinm r3, r4, 0, 1, 8
/* 809A2D88  3C 00 7F 80 */	lis r0, 0x7f80
/* 809A2D8C  7C 03 00 00 */	cmpw r3, r0
/* 809A2D90  41 82 00 14 */	beq lbl_809A2DA4
/* 809A2D94  40 80 00 40 */	bge lbl_809A2DD4
/* 809A2D98  2C 03 00 00 */	cmpwi r3, 0
/* 809A2D9C  41 82 00 20 */	beq lbl_809A2DBC
/* 809A2DA0  48 00 00 34 */	b lbl_809A2DD4
lbl_809A2DA4:
/* 809A2DA4  54 80 02 7F */	clrlwi. r0, r4, 9
/* 809A2DA8  41 82 00 0C */	beq lbl_809A2DB4
/* 809A2DAC  38 00 00 01 */	li r0, 1
/* 809A2DB0  48 00 00 28 */	b lbl_809A2DD8
lbl_809A2DB4:
/* 809A2DB4  38 00 00 02 */	li r0, 2
/* 809A2DB8  48 00 00 20 */	b lbl_809A2DD8
lbl_809A2DBC:
/* 809A2DBC  54 80 02 7F */	clrlwi. r0, r4, 9
/* 809A2DC0  41 82 00 0C */	beq lbl_809A2DCC
/* 809A2DC4  38 00 00 05 */	li r0, 5
/* 809A2DC8  48 00 00 10 */	b lbl_809A2DD8
lbl_809A2DCC:
/* 809A2DCC  38 00 00 03 */	li r0, 3
/* 809A2DD0  48 00 00 08 */	b lbl_809A2DD8
lbl_809A2DD4:
/* 809A2DD4  38 00 00 04 */	li r0, 4
lbl_809A2DD8:
/* 809A2DD8  2C 00 00 01 */	cmpwi r0, 1
/* 809A2DDC  40 82 00 0C */	bne lbl_809A2DE8
/* 809A2DE0  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 809A2DE4  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)  /* 0x80450AE0@l */
lbl_809A2DE8:
/* 809A2DE8  D0 3D 24 70 */	stfs f1, 0x2470(r29)
lbl_809A2DEC:
/* 809A2DEC  A8 7D 04 E6 */	lha r3, 0x4e6(r29)
/* 809A2DF0  A8 1D 04 DE */	lha r0, 0x4de(r29)
/* 809A2DF4  7C 03 00 00 */	cmpw r3, r0
/* 809A2DF8  41 82 00 80 */	beq lbl_809A2E78
/* 809A2DFC  80 7D 24 68 */	lwz r3, 0x2468(r29)
/* 809A2E00  28 03 00 00 */	cmplwi r3, 0
/* 809A2E04  41 82 00 74 */	beq lbl_809A2E78
/* 809A2E08  41 82 00 24 */	beq lbl_809A2E2C
/* 809A2E0C  80 9D 24 78 */	lwz r4, 0x2478(r29)
/* 809A2E10  4B 6A E9 A1 */	bl dPath_GetPnt__FPC5dPathi
/* 809A2E14  C0 03 00 04 */	lfs f0, 4(r3)
/* 809A2E18  D0 01 00 30 */	stfs f0, 0x30(r1)
/* 809A2E1C  C0 03 00 08 */	lfs f0, 8(r3)
/* 809A2E20  D0 01 00 34 */	stfs f0, 0x34(r1)
/* 809A2E24  C0 03 00 0C */	lfs f0, 0xc(r3)
/* 809A2E28  D0 01 00 38 */	stfs f0, 0x38(r1)
lbl_809A2E2C:
/* 809A2E2C  38 7D 04 D0 */	addi r3, r29, 0x4d0
/* 809A2E30  38 81 00 30 */	addi r4, r1, 0x30
/* 809A2E34  4B 8C DD D1 */	bl cLib_targetAngleY__FPC3VecPC3Vec
/* 809A2E38  A8 BD 04 E6 */	lha r5, 0x4e6(r29)
/* 809A2E3C  A8 1D 04 DE */	lha r0, 0x4de(r29)
/* 809A2E40  7C 05 00 50 */	subf r0, r5, r0
/* 809A2E44  7C 04 07 35 */	extsh. r4, r0
/* 809A2E48  7C 05 18 50 */	subf r0, r5, r3
/* 809A2E4C  7C 03 07 34 */	extsh r3, r0
/* 809A2E50  40 81 00 14 */	ble lbl_809A2E64
/* 809A2E54  7C 60 07 35 */	extsh. r0, r3
/* 809A2E58  41 81 00 0C */	bgt lbl_809A2E64
/* 809A2E5C  B0 BD 04 DE */	sth r5, 0x4de(r29)
/* 809A2E60  48 00 00 18 */	b lbl_809A2E78
lbl_809A2E64:
/* 809A2E64  7C 80 07 35 */	extsh. r0, r4
/* 809A2E68  40 80 00 10 */	bge lbl_809A2E78
/* 809A2E6C  7C 60 07 35 */	extsh. r0, r3
/* 809A2E70  41 80 00 08 */	blt lbl_809A2E78
/* 809A2E74  B0 BD 04 DE */	sth r5, 0x4de(r29)
lbl_809A2E78:
/* 809A2E78  E3 E1 00 78 */	psq_l f31, 120(r1), 0, 0 /* qr0 */
/* 809A2E7C  CB E1 00 70 */	lfd f31, 0x70(r1)
/* 809A2E80  39 61 00 70 */	addi r11, r1, 0x70
/* 809A2E84  4B 9B F3 A1 */	bl _restgpr_28
/* 809A2E88  80 01 00 84 */	lwz r0, 0x84(r1)
/* 809A2E8C  7C 08 03 A6 */	mtlr r0
/* 809A2E90  38 21 00 80 */	addi r1, r1, 0x80
/* 809A2E94  4E 80 00 20 */	blr 
