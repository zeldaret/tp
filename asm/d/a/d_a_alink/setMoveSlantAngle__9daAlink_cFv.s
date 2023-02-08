lbl_800A22E8:
/* 800A22E8  94 21 FF B0 */	stwu r1, -0x50(r1)
/* 800A22EC  7C 08 02 A6 */	mflr r0
/* 800A22F0  90 01 00 54 */	stw r0, 0x54(r1)
/* 800A22F4  DB E1 00 40 */	stfd f31, 0x40(r1)
/* 800A22F8  F3 E1 00 48 */	psq_st f31, 72(r1), 0, 0 /* qr0 */
/* 800A22FC  39 61 00 40 */	addi r11, r1, 0x40
/* 800A2300  48 2B FE DD */	bl _savegpr_29
/* 800A2304  7C 7E 1B 78 */	mr r30, r3
/* 800A2308  C0 23 05 2C */	lfs f1, 0x52c(r3)
/* 800A230C  C0 03 05 94 */	lfs f0, 0x594(r3)
/* 800A2310  EC 01 00 24 */	fdivs f0, f1, f0
/* 800A2314  FC 00 02 10 */	fabs f0, f0
/* 800A2318  FF E0 00 18 */	frsp f31, f0
/* 800A231C  80 83 31 A0 */	lwz r4, 0x31a0(r3)
/* 800A2320  3C 60 02 02 */	lis r3, 0x0202 /* 0x02020400@ha */
/* 800A2324  38 03 04 00 */	addi r0, r3, 0x0400 /* 0x02020400@l */
/* 800A2328  7C 80 00 39 */	and. r0, r4, r0
/* 800A232C  40 82 00 10 */	bne lbl_800A233C
/* 800A2330  A0 9E 2F E8 */	lhz r4, 0x2fe8(r30)
/* 800A2334  28 04 01 38 */	cmplwi r4, 0x138
/* 800A2338  40 82 00 F4 */	bne lbl_800A242C
lbl_800A233C:
/* 800A233C  7F C3 F3 78 */	mr r3, r30
/* 800A2340  81 9E 06 28 */	lwz r12, 0x628(r30)
/* 800A2344  81 8C 01 94 */	lwz r12, 0x194(r12)
/* 800A2348  7D 89 03 A6 */	mtctr r12
/* 800A234C  4E 80 04 21 */	bctrl 
/* 800A2350  28 03 00 00 */	cmplwi r3, 0
/* 800A2354  40 82 00 30 */	bne lbl_800A2384
/* 800A2358  38 00 00 00 */	li r0, 0
/* 800A235C  B0 1E 2F EE */	sth r0, 0x2fee(r30)
/* 800A2360  7F C3 F3 78 */	mr r3, r30
/* 800A2364  81 9E 06 28 */	lwz r12, 0x628(r30)
/* 800A2368  81 8C 01 90 */	lwz r12, 0x190(r12)
/* 800A236C  7D 89 03 A6 */	mtctr r12
/* 800A2370  4E 80 04 21 */	bctrl 
/* 800A2374  28 03 00 00 */	cmplwi r3, 0
/* 800A2378  40 82 00 0C */	bne lbl_800A2384
/* 800A237C  38 00 00 00 */	li r0, 0
/* 800A2380  B0 1E 05 A0 */	sth r0, 0x5a0(r30)
lbl_800A2384:
/* 800A2384  A0 1E 2F E8 */	lhz r0, 0x2fe8(r30)
/* 800A2388  28 00 00 0C */	cmplwi r0, 0xc
/* 800A238C  40 82 00 94 */	bne lbl_800A2420
/* 800A2390  80 1E 31 98 */	lwz r0, 0x3198(r30)
/* 800A2394  2C 00 00 00 */	cmpwi r0, 0
/* 800A2398  41 82 00 88 */	beq lbl_800A2420
/* 800A239C  C0 22 94 AC */	lfs f1, lit_16641(r2)
/* 800A23A0  A8 1E 30 10 */	lha r0, 0x3010(r30)
/* 800A23A4  C8 62 92 B0 */	lfd f3, lit_6025(r2)
/* 800A23A8  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 800A23AC  90 01 00 0C */	stw r0, 0xc(r1)
/* 800A23B0  3C 60 43 30 */	lis r3, 0x4330
/* 800A23B4  90 61 00 08 */	stw r3, 8(r1)
/* 800A23B8  C8 01 00 08 */	lfd f0, 8(r1)
/* 800A23BC  EC 00 18 28 */	fsubs f0, f0, f3
/* 800A23C0  EC 01 00 32 */	fmuls f0, f1, f0
/* 800A23C4  FC 00 00 1E */	fctiwz f0, f0
/* 800A23C8  D8 01 00 10 */	stfd f0, 0x10(r1)
/* 800A23CC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 800A23D0  B0 1E 05 A0 */	sth r0, 0x5a0(r30)
/* 800A23D4  A8 1E 04 E8 */	lha r0, 0x4e8(r30)
/* 800A23D8  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 800A23DC  90 01 00 1C */	stw r0, 0x1c(r1)
/* 800A23E0  90 61 00 18 */	stw r3, 0x18(r1)
/* 800A23E4  C8 01 00 18 */	lfd f0, 0x18(r1)
/* 800A23E8  EC 40 18 28 */	fsubs f2, f0, f3
/* 800A23EC  C0 22 94 E0 */	lfs f1, lit_19379(r2)
/* 800A23F0  A8 1E 30 10 */	lha r0, 0x3010(r30)
/* 800A23F4  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 800A23F8  90 01 00 24 */	stw r0, 0x24(r1)
/* 800A23FC  90 61 00 20 */	stw r3, 0x20(r1)
/* 800A2400  C8 01 00 20 */	lfd f0, 0x20(r1)
/* 800A2404  EC 00 18 28 */	fsubs f0, f0, f3
/* 800A2408  EC 01 00 32 */	fmuls f0, f1, f0
/* 800A240C  EC 02 00 2A */	fadds f0, f2, f0
/* 800A2410  FC 00 00 1E */	fctiwz f0, f0
/* 800A2414  D8 01 00 28 */	stfd f0, 0x28(r1)
/* 800A2418  80 01 00 2C */	lwz r0, 0x2c(r1)
/* 800A241C  B0 1E 04 E8 */	sth r0, 0x4e8(r30)
lbl_800A2420:
/* 800A2420  38 00 00 00 */	li r0, 0
/* 800A2424  B0 1E 2F EC */	sth r0, 0x2fec(r30)
/* 800A2428  48 00 02 C8 */	b lbl_800A26F0
lbl_800A242C:
/* 800A242C  28 04 00 04 */	cmplwi r4, 4
/* 800A2430  40 82 00 18 */	bne lbl_800A2448
/* 800A2434  3C 60 80 39 */	lis r3, m__18daAlinkHIO_move_c0@ha /* 0x8038D6BC@ha */
/* 800A2438  38 63 D6 BC */	addi r3, r3, m__18daAlinkHIO_move_c0@l /* 0x8038D6BC@l */
/* 800A243C  C0 03 00 2C */	lfs f0, 0x2c(r3)
/* 800A2440  FC 1F 00 40 */	fcmpo cr0, f31, f0
/* 800A2444  41 81 00 20 */	bgt lbl_800A2464
lbl_800A2448:
/* 800A2448  28 04 00 F2 */	cmplwi r4, 0xf2
/* 800A244C  40 82 00 E4 */	bne lbl_800A2530
/* 800A2450  3C 60 80 39 */	lis r3, m__20daAlinkHIO_wlMove_c0@ha /* 0x8038EE28@ha */
/* 800A2454  38 63 EE 28 */	addi r3, r3, m__20daAlinkHIO_wlMove_c0@l /* 0x8038EE28@l */
/* 800A2458  C0 03 00 84 */	lfs f0, 0x84(r3)
/* 800A245C  FC 1F 00 40 */	fcmpo cr0, f31, f0
/* 800A2460  40 81 00 D0 */	ble lbl_800A2530
lbl_800A2464:
/* 800A2464  A8 7E 04 E6 */	lha r3, 0x4e6(r30)
/* 800A2468  A8 1E 2F E6 */	lha r0, 0x2fe6(r30)
/* 800A246C  7C 03 00 50 */	subf r0, r3, r0
/* 800A2470  7C 00 07 34 */	extsh r0, r0
/* 800A2474  54 00 08 3C */	slwi r0, r0, 1
/* 800A2478  7C 03 07 34 */	extsh r3, r0
/* 800A247C  2C 03 F4 00 */	cmpwi r3, -3072
/* 800A2480  40 80 00 0C */	bge lbl_800A248C
/* 800A2484  38 00 F4 00 */	li r0, -3072
/* 800A2488  48 00 00 14 */	b lbl_800A249C
lbl_800A248C:
/* 800A248C  2C 03 0C 00 */	cmpwi r3, 0xc00
/* 800A2490  38 00 0C 00 */	li r0, 0xc00
/* 800A2494  41 81 00 08 */	bgt lbl_800A249C
/* 800A2498  7C 60 1B 78 */	mr r0, r3
lbl_800A249C:
/* 800A249C  7C 1F 07 34 */	extsh r31, r0
/* 800A24A0  7F E3 FB 78 */	mr r3, r31
/* 800A24A4  48 2C 2C 2D */	bl abs
/* 800A24A8  2C 03 08 00 */	cmpwi r3, 0x800
/* 800A24AC  40 81 00 48 */	ble lbl_800A24F4
/* 800A24B0  C0 42 98 24 */	lfs f2, lit_56018(r2)
/* 800A24B4  7F E0 07 35 */	extsh. r0, r31
/* 800A24B8  38 1F 08 00 */	addi r0, r31, 0x800
/* 800A24BC  40 81 00 08 */	ble lbl_800A24C4
/* 800A24C0  38 1F F8 00 */	addi r0, r31, -2048
lbl_800A24C4:
/* 800A24C4  C8 22 92 B0 */	lfd f1, lit_6025(r2)
/* 800A24C8  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 800A24CC  90 01 00 2C */	stw r0, 0x2c(r1)
/* 800A24D0  3C 00 43 30 */	lis r0, 0x4330
/* 800A24D4  90 01 00 28 */	stw r0, 0x28(r1)
/* 800A24D8  C8 01 00 28 */	lfd f0, 0x28(r1)
/* 800A24DC  EC 00 08 28 */	fsubs f0, f0, f1
/* 800A24E0  EC 02 00 32 */	fmuls f0, f2, f0
/* 800A24E4  FC 00 00 1E */	fctiwz f0, f0
/* 800A24E8  D8 01 00 20 */	stfd f0, 0x20(r1)
/* 800A24EC  83 A1 00 24 */	lwz r29, 0x24(r1)
/* 800A24F0  48 00 00 08 */	b lbl_800A24F8
lbl_800A24F4:
/* 800A24F4  3B A0 00 00 */	li r29, 0
lbl_800A24F8:
/* 800A24F8  A0 1E 2F E8 */	lhz r0, 0x2fe8(r30)
/* 800A24FC  28 00 00 F2 */	cmplwi r0, 0xf2
/* 800A2500  40 82 00 14 */	bne lbl_800A2514
/* 800A2504  7F C3 F3 78 */	mr r3, r30
/* 800A2508  48 01 0F F9 */	bl checkAttentionState__9daAlink_cFv
/* 800A250C  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 800A2510  40 82 00 18 */	bne lbl_800A2528
lbl_800A2514:
/* 800A2514  3C 60 80 39 */	lis r3, m__20daAlinkHIO_wlMove_c0@ha /* 0x8038EE28@ha */
/* 800A2518  38 63 EE 28 */	addi r3, r3, m__20daAlinkHIO_wlMove_c0@l /* 0x8038EE28@l */
/* 800A251C  C0 03 00 8C */	lfs f0, 0x8c(r3)
/* 800A2520  FC 1F 00 40 */	fcmpo cr0, f31, f0
/* 800A2524  40 80 00 A8 */	bge lbl_800A25CC
lbl_800A2528:
/* 800A2528  3B E0 00 00 */	li r31, 0
/* 800A252C  48 00 00 A0 */	b lbl_800A25CC
lbl_800A2530:
/* 800A2530  28 04 00 F1 */	cmplwi r4, 0xf1
/* 800A2534  41 82 00 0C */	beq lbl_800A2540
/* 800A2538  28 04 01 29 */	cmplwi r4, 0x129
/* 800A253C  40 82 00 88 */	bne lbl_800A25C4
lbl_800A2540:
/* 800A2540  A8 7E 04 E6 */	lha r3, 0x4e6(r30)
/* 800A2544  A8 1E 2F E6 */	lha r0, 0x2fe6(r30)
/* 800A2548  7C 03 00 00 */	cmpw r3, r0
/* 800A254C  41 82 00 78 */	beq lbl_800A25C4
/* 800A2550  3B E0 00 00 */	li r31, 0
/* 800A2554  7C 00 18 50 */	subf r0, r0, r3
/* 800A2558  7C 03 07 34 */	extsh r3, r0
/* 800A255C  28 04 01 29 */	cmplwi r4, 0x129
/* 800A2560  40 82 00 30 */	bne lbl_800A2590
/* 800A2564  7C 60 07 35 */	extsh. r0, r3
/* 800A2568  41 80 00 18 */	blt lbl_800A2580
/* 800A256C  38 63 FF 00 */	addi r3, r3, -256
/* 800A2570  7C 60 07 35 */	extsh. r0, r3
/* 800A2574  40 80 00 1C */	bge lbl_800A2590
/* 800A2578  38 60 00 00 */	li r3, 0
/* 800A257C  48 00 00 14 */	b lbl_800A2590
lbl_800A2580:
/* 800A2580  38 63 01 00 */	addi r3, r3, 0x100
/* 800A2584  7C 60 07 35 */	extsh. r0, r3
/* 800A2588  40 81 00 08 */	ble lbl_800A2590
/* 800A258C  38 60 00 00 */	li r3, 0
lbl_800A2590:
/* 800A2590  7C 63 07 34 */	extsh r3, r3
/* 800A2594  2C 03 FD 00 */	cmpwi r3, -768
/* 800A2598  40 80 00 0C */	bge lbl_800A25A4
/* 800A259C  38 00 FD 00 */	li r0, -768
/* 800A25A0  48 00 00 14 */	b lbl_800A25B4
lbl_800A25A4:
/* 800A25A4  2C 03 03 00 */	cmpwi r3, 0x300
/* 800A25A8  38 00 03 00 */	li r0, 0x300
/* 800A25AC  41 81 00 08 */	bgt lbl_800A25B4
/* 800A25B0  7C 60 1B 78 */	mr r0, r3
lbl_800A25B4:
/* 800A25B4  7C 1D 07 34 */	extsh r29, r0
/* 800A25B8  57 A0 18 38 */	slwi r0, r29, 3
/* 800A25BC  7C 1D 07 34 */	extsh r29, r0
/* 800A25C0  48 00 00 0C */	b lbl_800A25CC
lbl_800A25C4:
/* 800A25C4  3B E0 00 00 */	li r31, 0
/* 800A25C8  3B A0 00 00 */	li r29, 0
lbl_800A25CC:
/* 800A25CC  38 7E 2F EE */	addi r3, r30, 0x2fee
/* 800A25D0  7F E4 FB 78 */	mr r4, r31
/* 800A25D4  38 A0 00 04 */	li r5, 4
/* 800A25D8  38 C0 04 B0 */	li r6, 0x4b0
/* 800A25DC  38 E0 00 C8 */	li r7, 0xc8
/* 800A25E0  48 1C DF 61 */	bl cLib_addCalcAngleS__FPsssss
/* 800A25E4  80 1E 05 74 */	lwz r0, 0x574(r30)
/* 800A25E8  54 00 01 8D */	rlwinm. r0, r0, 0, 6, 6
/* 800A25EC  41 82 00 4C */	beq lbl_800A2638
/* 800A25F0  A8 1E 2F EE */	lha r0, 0x2fee(r30)
/* 800A25F4  B0 1E 04 E8 */	sth r0, 0x4e8(r30)
/* 800A25F8  7F A0 07 35 */	extsh. r0, r29
/* 800A25FC  40 82 00 20 */	bne lbl_800A261C
/* 800A2600  38 7E 2F EC */	addi r3, r30, 0x2fec
/* 800A2604  38 80 00 00 */	li r4, 0
/* 800A2608  38 A0 00 02 */	li r5, 2
/* 800A260C  38 C0 0F A0 */	li r6, 0xfa0
/* 800A2610  38 E0 03 E8 */	li r7, 0x3e8
/* 800A2614  48 1C DF 2D */	bl cLib_addCalcAngleS__FPsssss
/* 800A2618  48 00 00 D8 */	b lbl_800A26F0
lbl_800A261C:
/* 800A261C  38 7E 2F EC */	addi r3, r30, 0x2fec
/* 800A2620  7F A4 EB 78 */	mr r4, r29
/* 800A2624  38 A0 00 04 */	li r5, 4
/* 800A2628  38 C0 04 B0 */	li r6, 0x4b0
/* 800A262C  38 E0 00 C8 */	li r7, 0xc8
/* 800A2630  48 1C DF 11 */	bl cLib_addCalcAngleS__FPsssss
/* 800A2634  48 00 00 BC */	b lbl_800A26F0
lbl_800A2638:
/* 800A2638  A0 1E 2F E8 */	lhz r0, 0x2fe8(r30)
/* 800A263C  28 00 01 53 */	cmplwi r0, 0x153
/* 800A2640  41 82 00 B0 */	beq lbl_800A26F0
/* 800A2644  A8 1E 2F EE */	lha r0, 0x2fee(r30)
/* 800A2648  7C 00 0E 70 */	srawi r0, r0, 1
/* 800A264C  B0 1E 04 E8 */	sth r0, 0x4e8(r30)
/* 800A2650  A8 1E 04 E8 */	lha r0, 0x4e8(r30)
/* 800A2654  B0 1E 05 A0 */	sth r0, 0x5a0(r30)
/* 800A2658  A0 9E 2F E8 */	lhz r4, 0x2fe8(r30)
/* 800A265C  28 04 00 04 */	cmplwi r4, 4
/* 800A2660  41 82 00 0C */	beq lbl_800A266C
/* 800A2664  28 04 00 03 */	cmplwi r4, 3
/* 800A2668  40 82 00 88 */	bne lbl_800A26F0
lbl_800A266C:
/* 800A266C  A8 7E 2F E6 */	lha r3, 0x2fe6(r30)
/* 800A2670  A8 1E 04 E6 */	lha r0, 0x4e6(r30)
/* 800A2674  7C 03 00 50 */	subf r0, r3, r0
/* 800A2678  7C 00 07 34 */	extsh r0, r0
/* 800A267C  54 00 08 3C */	slwi r0, r0, 1
/* 800A2680  7C 00 07 34 */	extsh r0, r0
/* 800A2684  28 04 00 03 */	cmplwi r4, 3
/* 800A2688  40 82 00 0C */	bne lbl_800A2694
/* 800A268C  54 00 08 3C */	slwi r0, r0, 1
/* 800A2690  7C 00 07 34 */	extsh r0, r0
lbl_800A2694:
/* 800A2694  7C 03 07 34 */	extsh r3, r0
/* 800A2698  2C 03 F4 00 */	cmpwi r3, -3072
/* 800A269C  40 80 00 0C */	bge lbl_800A26A8
/* 800A26A0  38 00 F4 00 */	li r0, -3072
/* 800A26A4  48 00 00 14 */	b lbl_800A26B8
lbl_800A26A8:
/* 800A26A8  2C 03 0C 00 */	cmpwi r3, 0xc00
/* 800A26AC  38 00 0C 00 */	li r0, 0xc00
/* 800A26B0  41 81 00 08 */	bgt lbl_800A26B8
/* 800A26B4  7C 60 1B 78 */	mr r0, r3
lbl_800A26B8:
/* 800A26B8  7C 04 07 35 */	extsh. r4, r0
/* 800A26BC  40 82 00 20 */	bne lbl_800A26DC
/* 800A26C0  38 7E 30 A2 */	addi r3, r30, 0x30a2
/* 800A26C4  38 80 00 00 */	li r4, 0
/* 800A26C8  38 A0 00 02 */	li r5, 2
/* 800A26CC  38 C0 0F A0 */	li r6, 0xfa0
/* 800A26D0  38 E0 03 E8 */	li r7, 0x3e8
/* 800A26D4  48 1C DE 6D */	bl cLib_addCalcAngleS__FPsssss
/* 800A26D8  48 00 00 18 */	b lbl_800A26F0
lbl_800A26DC:
/* 800A26DC  38 7E 30 A2 */	addi r3, r30, 0x30a2
/* 800A26E0  38 A0 00 04 */	li r5, 4
/* 800A26E4  38 C0 04 B0 */	li r6, 0x4b0
/* 800A26E8  38 E0 00 C8 */	li r7, 0xc8
/* 800A26EC  48 1C DE 55 */	bl cLib_addCalcAngleS__FPsssss
lbl_800A26F0:
/* 800A26F0  E3 E1 00 48 */	psq_l f31, 72(r1), 0, 0 /* qr0 */
/* 800A26F4  CB E1 00 40 */	lfd f31, 0x40(r1)
/* 800A26F8  39 61 00 40 */	addi r11, r1, 0x40
/* 800A26FC  48 2B FB 2D */	bl _restgpr_29
/* 800A2700  80 01 00 54 */	lwz r0, 0x54(r1)
/* 800A2704  7C 08 03 A6 */	mtlr r0
/* 800A2708  38 21 00 50 */	addi r1, r1, 0x50
/* 800A270C  4E 80 00 20 */	blr 
