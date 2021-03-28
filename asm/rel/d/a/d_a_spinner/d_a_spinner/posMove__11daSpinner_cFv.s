lbl_804D25F4:
/* 804D25F4  94 21 FF 00 */	stwu r1, -0x100(r1)
/* 804D25F8  7C 08 02 A6 */	mflr r0
/* 804D25FC  90 01 01 04 */	stw r0, 0x104(r1)
/* 804D2600  DB E1 00 F0 */	stfd f31, 0xf0(r1)
/* 804D2604  F3 E1 00 F8 */	psq_st f31, 248(r1), 0, 0 /* qr0 */
/* 804D2608  DB C1 00 E0 */	stfd f30, 0xe0(r1)
/* 804D260C  F3 C1 00 E8 */	psq_st f30, 232(r1), 0, 0 /* qr0 */
/* 804D2610  DB A1 00 D0 */	stfd f29, 0xd0(r1)
/* 804D2614  F3 A1 00 D8 */	psq_st f29, 216(r1), 0, 0 /* qr0 */
/* 804D2618  39 61 00 D0 */	addi r11, r1, 0xd0
/* 804D261C  4B E8 FB B0 */	b _savegpr_25
/* 804D2620  7C 7A 1B 78 */	mr r26, r3
/* 804D2624  3C 60 80 4D */	lis r3, lit_3768@ha
/* 804D2628  3B C3 4D 90 */	addi r30, r3, lit_3768@l
/* 804D262C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 804D2630  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 804D2634  83 A3 5D B4 */	lwz r29, 0x5db4(r3)
/* 804D2638  38 60 00 00 */	li r3, 0
/* 804D263C  80 9D 06 14 */	lwz r4, 0x614(r29)
/* 804D2640  28 04 00 0E */	cmplwi r4, 0xe
/* 804D2644  40 82 00 14 */	bne lbl_804D2658
/* 804D2648  80 1D 06 0C */	lwz r0, 0x60c(r29)
/* 804D264C  2C 00 00 01 */	cmpwi r0, 1
/* 804D2650  40 82 00 08 */	bne lbl_804D2658
/* 804D2654  38 60 00 01 */	li r3, 1
lbl_804D2658:
/* 804D2658  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 804D265C  40 82 00 58 */	bne lbl_804D26B4
/* 804D2660  38 60 00 00 */	li r3, 0
/* 804D2664  28 04 00 0E */	cmplwi r4, 0xe
/* 804D2668  40 82 00 14 */	bne lbl_804D267C
/* 804D266C  80 1D 06 0C */	lwz r0, 0x60c(r29)
/* 804D2670  2C 00 00 02 */	cmpwi r0, 2
/* 804D2674  40 82 00 08 */	bne lbl_804D267C
/* 804D2678  38 60 00 01 */	li r3, 1
lbl_804D267C:
/* 804D267C  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 804D2680  41 82 00 10 */	beq lbl_804D2690
/* 804D2684  7F A3 EB 78 */	mr r3, r29
/* 804D2688  4B C3 B3 28 */	b getSpinnerRideSpeedF__9daAlink_cFv
/* 804D268C  D0 3A 05 2C */	stfs f1, 0x52c(r26)
lbl_804D2690:
/* 804D2690  3C 60 80 44 */	lis r3, sincosTable___5JMath@ha
/* 804D2694  38 63 9A 20 */	addi r3, r3, sincosTable___5JMath@l
/* 804D2698  A8 1A 04 DC */	lha r0, 0x4dc(r26)
/* 804D269C  54 00 04 38 */	rlwinm r0, r0, 0, 0x10, 0x1c
/* 804D26A0  7C 63 02 14 */	add r3, r3, r0
/* 804D26A4  C0 23 00 04 */	lfs f1, 4(r3)
/* 804D26A8  C0 1A 05 2C */	lfs f0, 0x52c(r26)
/* 804D26AC  EC 80 00 72 */	fmuls f4, f0, f1
/* 804D26B0  48 00 00 08 */	b lbl_804D26B8
lbl_804D26B4:
/* 804D26B4  C0 9E 00 28 */	lfs f4, 0x28(r30)
lbl_804D26B8:
/* 804D26B8  80 1A 0A 64 */	lwz r0, 0xa64(r26)
/* 804D26BC  28 00 00 00 */	cmplwi r0, 0
/* 804D26C0  40 82 00 28 */	bne lbl_804D26E8
/* 804D26C4  C0 3A 04 FC */	lfs f1, 0x4fc(r26)
/* 804D26C8  C0 1A 05 30 */	lfs f0, 0x530(r26)
/* 804D26CC  EC 01 00 2A */	fadds f0, f1, f0
/* 804D26D0  D0 1A 04 FC */	stfs f0, 0x4fc(r26)
/* 804D26D4  C0 1A 04 FC */	lfs f0, 0x4fc(r26)
/* 804D26D8  C0 3A 05 34 */	lfs f1, 0x534(r26)
/* 804D26DC  FC 00 08 40 */	fcmpo cr0, f0, f1
/* 804D26E0  40 80 00 08 */	bge lbl_804D26E8
/* 804D26E4  D0 3A 04 FC */	stfs f1, 0x4fc(r26)
lbl_804D26E8:
/* 804D26E8  A8 1A 04 DE */	lha r0, 0x4de(r26)
/* 804D26EC  54 00 04 38 */	rlwinm r0, r0, 0, 0x10, 0x1c
/* 804D26F0  3C 60 80 44 */	lis r3, sincosTable___5JMath@ha
/* 804D26F4  38 63 9A 20 */	addi r3, r3, sincosTable___5JMath@l
/* 804D26F8  7C 03 04 2E */	lfsx f0, r3, r0
/* 804D26FC  C0 3A 04 D0 */	lfs f1, 0x4d0(r26)
/* 804D2700  EC 04 00 32 */	fmuls f0, f4, f0
/* 804D2704  EC 01 00 2A */	fadds f0, f1, f0
/* 804D2708  D0 1A 04 D0 */	stfs f0, 0x4d0(r26)
/* 804D270C  A8 1A 04 DC */	lha r0, 0x4dc(r26)
/* 804D2710  54 00 04 38 */	rlwinm r0, r0, 0, 0x10, 0x1c
/* 804D2714  7C 63 04 2E */	lfsx f3, r3, r0
/* 804D2718  C0 5A 04 D4 */	lfs f2, 0x4d4(r26)
/* 804D271C  C0 3A 04 FC */	lfs f1, 0x4fc(r26)
/* 804D2720  C0 1A 05 2C */	lfs f0, 0x52c(r26)
/* 804D2724  EC 00 00 F2 */	fmuls f0, f0, f3
/* 804D2728  EC 01 00 28 */	fsubs f0, f1, f0
/* 804D272C  EC 02 00 2A */	fadds f0, f2, f0
/* 804D2730  D0 1A 04 D4 */	stfs f0, 0x4d4(r26)
/* 804D2734  A8 1A 04 DE */	lha r0, 0x4de(r26)
/* 804D2738  54 00 04 38 */	rlwinm r0, r0, 0, 0x10, 0x1c
/* 804D273C  7C 63 02 14 */	add r3, r3, r0
/* 804D2740  C0 03 00 04 */	lfs f0, 4(r3)
/* 804D2744  C0 3A 04 D8 */	lfs f1, 0x4d8(r26)
/* 804D2748  EC 04 00 32 */	fmuls f0, f4, f0
/* 804D274C  EC 01 00 2A */	fadds f0, f1, f0
/* 804D2750  D0 1A 04 D8 */	stfs f0, 0x4d8(r26)
/* 804D2754  80 1A 0A 64 */	lwz r0, 0xa64(r26)
/* 804D2758  28 00 00 00 */	cmplwi r0, 0
/* 804D275C  41 82 05 D0 */	beq lbl_804D2D2C
/* 804D2760  C3 DA 05 2C */	lfs f30, 0x52c(r26)
/* 804D2764  3C 60 80 4D */	lis r3, __vt__8cM3dGLin@ha
/* 804D2768  38 03 4F 48 */	addi r0, r3, __vt__8cM3dGLin@l
/* 804D276C  90 01 00 8C */	stw r0, 0x8c(r1)
/* 804D2770  C3 FE 00 4C */	lfs f31, 0x4c(r30)
/* 804D2774  C3 BE 00 28 */	lfs f29, 0x28(r30)
/* 804D2778  48 00 05 9C */	b lbl_804D2D14
lbl_804D277C:
/* 804D277C  80 7A 0A 64 */	lwz r3, 0xa64(r26)
/* 804D2780  80 83 00 08 */	lwz r4, 8(r3)
/* 804D2784  88 1A 0A 72 */	lbz r0, 0xa72(r26)
/* 804D2788  54 03 20 36 */	slwi r3, r0, 4
/* 804D278C  3B 23 00 04 */	addi r25, r3, 4
/* 804D2790  7F 24 CA 14 */	add r25, r4, r25
/* 804D2794  7F 43 D3 78 */	mr r3, r26
/* 804D2798  48 00 0E FD */	bl getPathNextPos__11daSpinner_cFv
/* 804D279C  7C 7C 1B 78 */	mr r28, r3
/* 804D27A0  C0 5A 04 D8 */	lfs f2, 0x4d8(r26)
/* 804D27A4  C0 1A 04 D4 */	lfs f0, 0x4d4(r26)
/* 804D27A8  EC 20 F8 28 */	fsubs f1, f0, f31
/* 804D27AC  C0 1A 04 D0 */	lfs f0, 0x4d0(r26)
/* 804D27B0  D0 01 00 5C */	stfs f0, 0x5c(r1)
/* 804D27B4  D0 21 00 60 */	stfs f1, 0x60(r1)
/* 804D27B8  D0 41 00 64 */	stfs f2, 0x64(r1)
/* 804D27BC  C0 39 00 08 */	lfs f1, 8(r25)
/* 804D27C0  C0 03 00 08 */	lfs f0, 8(r3)
/* 804D27C4  EC 61 00 28 */	fsubs f3, f1, f0
/* 804D27C8  C0 39 00 04 */	lfs f1, 4(r25)
/* 804D27CC  C0 03 00 04 */	lfs f0, 4(r3)
/* 804D27D0  EC 41 00 28 */	fsubs f2, f1, f0
/* 804D27D4  C0 39 00 00 */	lfs f1, 0(r25)
/* 804D27D8  C0 03 00 00 */	lfs f0, 0(r3)
/* 804D27DC  EC 01 00 28 */	fsubs f0, f1, f0
/* 804D27E0  D0 01 00 50 */	stfs f0, 0x50(r1)
/* 804D27E4  D0 41 00 54 */	stfs f2, 0x54(r1)
/* 804D27E8  D0 61 00 58 */	stfs f3, 0x58(r1)
/* 804D27EC  38 61 00 50 */	addi r3, r1, 0x50
/* 804D27F0  4B D9 49 38 */	b atan2sX_Z__4cXyzCFv
/* 804D27F4  7C 7F 1B 78 */	mr r31, r3
/* 804D27F8  38 61 00 44 */	addi r3, r1, 0x44
/* 804D27FC  38 81 00 50 */	addi r4, r1, 0x50
/* 804D2800  4B D9 47 48 */	b normalizeZP__4cXyzFv
/* 804D2804  38 61 00 50 */	addi r3, r1, 0x50
/* 804D2808  7C 64 1B 78 */	mr r4, r3
/* 804D280C  C0 3E 00 18 */	lfs f1, 0x18(r30)
/* 804D2810  4B E7 48 C8 */	b PSVECScale
/* 804D2814  C0 21 00 50 */	lfs f1, 0x50(r1)
/* 804D2818  C0 19 00 00 */	lfs f0, 0(r25)
/* 804D281C  EC 01 00 2A */	fadds f0, f1, f0
/* 804D2820  D0 01 00 50 */	stfs f0, 0x50(r1)
/* 804D2824  C0 21 00 54 */	lfs f1, 0x54(r1)
/* 804D2828  C0 19 00 04 */	lfs f0, 4(r25)
/* 804D282C  EC 01 00 2A */	fadds f0, f1, f0
/* 804D2830  D0 01 00 54 */	stfs f0, 0x54(r1)
/* 804D2834  C0 21 00 58 */	lfs f1, 0x58(r1)
/* 804D2838  C0 19 00 08 */	lfs f0, 8(r25)
/* 804D283C  EC 01 00 2A */	fadds f0, f1, f0
/* 804D2840  D0 01 00 58 */	stfs f0, 0x58(r1)
/* 804D2844  38 61 00 74 */	addi r3, r1, 0x74
/* 804D2848  38 81 00 50 */	addi r4, r1, 0x50
/* 804D284C  7F 85 E3 78 */	mr r5, r28
/* 804D2850  4B D9 CA CC */	b SetStartEnd__8cM3dGLinFRC3VecRC3Vec
/* 804D2854  38 61 00 74 */	addi r3, r1, 0x74
/* 804D2858  38 81 00 5C */	addi r4, r1, 0x5c
/* 804D285C  38 A1 00 68 */	addi r5, r1, 0x68
/* 804D2860  38 C1 00 10 */	addi r6, r1, 0x10
/* 804D2864  4B D9 5E AC */	b cM3d_Len3dSqPntAndSegLine__FPC8cM3dGLinPC3VecP3VecPf
/* 804D2868  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 804D286C  40 82 04 8C */	bne lbl_804D2CF8
/* 804D2870  7F 43 D3 78 */	mr r3, r26
/* 804D2874  48 00 0D A5 */	bl setNextPathNum__11daSpinner_cFv
/* 804D2878  2C 03 00 00 */	cmpwi r3, 0
/* 804D287C  41 82 01 10 */	beq lbl_804D298C
/* 804D2880  8B 3A 0A 72 */	lbz r25, 0xa72(r26)
/* 804D2884  28 19 00 00 */	cmplwi r25, 0
/* 804D2888  41 82 00 18 */	beq lbl_804D28A0
/* 804D288C  80 7A 0A 64 */	lwz r3, 0xa64(r26)
/* 804D2890  A0 63 00 00 */	lhz r3, 0(r3)
/* 804D2894  38 03 FF FF */	addi r0, r3, -1
/* 804D2898  7C 19 00 00 */	cmpw r25, r0
/* 804D289C  40 82 00 F0 */	bne lbl_804D298C
lbl_804D28A0:
/* 804D28A0  80 7A 0A 64 */	lwz r3, 0xa64(r26)
/* 804D28A4  88 03 00 05 */	lbz r0, 5(r3)
/* 804D28A8  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 804D28AC  40 82 00 E0 */	bne lbl_804D298C
/* 804D28B0  C3 DE 00 28 */	lfs f30, 0x28(r30)
/* 804D28B4  80 83 00 08 */	lwz r4, 8(r3)
/* 804D28B8  57 23 25 36 */	rlwinm r3, r25, 4, 0x14, 0x1b
/* 804D28BC  38 03 00 03 */	addi r0, r3, 3
/* 804D28C0  7C 04 00 AE */	lbzx r0, r4, r0
/* 804D28C4  28 00 00 00 */	cmplwi r0, 0
/* 804D28C8  40 82 00 B0 */	bne lbl_804D2978
/* 804D28CC  7F 43 D3 78 */	mr r3, r26
/* 804D28D0  48 00 07 C1 */	bl setReflectAngle__11daSpinner_cFv
/* 804D28D4  9B 3A 0A 72 */	stb r25, 0xa72(r26)
/* 804D28D8  C0 3A 04 D0 */	lfs f1, 0x4d0(r26)
/* 804D28DC  C0 1C 00 00 */	lfs f0, 0(r28)
/* 804D28E0  EC 21 00 28 */	fsubs f1, f1, f0
/* 804D28E4  C0 5A 04 D8 */	lfs f2, 0x4d8(r26)
/* 804D28E8  C0 1C 00 08 */	lfs f0, 8(r28)
/* 804D28EC  EC 42 00 28 */	fsubs f2, f2, f0
/* 804D28F0  4B D9 4D 84 */	b cM_atan2s__Fff
/* 804D28F4  7C 1F 18 50 */	subf r0, r31, r3
/* 804D28F8  7C 00 07 35 */	extsh. r0, r0
/* 804D28FC  40 81 00 10 */	ble lbl_804D290C
/* 804D2900  38 1F 40 00 */	addi r0, r31, 0x4000
/* 804D2904  7C 00 07 34 */	extsh r0, r0
/* 804D2908  48 00 00 08 */	b lbl_804D2910
lbl_804D290C:
/* 804D290C  38 1F C0 00 */	addi r0, r31, -16384
lbl_804D2910:
/* 804D2910  C0 5C 00 08 */	lfs f2, 8(r28)
/* 804D2914  C0 3C 00 04 */	lfs f1, 4(r28)
/* 804D2918  C0 1C 00 00 */	lfs f0, 0(r28)
/* 804D291C  D0 1A 0A B0 */	stfs f0, 0xab0(r26)
/* 804D2920  D0 3A 0A B4 */	stfs f1, 0xab4(r26)
/* 804D2924  D0 5A 0A B8 */	stfs f2, 0xab8(r26)
/* 804D2928  C0 3C 00 08 */	lfs f1, 8(r28)
/* 804D292C  C0 5E 00 50 */	lfs f2, 0x50(r30)
/* 804D2930  54 04 04 38 */	rlwinm r4, r0, 0, 0x10, 0x1c
/* 804D2934  3C 60 80 44 */	lis r3, sincosTable___5JMath@ha
/* 804D2938  38 03 9A 20 */	addi r0, r3, sincosTable___5JMath@l
/* 804D293C  7C 60 22 14 */	add r3, r0, r4
/* 804D2940  C0 03 00 04 */	lfs f0, 4(r3)
/* 804D2944  EC 02 00 32 */	fmuls f0, f2, f0
/* 804D2948  EC 81 00 2A */	fadds f4, f1, f0
/* 804D294C  C0 3E 00 4C */	lfs f1, 0x4c(r30)
/* 804D2950  C0 1C 00 04 */	lfs f0, 4(r28)
/* 804D2954  EC 61 00 2A */	fadds f3, f1, f0
/* 804D2958  C0 3C 00 00 */	lfs f1, 0(r28)
/* 804D295C  C0 03 00 00 */	lfs f0, 0(r3)
/* 804D2960  EC 02 00 32 */	fmuls f0, f2, f0
/* 804D2964  EC 01 00 2A */	fadds f0, f1, f0
/* 804D2968  D0 1A 04 D0 */	stfs f0, 0x4d0(r26)
/* 804D296C  D0 7A 04 D4 */	stfs f3, 0x4d4(r26)
/* 804D2970  D0 9A 04 D8 */	stfs f4, 0x4d8(r26)
/* 804D2974  48 00 01 70 */	b lbl_804D2AE4
lbl_804D2978:
/* 804D2978  38 00 00 00 */	li r0, 0
/* 804D297C  90 1A 0A 64 */	stw r0, 0xa64(r26)
/* 804D2980  38 00 00 01 */	li r0, 1
/* 804D2984  98 1A 0A 74 */	stb r0, 0xa74(r26)
/* 804D2988  48 00 01 5C */	b lbl_804D2AE4
lbl_804D298C:
/* 804D298C  38 7A 0A B0 */	addi r3, r26, 0xab0
/* 804D2990  7F 84 E3 78 */	mr r4, r28
/* 804D2994  4B E7 4A 08 */	b PSVECSquareDistance
/* 804D2998  C0 1E 00 28 */	lfs f0, 0x28(r30)
/* 804D299C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 804D29A0  40 81 00 58 */	ble lbl_804D29F8
/* 804D29A4  FC 00 08 34 */	frsqrte f0, f1
/* 804D29A8  C8 9E 00 58 */	lfd f4, 0x58(r30)
/* 804D29AC  FC 44 00 32 */	fmul f2, f4, f0
/* 804D29B0  C8 7E 00 60 */	lfd f3, 0x60(r30)
/* 804D29B4  FC 00 00 32 */	fmul f0, f0, f0
/* 804D29B8  FC 01 00 32 */	fmul f0, f1, f0
/* 804D29BC  FC 03 00 28 */	fsub f0, f3, f0
/* 804D29C0  FC 02 00 32 */	fmul f0, f2, f0
/* 804D29C4  FC 44 00 32 */	fmul f2, f4, f0
/* 804D29C8  FC 00 00 32 */	fmul f0, f0, f0
/* 804D29CC  FC 01 00 32 */	fmul f0, f1, f0
/* 804D29D0  FC 03 00 28 */	fsub f0, f3, f0
/* 804D29D4  FC 02 00 32 */	fmul f0, f2, f0
/* 804D29D8  FC 44 00 32 */	fmul f2, f4, f0
/* 804D29DC  FC 00 00 32 */	fmul f0, f0, f0
/* 804D29E0  FC 01 00 32 */	fmul f0, f1, f0
/* 804D29E4  FC 03 00 28 */	fsub f0, f3, f0
/* 804D29E8  FC 02 00 32 */	fmul f0, f2, f0
/* 804D29EC  FC 21 00 32 */	fmul f1, f1, f0
/* 804D29F0  FC 20 08 18 */	frsp f1, f1
/* 804D29F4  48 00 00 88 */	b lbl_804D2A7C
lbl_804D29F8:
/* 804D29F8  C8 1E 00 68 */	lfd f0, 0x68(r30)
/* 804D29FC  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 804D2A00  40 80 00 10 */	bge lbl_804D2A10
/* 804D2A04  3C 60 80 45 */	lis r3, __float_nan@ha
/* 804D2A08  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)
/* 804D2A0C  48 00 00 70 */	b lbl_804D2A7C
lbl_804D2A10:
/* 804D2A10  D0 21 00 0C */	stfs f1, 0xc(r1)
/* 804D2A14  80 81 00 0C */	lwz r4, 0xc(r1)
/* 804D2A18  54 83 00 50 */	rlwinm r3, r4, 0, 1, 8
/* 804D2A1C  3C 00 7F 80 */	lis r0, 0x7f80
/* 804D2A20  7C 03 00 00 */	cmpw r3, r0
/* 804D2A24  41 82 00 14 */	beq lbl_804D2A38
/* 804D2A28  40 80 00 40 */	bge lbl_804D2A68
/* 804D2A2C  2C 03 00 00 */	cmpwi r3, 0
/* 804D2A30  41 82 00 20 */	beq lbl_804D2A50
/* 804D2A34  48 00 00 34 */	b lbl_804D2A68
lbl_804D2A38:
/* 804D2A38  54 80 02 7F */	clrlwi. r0, r4, 9
/* 804D2A3C  41 82 00 0C */	beq lbl_804D2A48
/* 804D2A40  38 00 00 01 */	li r0, 1
/* 804D2A44  48 00 00 28 */	b lbl_804D2A6C
lbl_804D2A48:
/* 804D2A48  38 00 00 02 */	li r0, 2
/* 804D2A4C  48 00 00 20 */	b lbl_804D2A6C
lbl_804D2A50:
/* 804D2A50  54 80 02 7F */	clrlwi. r0, r4, 9
/* 804D2A54  41 82 00 0C */	beq lbl_804D2A60
/* 804D2A58  38 00 00 05 */	li r0, 5
/* 804D2A5C  48 00 00 10 */	b lbl_804D2A6C
lbl_804D2A60:
/* 804D2A60  38 00 00 03 */	li r0, 3
/* 804D2A64  48 00 00 08 */	b lbl_804D2A6C
lbl_804D2A68:
/* 804D2A68  38 00 00 04 */	li r0, 4
lbl_804D2A6C:
/* 804D2A6C  2C 00 00 01 */	cmpwi r0, 1
/* 804D2A70  40 82 00 0C */	bne lbl_804D2A7C
/* 804D2A74  3C 60 80 45 */	lis r3, __float_nan@ha
/* 804D2A78  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)
lbl_804D2A7C:
/* 804D2A7C  EF DE 08 28 */	fsubs f30, f30, f1
/* 804D2A80  C0 5C 00 08 */	lfs f2, 8(r28)
/* 804D2A84  C0 3C 00 04 */	lfs f1, 4(r28)
/* 804D2A88  C0 1C 00 00 */	lfs f0, 0(r28)
/* 804D2A8C  D0 1A 0A B0 */	stfs f0, 0xab0(r26)
/* 804D2A90  D0 3A 0A B4 */	stfs f1, 0xab4(r26)
/* 804D2A94  D0 5A 0A B8 */	stfs f2, 0xab8(r26)
/* 804D2A98  38 61 00 38 */	addi r3, r1, 0x38
/* 804D2A9C  38 81 00 5C */	addi r4, r1, 0x5c
/* 804D2AA0  38 BA 0A B0 */	addi r5, r26, 0xab0
/* 804D2AA4  4B D9 40 90 */	b __mi__4cXyzCFRC3Vec
/* 804D2AA8  C0 01 00 38 */	lfs f0, 0x38(r1)
/* 804D2AAC  D0 01 00 50 */	stfs f0, 0x50(r1)
/* 804D2AB0  C0 01 00 3C */	lfs f0, 0x3c(r1)
/* 804D2AB4  D0 01 00 54 */	stfs f0, 0x54(r1)
/* 804D2AB8  C0 01 00 40 */	lfs f0, 0x40(r1)
/* 804D2ABC  D0 01 00 58 */	stfs f0, 0x58(r1)
/* 804D2AC0  38 61 00 50 */	addi r3, r1, 0x50
/* 804D2AC4  4B D9 46 64 */	b atan2sX_Z__4cXyzCFv
/* 804D2AC8  A8 1A 04 DE */	lha r0, 0x4de(r26)
/* 804D2ACC  7C 00 18 50 */	subf r0, r0, r3
/* 804D2AD0  7C 00 07 35 */	extsh. r0, r0
/* 804D2AD4  40 81 00 0C */	ble lbl_804D2AE0
/* 804D2AD8  3B 60 00 01 */	li r27, 1
/* 804D2ADC  48 00 00 08 */	b lbl_804D2AE4
lbl_804D2AE0:
/* 804D2AE0  3B 60 FF FF */	li r27, -1
lbl_804D2AE4:
/* 804D2AE4  80 7A 0A 64 */	lwz r3, 0xa64(r26)
/* 804D2AE8  28 03 00 00 */	cmplwi r3, 0
/* 804D2AEC  41 82 02 28 */	beq lbl_804D2D14
/* 804D2AF0  80 83 00 08 */	lwz r4, 8(r3)
/* 804D2AF4  88 1A 0A 72 */	lbz r0, 0xa72(r26)
/* 804D2AF8  54 03 20 36 */	slwi r3, r0, 4
/* 804D2AFC  3B 23 00 04 */	addi r25, r3, 4
/* 804D2B00  7F 24 CA 14 */	add r25, r4, r25
/* 804D2B04  7F 43 D3 78 */	mr r3, r26
/* 804D2B08  48 00 0B 8D */	bl getPathNextPos__11daSpinner_cFv
/* 804D2B0C  C0 23 00 08 */	lfs f1, 8(r3)
/* 804D2B10  C0 19 00 08 */	lfs f0, 8(r25)
/* 804D2B14  EC 61 00 28 */	fsubs f3, f1, f0
/* 804D2B18  C0 23 00 04 */	lfs f1, 4(r3)
/* 804D2B1C  C0 19 00 04 */	lfs f0, 4(r25)
/* 804D2B20  EC 41 00 28 */	fsubs f2, f1, f0
/* 804D2B24  C0 23 00 00 */	lfs f1, 0(r3)
/* 804D2B28  C0 19 00 00 */	lfs f0, 0(r25)
/* 804D2B2C  EC 01 00 28 */	fsubs f0, f1, f0
/* 804D2B30  D0 01 00 50 */	stfs f0, 0x50(r1)
/* 804D2B34  D0 41 00 54 */	stfs f2, 0x54(r1)
/* 804D2B38  D0 61 00 58 */	stfs f3, 0x58(r1)
/* 804D2B3C  AB 9A 04 DE */	lha r28, 0x4de(r26)
/* 804D2B40  38 61 00 50 */	addi r3, r1, 0x50
/* 804D2B44  4B D9 45 E4 */	b atan2sX_Z__4cXyzCFv
/* 804D2B48  B0 7A 04 DE */	sth r3, 0x4de(r26)
/* 804D2B4C  38 61 00 50 */	addi r3, r1, 0x50
/* 804D2B50  4B D9 46 00 */	b atan2sY_XZ__4cXyzCFv
/* 804D2B54  B0 7A 04 DC */	sth r3, 0x4dc(r26)
/* 804D2B58  C0 7E 00 28 */	lfs f3, 0x28(r30)
/* 804D2B5C  FC 1E 18 40 */	fcmpo cr0, f30, f3
/* 804D2B60  40 81 01 B4 */	ble lbl_804D2D14
/* 804D2B64  A8 BA 04 DE */	lha r5, 0x4de(r26)
/* 804D2B68  7C 1C 28 50 */	subf r0, r28, r5
/* 804D2B6C  7C 00 07 34 */	extsh r0, r0
/* 804D2B70  C0 3E 00 70 */	lfs f1, 0x70(r30)
/* 804D2B74  C8 5E 00 30 */	lfd f2, 0x30(r30)
/* 804D2B78  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 804D2B7C  90 01 00 94 */	stw r0, 0x94(r1)
/* 804D2B80  3C 80 43 30 */	lis r4, 0x4330
/* 804D2B84  90 81 00 90 */	stw r4, 0x90(r1)
/* 804D2B88  C8 01 00 90 */	lfd f0, 0x90(r1)
/* 804D2B8C  EC 00 10 28 */	fsubs f0, f0, f2
/* 804D2B90  EC 21 00 32 */	fmuls f1, f1, f0
/* 804D2B94  6F 63 80 00 */	xoris r3, r27, 0x8000
/* 804D2B98  90 61 00 9C */	stw r3, 0x9c(r1)
/* 804D2B9C  90 81 00 98 */	stw r4, 0x98(r1)
/* 804D2BA0  C8 01 00 98 */	lfd f0, 0x98(r1)
/* 804D2BA4  EC 00 10 28 */	fsubs f0, f0, f2
/* 804D2BA8  EC 01 00 32 */	fmuls f0, f1, f0
/* 804D2BAC  EF DE 00 2A */	fadds f30, f30, f0
/* 804D2BB0  FC 1E 18 40 */	fcmpo cr0, f30, f3
/* 804D2BB4  40 81 00 68 */	ble lbl_804D2C1C
/* 804D2BB8  38 61 00 2C */	addi r3, r1, 0x2c
/* 804D2BBC  38 81 00 50 */	addi r4, r1, 0x50
/* 804D2BC0  4B D9 43 88 */	b normalizeZP__4cXyzFv
/* 804D2BC4  A8 7A 04 DE */	lha r3, 0x4de(r26)
/* 804D2BC8  57 60 70 22 */	slwi r0, r27, 0xe
/* 804D2BCC  7C 03 02 14 */	add r0, r3, r0
/* 804D2BD0  7C 00 07 34 */	extsh r0, r0
/* 804D2BD4  C0 39 00 08 */	lfs f1, 8(r25)
/* 804D2BD8  C0 01 00 58 */	lfs f0, 0x58(r1)
/* 804D2BDC  EC 00 07 B2 */	fmuls f0, f0, f30
/* 804D2BE0  EC 61 00 2A */	fadds f3, f1, f0
/* 804D2BE4  C0 5E 00 4C */	lfs f2, 0x4c(r30)
/* 804D2BE8  C0 39 00 04 */	lfs f1, 4(r25)
/* 804D2BEC  C0 01 00 54 */	lfs f0, 0x54(r1)
/* 804D2BF0  EC 00 07 B2 */	fmuls f0, f0, f30
/* 804D2BF4  EC 01 00 2A */	fadds f0, f1, f0
/* 804D2BF8  EC 42 00 2A */	fadds f2, f2, f0
/* 804D2BFC  C0 39 00 00 */	lfs f1, 0(r25)
/* 804D2C00  C0 01 00 50 */	lfs f0, 0x50(r1)
/* 804D2C04  EC 00 07 B2 */	fmuls f0, f0, f30
/* 804D2C08  EC 01 00 2A */	fadds f0, f1, f0
/* 804D2C0C  D0 1A 04 D0 */	stfs f0, 0x4d0(r26)
/* 804D2C10  D0 5A 04 D4 */	stfs f2, 0x4d4(r26)
/* 804D2C14  D0 7A 04 D8 */	stfs f3, 0x4d8(r26)
/* 804D2C18  48 00 00 88 */	b lbl_804D2CA0
lbl_804D2C1C:
/* 804D2C1C  FC A0 F2 10 */	fabs f5, f30
/* 804D2C20  57 60 70 22 */	slwi r0, r27, 0xe
/* 804D2C24  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 804D2C28  90 01 00 9C */	stw r0, 0x9c(r1)
/* 804D2C2C  90 81 00 98 */	stw r4, 0x98(r1)
/* 804D2C30  C8 01 00 98 */	lfd f0, 0x98(r1)
/* 804D2C34  EC 80 10 28 */	fsubs f4, f0, f2
/* 804D2C38  6C A0 80 00 */	xoris r0, r5, 0x8000
/* 804D2C3C  90 01 00 94 */	stw r0, 0x94(r1)
/* 804D2C40  90 81 00 90 */	stw r4, 0x90(r1)
/* 804D2C44  C8 01 00 90 */	lfd f0, 0x90(r1)
/* 804D2C48  EC 60 10 28 */	fsubs f3, f0, f2
/* 804D2C4C  90 61 00 A4 */	stw r3, 0xa4(r1)
/* 804D2C50  90 81 00 A0 */	stw r4, 0xa0(r1)
/* 804D2C54  C8 01 00 A0 */	lfd f0, 0xa0(r1)
/* 804D2C58  EC 40 10 28 */	fsubs f2, f0, f2
/* 804D2C5C  C0 3E 00 74 */	lfs f1, 0x74(r30)
/* 804D2C60  FC 00 28 18 */	frsp f0, f5
/* 804D2C64  EC 01 00 32 */	fmuls f0, f1, f0
/* 804D2C68  EC 02 00 32 */	fmuls f0, f2, f0
/* 804D2C6C  EC 03 00 2A */	fadds f0, f3, f0
/* 804D2C70  EC 04 00 2A */	fadds f0, f4, f0
/* 804D2C74  FC 00 00 1E */	fctiwz f0, f0
/* 804D2C78  D8 01 00 A8 */	stfd f0, 0xa8(r1)
/* 804D2C7C  80 01 00 AC */	lwz r0, 0xac(r1)
/* 804D2C80  C0 59 00 08 */	lfs f2, 8(r25)
/* 804D2C84  C0 3E 00 4C */	lfs f1, 0x4c(r30)
/* 804D2C88  C0 19 00 04 */	lfs f0, 4(r25)
/* 804D2C8C  EC 21 00 2A */	fadds f1, f1, f0
/* 804D2C90  C0 19 00 00 */	lfs f0, 0(r25)
/* 804D2C94  D0 1A 04 D0 */	stfs f0, 0x4d0(r26)
/* 804D2C98  D0 3A 04 D4 */	stfs f1, 0x4d4(r26)
/* 804D2C9C  D0 5A 04 D8 */	stfs f2, 0x4d8(r26)
lbl_804D2CA0:
/* 804D2CA0  C0 3A 04 D0 */	lfs f1, 0x4d0(r26)
/* 804D2CA4  C0 5E 00 78 */	lfs f2, 0x78(r30)
/* 804D2CA8  54 04 04 38 */	rlwinm r4, r0, 0, 0x10, 0x1c
/* 804D2CAC  3C 60 80 44 */	lis r3, sincosTable___5JMath@ha
/* 804D2CB0  38 03 9A 20 */	addi r0, r3, sincosTable___5JMath@l
/* 804D2CB4  7C 60 22 14 */	add r3, r0, r4
/* 804D2CB8  C0 03 00 00 */	lfs f0, 0(r3)
/* 804D2CBC  EC 02 00 32 */	fmuls f0, f2, f0
/* 804D2CC0  EC 01 00 2A */	fadds f0, f1, f0
/* 804D2CC4  D0 1A 04 D0 */	stfs f0, 0x4d0(r26)
/* 804D2CC8  C0 3A 04 D8 */	lfs f1, 0x4d8(r26)
/* 804D2CCC  C0 03 00 04 */	lfs f0, 4(r3)
/* 804D2CD0  EC 02 00 32 */	fmuls f0, f2, f0
/* 804D2CD4  EC 01 00 2A */	fadds f0, f1, f0
/* 804D2CD8  D0 1A 04 D8 */	stfs f0, 0x4d8(r26)
/* 804D2CDC  C0 1A 04 D0 */	lfs f0, 0x4d0(r26)
/* 804D2CE0  D0 1A 04 BC */	stfs f0, 0x4bc(r26)
/* 804D2CE4  C0 1A 04 D4 */	lfs f0, 0x4d4(r26)
/* 804D2CE8  D0 1A 04 C0 */	stfs f0, 0x4c0(r26)
/* 804D2CEC  C0 1A 04 D8 */	lfs f0, 0x4d8(r26)
/* 804D2CF0  D0 1A 04 C4 */	stfs f0, 0x4c4(r26)
/* 804D2CF4  48 00 00 20 */	b lbl_804D2D14
lbl_804D2CF8:
/* 804D2CF8  C3 DE 00 28 */	lfs f30, 0x28(r30)
/* 804D2CFC  C0 01 00 68 */	lfs f0, 0x68(r1)
/* 804D2D00  D0 1A 0A B0 */	stfs f0, 0xab0(r26)
/* 804D2D04  C0 01 00 6C */	lfs f0, 0x6c(r1)
/* 804D2D08  D0 1A 0A B4 */	stfs f0, 0xab4(r26)
/* 804D2D0C  C0 01 00 70 */	lfs f0, 0x70(r1)
/* 804D2D10  D0 1A 0A B8 */	stfs f0, 0xab8(r26)
lbl_804D2D14:
/* 804D2D14  FC 1E E8 40 */	fcmpo cr0, f30, f29
/* 804D2D18  41 81 FA 64 */	bgt lbl_804D277C
/* 804D2D1C  3C 60 80 4D */	lis r3, __vt__8cM3dGLin@ha
/* 804D2D20  38 03 4F 48 */	addi r0, r3, __vt__8cM3dGLin@l
/* 804D2D24  90 01 00 8C */	stw r0, 0x8c(r1)
/* 804D2D28  48 00 00 1C */	b lbl_804D2D44
lbl_804D2D2C:
/* 804D2D2C  34 1A 08 EC */	addic. r0, r26, 0x8ec
/* 804D2D30  41 82 00 14 */	beq lbl_804D2D44
/* 804D2D34  38 9A 08 EC */	addi r4, r26, 0x8ec
/* 804D2D38  38 7A 04 D0 */	addi r3, r26, 0x4d0
/* 804D2D3C  7C 65 1B 78 */	mr r5, r3
/* 804D2D40  4B E7 43 50 */	b PSVECAdd
lbl_804D2D44:
/* 804D2D44  38 7A 06 4C */	addi r3, r26, 0x64c
/* 804D2D48  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha
/* 804D2D4C  38 84 61 C0 */	addi r4, r4, g_dComIfG_gameInfo@l
/* 804D2D50  3B E4 0F 38 */	addi r31, r4, 0xf38
/* 804D2D54  7F E4 FB 78 */	mr r4, r31
/* 804D2D58  4B BA 3D 54 */	b CrrPos__9dBgS_AcchFR4dBgS
/* 804D2D5C  80 1A 0A 64 */	lwz r0, 0xa64(r26)
/* 804D2D60  28 00 00 00 */	cmplwi r0, 0
/* 804D2D64  40 82 02 58 */	bne lbl_804D2FBC
/* 804D2D68  88 1A 0A 6D */	lbz r0, 0xa6d(r26)
/* 804D2D6C  28 00 00 00 */	cmplwi r0, 0
/* 804D2D70  40 82 02 2C */	bne lbl_804D2F9C
/* 804D2D74  80 1A 06 78 */	lwz r0, 0x678(r26)
/* 804D2D78  54 00 06 B5 */	rlwinm. r0, r0, 0, 0x1a, 0x1a
/* 804D2D7C  40 82 02 40 */	bne lbl_804D2FBC
/* 804D2D80  A8 1A 04 DC */	lha r0, 0x4dc(r26)
/* 804D2D84  2C 00 00 00 */	cmpwi r0, 0
/* 804D2D88  40 80 00 68 */	bge lbl_804D2DF0
/* 804D2D8C  38 00 00 01 */	li r0, 1
/* 804D2D90  98 1A 0A 6D */	stb r0, 0xa6d(r26)
/* 804D2D94  C0 1A 05 2C */	lfs f0, 0x52c(r26)
/* 804D2D98  D0 1A 04 FC */	stfs f0, 0x4fc(r26)
/* 804D2D9C  7F A3 EB 78 */	mr r3, r29
/* 804D2DA0  4B C3 AC 10 */	b getSpinnerRideSpeedF__9daAlink_cFv
/* 804D2DA4  C0 1A 04 FC */	lfs f0, 0x4fc(r26)
/* 804D2DA8  FC 00 08 40 */	fcmpo cr0, f0, f1
/* 804D2DAC  40 81 00 10 */	ble lbl_804D2DBC
/* 804D2DB0  7F A3 EB 78 */	mr r3, r29
/* 804D2DB4  4B C3 AB FC */	b getSpinnerRideSpeedF__9daAlink_cFv
/* 804D2DB8  D0 3A 04 FC */	stfs f1, 0x4fc(r26)
lbl_804D2DBC:
/* 804D2DBC  A8 1A 04 DC */	lha r0, 0x4dc(r26)
/* 804D2DC0  54 00 04 38 */	rlwinm r0, r0, 0, 0x10, 0x1c
/* 804D2DC4  3C 60 80 44 */	lis r3, sincosTable___5JMath@ha
/* 804D2DC8  38 63 9A 20 */	addi r3, r3, sincosTable___5JMath@l
/* 804D2DCC  7F A3 04 2E */	lfsx f29, r3, r0
/* 804D2DD0  7F A3 EB 78 */	mr r3, r29
/* 804D2DD4  4B C3 AB 88 */	b getSpinnerJumpRate__9daAlink_cCFv
/* 804D2DD8  FC 00 08 50 */	fneg f0, f1
/* 804D2DDC  EC 20 07 72 */	fmuls f1, f0, f29
/* 804D2DE0  C0 1A 04 FC */	lfs f0, 0x4fc(r26)
/* 804D2DE4  EC 00 00 72 */	fmuls f0, f0, f1
/* 804D2DE8  D0 1A 04 FC */	stfs f0, 0x4fc(r26)
/* 804D2DEC  48 00 01 D0 */	b lbl_804D2FBC
lbl_804D2DF0:
/* 804D2DF0  C0 3A 06 E4 */	lfs f1, 0x6e4(r26)
/* 804D2DF4  C0 1A 04 D4 */	lfs f0, 0x4d4(r26)
/* 804D2DF8  EF C1 00 28 */	fsubs f30, f1, f0
/* 804D2DFC  C0 5A 04 D8 */	lfs f2, 0x4d8(r26)
/* 804D2E00  C0 1A 04 D0 */	lfs f0, 0x4d0(r26)
/* 804D2E04  D0 01 00 14 */	stfs f0, 0x14(r1)
/* 804D2E08  C0 3E 00 28 */	lfs f1, 0x28(r30)
/* 804D2E0C  D0 21 00 18 */	stfs f1, 0x18(r1)
/* 804D2E10  D0 41 00 1C */	stfs f2, 0x1c(r1)
/* 804D2E14  C0 5A 04 C4 */	lfs f2, 0x4c4(r26)
/* 804D2E18  C0 1A 04 BC */	lfs f0, 0x4bc(r26)
/* 804D2E1C  D0 01 00 20 */	stfs f0, 0x20(r1)
/* 804D2E20  D0 21 00 24 */	stfs f1, 0x24(r1)
/* 804D2E24  D0 41 00 28 */	stfs f2, 0x28(r1)
/* 804D2E28  38 61 00 14 */	addi r3, r1, 0x14
/* 804D2E2C  38 81 00 20 */	addi r4, r1, 0x20
/* 804D2E30  4B E7 45 6C */	b PSVECSquareDistance
/* 804D2E34  C0 1E 00 28 */	lfs f0, 0x28(r30)
/* 804D2E38  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 804D2E3C  40 81 00 58 */	ble lbl_804D2E94
/* 804D2E40  FC 00 08 34 */	frsqrte f0, f1
/* 804D2E44  C8 9E 00 58 */	lfd f4, 0x58(r30)
/* 804D2E48  FC 44 00 32 */	fmul f2, f4, f0
/* 804D2E4C  C8 7E 00 60 */	lfd f3, 0x60(r30)
/* 804D2E50  FC 00 00 32 */	fmul f0, f0, f0
/* 804D2E54  FC 01 00 32 */	fmul f0, f1, f0
/* 804D2E58  FC 03 00 28 */	fsub f0, f3, f0
/* 804D2E5C  FC 02 00 32 */	fmul f0, f2, f0
/* 804D2E60  FC 44 00 32 */	fmul f2, f4, f0
/* 804D2E64  FC 00 00 32 */	fmul f0, f0, f0
/* 804D2E68  FC 01 00 32 */	fmul f0, f1, f0
/* 804D2E6C  FC 03 00 28 */	fsub f0, f3, f0
/* 804D2E70  FC 02 00 32 */	fmul f0, f2, f0
/* 804D2E74  FC 44 00 32 */	fmul f2, f4, f0
/* 804D2E78  FC 00 00 32 */	fmul f0, f0, f0
/* 804D2E7C  FC 01 00 32 */	fmul f0, f1, f0
/* 804D2E80  FC 03 00 28 */	fsub f0, f3, f0
/* 804D2E84  FC 02 00 32 */	fmul f0, f2, f0
/* 804D2E88  FF A1 00 32 */	fmul f29, f1, f0
/* 804D2E8C  FF A0 E8 18 */	frsp f29, f29
/* 804D2E90  48 00 00 90 */	b lbl_804D2F20
lbl_804D2E94:
/* 804D2E94  C8 1E 00 68 */	lfd f0, 0x68(r30)
/* 804D2E98  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 804D2E9C  40 80 00 10 */	bge lbl_804D2EAC
/* 804D2EA0  3C 60 80 45 */	lis r3, __float_nan@ha
/* 804D2EA4  C3 A3 0A E0 */	lfs f29, __float_nan@l(r3)
/* 804D2EA8  48 00 00 78 */	b lbl_804D2F20
lbl_804D2EAC:
/* 804D2EAC  D0 21 00 08 */	stfs f1, 8(r1)
/* 804D2EB0  80 81 00 08 */	lwz r4, 8(r1)
/* 804D2EB4  54 83 00 50 */	rlwinm r3, r4, 0, 1, 8
/* 804D2EB8  3C 00 7F 80 */	lis r0, 0x7f80
/* 804D2EBC  7C 03 00 00 */	cmpw r3, r0
/* 804D2EC0  41 82 00 14 */	beq lbl_804D2ED4
/* 804D2EC4  40 80 00 40 */	bge lbl_804D2F04
/* 804D2EC8  2C 03 00 00 */	cmpwi r3, 0
/* 804D2ECC  41 82 00 20 */	beq lbl_804D2EEC
/* 804D2ED0  48 00 00 34 */	b lbl_804D2F04
lbl_804D2ED4:
/* 804D2ED4  54 80 02 7F */	clrlwi. r0, r4, 9
/* 804D2ED8  41 82 00 0C */	beq lbl_804D2EE4
/* 804D2EDC  38 00 00 01 */	li r0, 1
/* 804D2EE0  48 00 00 28 */	b lbl_804D2F08
lbl_804D2EE4:
/* 804D2EE4  38 00 00 02 */	li r0, 2
/* 804D2EE8  48 00 00 20 */	b lbl_804D2F08
lbl_804D2EEC:
/* 804D2EEC  54 80 02 7F */	clrlwi. r0, r4, 9
/* 804D2EF0  41 82 00 0C */	beq lbl_804D2EFC
/* 804D2EF4  38 00 00 05 */	li r0, 5
/* 804D2EF8  48 00 00 10 */	b lbl_804D2F08
lbl_804D2EFC:
/* 804D2EFC  38 00 00 03 */	li r0, 3
/* 804D2F00  48 00 00 08 */	b lbl_804D2F08
lbl_804D2F04:
/* 804D2F04  38 00 00 04 */	li r0, 4
lbl_804D2F08:
/* 804D2F08  2C 00 00 01 */	cmpwi r0, 1
/* 804D2F0C  40 82 00 10 */	bne lbl_804D2F1C
/* 804D2F10  3C 60 80 45 */	lis r3, __float_nan@ha
/* 804D2F14  C3 A3 0A E0 */	lfs f29, __float_nan@l(r3)
/* 804D2F18  48 00 00 08 */	b lbl_804D2F20
lbl_804D2F1C:
/* 804D2F1C  FF A0 08 90 */	fmr f29, f1
lbl_804D2F20:
/* 804D2F20  38 7A 07 3C */	addi r3, r26, 0x73c
/* 804D2F24  A8 9A 04 DE */	lha r4, 0x4de(r26)
/* 804D2F28  4B B4 AB BC */	b fopAcM_getPolygonAngle__FRC13cBgS_PolyInfos
/* 804D2F2C  54 60 04 38 */	rlwinm r0, r3, 0, 0x10, 0x1c
/* 804D2F30  3C 60 80 44 */	lis r3, sincosTable___5JMath@ha
/* 804D2F34  38 63 9A 20 */	addi r3, r3, sincosTable___5JMath@l
/* 804D2F38  7C 03 04 2E */	lfsx f0, r3, r0
/* 804D2F3C  EC 5D 00 32 */	fmuls f2, f29, f0
/* 804D2F40  C0 1E 00 28 */	lfs f0, 0x28(r30)
/* 804D2F44  FC 02 00 40 */	fcmpo cr0, f2, f0
/* 804D2F48  40 80 00 08 */	bge lbl_804D2F50
/* 804D2F4C  FC 40 00 90 */	fmr f2, f0
lbl_804D2F50:
/* 804D2F50  C0 3E 00 28 */	lfs f1, 0x28(r30)
/* 804D2F54  FC 1E 08 40 */	fcmpo cr0, f30, f1
/* 804D2F58  40 80 00 38 */	bge lbl_804D2F90
/* 804D2F5C  C0 1A 05 BC */	lfs f0, 0x5bc(r26)
/* 804D2F60  FC 00 00 50 */	fneg f0, f0
/* 804D2F64  EC 00 10 28 */	fsubs f0, f0, f2
/* 804D2F68  FC 1E 00 40 */	fcmpo cr0, f30, f0
/* 804D2F6C  4C 41 13 82 */	cror 2, 1, 2
/* 804D2F70  40 82 00 20 */	bne lbl_804D2F90
/* 804D2F74  C0 1A 06 E4 */	lfs f0, 0x6e4(r26)
/* 804D2F78  D0 1A 04 D4 */	stfs f0, 0x4d4(r26)
/* 804D2F7C  80 1A 06 78 */	lwz r0, 0x678(r26)
/* 804D2F80  60 00 00 20 */	ori r0, r0, 0x20
/* 804D2F84  90 1A 06 78 */	stw r0, 0x678(r26)
/* 804D2F88  D0 3A 04 FC */	stfs f1, 0x4fc(r26)
/* 804D2F8C  48 00 00 30 */	b lbl_804D2FBC
lbl_804D2F90:
/* 804D2F90  38 00 00 01 */	li r0, 1
/* 804D2F94  98 1A 0A 6D */	stb r0, 0xa6d(r26)
/* 804D2F98  48 00 00 24 */	b lbl_804D2FBC
lbl_804D2F9C:
/* 804D2F9C  80 1A 06 78 */	lwz r0, 0x678(r26)
/* 804D2FA0  54 00 06 B5 */	rlwinm. r0, r0, 0, 0x1a, 0x1a
/* 804D2FA4  41 82 00 10 */	beq lbl_804D2FB4
/* 804D2FA8  38 00 00 00 */	li r0, 0
/* 804D2FAC  98 1A 0A 6D */	stb r0, 0xa6d(r26)
/* 804D2FB0  48 00 00 0C */	b lbl_804D2FBC
lbl_804D2FB4:
/* 804D2FB4  38 00 00 01 */	li r0, 1
/* 804D2FB8  98 1A 0A 6D */	stb r0, 0xa6d(r26)
lbl_804D2FBC:
/* 804D2FBC  80 1A 06 78 */	lwz r0, 0x678(r26)
/* 804D2FC0  54 00 05 29 */	rlwinm. r0, r0, 0, 0x14, 0x14
/* 804D2FC4  41 82 00 50 */	beq lbl_804D3014
/* 804D2FC8  C0 3A 08 18 */	lfs f1, 0x818(r26)
/* 804D2FCC  C0 1A 04 D4 */	lfs f0, 0x4d4(r26)
/* 804D2FD0  EF A1 00 28 */	fsubs f29, f1, f0
/* 804D2FD4  C0 1E 00 7C */	lfs f0, 0x7c(r30)
/* 804D2FD8  FC 1D 00 40 */	fcmpo cr0, f29, f0
/* 804D2FDC  41 81 00 28 */	bgt lbl_804D3004
/* 804D2FE0  7F E3 FB 78 */	mr r3, r31
/* 804D2FE4  38 9A 07 CC */	addi r4, r26, 0x7cc
/* 804D2FE8  4B BA 1E 68 */	b GetPolyAtt0__4dBgSFRC13cBgS_PolyInfo
/* 804D2FEC  2C 03 00 06 */	cmpwi r3, 6
/* 804D2FF0  40 82 00 24 */	bne lbl_804D3014
/* 804D2FF4  C0 1E 00 28 */	lfs f0, 0x28(r30)
/* 804D2FF8  FC 1D 00 40 */	fcmpo cr0, f29, f0
/* 804D2FFC  4C 41 13 82 */	cror 2, 1, 2
/* 804D3000  40 82 00 14 */	bne lbl_804D3014
lbl_804D3004:
/* 804D3004  38 00 00 01 */	li r0, 1
/* 804D3008  98 1A 0A 71 */	stb r0, 0xa71(r26)
/* 804D300C  38 60 00 00 */	li r3, 0
/* 804D3010  48 00 00 08 */	b lbl_804D3018
lbl_804D3014:
/* 804D3014  38 60 00 01 */	li r3, 1
lbl_804D3018:
/* 804D3018  E3 E1 00 F8 */	psq_l f31, 248(r1), 0, 0 /* qr0 */
/* 804D301C  CB E1 00 F0 */	lfd f31, 0xf0(r1)
/* 804D3020  E3 C1 00 E8 */	psq_l f30, 232(r1), 0, 0 /* qr0 */
/* 804D3024  CB C1 00 E0 */	lfd f30, 0xe0(r1)
/* 804D3028  E3 A1 00 D8 */	psq_l f29, 216(r1), 0, 0 /* qr0 */
/* 804D302C  CB A1 00 D0 */	lfd f29, 0xd0(r1)
/* 804D3030  39 61 00 D0 */	addi r11, r1, 0xd0
/* 804D3034  4B E8 F1 E4 */	b _restgpr_25
/* 804D3038  80 01 01 04 */	lwz r0, 0x104(r1)
/* 804D303C  7C 08 03 A6 */	mtlr r0
/* 804D3040  38 21 01 00 */	addi r1, r1, 0x100
/* 804D3044  4E 80 00 20 */	blr 
