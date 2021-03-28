lbl_80CA2368:
/* 80CA2368  94 21 FF 20 */	stwu r1, -0xe0(r1)
/* 80CA236C  7C 08 02 A6 */	mflr r0
/* 80CA2370  90 01 00 E4 */	stw r0, 0xe4(r1)
/* 80CA2374  DB E1 00 D0 */	stfd f31, 0xd0(r1)
/* 80CA2378  F3 E1 00 D8 */	psq_st f31, 216(r1), 0, 0 /* qr0 */
/* 80CA237C  39 61 00 D0 */	addi r11, r1, 0xd0
/* 80CA2380  4B 6B FE 5C */	b _savegpr_29
/* 80CA2384  7C 7F 1B 78 */	mr r31, r3
/* 80CA2388  3C 60 80 CA */	lis r3, lit_3774@ha
/* 80CA238C  3B C3 31 BC */	addi r30, r3, lit_3774@l
/* 80CA2390  80 1F 07 D0 */	lwz r0, 0x7d0(r31)
/* 80CA2394  2C 00 00 00 */	cmpwi r0, 0
/* 80CA2398  40 82 00 48 */	bne lbl_80CA23E0
/* 80CA239C  C0 1E 00 1C */	lfs f0, 0x1c(r30)
/* 80CA23A0  D0 1F 05 2C */	stfs f0, 0x52c(r31)
/* 80CA23A4  C0 1E 00 A8 */	lfs f0, 0xa8(r30)
/* 80CA23A8  D0 1F 05 30 */	stfs f0, 0x530(r31)
/* 80CA23AC  C0 1E 00 B0 */	lfs f0, 0xb0(r30)
/* 80CA23B0  D0 1F 05 34 */	stfs f0, 0x534(r31)
/* 80CA23B4  38 00 00 00 */	li r0, 0
/* 80CA23B8  B0 1F 07 D4 */	sth r0, 0x7d4(r31)
/* 80CA23BC  B0 1F 07 D6 */	sth r0, 0x7d6(r31)
/* 80CA23C0  B0 1F 07 D8 */	sth r0, 0x7d8(r31)
/* 80CA23C4  B0 1F 07 DA */	sth r0, 0x7da(r31)
/* 80CA23C8  B0 1F 07 DC */	sth r0, 0x7dc(r31)
/* 80CA23CC  B0 1F 07 DE */	sth r0, 0x7de(r31)
/* 80CA23D0  80 7F 07 D0 */	lwz r3, 0x7d0(r31)
/* 80CA23D4  38 03 00 01 */	addi r0, r3, 1
/* 80CA23D8  90 1F 07 D0 */	stw r0, 0x7d0(r31)
/* 80CA23DC  48 00 02 5C */	b lbl_80CA2638
lbl_80CA23E0:
/* 80CA23E0  2C 00 FF FF */	cmpwi r0, -1
/* 80CA23E4  40 82 00 2C */	bne lbl_80CA2410
/* 80CA23E8  C0 1E 00 1C */	lfs f0, 0x1c(r30)
/* 80CA23EC  D0 1F 05 30 */	stfs f0, 0x530(r31)
/* 80CA23F0  D0 1F 05 34 */	stfs f0, 0x534(r31)
/* 80CA23F4  C0 1F 04 D0 */	lfs f0, 0x4d0(r31)
/* 80CA23F8  D0 1F 04 A8 */	stfs f0, 0x4a8(r31)
/* 80CA23FC  C0 1F 04 D4 */	lfs f0, 0x4d4(r31)
/* 80CA2400  D0 1F 04 AC */	stfs f0, 0x4ac(r31)
/* 80CA2404  C0 1F 04 D8 */	lfs f0, 0x4d8(r31)
/* 80CA2408  D0 1F 04 B0 */	stfs f0, 0x4b0(r31)
/* 80CA240C  48 00 02 2C */	b lbl_80CA2638
lbl_80CA2410:
/* 80CA2410  38 61 00 44 */	addi r3, r1, 0x44
/* 80CA2414  4B 3D 58 54 */	b __ct__11dBgS_LinChkFv
/* 80CA2418  7F E3 FB 78 */	mr r3, r31
/* 80CA241C  38 80 00 00 */	li r4, 0
/* 80CA2420  4B 37 82 AC */	b fopAcM_posMoveF__FP10fopAc_ac_cPC4cXyz
/* 80CA2424  38 61 00 9C */	addi r3, r1, 0x9c
/* 80CA2428  4B 3D 6A 40 */	b SetObj__16dBgS_PolyPassChkFv
/* 80CA242C  38 61 00 44 */	addi r3, r1, 0x44
/* 80CA2430  38 9F 04 BC */	addi r4, r31, 0x4bc
/* 80CA2434  38 BF 04 D0 */	addi r5, r31, 0x4d0
/* 80CA2438  38 C0 00 00 */	li r6, 0
/* 80CA243C  4B 3D 59 28 */	b Set__11dBgS_LinChkFPC4cXyzPC4cXyzPC10fopAc_ac_c
/* 80CA2440  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80CA2444  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80CA2448  3B A3 0F 38 */	addi r29, r3, 0xf38
/* 80CA244C  7F A3 EB 78 */	mr r3, r29
/* 80CA2450  38 81 00 44 */	addi r4, r1, 0x44
/* 80CA2454  4B 3D 1F 60 */	b LineCross__4cBgSFP11cBgS_LinChk
/* 80CA2458  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80CA245C  41 82 01 D0 */	beq lbl_80CA262C
/* 80CA2460  3C 60 80 CA */	lis r3, __vt__8cM3dGPla@ha
/* 80CA2464  38 03 34 68 */	addi r0, r3, __vt__8cM3dGPla@l
/* 80CA2468  90 01 00 40 */	stw r0, 0x40(r1)
/* 80CA246C  7F A3 EB 78 */	mr r3, r29
/* 80CA2470  38 81 00 58 */	addi r4, r1, 0x58
/* 80CA2474  38 A1 00 30 */	addi r5, r1, 0x30
/* 80CA2478  4B 3D 22 CC */	b GetTriPla__4cBgSCFRC13cBgS_PolyInfoP8cM3dGPla
/* 80CA247C  C0 1E 00 1C */	lfs f0, 0x1c(r30)
/* 80CA2480  D0 01 00 24 */	stfs f0, 0x24(r1)
/* 80CA2484  D0 01 00 28 */	stfs f0, 0x28(r1)
/* 80CA2488  D0 01 00 2C */	stfs f0, 0x2c(r1)
/* 80CA248C  D0 01 00 18 */	stfs f0, 0x18(r1)
/* 80CA2490  C0 01 00 34 */	lfs f0, 0x34(r1)
/* 80CA2494  D0 01 00 1C */	stfs f0, 0x1c(r1)
/* 80CA2498  C0 01 00 38 */	lfs f0, 0x38(r1)
/* 80CA249C  D0 01 00 20 */	stfs f0, 0x20(r1)
/* 80CA24A0  38 61 00 24 */	addi r3, r1, 0x24
/* 80CA24A4  38 81 00 18 */	addi r4, r1, 0x18
/* 80CA24A8  4B 6A 4E F4 */	b PSVECSquareDistance
/* 80CA24AC  C0 1E 00 1C */	lfs f0, 0x1c(r30)
/* 80CA24B0  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80CA24B4  40 81 00 58 */	ble lbl_80CA250C
/* 80CA24B8  FC 00 08 34 */	frsqrte f0, f1
/* 80CA24BC  C8 9E 00 30 */	lfd f4, 0x30(r30)
/* 80CA24C0  FC 44 00 32 */	fmul f2, f4, f0
/* 80CA24C4  C8 7E 00 38 */	lfd f3, 0x38(r30)
/* 80CA24C8  FC 00 00 32 */	fmul f0, f0, f0
/* 80CA24CC  FC 01 00 32 */	fmul f0, f1, f0
/* 80CA24D0  FC 03 00 28 */	fsub f0, f3, f0
/* 80CA24D4  FC 02 00 32 */	fmul f0, f2, f0
/* 80CA24D8  FC 44 00 32 */	fmul f2, f4, f0
/* 80CA24DC  FC 00 00 32 */	fmul f0, f0, f0
/* 80CA24E0  FC 01 00 32 */	fmul f0, f1, f0
/* 80CA24E4  FC 03 00 28 */	fsub f0, f3, f0
/* 80CA24E8  FC 02 00 32 */	fmul f0, f2, f0
/* 80CA24EC  FC 44 00 32 */	fmul f2, f4, f0
/* 80CA24F0  FC 00 00 32 */	fmul f0, f0, f0
/* 80CA24F4  FC 01 00 32 */	fmul f0, f1, f0
/* 80CA24F8  FC 03 00 28 */	fsub f0, f3, f0
/* 80CA24FC  FC 02 00 32 */	fmul f0, f2, f0
/* 80CA2500  FF E1 00 32 */	fmul f31, f1, f0
/* 80CA2504  FF E0 F8 18 */	frsp f31, f31
/* 80CA2508  48 00 00 90 */	b lbl_80CA2598
lbl_80CA250C:
/* 80CA250C  C8 1E 00 40 */	lfd f0, 0x40(r30)
/* 80CA2510  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80CA2514  40 80 00 10 */	bge lbl_80CA2524
/* 80CA2518  3C 60 80 45 */	lis r3, __float_nan@ha
/* 80CA251C  C3 E3 0A E0 */	lfs f31, __float_nan@l(r3)
/* 80CA2520  48 00 00 78 */	b lbl_80CA2598
lbl_80CA2524:
/* 80CA2524  D0 21 00 08 */	stfs f1, 8(r1)
/* 80CA2528  80 81 00 08 */	lwz r4, 8(r1)
/* 80CA252C  54 83 00 50 */	rlwinm r3, r4, 0, 1, 8
/* 80CA2530  3C 00 7F 80 */	lis r0, 0x7f80
/* 80CA2534  7C 03 00 00 */	cmpw r3, r0
/* 80CA2538  41 82 00 14 */	beq lbl_80CA254C
/* 80CA253C  40 80 00 40 */	bge lbl_80CA257C
/* 80CA2540  2C 03 00 00 */	cmpwi r3, 0
/* 80CA2544  41 82 00 20 */	beq lbl_80CA2564
/* 80CA2548  48 00 00 34 */	b lbl_80CA257C
lbl_80CA254C:
/* 80CA254C  54 80 02 7F */	clrlwi. r0, r4, 9
/* 80CA2550  41 82 00 0C */	beq lbl_80CA255C
/* 80CA2554  38 00 00 01 */	li r0, 1
/* 80CA2558  48 00 00 28 */	b lbl_80CA2580
lbl_80CA255C:
/* 80CA255C  38 00 00 02 */	li r0, 2
/* 80CA2560  48 00 00 20 */	b lbl_80CA2580
lbl_80CA2564:
/* 80CA2564  54 80 02 7F */	clrlwi. r0, r4, 9
/* 80CA2568  41 82 00 0C */	beq lbl_80CA2574
/* 80CA256C  38 00 00 05 */	li r0, 5
/* 80CA2570  48 00 00 10 */	b lbl_80CA2580
lbl_80CA2574:
/* 80CA2574  38 00 00 03 */	li r0, 3
/* 80CA2578  48 00 00 08 */	b lbl_80CA2580
lbl_80CA257C:
/* 80CA257C  38 00 00 04 */	li r0, 4
lbl_80CA2580:
/* 80CA2580  2C 00 00 01 */	cmpwi r0, 1
/* 80CA2584  40 82 00 10 */	bne lbl_80CA2594
/* 80CA2588  3C 60 80 45 */	lis r3, __float_nan@ha
/* 80CA258C  C3 E3 0A E0 */	lfs f31, __float_nan@l(r3)
/* 80CA2590  48 00 00 08 */	b lbl_80CA2598
lbl_80CA2594:
/* 80CA2594  FF E0 08 90 */	fmr f31, f1
lbl_80CA2598:
/* 80CA2598  C0 01 00 74 */	lfs f0, 0x74(r1)
/* 80CA259C  D0 1F 04 BC */	stfs f0, 0x4bc(r31)
/* 80CA25A0  C0 01 00 78 */	lfs f0, 0x78(r1)
/* 80CA25A4  D0 1F 04 C0 */	stfs f0, 0x4c0(r31)
/* 80CA25A8  C0 01 00 7C */	lfs f0, 0x7c(r1)
/* 80CA25AC  D0 1F 04 C4 */	stfs f0, 0x4c4(r31)
/* 80CA25B0  C0 1F 04 BC */	lfs f0, 0x4bc(r31)
/* 80CA25B4  D0 1F 04 D0 */	stfs f0, 0x4d0(r31)
/* 80CA25B8  C0 1F 04 C0 */	lfs f0, 0x4c0(r31)
/* 80CA25BC  D0 1F 04 D4 */	stfs f0, 0x4d4(r31)
/* 80CA25C0  C0 1F 04 C4 */	lfs f0, 0x4c4(r31)
/* 80CA25C4  D0 1F 04 D8 */	stfs f0, 0x4d8(r31)
/* 80CA25C8  C0 21 00 38 */	lfs f1, 0x38(r1)
/* 80CA25CC  C0 41 00 34 */	lfs f2, 0x34(r1)
/* 80CA25D0  4B 5C 50 A4 */	b cM_atan2s__Fff
/* 80CA25D4  B0 7F 07 DA */	sth r3, 0x7da(r31)
/* 80CA25D8  B0 7F 07 D4 */	sth r3, 0x7d4(r31)
/* 80CA25DC  C0 21 00 30 */	lfs f1, 0x30(r1)
/* 80CA25E0  FC 40 F8 90 */	fmr f2, f31
/* 80CA25E4  4B 5C 50 90 */	b cM_atan2s__Fff
/* 80CA25E8  7C 03 00 D0 */	neg r0, r3
/* 80CA25EC  B0 1F 07 DE */	sth r0, 0x7de(r31)
/* 80CA25F0  B0 1F 07 D8 */	sth r0, 0x7d8(r31)
/* 80CA25F4  3C 60 80 CA */	lis r3, lit_4614@ha
/* 80CA25F8  38 83 33 94 */	addi r4, r3, lit_4614@l
/* 80CA25FC  80 64 00 00 */	lwz r3, 0(r4)
/* 80CA2600  80 04 00 04 */	lwz r0, 4(r4)
/* 80CA2604  90 61 00 0C */	stw r3, 0xc(r1)
/* 80CA2608  90 01 00 10 */	stw r0, 0x10(r1)
/* 80CA260C  80 04 00 08 */	lwz r0, 8(r4)
/* 80CA2610  90 01 00 14 */	stw r0, 0x14(r1)
/* 80CA2614  7F E3 FB 78 */	mr r3, r31
/* 80CA2618  38 81 00 0C */	addi r4, r1, 0xc
/* 80CA261C  4B FF DF B9 */	bl setAction__10daObjNAN_cFM10daObjNAN_cFPCvPv_v
/* 80CA2620  3C 60 80 CA */	lis r3, __vt__8cM3dGPla@ha
/* 80CA2624  38 03 34 68 */	addi r0, r3, __vt__8cM3dGPla@l
/* 80CA2628  90 01 00 40 */	stw r0, 0x40(r1)
lbl_80CA262C:
/* 80CA262C  38 61 00 44 */	addi r3, r1, 0x44
/* 80CA2630  38 80 FF FF */	li r4, -1
/* 80CA2634  4B 3D 56 A8 */	b __dt__11dBgS_LinChkFv
lbl_80CA2638:
/* 80CA2638  E3 E1 00 D8 */	psq_l f31, 216(r1), 0, 0 /* qr0 */
/* 80CA263C  CB E1 00 D0 */	lfd f31, 0xd0(r1)
/* 80CA2640  39 61 00 D0 */	addi r11, r1, 0xd0
/* 80CA2644  4B 6B FB E4 */	b _restgpr_29
/* 80CA2648  80 01 00 E4 */	lwz r0, 0xe4(r1)
/* 80CA264C  7C 08 03 A6 */	mtlr r0
/* 80CA2650  38 21 00 E0 */	addi r1, r1, 0xe0
/* 80CA2654  4E 80 00 20 */	blr 
