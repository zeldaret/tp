lbl_806C2560:
/* 806C2560  94 21 FF 80 */	stwu r1, -0x80(r1)
/* 806C2564  7C 08 02 A6 */	mflr r0
/* 806C2568  90 01 00 84 */	stw r0, 0x84(r1)
/* 806C256C  DB E1 00 70 */	stfd f31, 0x70(r1)
/* 806C2570  F3 E1 00 78 */	psq_st f31, 120(r1), 0, 0 /* qr0 */
/* 806C2574  DB C1 00 60 */	stfd f30, 0x60(r1)
/* 806C2578  F3 C1 00 68 */	psq_st f30, 104(r1), 0, 0 /* qr0 */
/* 806C257C  93 E1 00 5C */	stw r31, 0x5c(r1)
/* 806C2580  93 C1 00 58 */	stw r30, 0x58(r1)
/* 806C2584  7C 7E 1B 78 */	mr r30, r3
/* 806C2588  3C 60 80 6C */	lis r3, lit_3906@ha
/* 806C258C  3B E3 74 E8 */	addi r31, r3, lit_3906@l
/* 806C2590  C3 FF 00 04 */	lfs f31, 4(r31)
/* 806C2594  C3 DF 00 68 */	lfs f30, 0x68(r31)
/* 806C2598  38 61 00 20 */	addi r3, r1, 0x20
/* 806C259C  38 9E 04 A8 */	addi r4, r30, 0x4a8
/* 806C25A0  3C A0 80 40 */	lis r5, g_dComIfG_gameInfo@ha
/* 806C25A4  38 A5 61 C0 */	addi r5, r5, g_dComIfG_gameInfo@l
/* 806C25A8  80 A5 5D AC */	lwz r5, 0x5dac(r5)
/* 806C25AC  38 A5 04 D0 */	addi r5, r5, 0x4d0
/* 806C25B0  4B BA 45 84 */	b __mi__4cXyzCFRC3Vec
/* 806C25B4  38 61 00 20 */	addi r3, r1, 0x20
/* 806C25B8  4B C8 4B 80 */	b PSVECSquareMag
/* 806C25BC  FC 00 F8 90 */	fmr f0, f31
/* 806C25C0  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 806C25C4  40 81 00 58 */	ble lbl_806C261C
/* 806C25C8  FC 00 08 34 */	frsqrte f0, f1
/* 806C25CC  C8 9F 00 10 */	lfd f4, 0x10(r31)
/* 806C25D0  FC 44 00 32 */	fmul f2, f4, f0
/* 806C25D4  C8 7F 00 18 */	lfd f3, 0x18(r31)
/* 806C25D8  FC 00 00 32 */	fmul f0, f0, f0
/* 806C25DC  FC 01 00 32 */	fmul f0, f1, f0
/* 806C25E0  FC 03 00 28 */	fsub f0, f3, f0
/* 806C25E4  FC 02 00 32 */	fmul f0, f2, f0
/* 806C25E8  FC 44 00 32 */	fmul f2, f4, f0
/* 806C25EC  FC 00 00 32 */	fmul f0, f0, f0
/* 806C25F0  FC 01 00 32 */	fmul f0, f1, f0
/* 806C25F4  FC 03 00 28 */	fsub f0, f3, f0
/* 806C25F8  FC 02 00 32 */	fmul f0, f2, f0
/* 806C25FC  FC 44 00 32 */	fmul f2, f4, f0
/* 806C2600  FC 00 00 32 */	fmul f0, f0, f0
/* 806C2604  FC 01 00 32 */	fmul f0, f1, f0
/* 806C2608  FC 03 00 28 */	fsub f0, f3, f0
/* 806C260C  FC 02 00 32 */	fmul f0, f2, f0
/* 806C2610  FC 21 00 32 */	fmul f1, f1, f0
/* 806C2614  FC 20 08 18 */	frsp f1, f1
/* 806C2618  48 00 00 88 */	b lbl_806C26A0
lbl_806C261C:
/* 806C261C  C8 1F 00 20 */	lfd f0, 0x20(r31)
/* 806C2620  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 806C2624  40 80 00 10 */	bge lbl_806C2634
/* 806C2628  3C 60 80 45 */	lis r3, __float_nan@ha
/* 806C262C  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)
/* 806C2630  48 00 00 70 */	b lbl_806C26A0
lbl_806C2634:
/* 806C2634  D0 21 00 08 */	stfs f1, 8(r1)
/* 806C2638  80 81 00 08 */	lwz r4, 8(r1)
/* 806C263C  54 83 00 50 */	rlwinm r3, r4, 0, 1, 8
/* 806C2640  3C 00 7F 80 */	lis r0, 0x7f80
/* 806C2644  7C 03 00 00 */	cmpw r3, r0
/* 806C2648  41 82 00 14 */	beq lbl_806C265C
/* 806C264C  40 80 00 40 */	bge lbl_806C268C
/* 806C2650  2C 03 00 00 */	cmpwi r3, 0
/* 806C2654  41 82 00 20 */	beq lbl_806C2674
/* 806C2658  48 00 00 34 */	b lbl_806C268C
lbl_806C265C:
/* 806C265C  54 80 02 7F */	clrlwi. r0, r4, 9
/* 806C2660  41 82 00 0C */	beq lbl_806C266C
/* 806C2664  38 00 00 01 */	li r0, 1
/* 806C2668  48 00 00 28 */	b lbl_806C2690
lbl_806C266C:
/* 806C266C  38 00 00 02 */	li r0, 2
/* 806C2670  48 00 00 20 */	b lbl_806C2690
lbl_806C2674:
/* 806C2674  54 80 02 7F */	clrlwi. r0, r4, 9
/* 806C2678  41 82 00 0C */	beq lbl_806C2684
/* 806C267C  38 00 00 05 */	li r0, 5
/* 806C2680  48 00 00 10 */	b lbl_806C2690
lbl_806C2684:
/* 806C2684  38 00 00 03 */	li r0, 3
/* 806C2688  48 00 00 08 */	b lbl_806C2690
lbl_806C268C:
/* 806C268C  38 00 00 04 */	li r0, 4
lbl_806C2690:
/* 806C2690  2C 00 00 01 */	cmpwi r0, 1
/* 806C2694  40 82 00 0C */	bne lbl_806C26A0
/* 806C2698  3C 60 80 45 */	lis r3, __float_nan@ha
/* 806C269C  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)
lbl_806C26A0:
/* 806C26A0  A8 1E 06 9C */	lha r0, 0x69c(r30)
/* 806C26A4  2C 00 00 03 */	cmpwi r0, 3
/* 806C26A8  41 82 02 44 */	beq lbl_806C28EC
/* 806C26AC  40 80 00 1C */	bge lbl_806C26C8
/* 806C26B0  2C 00 00 01 */	cmpwi r0, 1
/* 806C26B4  41 82 00 B0 */	beq lbl_806C2764
/* 806C26B8  40 80 03 0C */	bge lbl_806C29C4
/* 806C26BC  2C 00 00 00 */	cmpwi r0, 0
/* 806C26C0  40 80 00 18 */	bge lbl_806C26D8
/* 806C26C4  48 00 03 00 */	b lbl_806C29C4
lbl_806C26C8:
/* 806C26C8  2C 00 00 05 */	cmpwi r0, 5
/* 806C26CC  41 82 02 9C */	beq lbl_806C2968
/* 806C26D0  40 80 02 F4 */	bge lbl_806C29C4
/* 806C26D4  48 00 02 50 */	b lbl_806C2924
lbl_806C26D8:
/* 806C26D8  C0 1F 00 6C */	lfs f0, 0x6c(r31)
/* 806C26DC  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 806C26E0  40 80 00 30 */	bge lbl_806C2710
/* 806C26E4  C0 3F 00 08 */	lfs f1, 8(r31)
/* 806C26E8  4B BA 52 6C */	b cM_rndF__Ff
/* 806C26EC  C0 1F 00 70 */	lfs f0, 0x70(r31)
/* 806C26F0  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 806C26F4  40 80 00 1C */	bge lbl_806C2710
/* 806C26F8  38 00 00 02 */	li r0, 2
/* 806C26FC  B0 1E 06 9A */	sth r0, 0x69a(r30)
/* 806C2700  38 00 00 00 */	li r0, 0
/* 806C2704  B0 1E 06 9C */	sth r0, 0x69c(r30)
/* 806C2708  B0 1E 06 C4 */	sth r0, 0x6c4(r30)
/* 806C270C  48 00 03 7C */	b lbl_806C2A88
lbl_806C2710:
/* 806C2710  7F C3 F3 78 */	mr r3, r30
/* 806C2714  38 80 00 05 */	li r4, 5
/* 806C2718  C0 3F 00 74 */	lfs f1, 0x74(r31)
/* 806C271C  38 A0 00 00 */	li r5, 0
/* 806C2720  C0 5F 00 08 */	lfs f2, 8(r31)
/* 806C2724  4B FF F6 19 */	bl head_anm_init__FP10e_gb_classifUcf
/* 806C2728  3C 60 00 07 */	lis r3, 0x0007 /* 0x0007014E@ha */
/* 806C272C  38 03 01 4E */	addi r0, r3, 0x014E /* 0x0007014E@l */
/* 806C2730  90 01 00 10 */	stw r0, 0x10(r1)
/* 806C2734  38 7E 05 C4 */	addi r3, r30, 0x5c4
/* 806C2738  38 81 00 10 */	addi r4, r1, 0x10
/* 806C273C  38 A0 FF FF */	li r5, -1
/* 806C2740  81 9E 05 C4 */	lwz r12, 0x5c4(r30)
/* 806C2744  81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 806C2748  7D 89 03 A6 */	mtctr r12
/* 806C274C  4E 80 04 21 */	bctrl 
/* 806C2750  38 00 00 01 */	li r0, 1
/* 806C2754  B0 1E 06 9C */	sth r0, 0x69c(r30)
/* 806C2758  C0 1F 00 04 */	lfs f0, 4(r31)
/* 806C275C  D0 1E 06 C0 */	stfs f0, 0x6c0(r30)
/* 806C2760  48 00 02 64 */	b lbl_806C29C4
lbl_806C2764:
/* 806C2764  38 7E 04 DE */	addi r3, r30, 0x4de
/* 806C2768  A8 9E 06 B8 */	lha r4, 0x6b8(r30)
/* 806C276C  38 A0 00 02 */	li r5, 2
/* 806C2770  38 C0 08 00 */	li r6, 0x800
/* 806C2774  4B BA DE 94 */	b cLib_addCalcAngleS2__FPssss
/* 806C2778  38 7E 04 DC */	addi r3, r30, 0x4dc
/* 806C277C  A8 9E 06 BA */	lha r4, 0x6ba(r30)
/* 806C2780  38 A0 00 02 */	li r5, 2
/* 806C2784  38 C0 08 00 */	li r6, 0x800
/* 806C2788  4B BA DE 80 */	b cLib_addCalcAngleS2__FPssss
/* 806C278C  3C 60 80 45 */	lis r3, calc_mtx@ha
/* 806C2790  38 63 07 68 */	addi r3, r3, calc_mtx@l
/* 806C2794  80 63 00 00 */	lwz r3, 0(r3)
/* 806C2798  A8 9E 04 DE */	lha r4, 0x4de(r30)
/* 806C279C  4B 94 9C 40 */	b mDoMtx_YrotS__FPA4_fs
/* 806C27A0  C0 5F 00 04 */	lfs f2, 4(r31)
/* 806C27A4  D0 41 00 38 */	stfs f2, 0x38(r1)
/* 806C27A8  C0 3F 00 48 */	lfs f1, 0x48(r31)
/* 806C27AC  3C 60 80 6C */	lis r3, l_HIO@ha
/* 806C27B0  38 63 79 38 */	addi r3, r3, l_HIO@l
/* 806C27B4  C0 03 00 08 */	lfs f0, 8(r3)
/* 806C27B8  EC 01 00 32 */	fmuls f0, f1, f0
/* 806C27BC  D0 01 00 3C */	stfs f0, 0x3c(r1)
/* 806C27C0  D0 41 00 40 */	stfs f2, 0x40(r1)
/* 806C27C4  38 61 00 38 */	addi r3, r1, 0x38
/* 806C27C8  38 81 00 2C */	addi r4, r1, 0x2c
/* 806C27CC  4B BA E7 20 */	b MtxPosition__FP4cXyzP4cXyz
/* 806C27D0  38 61 00 14 */	addi r3, r1, 0x14
/* 806C27D4  38 9E 06 D4 */	addi r4, r30, 0x6d4
/* 806C27D8  38 A1 00 2C */	addi r5, r1, 0x2c
/* 806C27DC  4B BA 43 08 */	b __pl__4cXyzCFRC3Vec
/* 806C27E0  C0 01 00 14 */	lfs f0, 0x14(r1)
/* 806C27E4  D0 1E 06 A8 */	stfs f0, 0x6a8(r30)
/* 806C27E8  C0 01 00 18 */	lfs f0, 0x18(r1)
/* 806C27EC  D0 1E 06 AC */	stfs f0, 0x6ac(r30)
/* 806C27F0  C0 01 00 1C */	lfs f0, 0x1c(r1)
/* 806C27F4  D0 1E 06 B0 */	stfs f0, 0x6b0(r30)
/* 806C27F8  38 7E 04 D0 */	addi r3, r30, 0x4d0
/* 806C27FC  C0 3E 06 A8 */	lfs f1, 0x6a8(r30)
/* 806C2800  C0 5F 00 54 */	lfs f2, 0x54(r31)
/* 806C2804  C0 7F 00 44 */	lfs f3, 0x44(r31)
/* 806C2808  C0 1E 06 C0 */	lfs f0, 0x6c0(r30)
/* 806C280C  EC 63 00 32 */	fmuls f3, f3, f0
/* 806C2810  4B BA D2 2C */	b cLib_addCalc2__FPffff
/* 806C2814  38 7E 04 D8 */	addi r3, r30, 0x4d8
/* 806C2818  C0 3E 06 B0 */	lfs f1, 0x6b0(r30)
/* 806C281C  C0 5F 00 54 */	lfs f2, 0x54(r31)
/* 806C2820  C0 7F 00 44 */	lfs f3, 0x44(r31)
/* 806C2824  C0 1E 06 C0 */	lfs f0, 0x6c0(r30)
/* 806C2828  EC 63 00 32 */	fmuls f3, f3, f0
/* 806C282C  4B BA D2 10 */	b cLib_addCalc2__FPffff
/* 806C2830  38 7E 04 D4 */	addi r3, r30, 0x4d4
/* 806C2834  C0 3E 06 AC */	lfs f1, 0x6ac(r30)
/* 806C2838  C0 5F 00 54 */	lfs f2, 0x54(r31)
/* 806C283C  C0 7F 00 44 */	lfs f3, 0x44(r31)
/* 806C2840  C0 1E 06 C0 */	lfs f0, 0x6c0(r30)
/* 806C2844  EC 63 00 32 */	fmuls f3, f3, f0
/* 806C2848  4B BA D1 F4 */	b cLib_addCalc2__FPffff
/* 806C284C  38 7E 06 C0 */	addi r3, r30, 0x6c0
/* 806C2850  C0 3F 00 08 */	lfs f1, 8(r31)
/* 806C2854  FC 40 08 90 */	fmr f2, f1
/* 806C2858  C0 7F 00 54 */	lfs f3, 0x54(r31)
/* 806C285C  4B BA D1 E0 */	b cLib_addCalc2__FPffff
/* 806C2860  80 7E 05 B8 */	lwz r3, 0x5b8(r30)
/* 806C2864  38 80 00 01 */	li r4, 1
/* 806C2868  88 03 00 11 */	lbz r0, 0x11(r3)
/* 806C286C  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 806C2870  40 82 00 18 */	bne lbl_806C2888
/* 806C2874  C0 3F 00 04 */	lfs f1, 4(r31)
/* 806C2878  C0 03 00 18 */	lfs f0, 0x18(r3)
/* 806C287C  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 806C2880  41 82 00 08 */	beq lbl_806C2888
/* 806C2884  38 80 00 00 */	li r4, 0
lbl_806C2888:
/* 806C2888  54 80 06 3F */	clrlwi. r0, r4, 0x18
/* 806C288C  41 82 01 38 */	beq lbl_806C29C4
/* 806C2890  38 00 00 03 */	li r0, 3
/* 806C2894  B0 1E 06 9C */	sth r0, 0x69c(r30)
/* 806C2898  3C 60 80 6C */	lis r3, l_HIO@ha
/* 806C289C  38 63 79 38 */	addi r3, r3, l_HIO@l
/* 806C28A0  A8 03 00 1C */	lha r0, 0x1c(r3)
/* 806C28A4  B0 1E 06 C4 */	sth r0, 0x6c4(r30)
/* 806C28A8  7F C3 F3 78 */	mr r3, r30
/* 806C28AC  38 80 00 08 */	li r4, 8
/* 806C28B0  C0 3F 00 08 */	lfs f1, 8(r31)
/* 806C28B4  38 A0 00 00 */	li r5, 0
/* 806C28B8  FC 40 08 90 */	fmr f2, f1
/* 806C28BC  4B FF F4 81 */	bl head_anm_init__FP10e_gb_classifUcf
/* 806C28C0  3C 60 00 07 */	lis r3, 0x0007 /* 0x0007014F@ha */
/* 806C28C4  38 03 01 4F */	addi r0, r3, 0x014F /* 0x0007014F@l */
/* 806C28C8  90 01 00 0C */	stw r0, 0xc(r1)
/* 806C28CC  38 7E 05 C4 */	addi r3, r30, 0x5c4
/* 806C28D0  38 81 00 0C */	addi r4, r1, 0xc
/* 806C28D4  38 A0 FF FF */	li r5, -1
/* 806C28D8  81 9E 05 C4 */	lwz r12, 0x5c4(r30)
/* 806C28DC  81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 806C28E0  7D 89 03 A6 */	mtctr r12
/* 806C28E4  4E 80 04 21 */	bctrl 
/* 806C28E8  48 00 00 DC */	b lbl_806C29C4
lbl_806C28EC:
/* 806C28EC  3C 60 80 6C */	lis r3, l_HIO@ha
/* 806C28F0  38 63 79 38 */	addi r3, r3, l_HIO@l
/* 806C28F4  C0 23 00 18 */	lfs f1, 0x18(r3)
/* 806C28F8  FF E0 08 90 */	fmr f31, f1
/* 806C28FC  C0 1F 00 70 */	lfs f0, 0x70(r31)
/* 806C2900  EF C0 00 72 */	fmuls f30, f0, f1
/* 806C2904  A8 1E 06 C4 */	lha r0, 0x6c4(r30)
/* 806C2908  2C 00 00 00 */	cmpwi r0, 0
/* 806C290C  40 82 00 B8 */	bne lbl_806C29C4
/* 806C2910  A8 03 00 1E */	lha r0, 0x1e(r3)
/* 806C2914  B0 1E 06 C4 */	sth r0, 0x6c4(r30)
/* 806C2918  38 00 00 04 */	li r0, 4
/* 806C291C  B0 1E 06 9C */	sth r0, 0x69c(r30)
/* 806C2920  48 00 00 A4 */	b lbl_806C29C4
lbl_806C2924:
/* 806C2924  A8 1E 06 C4 */	lha r0, 0x6c4(r30)
/* 806C2928  2C 00 00 00 */	cmpwi r0, 0
/* 806C292C  40 82 00 98 */	bne lbl_806C29C4
/* 806C2930  38 00 00 00 */	li r0, 0
/* 806C2934  B0 1E 06 9A */	sth r0, 0x69a(r30)
/* 806C2938  B0 1E 06 9C */	sth r0, 0x69c(r30)
/* 806C293C  C0 3F 00 3C */	lfs f1, 0x3c(r31)
/* 806C2940  4B BA 50 14 */	b cM_rndF__Ff
/* 806C2944  C0 1F 00 3C */	lfs f0, 0x3c(r31)
/* 806C2948  EC 00 08 2A */	fadds f0, f0, f1
/* 806C294C  FC 00 00 1E */	fctiwz f0, f0
/* 806C2950  D8 01 00 48 */	stfd f0, 0x48(r1)
/* 806C2954  80 01 00 4C */	lwz r0, 0x4c(r1)
/* 806C2958  B0 1E 06 C4 */	sth r0, 0x6c4(r30)
/* 806C295C  C0 1F 00 04 */	lfs f0, 4(r31)
/* 806C2960  D0 1E 06 C0 */	stfs f0, 0x6c0(r30)
/* 806C2964  48 00 01 24 */	b lbl_806C2A88
lbl_806C2968:
/* 806C2968  C3 DF 00 74 */	lfs f30, 0x74(r31)
/* 806C296C  A8 1E 06 C4 */	lha r0, 0x6c4(r30)
/* 806C2970  2C 00 00 00 */	cmpwi r0, 0
/* 806C2974  40 82 00 50 */	bne lbl_806C29C4
/* 806C2978  C0 1E 05 2C */	lfs f0, 0x52c(r30)
/* 806C297C  FC 00 02 10 */	fabs f0, f0
/* 806C2980  FC 20 00 18 */	frsp f1, f0
/* 806C2984  C0 1F 00 54 */	lfs f0, 0x54(r31)
/* 806C2988  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 806C298C  40 80 00 38 */	bge lbl_806C29C4
/* 806C2990  38 00 00 00 */	li r0, 0
/* 806C2994  B0 1E 06 9A */	sth r0, 0x69a(r30)
/* 806C2998  B0 1E 06 9C */	sth r0, 0x69c(r30)
/* 806C299C  C0 3F 00 3C */	lfs f1, 0x3c(r31)
/* 806C29A0  4B BA 4F B4 */	b cM_rndF__Ff
/* 806C29A4  C0 1F 00 3C */	lfs f0, 0x3c(r31)
/* 806C29A8  EC 00 08 2A */	fadds f0, f0, f1
/* 806C29AC  FC 00 00 1E */	fctiwz f0, f0
/* 806C29B0  D8 01 00 48 */	stfd f0, 0x48(r1)
/* 806C29B4  80 01 00 4C */	lwz r0, 0x4c(r1)
/* 806C29B8  B0 1E 06 C4 */	sth r0, 0x6c4(r30)
/* 806C29BC  C0 1F 00 04 */	lfs f0, 4(r31)
/* 806C29C0  D0 1E 06 C0 */	stfs f0, 0x6c0(r30)
lbl_806C29C4:
/* 806C29C4  38 7E 05 2C */	addi r3, r30, 0x52c
/* 806C29C8  FC 20 F8 90 */	fmr f1, f31
/* 806C29CC  C0 5F 00 08 */	lfs f2, 8(r31)
/* 806C29D0  FC 60 F0 90 */	fmr f3, f30
/* 806C29D4  4B BA D0 68 */	b cLib_addCalc2__FPffff
/* 806C29D8  C0 3E 05 2C */	lfs f1, 0x52c(r30)
/* 806C29DC  C0 1F 00 3C */	lfs f0, 0x3c(r31)
/* 806C29E0  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 806C29E4  4C 41 13 82 */	cror 2, 1, 2
/* 806C29E8  40 82 00 78 */	bne lbl_806C2A60
/* 806C29EC  38 00 00 01 */	li r0, 1
/* 806C29F0  98 1E 0C 20 */	stb r0, 0xc20(r30)
/* 806C29F4  A8 1E 06 9C */	lha r0, 0x69c(r30)
/* 806C29F8  2C 00 00 05 */	cmpwi r0, 5
/* 806C29FC  41 82 00 64 */	beq lbl_806C2A60
/* 806C2A00  80 1E 0C B4 */	lwz r0, 0xcb4(r30)
/* 806C2A04  54 00 06 F7 */	rlwinm. r0, r0, 0, 0x1b, 0x1b
/* 806C2A08  40 82 00 10 */	bne lbl_806C2A18
/* 806C2A0C  80 1E 0A 08 */	lwz r0, 0xa08(r30)
/* 806C2A10  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 806C2A14  41 82 00 4C */	beq lbl_806C2A60
lbl_806C2A18:
/* 806C2A18  38 00 00 05 */	li r0, 5
/* 806C2A1C  B0 1E 06 9C */	sth r0, 0x69c(r30)
/* 806C2A20  38 00 13 88 */	li r0, 0x1388
/* 806C2A24  B0 1E 09 48 */	sth r0, 0x948(r30)
/* 806C2A28  38 00 0B B8 */	li r0, 0xbb8
/* 806C2A2C  B0 1E 09 52 */	sth r0, 0x952(r30)
/* 806C2A30  C0 1F 00 78 */	lfs f0, 0x78(r31)
/* 806C2A34  D0 1E 09 4C */	stfs f0, 0x94c(r30)
/* 806C2A38  7F C3 F3 78 */	mr r3, r30
/* 806C2A3C  38 80 00 11 */	li r4, 0x11
/* 806C2A40  C0 3F 00 7C */	lfs f1, 0x7c(r31)
/* 806C2A44  38 A0 00 02 */	li r5, 2
/* 806C2A48  C0 5F 00 08 */	lfs f2, 8(r31)
/* 806C2A4C  4B FF F2 F1 */	bl head_anm_init__FP10e_gb_classifUcf
/* 806C2A50  38 00 00 00 */	li r0, 0
/* 806C2A54  B0 1E 06 C4 */	sth r0, 0x6c4(r30)
/* 806C2A58  C0 1F 00 80 */	lfs f0, 0x80(r31)
/* 806C2A5C  D0 1E 05 2C */	stfs f0, 0x52c(r30)
lbl_806C2A60:
/* 806C2A60  38 7E 04 E6 */	addi r3, r30, 0x4e6
/* 806C2A64  A8 9E 04 DE */	lha r4, 0x4de(r30)
/* 806C2A68  38 A0 00 08 */	li r5, 8
/* 806C2A6C  38 C0 08 00 */	li r6, 0x800
/* 806C2A70  4B BA DB 98 */	b cLib_addCalcAngleS2__FPssss
/* 806C2A74  38 7E 04 E4 */	addi r3, r30, 0x4e4
/* 806C2A78  A8 9E 04 DC */	lha r4, 0x4dc(r30)
/* 806C2A7C  38 A0 00 08 */	li r5, 8
/* 806C2A80  38 C0 04 00 */	li r6, 0x400
/* 806C2A84  4B BA DB 84 */	b cLib_addCalcAngleS2__FPssss
lbl_806C2A88:
/* 806C2A88  E3 E1 00 78 */	psq_l f31, 120(r1), 0, 0 /* qr0 */
/* 806C2A8C  CB E1 00 70 */	lfd f31, 0x70(r1)
/* 806C2A90  E3 C1 00 68 */	psq_l f30, 104(r1), 0, 0 /* qr0 */
/* 806C2A94  CB C1 00 60 */	lfd f30, 0x60(r1)
/* 806C2A98  83 E1 00 5C */	lwz r31, 0x5c(r1)
/* 806C2A9C  83 C1 00 58 */	lwz r30, 0x58(r1)
/* 806C2AA0  80 01 00 84 */	lwz r0, 0x84(r1)
/* 806C2AA4  7C 08 03 A6 */	mtlr r0
/* 806C2AA8  38 21 00 80 */	addi r1, r1, 0x80
/* 806C2AAC  4E 80 00 20 */	blr 
