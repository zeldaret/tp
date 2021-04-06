lbl_804D2320:
/* 804D2320  94 21 FF 90 */	stwu r1, -0x70(r1)
/* 804D2324  7C 08 02 A6 */	mflr r0
/* 804D2328  90 01 00 74 */	stw r0, 0x74(r1)
/* 804D232C  39 61 00 70 */	addi r11, r1, 0x70
/* 804D2330  4B E8 FE 8D */	bl _savegpr_21
/* 804D2334  7C 7C 1B 78 */	mr r28, r3
/* 804D2338  3C 60 80 4D */	lis r3, lit_1109@ha /* 0x804D4FC8@ha */
/* 804D233C  3B C3 4F C8 */	addi r30, r3, lit_1109@l /* 0x804D4FC8@l */
/* 804D2340  3C 60 80 4D */	lis r3, lit_3768@ha /* 0x804D4D90@ha */
/* 804D2344  3B E3 4D 90 */	addi r31, r3, lit_3768@l /* 0x804D4D90@l */
/* 804D2348  88 1E 00 3D */	lbz r0, 0x3d(r30)
/* 804D234C  7C 00 07 75 */	extsb. r0, r0
/* 804D2350  40 82 00 24 */	bne lbl_804D2374
/* 804D2354  C0 3F 00 28 */	lfs f1, 0x28(r31)
/* 804D2358  D0 3E 00 40 */	stfs f1, 0x40(r30)
/* 804D235C  C0 1F 00 0C */	lfs f0, 0xc(r31)
/* 804D2360  38 7E 00 40 */	addi r3, r30, 0x40
/* 804D2364  D0 03 00 04 */	stfs f0, 4(r3)
/* 804D2368  D0 23 00 08 */	stfs f1, 8(r3)
/* 804D236C  38 00 00 01 */	li r0, 1
/* 804D2370  98 1E 00 3D */	stb r0, 0x3d(r30)
lbl_804D2374:
/* 804D2374  88 1E 00 58 */	lbz r0, 0x58(r30)
/* 804D2378  7C 00 07 75 */	extsb. r0, r0
/* 804D237C  40 82 00 30 */	bne lbl_804D23AC
/* 804D2380  C0 1F 00 40 */	lfs f0, 0x40(r31)
/* 804D2384  D0 1E 00 5C */	stfs f0, 0x5c(r30)
/* 804D2388  38 7E 00 5C */	addi r3, r30, 0x5c
/* 804D238C  D0 03 00 04 */	stfs f0, 4(r3)
/* 804D2390  D0 03 00 08 */	stfs f0, 8(r3)
/* 804D2394  3C 80 80 4D */	lis r4, __dt__4cXyzFv@ha /* 0x804D1E4C@ha */
/* 804D2398  38 84 1E 4C */	addi r4, r4, __dt__4cXyzFv@l /* 0x804D1E4C@l */
/* 804D239C  38 BE 00 4C */	addi r5, r30, 0x4c
/* 804D23A0  4B FF F5 79 */	bl __register_global_object
/* 804D23A4  38 00 00 01 */	li r0, 1
/* 804D23A8  98 1E 00 58 */	stb r0, 0x58(r30)
lbl_804D23AC:
/* 804D23AC  C0 1C 04 D0 */	lfs f0, 0x4d0(r28)
/* 804D23B0  D0 01 00 34 */	stfs f0, 0x34(r1)
/* 804D23B4  C0 1C 04 D4 */	lfs f0, 0x4d4(r28)
/* 804D23B8  D0 01 00 38 */	stfs f0, 0x38(r1)
/* 804D23BC  C0 1C 04 D8 */	lfs f0, 0x4d8(r28)
/* 804D23C0  D0 01 00 3C */	stfs f0, 0x3c(r1)
/* 804D23C4  3A C0 00 00 */	li r22, 0
/* 804D23C8  80 1C 06 78 */	lwz r0, 0x678(r28)
/* 804D23CC  54 00 05 29 */	rlwinm. r0, r0, 0, 0x14, 0x14
/* 804D23D0  41 82 00 44 */	beq lbl_804D2414
/* 804D23D4  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 804D23D8  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 804D23DC  38 63 0F 38 */	addi r3, r3, 0xf38
/* 804D23E0  38 9C 07 CC */	addi r4, r28, 0x7cc
/* 804D23E4  4B BA 2A 6D */	bl GetPolyAtt0__4dBgSFRC13cBgS_PolyInfo
/* 804D23E8  2C 03 00 06 */	cmpwi r3, 6
/* 804D23EC  41 82 00 28 */	beq lbl_804D2414
/* 804D23F0  C0 3C 08 18 */	lfs f1, 0x818(r28)
/* 804D23F4  C0 1C 06 E4 */	lfs f0, 0x6e4(r28)
/* 804D23F8  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 804D23FC  40 81 00 18 */	ble lbl_804D2414
/* 804D2400  C0 01 00 38 */	lfs f0, 0x38(r1)
/* 804D2404  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 804D2408  40 81 00 0C */	ble lbl_804D2414
/* 804D240C  D0 21 00 38 */	stfs f1, 0x38(r1)
/* 804D2410  3A C1 00 34 */	addi r22, r1, 0x34
lbl_804D2414:
/* 804D2414  28 16 00 00 */	cmplwi r22, 0
/* 804D2418  40 82 00 40 */	bne lbl_804D2458
/* 804D241C  80 1C 06 78 */	lwz r0, 0x678(r28)
/* 804D2420  54 00 06 B5 */	rlwinm. r0, r0, 0, 0x1a, 0x1a
/* 804D2424  41 82 00 34 */	beq lbl_804D2458
/* 804D2428  C0 1C 06 E4 */	lfs f0, 0x6e4(r28)
/* 804D242C  D0 01 00 38 */	stfs f0, 0x38(r1)
/* 804D2430  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 804D2434  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 804D2438  38 63 0F 38 */	addi r3, r3, 0xf38
/* 804D243C  38 9C 07 3C */	addi r4, r28, 0x73c
/* 804D2440  4B BA 2A B1 */	bl GetGroundCode__4dBgSFRC13cBgS_PolyInfo
/* 804D2444  2C 03 00 04 */	cmpwi r3, 4
/* 804D2448  41 82 00 10 */	beq lbl_804D2458
/* 804D244C  2C 03 00 0A */	cmpwi r3, 0xa
/* 804D2450  41 82 00 08 */	beq lbl_804D2458
/* 804D2454  3A C1 00 34 */	addi r22, r1, 0x34
lbl_804D2458:
/* 804D2458  88 1C 04 E2 */	lbz r0, 0x4e2(r28)
/* 804D245C  7C 00 07 74 */	extsb r0, r0
/* 804D2460  90 01 00 08 */	stw r0, 8(r1)
/* 804D2464  38 7C 08 94 */	addi r3, r28, 0x894
/* 804D2468  38 9C 01 0C */	addi r4, r28, 0x10c
/* 804D246C  38 A1 00 34 */	addi r5, r1, 0x34
/* 804D2470  38 C0 00 04 */	li r6, 4
/* 804D2474  3C E0 00 06 */	lis r7, 6
/* 804D2478  7E C8 B3 78 */	mr r8, r22
/* 804D247C  39 3C 04 DC */	addi r9, r28, 0x4dc
/* 804D2480  39 40 00 00 */	li r10, 0
/* 804D2484  C0 3F 00 28 */	lfs f1, 0x28(r31)
/* 804D2488  C0 5C 05 2C */	lfs f2, 0x52c(r28)
/* 804D248C  4B B7 EB 7D */	bl setEffectCenter__7dPaPo_cFPC12dKy_tevstr_cPC4cXyzUlUlPC4cXyzPC5csXyzPC4cXyzScff
/* 804D2490  3B A0 00 00 */	li r29, 0
/* 804D2494  3B 60 00 00 */	li r27, 0
/* 804D2498  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 804D249C  3B 03 61 C0 */	addi r24, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 804D24A0  3A DE 00 40 */	addi r22, r30, 0x40
lbl_804D24A4:
/* 804D24A4  38 1D 08 C8 */	addi r0, r29, 0x8c8
/* 804D24A8  7F 3C 00 AE */	lbzx r25, r28, r0
/* 804D24AC  3A A0 00 00 */	li r21, 0
/* 804D24B0  3B 40 00 00 */	li r26, 0
/* 804D24B4  7E FC DA 14 */	add r23, r28, r27
lbl_804D24B8:
/* 804D24B8  80 78 5D 3C */	lwz r3, 0x5d3c(r24)
/* 804D24BC  38 63 02 10 */	addi r3, r3, 0x210
/* 804D24C0  38 1A 08 9C */	addi r0, r26, 0x89c
/* 804D24C4  7C 97 00 2E */	lwzx r4, r23, r0
/* 804D24C8  4B B7 94 51 */	bl getEmitter__Q213dPa_control_c7level_cFUl
/* 804D24CC  28 03 00 00 */	cmplwi r3, 0
/* 804D24D0  41 82 00 EC */	beq lbl_804D25BC
/* 804D24D4  C0 1E 00 40 */	lfs f0, 0x40(r30)
/* 804D24D8  D0 03 00 18 */	stfs f0, 0x18(r3)
/* 804D24DC  C0 16 00 04 */	lfs f0, 4(r22)
/* 804D24E0  D0 03 00 1C */	stfs f0, 0x1c(r3)
/* 804D24E4  C0 16 00 08 */	lfs f0, 8(r22)
/* 804D24E8  D0 03 00 20 */	stfs f0, 0x20(r3)
/* 804D24EC  57 20 06 3F */	clrlwi. r0, r25, 0x18
/* 804D24F0  40 82 00 34 */	bne lbl_804D2524
/* 804D24F4  C0 1F 00 0C */	lfs f0, 0xc(r31)
/* 804D24F8  D0 03 00 3C */	stfs f0, 0x3c(r3)
/* 804D24FC  38 9E 00 5C */	addi r4, r30, 0x5c
/* 804D2500  E0 24 00 00 */	psq_l f1, 0(r4), 0, 0 /* qr0 */
/* 804D2504  C0 04 00 08 */	lfs f0, 8(r4)
/* 804D2508  F0 21 00 28 */	psq_st f1, 40(r1), 0, 0 /* qr0 */
/* 804D250C  D0 01 00 30 */	stfs f0, 0x30(r1)
/* 804D2510  C0 21 00 2C */	lfs f1, 0x2c(r1)
/* 804D2514  C0 01 00 28 */	lfs f0, 0x28(r1)
/* 804D2518  D0 03 00 B0 */	stfs f0, 0xb0(r3)
/* 804D251C  D0 23 00 B4 */	stfs f1, 0xb4(r3)
/* 804D2520  48 00 00 9C */	b lbl_804D25BC
lbl_804D2524:
/* 804D2524  28 00 00 01 */	cmplwi r0, 1
/* 804D2528  40 82 00 18 */	bne lbl_804D2540
/* 804D252C  C0 1F 00 44 */	lfs f0, 0x44(r31)
/* 804D2530  D0 03 00 34 */	stfs f0, 0x34(r3)
/* 804D2534  D0 03 00 38 */	stfs f0, 0x38(r3)
/* 804D2538  D0 03 00 3C */	stfs f0, 0x3c(r3)
/* 804D253C  48 00 00 80 */	b lbl_804D25BC
lbl_804D2540:
/* 804D2540  28 00 00 03 */	cmplwi r0, 3
/* 804D2544  40 82 00 3C */	bne lbl_804D2580
/* 804D2548  C0 1F 00 40 */	lfs f0, 0x40(r31)
/* 804D254C  D0 03 00 28 */	stfs f0, 0x28(r3)
/* 804D2550  C0 1F 00 0C */	lfs f0, 0xc(r31)
/* 804D2554  D0 03 00 38 */	stfs f0, 0x38(r3)
/* 804D2558  38 9E 00 5C */	addi r4, r30, 0x5c
/* 804D255C  E0 24 00 00 */	psq_l f1, 0(r4), 0, 0 /* qr0 */
/* 804D2560  C0 04 00 08 */	lfs f0, 8(r4)
/* 804D2564  F0 21 00 1C */	psq_st f1, 28(r1), 0, 0 /* qr0 */
/* 804D2568  D0 01 00 24 */	stfs f0, 0x24(r1)
/* 804D256C  C0 21 00 20 */	lfs f1, 0x20(r1)
/* 804D2570  C0 01 00 1C */	lfs f0, 0x1c(r1)
/* 804D2574  D0 03 00 B0 */	stfs f0, 0xb0(r3)
/* 804D2578  D0 23 00 B4 */	stfs f1, 0xb4(r3)
/* 804D257C  48 00 00 40 */	b lbl_804D25BC
lbl_804D2580:
/* 804D2580  28 00 00 04 */	cmplwi r0, 4
/* 804D2584  40 82 00 38 */	bne lbl_804D25BC
/* 804D2588  C0 1F 00 40 */	lfs f0, 0x40(r31)
/* 804D258C  D0 03 00 28 */	stfs f0, 0x28(r3)
/* 804D2590  C0 1F 00 48 */	lfs f0, 0x48(r31)
/* 804D2594  D0 03 00 34 */	stfs f0, 0x34(r3)
/* 804D2598  38 9E 00 5C */	addi r4, r30, 0x5c
/* 804D259C  E0 24 00 00 */	psq_l f1, 0(r4), 0, 0 /* qr0 */
/* 804D25A0  C0 04 00 08 */	lfs f0, 8(r4)
/* 804D25A4  F0 21 00 10 */	psq_st f1, 16(r1), 0, 0 /* qr0 */
/* 804D25A8  D0 01 00 18 */	stfs f0, 0x18(r1)
/* 804D25AC  C0 21 00 14 */	lfs f1, 0x14(r1)
/* 804D25B0  C0 01 00 10 */	lfs f0, 0x10(r1)
/* 804D25B4  D0 03 00 B0 */	stfs f0, 0xb0(r3)
/* 804D25B8  D0 23 00 B4 */	stfs f1, 0xb4(r3)
lbl_804D25BC:
/* 804D25BC  3A B5 00 01 */	addi r21, r21, 1
/* 804D25C0  2C 15 00 04 */	cmpwi r21, 4
/* 804D25C4  3B 5A 00 04 */	addi r26, r26, 4
/* 804D25C8  41 80 FE F0 */	blt lbl_804D24B8
/* 804D25CC  3B BD 00 01 */	addi r29, r29, 1
/* 804D25D0  2C 1D 00 02 */	cmpwi r29, 2
/* 804D25D4  3B 7B 00 10 */	addi r27, r27, 0x10
/* 804D25D8  41 80 FE CC */	blt lbl_804D24A4
/* 804D25DC  39 61 00 70 */	addi r11, r1, 0x70
/* 804D25E0  4B E8 FC 29 */	bl _restgpr_21
/* 804D25E4  80 01 00 74 */	lwz r0, 0x74(r1)
/* 804D25E8  7C 08 03 A6 */	mtlr r0
/* 804D25EC  38 21 00 70 */	addi r1, r1, 0x70
/* 804D25F0  4E 80 00 20 */	blr 
