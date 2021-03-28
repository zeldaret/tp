lbl_800D23C0:
/* 800D23C0  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 800D23C4  7C 08 02 A6 */	mflr r0
/* 800D23C8  90 01 00 24 */	stw r0, 0x24(r1)
/* 800D23CC  39 61 00 20 */	addi r11, r1, 0x20
/* 800D23D0  48 28 FE 05 */	bl _savegpr_27
/* 800D23D4  7C 7D 1B 78 */	mr r29, r3
/* 800D23D8  3C 80 80 39 */	lis r4, lit_3757@ha
/* 800D23DC  3B C4 D6 58 */	addi r30, r4, lit_3757@l
/* 800D23E0  4B FF FD F1 */	bl commonCutAction__9daAlink_cFv
/* 800D23E4  2C 03 00 00 */	cmpwi r3, 0
/* 800D23E8  41 82 00 0C */	beq lbl_800D23F4
/* 800D23EC  38 60 00 01 */	li r3, 1
/* 800D23F0  48 00 02 7C */	b lbl_800D266C
lbl_800D23F4:
/* 800D23F4  7F A3 EB 78 */	mr r3, r29
/* 800D23F8  48 00 02 F5 */	bl getCutDirection__9daAlink_cFv
/* 800D23FC  7C 7F 1B 78 */	mr r31, r3
/* 800D2400  88 1D 05 69 */	lbz r0, 0x569(r29)
/* 800D2404  28 00 00 04 */	cmplwi r0, 4
/* 800D2408  40 82 00 D0 */	bne lbl_800D24D8
/* 800D240C  80 7D 05 70 */	lwz r3, 0x570(r29)
/* 800D2410  54 60 01 CF */	rlwinm. r0, r3, 0, 7, 7
/* 800D2414  41 82 00 44 */	beq lbl_800D2458
/* 800D2418  C0 3D 33 AC */	lfs f1, 0x33ac(r29)
/* 800D241C  C0 02 92 A4 */	lfs f0, lit_6021(r2)
/* 800D2420  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 800D2424  40 81 00 24 */	ble lbl_800D2448
/* 800D2428  2C 1F 00 00 */	cmpwi r31, 0
/* 800D242C  41 82 00 0C */	beq lbl_800D2438
/* 800D2430  2C 1F 00 01 */	cmpwi r31, 1
/* 800D2434  40 82 00 14 */	bne lbl_800D2448
lbl_800D2438:
/* 800D2438  7F A3 EB 78 */	mr r3, r29
/* 800D243C  38 80 00 03 */	li r4, 3
/* 800D2440  48 00 10 99 */	bl procCutFinishInit__9daAlink_cFi
/* 800D2444  48 00 02 24 */	b lbl_800D2668
lbl_800D2448:
/* 800D2448  7F A3 EB 78 */	mr r3, r29
/* 800D244C  38 80 00 04 */	li r4, 4
/* 800D2450  48 00 10 89 */	bl procCutFinishInit__9daAlink_cFi
/* 800D2454  48 00 02 14 */	b lbl_800D2668
lbl_800D2458:
/* 800D2458  54 60 04 21 */	rlwinm. r0, r3, 0, 0x10, 0x10
/* 800D245C  41 82 00 1C */	beq lbl_800D2478
/* 800D2460  7F A3 EB 78 */	mr r3, r29
/* 800D2464  57 E0 10 3A */	slwi r0, r31, 2
/* 800D2468  38 9E 41 4C */	addi r4, r30, 0x414c
/* 800D246C  7C 84 00 2E */	lwzx r4, r4, r0
/* 800D2470  48 00 10 69 */	bl procCutFinishInit__9daAlink_cFi
/* 800D2474  48 00 01 F4 */	b lbl_800D2668
lbl_800D2478:
/* 800D2478  83 9D 27 E0 */	lwz r28, 0x27e0(r29)
/* 800D247C  3B 60 00 01 */	li r27, 1
/* 800D2480  7F 83 E3 78 */	mr r3, r28
/* 800D2484  4B FA 13 61 */	bl LockonTruth__12dAttention_cFv
/* 800D2488  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 800D248C  40 82 00 14 */	bne lbl_800D24A0
/* 800D2490  80 1C 03 34 */	lwz r0, 0x334(r28)
/* 800D2494  54 00 00 85 */	rlwinm. r0, r0, 0, 2, 2
/* 800D2498  40 82 00 08 */	bne lbl_800D24A0
/* 800D249C  3B 60 00 00 */	li r27, 0
lbl_800D24A0:
/* 800D24A0  57 60 06 3F */	clrlwi. r0, r27, 0x18
/* 800D24A4  41 82 00 1C */	beq lbl_800D24C0
/* 800D24A8  7F A3 EB 78 */	mr r3, r29
/* 800D24AC  57 E0 10 3A */	slwi r0, r31, 2
/* 800D24B0  38 9E 41 24 */	addi r4, r30, 0x4124
/* 800D24B4  7C 84 00 2E */	lwzx r4, r4, r0
/* 800D24B8  48 00 10 21 */	bl procCutFinishInit__9daAlink_cFi
/* 800D24BC  48 00 01 AC */	b lbl_800D2668
lbl_800D24C0:
/* 800D24C0  7F A3 EB 78 */	mr r3, r29
/* 800D24C4  57 E0 10 3A */	slwi r0, r31, 2
/* 800D24C8  38 9E 41 9C */	addi r4, r30, 0x419c
/* 800D24CC  7C 84 00 2E */	lwzx r4, r4, r0
/* 800D24D0  48 00 10 09 */	bl procCutFinishInit__9daAlink_cFi
/* 800D24D4  48 00 01 94 */	b lbl_800D2668
lbl_800D24D8:
/* 800D24D8  28 00 00 03 */	cmplwi r0, 3
/* 800D24DC  40 82 00 A8 */	bne lbl_800D2584
/* 800D24E0  80 1D 05 70 */	lwz r0, 0x570(r29)
/* 800D24E4  54 00 04 21 */	rlwinm. r0, r0, 0, 0x10, 0x10
/* 800D24E8  41 82 00 3C */	beq lbl_800D2524
/* 800D24EC  2C 1F 00 00 */	cmpwi r31, 0
/* 800D24F0  40 82 00 1C */	bne lbl_800D250C
/* 800D24F4  7F A3 EB 78 */	mr r3, r29
/* 800D24F8  57 E0 10 3A */	slwi r0, r31, 2
/* 800D24FC  38 9E 41 38 */	addi r4, r30, 0x4138
/* 800D2500  7C 84 00 2E */	lwzx r4, r4, r0
/* 800D2504  48 00 0A 55 */	bl procCutNormalInit__9daAlink_cFi
/* 800D2508  48 00 01 60 */	b lbl_800D2668
lbl_800D250C:
/* 800D250C  7F A3 EB 78 */	mr r3, r29
/* 800D2510  57 E0 10 3A */	slwi r0, r31, 2
/* 800D2514  38 9E 41 38 */	addi r4, r30, 0x4138
/* 800D2518  7C 84 00 2E */	lwzx r4, r4, r0
/* 800D251C  48 00 0F BD */	bl procCutFinishInit__9daAlink_cFi
/* 800D2520  48 00 01 48 */	b lbl_800D2668
lbl_800D2524:
/* 800D2524  83 9D 27 E0 */	lwz r28, 0x27e0(r29)
/* 800D2528  3B 60 00 01 */	li r27, 1
/* 800D252C  7F 83 E3 78 */	mr r3, r28
/* 800D2530  4B FA 12 B5 */	bl LockonTruth__12dAttention_cFv
/* 800D2534  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 800D2538  40 82 00 14 */	bne lbl_800D254C
/* 800D253C  80 1C 03 34 */	lwz r0, 0x334(r28)
/* 800D2540  54 00 00 85 */	rlwinm. r0, r0, 0, 2, 2
/* 800D2544  40 82 00 08 */	bne lbl_800D254C
/* 800D2548  3B 60 00 00 */	li r27, 0
lbl_800D254C:
/* 800D254C  57 60 06 3F */	clrlwi. r0, r27, 0x18
/* 800D2550  41 82 00 1C */	beq lbl_800D256C
/* 800D2554  7F A3 EB 78 */	mr r3, r29
/* 800D2558  57 E0 10 3A */	slwi r0, r31, 2
/* 800D255C  38 9E 41 10 */	addi r4, r30, 0x4110
/* 800D2560  7C 84 00 2E */	lwzx r4, r4, r0
/* 800D2564  48 00 09 F5 */	bl procCutNormalInit__9daAlink_cFi
/* 800D2568  48 00 01 00 */	b lbl_800D2668
lbl_800D256C:
/* 800D256C  7F A3 EB 78 */	mr r3, r29
/* 800D2570  57 E0 10 3A */	slwi r0, r31, 2
/* 800D2574  38 9E 41 88 */	addi r4, r30, 0x4188
/* 800D2578  7C 84 00 2E */	lwzx r4, r4, r0
/* 800D257C  48 00 09 DD */	bl procCutNormalInit__9daAlink_cFi
/* 800D2580  48 00 00 E8 */	b lbl_800D2668
lbl_800D2584:
/* 800D2584  A0 1D 2F E8 */	lhz r0, 0x2fe8(r29)
/* 800D2588  28 00 00 21 */	cmplwi r0, 0x21
/* 800D258C  40 82 00 38 */	bne lbl_800D25C4
/* 800D2590  A8 1D 30 0A */	lha r0, 0x300a(r29)
/* 800D2594  2C 00 00 04 */	cmpwi r0, 4
/* 800D2598  41 82 00 2C */	beq lbl_800D25C4
/* 800D259C  2C 00 00 02 */	cmpwi r0, 2
/* 800D25A0  40 82 00 14 */	bne lbl_800D25B4
/* 800D25A4  7F A3 EB 78 */	mr r3, r29
/* 800D25A8  38 80 00 01 */	li r4, 1
/* 800D25AC  48 00 09 AD */	bl procCutNormalInit__9daAlink_cFi
/* 800D25B0  48 00 00 B8 */	b lbl_800D2668
lbl_800D25B4:
/* 800D25B4  7F A3 EB 78 */	mr r3, r29
/* 800D25B8  38 80 00 02 */	li r4, 2
/* 800D25BC  48 00 09 9D */	bl procCutNormalInit__9daAlink_cFi
/* 800D25C0  48 00 00 A8 */	b lbl_800D2668
lbl_800D25C4:
/* 800D25C4  83 9D 27 E0 */	lwz r28, 0x27e0(r29)
/* 800D25C8  3B 60 00 01 */	li r27, 1
/* 800D25CC  7F 83 E3 78 */	mr r3, r28
/* 800D25D0  4B FA 12 15 */	bl LockonTruth__12dAttention_cFv
/* 800D25D4  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 800D25D8  40 82 00 14 */	bne lbl_800D25EC
/* 800D25DC  80 1C 03 34 */	lwz r0, 0x334(r28)
/* 800D25E0  54 00 00 85 */	rlwinm. r0, r0, 0, 2, 2
/* 800D25E4  40 82 00 08 */	bne lbl_800D25EC
/* 800D25E8  3B 60 00 00 */	li r27, 0
lbl_800D25EC:
/* 800D25EC  57 60 06 3F */	clrlwi. r0, r27, 0x18
/* 800D25F0  41 82 00 40 */	beq lbl_800D2630
/* 800D25F4  88 1D 05 69 */	lbz r0, 0x569(r29)
/* 800D25F8  28 00 00 01 */	cmplwi r0, 1
/* 800D25FC  40 82 00 1C */	bne lbl_800D2618
/* 800D2600  7F A3 EB 78 */	mr r3, r29
/* 800D2604  57 E0 10 3A */	slwi r0, r31, 2
/* 800D2608  38 9E 40 E8 */	addi r4, r30, 0x40e8
/* 800D260C  7C 84 00 2E */	lwzx r4, r4, r0
/* 800D2610  48 00 09 49 */	bl procCutNormalInit__9daAlink_cFi
/* 800D2614  48 00 00 54 */	b lbl_800D2668
lbl_800D2618:
/* 800D2618  7F A3 EB 78 */	mr r3, r29
/* 800D261C  57 E0 10 3A */	slwi r0, r31, 2
/* 800D2620  38 9E 40 FC */	addi r4, r30, 0x40fc
/* 800D2624  7C 84 00 2E */	lwzx r4, r4, r0
/* 800D2628  48 00 09 31 */	bl procCutNormalInit__9daAlink_cFi
/* 800D262C  48 00 00 3C */	b lbl_800D2668
lbl_800D2630:
/* 800D2630  88 1D 05 69 */	lbz r0, 0x569(r29)
/* 800D2634  28 00 00 01 */	cmplwi r0, 1
/* 800D2638  40 82 00 1C */	bne lbl_800D2654
/* 800D263C  7F A3 EB 78 */	mr r3, r29
/* 800D2640  57 E0 10 3A */	slwi r0, r31, 2
/* 800D2644  38 9E 41 60 */	addi r4, r30, 0x4160
/* 800D2648  7C 84 00 2E */	lwzx r4, r4, r0
/* 800D264C  48 00 09 0D */	bl procCutNormalInit__9daAlink_cFi
/* 800D2650  48 00 00 18 */	b lbl_800D2668
lbl_800D2654:
/* 800D2654  7F A3 EB 78 */	mr r3, r29
/* 800D2658  57 E0 10 3A */	slwi r0, r31, 2
/* 800D265C  38 9E 41 74 */	addi r4, r30, 0x4174
/* 800D2660  7C 84 00 2E */	lwzx r4, r4, r0
/* 800D2664  48 00 08 F5 */	bl procCutNormalInit__9daAlink_cFi
lbl_800D2668:
/* 800D2668  38 60 00 01 */	li r3, 1
lbl_800D266C:
/* 800D266C  39 61 00 20 */	addi r11, r1, 0x20
/* 800D2670  48 28 FB B1 */	bl _restgpr_27
/* 800D2674  80 01 00 24 */	lwz r0, 0x24(r1)
/* 800D2678  7C 08 03 A6 */	mtlr r0
/* 800D267C  38 21 00 20 */	addi r1, r1, 0x20
/* 800D2680  4E 80 00 20 */	blr 
