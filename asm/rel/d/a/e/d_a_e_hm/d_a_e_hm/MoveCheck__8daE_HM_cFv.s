lbl_806E2694:
/* 806E2694  94 21 FF 10 */	stwu r1, -0xf0(r1)
/* 806E2698  7C 08 02 A6 */	mflr r0
/* 806E269C  90 01 00 F4 */	stw r0, 0xf4(r1)
/* 806E26A0  39 61 00 F0 */	addi r11, r1, 0xf0
/* 806E26A4  4B C7 FB 38 */	b _savegpr_29
/* 806E26A8  7C 7F 1B 78 */	mr r31, r3
/* 806E26AC  3C 60 80 6E */	lis r3, lit_3791@ha
/* 806E26B0  3B C3 59 20 */	addi r30, r3, lit_3791@l
/* 806E26B4  C0 5E 00 04 */	lfs f2, 4(r30)
/* 806E26B8  D0 41 00 48 */	stfs f2, 0x48(r1)
/* 806E26BC  C0 1E 00 F0 */	lfs f0, 0xf0(r30)
/* 806E26C0  D0 01 00 4C */	stfs f0, 0x4c(r1)
/* 806E26C4  D0 41 00 50 */	stfs f2, 0x50(r1)
/* 806E26C8  C0 3E 01 08 */	lfs f1, 0x108(r30)
/* 806E26CC  C0 1F 05 2C */	lfs f0, 0x52c(r31)
/* 806E26D0  EC 21 00 32 */	fmuls f1, f1, f0
/* 806E26D4  D0 41 00 3C */	stfs f2, 0x3c(r1)
/* 806E26D8  C0 1E 00 EC */	lfs f0, 0xec(r30)
/* 806E26DC  D0 01 00 40 */	stfs f0, 0x40(r1)
/* 806E26E0  D0 21 00 44 */	stfs f1, 0x44(r1)
/* 806E26E4  38 61 00 68 */	addi r3, r1, 0x68
/* 806E26E8  4B 99 55 80 */	b __ct__11dBgS_LinChkFv
/* 806E26EC  38 7F 04 D0 */	addi r3, r31, 0x4d0
/* 806E26F0  4B 92 A6 74 */	b transS__14mDoMtx_stack_cFRC4cXyz
/* 806E26F4  38 7F 05 CC */	addi r3, r31, 0x5cc
/* 806E26F8  4B 92 A8 4C */	b ZXYrotM__14mDoMtx_stack_cFRC5csXyz
/* 806E26FC  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 806E2700  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 806E2704  A8 9F 04 DE */	lha r4, 0x4de(r31)
/* 806E2708  4B 92 9D 2C */	b mDoMtx_YrotM__FPA4_fs
/* 806E270C  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 806E2710  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 806E2714  38 81 00 48 */	addi r4, r1, 0x48
/* 806E2718  7C 85 23 78 */	mr r5, r4
/* 806E271C  4B C6 46 50 */	b PSMTXMultVec
/* 806E2720  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 806E2724  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 806E2728  38 81 00 3C */	addi r4, r1, 0x3c
/* 806E272C  7C 85 23 78 */	mr r5, r4
/* 806E2730  4B C6 46 3C */	b PSMTXMultVec
/* 806E2734  38 61 00 68 */	addi r3, r1, 0x68
/* 806E2738  38 81 00 48 */	addi r4, r1, 0x48
/* 806E273C  38 A1 00 3C */	addi r5, r1, 0x3c
/* 806E2740  38 C0 00 00 */	li r6, 0
/* 806E2744  4B 99 56 20 */	b Set__11dBgS_LinChkFPC4cXyzPC4cXyzPC10fopAc_ac_c
/* 806E2748  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 806E274C  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 806E2750  3B A3 0F 38 */	addi r29, r3, 0xf38
/* 806E2754  7F A3 EB 78 */	mr r3, r29
/* 806E2758  38 81 00 68 */	addi r4, r1, 0x68
/* 806E275C  4B 99 1C 58 */	b LineCross__4cBgSFP11cBgS_LinChk
/* 806E2760  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 806E2764  40 82 00 94 */	bne lbl_806E27F8
/* 806E2768  38 61 00 0C */	addi r3, r1, 0xc
/* 806E276C  38 9F 04 A8 */	addi r4, r31, 0x4a8
/* 806E2770  38 BF 04 D0 */	addi r5, r31, 0x4d0
/* 806E2774  4B B8 43 C0 */	b __mi__4cXyzCFRC3Vec
/* 806E2778  C0 01 00 0C */	lfs f0, 0xc(r1)
/* 806E277C  D0 01 00 30 */	stfs f0, 0x30(r1)
/* 806E2780  C0 01 00 10 */	lfs f0, 0x10(r1)
/* 806E2784  D0 01 00 34 */	stfs f0, 0x34(r1)
/* 806E2788  C0 01 00 14 */	lfs f0, 0x14(r1)
/* 806E278C  D0 01 00 38 */	stfs f0, 0x38(r1)
/* 806E2790  C0 3E 00 00 */	lfs f1, 0(r30)
/* 806E2794  4B B8 51 F8 */	b cM_rndFX__Ff
/* 806E2798  C0 01 00 30 */	lfs f0, 0x30(r1)
/* 806E279C  EC 00 08 2A */	fadds f0, f0, f1
/* 806E27A0  D0 01 00 30 */	stfs f0, 0x30(r1)
/* 806E27A4  C0 3E 00 00 */	lfs f1, 0(r30)
/* 806E27A8  4B B8 51 E4 */	b cM_rndFX__Ff
/* 806E27AC  C0 01 00 38 */	lfs f0, 0x38(r1)
/* 806E27B0  EC 40 08 2A */	fadds f2, f0, f1
/* 806E27B4  D0 41 00 38 */	stfs f2, 0x38(r1)
/* 806E27B8  C0 21 00 30 */	lfs f1, 0x30(r1)
/* 806E27BC  4B B8 4E B8 */	b cM_atan2s__Fff
/* 806E27C0  B0 7F 05 B4 */	sth r3, 0x5b4(r31)
/* 806E27C4  C0 3E 00 80 */	lfs f1, 0x80(r30)
/* 806E27C8  4B B8 51 C4 */	b cM_rndFX__Ff
/* 806E27CC  C0 1E 00 F4 */	lfs f0, 0xf4(r30)
/* 806E27D0  EC 00 08 2A */	fadds f0, f0, f1
/* 806E27D4  FC 00 00 1E */	fctiwz f0, f0
/* 806E27D8  D8 01 00 D8 */	stfd f0, 0xd8(r1)
/* 806E27DC  80 01 00 DC */	lwz r0, 0xdc(r1)
/* 806E27E0  90 1F 05 B8 */	stw r0, 0x5b8(r31)
/* 806E27E4  38 61 00 68 */	addi r3, r1, 0x68
/* 806E27E8  38 80 FF FF */	li r4, -1
/* 806E27EC  4B 99 54 F0 */	b __dt__11dBgS_LinChkFv
/* 806E27F0  38 60 00 01 */	li r3, 1
/* 806E27F4  48 00 01 AC */	b lbl_806E29A0
lbl_806E27F8:
/* 806E27F8  3C 60 80 6E */	lis r3, __vt__8cM3dGPla@ha
/* 806E27FC  38 03 5B AC */	addi r0, r3, __vt__8cM3dGPla@l
/* 806E2800  90 01 00 64 */	stw r0, 0x64(r1)
/* 806E2804  7F A3 EB 78 */	mr r3, r29
/* 806E2808  38 81 00 7C */	addi r4, r1, 0x7c
/* 806E280C  38 A1 00 54 */	addi r5, r1, 0x54
/* 806E2810  4B 99 1F 34 */	b GetTriPla__4cBgSCFRC13cBgS_PolyInfoP8cM3dGPla
/* 806E2814  C0 1E 00 04 */	lfs f0, 4(r30)
/* 806E2818  D0 01 00 24 */	stfs f0, 0x24(r1)
/* 806E281C  D0 01 00 28 */	stfs f0, 0x28(r1)
/* 806E2820  D0 01 00 2C */	stfs f0, 0x2c(r1)
/* 806E2824  D0 01 00 18 */	stfs f0, 0x18(r1)
/* 806E2828  C0 01 00 58 */	lfs f0, 0x58(r1)
/* 806E282C  D0 01 00 1C */	stfs f0, 0x1c(r1)
/* 806E2830  C0 01 00 5C */	lfs f0, 0x5c(r1)
/* 806E2834  D0 01 00 20 */	stfs f0, 0x20(r1)
/* 806E2838  38 61 00 24 */	addi r3, r1, 0x24
/* 806E283C  38 81 00 18 */	addi r4, r1, 0x18
/* 806E2840  4B C6 4B 5C */	b PSVECSquareDistance
/* 806E2844  C0 1E 00 04 */	lfs f0, 4(r30)
/* 806E2848  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 806E284C  40 81 00 58 */	ble lbl_806E28A4
/* 806E2850  FC 00 08 34 */	frsqrte f0, f1
/* 806E2854  C8 9E 00 10 */	lfd f4, 0x10(r30)
/* 806E2858  FC 44 00 32 */	fmul f2, f4, f0
/* 806E285C  C8 7E 00 18 */	lfd f3, 0x18(r30)
/* 806E2860  FC 00 00 32 */	fmul f0, f0, f0
/* 806E2864  FC 01 00 32 */	fmul f0, f1, f0
/* 806E2868  FC 03 00 28 */	fsub f0, f3, f0
/* 806E286C  FC 02 00 32 */	fmul f0, f2, f0
/* 806E2870  FC 44 00 32 */	fmul f2, f4, f0
/* 806E2874  FC 00 00 32 */	fmul f0, f0, f0
/* 806E2878  FC 01 00 32 */	fmul f0, f1, f0
/* 806E287C  FC 03 00 28 */	fsub f0, f3, f0
/* 806E2880  FC 02 00 32 */	fmul f0, f2, f0
/* 806E2884  FC 44 00 32 */	fmul f2, f4, f0
/* 806E2888  FC 00 00 32 */	fmul f0, f0, f0
/* 806E288C  FC 01 00 32 */	fmul f0, f1, f0
/* 806E2890  FC 03 00 28 */	fsub f0, f3, f0
/* 806E2894  FC 02 00 32 */	fmul f0, f2, f0
/* 806E2898  FC 41 00 32 */	fmul f2, f1, f0
/* 806E289C  FC 40 10 18 */	frsp f2, f2
/* 806E28A0  48 00 00 90 */	b lbl_806E2930
lbl_806E28A4:
/* 806E28A4  C8 1E 00 20 */	lfd f0, 0x20(r30)
/* 806E28A8  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 806E28AC  40 80 00 10 */	bge lbl_806E28BC
/* 806E28B0  3C 60 80 45 */	lis r3, __float_nan@ha
/* 806E28B4  C0 43 0A E0 */	lfs f2, __float_nan@l(r3)
/* 806E28B8  48 00 00 78 */	b lbl_806E2930
lbl_806E28BC:
/* 806E28BC  D0 21 00 08 */	stfs f1, 8(r1)
/* 806E28C0  80 81 00 08 */	lwz r4, 8(r1)
/* 806E28C4  54 83 00 50 */	rlwinm r3, r4, 0, 1, 8
/* 806E28C8  3C 00 7F 80 */	lis r0, 0x7f80
/* 806E28CC  7C 03 00 00 */	cmpw r3, r0
/* 806E28D0  41 82 00 14 */	beq lbl_806E28E4
/* 806E28D4  40 80 00 40 */	bge lbl_806E2914
/* 806E28D8  2C 03 00 00 */	cmpwi r3, 0
/* 806E28DC  41 82 00 20 */	beq lbl_806E28FC
/* 806E28E0  48 00 00 34 */	b lbl_806E2914
lbl_806E28E4:
/* 806E28E4  54 80 02 7F */	clrlwi. r0, r4, 9
/* 806E28E8  41 82 00 0C */	beq lbl_806E28F4
/* 806E28EC  38 00 00 01 */	li r0, 1
/* 806E28F0  48 00 00 28 */	b lbl_806E2918
lbl_806E28F4:
/* 806E28F4  38 00 00 02 */	li r0, 2
/* 806E28F8  48 00 00 20 */	b lbl_806E2918
lbl_806E28FC:
/* 806E28FC  54 80 02 7F */	clrlwi. r0, r4, 9
/* 806E2900  41 82 00 0C */	beq lbl_806E290C
/* 806E2904  38 00 00 05 */	li r0, 5
/* 806E2908  48 00 00 10 */	b lbl_806E2918
lbl_806E290C:
/* 806E290C  38 00 00 03 */	li r0, 3
/* 806E2910  48 00 00 08 */	b lbl_806E2918
lbl_806E2914:
/* 806E2914  38 00 00 04 */	li r0, 4
lbl_806E2918:
/* 806E2918  2C 00 00 01 */	cmpwi r0, 1
/* 806E291C  40 82 00 10 */	bne lbl_806E292C
/* 806E2920  3C 60 80 45 */	lis r3, __float_nan@ha
/* 806E2924  C0 43 0A E0 */	lfs f2, __float_nan@l(r3)
/* 806E2928  48 00 00 08 */	b lbl_806E2930
lbl_806E292C:
/* 806E292C  FC 40 08 90 */	fmr f2, f1
lbl_806E2930:
/* 806E2930  C0 21 00 54 */	lfs f1, 0x54(r1)
/* 806E2934  4B B8 4D 40 */	b cM_atan2s__Fff
/* 806E2938  7C 03 00 D0 */	neg r0, r3
/* 806E293C  7C 1D 07 34 */	extsh r29, r0
/* 806E2940  C0 21 00 5C */	lfs f1, 0x5c(r1)
/* 806E2944  C0 41 00 58 */	lfs f2, 0x58(r1)
/* 806E2948  4B B8 4D 2C */	b cM_atan2s__Fff
/* 806E294C  7C 64 1B 78 */	mr r4, r3
/* 806E2950  C0 01 00 98 */	lfs f0, 0x98(r1)
/* 806E2954  D0 1F 04 D0 */	stfs f0, 0x4d0(r31)
/* 806E2958  C0 01 00 9C */	lfs f0, 0x9c(r1)
/* 806E295C  D0 1F 04 D4 */	stfs f0, 0x4d4(r31)
/* 806E2960  C0 01 00 A0 */	lfs f0, 0xa0(r1)
/* 806E2964  D0 1F 04 D8 */	stfs f0, 0x4d8(r31)
/* 806E2968  3C 60 80 6E */	lis r3, __vt__8cM3dGPla@ha
/* 806E296C  38 03 5B AC */	addi r0, r3, __vt__8cM3dGPla@l
/* 806E2970  90 01 00 64 */	stw r0, 0x64(r1)
/* 806E2974  38 7F 05 CC */	addi r3, r31, 0x5cc
/* 806E2978  38 A0 01 50 */	li r5, 0x150
/* 806E297C  4B B8 E2 14 */	b cLib_chaseAngleS__FPsss
/* 806E2980  38 7F 05 D0 */	addi r3, r31, 0x5d0
/* 806E2984  7F A4 EB 78 */	mr r4, r29
/* 806E2988  38 A0 01 50 */	li r5, 0x150
/* 806E298C  4B B8 E2 04 */	b cLib_chaseAngleS__FPsss
/* 806E2990  38 61 00 68 */	addi r3, r1, 0x68
/* 806E2994  38 80 FF FF */	li r4, -1
/* 806E2998  4B 99 53 44 */	b __dt__11dBgS_LinChkFv
/* 806E299C  38 60 00 00 */	li r3, 0
lbl_806E29A0:
/* 806E29A0  39 61 00 F0 */	addi r11, r1, 0xf0
/* 806E29A4  4B C7 F8 84 */	b _restgpr_29
/* 806E29A8  80 01 00 F4 */	lwz r0, 0xf4(r1)
/* 806E29AC  7C 08 03 A6 */	mtlr r0
/* 806E29B0  38 21 00 F0 */	addi r1, r1, 0xf0
/* 806E29B4  4E 80 00 20 */	blr 
