lbl_807F239C:
/* 807F239C  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 807F23A0  7C 08 02 A6 */	mflr r0
/* 807F23A4  90 01 00 44 */	stw r0, 0x44(r1)
/* 807F23A8  39 61 00 40 */	addi r11, r1, 0x40
/* 807F23AC  4B B6 FE 20 */	b _savegpr_25
/* 807F23B0  7C 7B 1B 78 */	mr r27, r3
/* 807F23B4  3C 80 80 7F */	lis r4, lit_3715@ha
/* 807F23B8  3B E4 28 64 */	addi r31, r4, lit_3715@l
/* 807F23BC  80 03 04 A0 */	lwz r0, 0x4a0(r3)
/* 807F23C0  54 00 07 39 */	rlwinm. r0, r0, 0, 0x1c, 0x1c
/* 807F23C4  40 82 01 3C */	bne lbl_807F2500
/* 807F23C8  7F 60 DB 79 */	or. r0, r27, r27
/* 807F23CC  41 82 01 28 */	beq lbl_807F24F4
/* 807F23D0  7C 1A 03 78 */	mr r26, r0
/* 807F23D4  4B 82 67 90 */	b __ct__10fopAc_ac_cFv
/* 807F23D8  38 7A 05 BC */	addi r3, r26, 0x5bc
/* 807F23DC  4B AC EB 88 */	b __ct__15Z2CreatureEnemyFv
/* 807F23E0  38 7A 06 B4 */	addi r3, r26, 0x6b4
/* 807F23E4  4B 88 3A C8 */	b __ct__12dBgS_AcchCirFv
/* 807F23E8  3B 3A 06 F4 */	addi r25, r26, 0x6f4
/* 807F23EC  7F 23 CB 78 */	mr r3, r25
/* 807F23F0  4B 88 3C B0 */	b __ct__9dBgS_AcchFv
/* 807F23F4  3C 60 80 7F */	lis r3, __vt__12dBgS_ObjAcch@ha
/* 807F23F8  38 63 2A D0 */	addi r3, r3, __vt__12dBgS_ObjAcch@l
/* 807F23FC  90 79 00 10 */	stw r3, 0x10(r25)
/* 807F2400  38 03 00 0C */	addi r0, r3, 0xc
/* 807F2404  90 19 00 14 */	stw r0, 0x14(r25)
/* 807F2408  38 03 00 18 */	addi r0, r3, 0x18
/* 807F240C  90 19 00 24 */	stw r0, 0x24(r25)
/* 807F2410  38 79 00 14 */	addi r3, r25, 0x14
/* 807F2414  4B 88 6A 54 */	b SetObj__16dBgS_PolyPassChkFv
/* 807F2418  3C 60 80 3C */	lis r3, __vt__9cCcD_Stts@ha
/* 807F241C  38 03 37 28 */	addi r0, r3, __vt__9cCcD_Stts@l
/* 807F2420  90 1A 08 E4 */	stw r0, 0x8e4(r26)
/* 807F2424  38 7A 08 E8 */	addi r3, r26, 0x8e8
/* 807F2428  4B 89 13 38 */	b __ct__10dCcD_GSttsFv
/* 807F242C  3C 60 80 3B */	lis r3, __vt__9dCcD_Stts@ha
/* 807F2430  38 63 C2 E4 */	addi r3, r3, __vt__9dCcD_Stts@l
/* 807F2434  90 7A 08 E4 */	stw r3, 0x8e4(r26)
/* 807F2438  38 03 00 20 */	addi r0, r3, 0x20
/* 807F243C  90 1A 08 E8 */	stw r0, 0x8e8(r26)
/* 807F2440  3B 3A 09 08 */	addi r25, r26, 0x908
/* 807F2444  7F 23 CB 78 */	mr r3, r25
/* 807F2448  4B 89 15 E0 */	b __ct__12dCcD_GObjInfFv
/* 807F244C  3C 60 80 3C */	lis r3, __vt__14cCcD_ShapeAttr@ha
/* 807F2450  38 03 36 D0 */	addi r0, r3, __vt__14cCcD_ShapeAttr@l
/* 807F2454  90 19 01 20 */	stw r0, 0x120(r25)
/* 807F2458  3C 60 80 7F */	lis r3, __vt__8cM3dGAab@ha
/* 807F245C  38 03 2A C4 */	addi r0, r3, __vt__8cM3dGAab@l
/* 807F2460  90 19 01 1C */	stw r0, 0x11c(r25)
/* 807F2464  3C 60 80 7F */	lis r3, __vt__8cM3dGSph@ha
/* 807F2468  38 03 2A B8 */	addi r0, r3, __vt__8cM3dGSph@l
/* 807F246C  90 19 01 34 */	stw r0, 0x134(r25)
/* 807F2470  3C 60 80 3C */	lis r3, __vt__12cCcD_SphAttr@ha
/* 807F2474  38 63 35 40 */	addi r3, r3, __vt__12cCcD_SphAttr@l
/* 807F2478  90 79 01 20 */	stw r3, 0x120(r25)
/* 807F247C  3B C3 00 58 */	addi r30, r3, 0x58
/* 807F2480  93 D9 01 34 */	stw r30, 0x134(r25)
/* 807F2484  3C 60 80 3B */	lis r3, __vt__8dCcD_Sph@ha
/* 807F2488  38 63 BF C0 */	addi r3, r3, __vt__8dCcD_Sph@l
/* 807F248C  90 79 00 3C */	stw r3, 0x3c(r25)
/* 807F2490  3B A3 00 2C */	addi r29, r3, 0x2c
/* 807F2494  93 B9 01 20 */	stw r29, 0x120(r25)
/* 807F2498  3B 83 00 84 */	addi r28, r3, 0x84
/* 807F249C  93 99 01 34 */	stw r28, 0x134(r25)
/* 807F24A0  3B 3A 0A 40 */	addi r25, r26, 0xa40
/* 807F24A4  7F 23 CB 78 */	mr r3, r25
/* 807F24A8  4B 89 15 80 */	b __ct__12dCcD_GObjInfFv
/* 807F24AC  3C 60 80 3C */	lis r3, __vt__14cCcD_ShapeAttr@ha
/* 807F24B0  38 03 36 D0 */	addi r0, r3, __vt__14cCcD_ShapeAttr@l
/* 807F24B4  90 19 01 20 */	stw r0, 0x120(r25)
/* 807F24B8  3C 60 80 7F */	lis r3, __vt__8cM3dGAab@ha
/* 807F24BC  38 03 2A C4 */	addi r0, r3, __vt__8cM3dGAab@l
/* 807F24C0  90 19 01 1C */	stw r0, 0x11c(r25)
/* 807F24C4  3C 60 80 7F */	lis r3, __vt__8cM3dGSph@ha
/* 807F24C8  38 03 2A B8 */	addi r0, r3, __vt__8cM3dGSph@l
/* 807F24CC  90 19 01 34 */	stw r0, 0x134(r25)
/* 807F24D0  3C 60 80 3C */	lis r3, __vt__12cCcD_SphAttr@ha
/* 807F24D4  38 03 35 40 */	addi r0, r3, __vt__12cCcD_SphAttr@l
/* 807F24D8  90 19 01 20 */	stw r0, 0x120(r25)
/* 807F24DC  93 D9 01 34 */	stw r30, 0x134(r25)
/* 807F24E0  3C 60 80 3B */	lis r3, __vt__8dCcD_Sph@ha
/* 807F24E4  38 03 BF C0 */	addi r0, r3, __vt__8dCcD_Sph@l
/* 807F24E8  90 19 00 3C */	stw r0, 0x3c(r25)
/* 807F24EC  93 B9 01 20 */	stw r29, 0x120(r25)
/* 807F24F0  93 99 01 34 */	stw r28, 0x134(r25)
lbl_807F24F4:
/* 807F24F4  80 1B 04 A0 */	lwz r0, 0x4a0(r27)
/* 807F24F8  60 00 00 08 */	ori r0, r0, 8
/* 807F24FC  90 1B 04 A0 */	stw r0, 0x4a0(r27)
lbl_807F2500:
/* 807F2500  38 7B 05 AC */	addi r3, r27, 0x5ac
/* 807F2504  3C 80 80 7F */	lis r4, stringBase0@ha
/* 807F2508  38 84 29 4C */	addi r4, r4, stringBase0@l
/* 807F250C  4B 83 A9 B0 */	b dComIfG_resLoad__FP30request_of_phase_process_classPCc
/* 807F2510  7C 7C 1B 78 */	mr r28, r3
/* 807F2514  2C 1C 00 04 */	cmpwi r28, 4
/* 807F2518  40 82 01 88 */	bne lbl_807F26A0
/* 807F251C  80 1B 00 B0 */	lwz r0, 0xb0(r27)
/* 807F2520  98 1B 05 B4 */	stb r0, 0x5b4(r27)
/* 807F2524  7F 63 DB 78 */	mr r3, r27
/* 807F2528  3C 80 80 7F */	lis r4, useHeapInit__FP10fopAc_ac_c@ha
/* 807F252C  38 84 22 A4 */	addi r4, r4, useHeapInit__FP10fopAc_ac_c@l
/* 807F2530  38 A0 23 A0 */	li r5, 0x23a0
/* 807F2534  4B 82 7F 7C */	b fopAcM_entrySolidHeap__FP10fopAc_ac_cPFP10fopAc_ac_c_iUl
/* 807F2538  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 807F253C  40 82 00 0C */	bne lbl_807F2548
/* 807F2540  38 60 00 05 */	li r3, 5
/* 807F2544  48 00 01 60 */	b lbl_807F26A4
lbl_807F2548:
/* 807F2548  3C 60 80 7F */	lis r3, data_807F2B0C@ha
/* 807F254C  8C 03 2B 0C */	lbzu r0, data_807F2B0C@l(r3)
/* 807F2550  28 00 00 00 */	cmplwi r0, 0
/* 807F2554  40 82 00 20 */	bne lbl_807F2574
/* 807F2558  38 00 00 01 */	li r0, 1
/* 807F255C  98 1B 0B A4 */	stb r0, 0xba4(r27)
/* 807F2560  98 03 00 00 */	stb r0, 0(r3)
/* 807F2564  38 00 FF FF */	li r0, -1
/* 807F2568  3C 60 80 7F */	lis r3, l_HIO@ha
/* 807F256C  38 63 2B 1C */	addi r3, r3, l_HIO@l
/* 807F2570  98 03 00 04 */	stb r0, 4(r3)
lbl_807F2574:
/* 807F2574  80 7B 05 B8 */	lwz r3, 0x5b8(r27)
/* 807F2578  80 63 00 04 */	lwz r3, 4(r3)
/* 807F257C  38 03 00 24 */	addi r0, r3, 0x24
/* 807F2580  90 1B 05 04 */	stw r0, 0x504(r27)
/* 807F2584  7F 63 DB 78 */	mr r3, r27
/* 807F2588  C0 3F 00 DC */	lfs f1, 0xdc(r31)
/* 807F258C  C0 5F 00 E0 */	lfs f2, 0xe0(r31)
/* 807F2590  FC 60 08 90 */	fmr f3, f1
/* 807F2594  4B 82 7F 94 */	b fopAcM_SetMin__FP10fopAc_ac_cfff
/* 807F2598  7F 63 DB 78 */	mr r3, r27
/* 807F259C  C0 3F 00 78 */	lfs f1, 0x78(r31)
/* 807F25A0  C0 5F 00 30 */	lfs f2, 0x30(r31)
/* 807F25A4  FC 60 08 90 */	fmr f3, f1
/* 807F25A8  4B 82 7F 90 */	b fopAcM_SetMax__FP10fopAc_ac_cfff
/* 807F25AC  38 00 00 3C */	li r0, 0x3c
/* 807F25B0  B0 1B 05 62 */	sth r0, 0x562(r27)
/* 807F25B4  B0 1B 05 60 */	sth r0, 0x560(r27)
/* 807F25B8  38 7B 08 CC */	addi r3, r27, 0x8cc
/* 807F25BC  38 80 00 64 */	li r4, 0x64
/* 807F25C0  38 A0 00 00 */	li r5, 0
/* 807F25C4  7F 66 DB 78 */	mr r6, r27
/* 807F25C8  4B 89 12 98 */	b Init__9dCcD_SttsFiiP10fopAc_ac_c
/* 807F25CC  38 7B 09 08 */	addi r3, r27, 0x908
/* 807F25D0  3C 80 80 7F */	lis r4, cc_sph_src@ha
/* 807F25D4  38 84 29 E8 */	addi r4, r4, cc_sph_src@l
/* 807F25D8  4B 89 24 5C */	b Set__8dCcD_SphFRC11dCcD_SrcSph
/* 807F25DC  38 1B 08 CC */	addi r0, r27, 0x8cc
/* 807F25E0  90 1B 09 4C */	stw r0, 0x94c(r27)
/* 807F25E4  38 7B 0A 40 */	addi r3, r27, 0xa40
/* 807F25E8  3C 80 80 7F */	lis r4, at_sph_src@ha
/* 807F25EC  38 84 2A 28 */	addi r4, r4, at_sph_src@l
/* 807F25F0  4B 89 24 44 */	b Set__8dCcD_SphFRC11dCcD_SrcSph
/* 807F25F4  38 1B 08 CC */	addi r0, r27, 0x8cc
/* 807F25F8  90 1B 0A 84 */	stw r0, 0xa84(r27)
/* 807F25FC  38 00 00 00 */	li r0, 0
/* 807F2600  90 01 00 08 */	stw r0, 8(r1)
/* 807F2604  38 7B 06 F4 */	addi r3, r27, 0x6f4
/* 807F2608  38 9B 04 D0 */	addi r4, r27, 0x4d0
/* 807F260C  38 BB 04 BC */	addi r5, r27, 0x4bc
/* 807F2610  7F 66 DB 78 */	mr r6, r27
/* 807F2614  38 E0 00 01 */	li r7, 1
/* 807F2618  39 1B 06 B4 */	addi r8, r27, 0x6b4
/* 807F261C  39 3B 04 F8 */	addi r9, r27, 0x4f8
/* 807F2620  39 40 00 00 */	li r10, 0
/* 807F2624  4B 88 3C 24 */	b Set__9dBgS_AcchFP4cXyzP4cXyzP10fopAc_ac_ciP12dBgS_AcchCirP4cXyzP5csXyzP5csXyz
/* 807F2628  38 7B 06 B4 */	addi r3, r27, 0x6b4
/* 807F262C  C0 3F 00 74 */	lfs f1, 0x74(r31)
/* 807F2630  FC 40 08 90 */	fmr f2, f1
/* 807F2634  4B 88 39 24 */	b SetWall__12dBgS_AcchCirFff
/* 807F2638  38 7B 05 BC */	addi r3, r27, 0x5bc
/* 807F263C  38 9B 04 D0 */	addi r4, r27, 0x4d0
/* 807F2640  38 BB 05 38 */	addi r5, r27, 0x538
/* 807F2644  38 C0 00 03 */	li r6, 3
/* 807F2648  38 E0 00 01 */	li r7, 1
/* 807F264C  4B AC EA 48 */	b init__15Z2CreatureEnemyFP3VecP3VecUcUc
/* 807F2650  38 7B 05 BC */	addi r3, r27, 0x5bc
/* 807F2654  3C 80 80 7F */	lis r4, stringBase0@ha
/* 807F2658  38 84 29 4C */	addi r4, r4, stringBase0@l
/* 807F265C  4B AC F5 34 */	b setEnemyName__15Z2CreatureEnemyFPCc
/* 807F2660  38 1B 05 BC */	addi r0, r27, 0x5bc
/* 807F2664  90 1B 0B 80 */	stw r0, 0xb80(r27)
/* 807F2668  C0 3F 00 E4 */	lfs f1, 0xe4(r31)
/* 807F266C  4B A7 52 E8 */	b cM_rndF__Ff
/* 807F2670  FC 00 08 1E */	fctiwz f0, f1
/* 807F2674  D8 01 00 10 */	stfd f0, 0x10(r1)
/* 807F2678  80 01 00 14 */	lwz r0, 0x14(r1)
/* 807F267C  B0 1B 06 6C */	sth r0, 0x66c(r27)
/* 807F2680  38 00 00 00 */	li r0, 0
/* 807F2684  B0 1B 06 6E */	sth r0, 0x66e(r27)
/* 807F2688  38 00 00 04 */	li r0, 4
/* 807F268C  90 1B 05 5C */	stw r0, 0x55c(r27)
/* 807F2690  38 00 00 1A */	li r0, 0x1a
/* 807F2694  98 1B 05 46 */	stb r0, 0x546(r27)
/* 807F2698  7F 63 DB 78 */	mr r3, r27
/* 807F269C  4B FF F6 49 */	bl daE_YC_Execute__FP10e_yc_class
lbl_807F26A0:
/* 807F26A0  7F 83 E3 78 */	mr r3, r28
lbl_807F26A4:
/* 807F26A4  39 61 00 40 */	addi r11, r1, 0x40
/* 807F26A8  4B B6 FB 70 */	b _restgpr_25
/* 807F26AC  80 01 00 44 */	lwz r0, 0x44(r1)
/* 807F26B0  7C 08 03 A6 */	mtlr r0
/* 807F26B4  38 21 00 40 */	addi r1, r1, 0x40
/* 807F26B8  4E 80 00 20 */	blr 
