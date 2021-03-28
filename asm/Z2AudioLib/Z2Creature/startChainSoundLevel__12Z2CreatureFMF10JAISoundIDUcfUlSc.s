lbl_802C2290:
/* 802C2290  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 802C2294  7C 08 02 A6 */	mflr r0
/* 802C2298  90 01 00 34 */	stw r0, 0x34(r1)
/* 802C229C  DB E1 00 20 */	stfd f31, 0x20(r1)
/* 802C22A0  F3 E1 00 28 */	psq_st f31, 40(r1), 0, 0 /* qr0 */
/* 802C22A4  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 802C22A8  FF E0 08 90 */	fmr f31, f1
/* 802C22AC  54 A0 06 3E */	clrlwi r0, r5, 0x18
/* 802C22B0  2C 00 00 02 */	cmpwi r0, 2
/* 802C22B4  41 82 01 84 */	beq lbl_802C2438
/* 802C22B8  40 80 00 14 */	bge lbl_802C22CC
/* 802C22BC  2C 00 00 00 */	cmpwi r0, 0
/* 802C22C0  41 82 00 18 */	beq lbl_802C22D8
/* 802C22C4  40 80 00 C4 */	bge lbl_802C2388
/* 802C22C8  48 00 01 C8 */	b lbl_802C2490
lbl_802C22CC:
/* 802C22CC  2C 00 00 04 */	cmpwi r0, 4
/* 802C22D0  40 80 01 C0 */	bge lbl_802C2490
/* 802C22D4  48 00 01 90 */	b lbl_802C2464
lbl_802C22D8:
/* 802C22D8  80 04 00 00 */	lwz r0, 0(r4)
/* 802C22DC  90 01 00 14 */	stw r0, 0x14(r1)
/* 802C22E0  38 63 00 A4 */	addi r3, r3, 0xa4
/* 802C22E4  38 81 00 14 */	addi r4, r1, 0x14
/* 802C22E8  7C C5 33 78 */	mr r5, r6
/* 802C22EC  7C E6 3B 78 */	mr r6, r7
/* 802C22F0  81 83 00 10 */	lwz r12, 0x10(r3)
/* 802C22F4  81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 802C22F8  7D 89 03 A6 */	mtctr r12
/* 802C22FC  4E 80 04 21 */	bctrl 
/* 802C2300  7C 7F 1B 79 */	or. r31, r3, r3
/* 802C2304  41 82 00 7C */	beq lbl_802C2380
/* 802C2308  80 1F 00 00 */	lwz r0, 0(r31)
/* 802C230C  28 00 00 00 */	cmplwi r0, 0
/* 802C2310  41 82 00 70 */	beq lbl_802C2380
/* 802C2314  C0 02 C2 08 */	lfs f0, lit_3663(r2)
/* 802C2318  FC 1F 00 40 */	fcmpo cr0, f31, f0
/* 802C231C  40 81 00 0C */	ble lbl_802C2328
/* 802C2320  C3 E2 C2 78 */	lfs f31, lit_4681(r2)
/* 802C2324  48 00 00 14 */	b lbl_802C2338
lbl_802C2328:
/* 802C2328  C0 02 C2 70 */	lfs f0, lit_4561(r2)
/* 802C232C  EC 20 07 F2 */	fmuls f1, f0, f31
/* 802C2330  C0 02 C2 0C */	lfs f0, lit_3664(r2)
/* 802C2334  EF E1 00 24 */	fdivs f31, f1, f0
lbl_802C2338:
/* 802C2338  C0 22 C2 7C */	lfs f1, lit_4682(r2)
/* 802C233C  C0 42 C2 20 */	lfs f2, lit_3669(r2)
/* 802C2340  C0 62 C2 1C */	lfs f3, lit_3668(r2)
/* 802C2344  4B FE 74 D1 */	bl getRandom__6Z2CalcFfff
/* 802C2348  C0 02 C2 64 */	lfs f0, lit_4192(r2)
/* 802C234C  EC 00 08 2A */	fadds f0, f0, f1
/* 802C2350  EF FF 00 2A */	fadds f31, f31, f0
/* 802C2354  C0 02 C2 78 */	lfs f0, lit_4681(r2)
/* 802C2358  FC 1F 00 40 */	fcmpo cr0, f31, f0
/* 802C235C  40 81 00 08 */	ble lbl_802C2364
/* 802C2360  FF E0 00 90 */	fmr f31, f0
lbl_802C2364:
/* 802C2364  80 7F 00 00 */	lwz r3, 0(r31)
/* 802C2368  38 63 00 48 */	addi r3, r3, 0x48
/* 802C236C  FC 20 F8 90 */	fmr f1, f31
/* 802C2370  38 80 00 03 */	li r4, 3
/* 802C2374  4B FE 0A 99 */	bl movePitch__18JAISoundParamsMoveFfUl
/* 802C2378  7F E3 FB 78 */	mr r3, r31
/* 802C237C  48 00 01 18 */	b lbl_802C2494
lbl_802C2380:
/* 802C2380  38 60 00 00 */	li r3, 0
/* 802C2384  48 00 01 10 */	b lbl_802C2494
lbl_802C2388:
/* 802C2388  80 04 00 00 */	lwz r0, 0(r4)
/* 802C238C  90 01 00 10 */	stw r0, 0x10(r1)
/* 802C2390  38 63 00 A4 */	addi r3, r3, 0xa4
/* 802C2394  38 81 00 10 */	addi r4, r1, 0x10
/* 802C2398  7C C5 33 78 */	mr r5, r6
/* 802C239C  7C E6 3B 78 */	mr r6, r7
/* 802C23A0  81 83 00 10 */	lwz r12, 0x10(r3)
/* 802C23A4  81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 802C23A8  7D 89 03 A6 */	mtctr r12
/* 802C23AC  4E 80 04 21 */	bctrl 
/* 802C23B0  7C 7F 1B 79 */	or. r31, r3, r3
/* 802C23B4  41 82 00 7C */	beq lbl_802C2430
/* 802C23B8  80 1F 00 00 */	lwz r0, 0(r31)
/* 802C23BC  28 00 00 00 */	cmplwi r0, 0
/* 802C23C0  41 82 00 70 */	beq lbl_802C2430
/* 802C23C4  C0 02 C2 08 */	lfs f0, lit_3663(r2)
/* 802C23C8  FC 1F 00 40 */	fcmpo cr0, f31, f0
/* 802C23CC  40 81 00 0C */	ble lbl_802C23D8
/* 802C23D0  C3 E2 C2 78 */	lfs f31, lit_4681(r2)
/* 802C23D4  48 00 00 14 */	b lbl_802C23E8
lbl_802C23D8:
/* 802C23D8  C0 02 C2 70 */	lfs f0, lit_4561(r2)
/* 802C23DC  EC 20 07 F2 */	fmuls f1, f0, f31
/* 802C23E0  C0 02 C2 0C */	lfs f0, lit_3664(r2)
/* 802C23E4  EF E1 00 24 */	fdivs f31, f1, f0
lbl_802C23E8:
/* 802C23E8  C0 22 C2 7C */	lfs f1, lit_4682(r2)
/* 802C23EC  C0 42 C2 20 */	lfs f2, lit_3669(r2)
/* 802C23F0  C0 62 C2 1C */	lfs f3, lit_3668(r2)
/* 802C23F4  4B FE 74 21 */	bl getRandom__6Z2CalcFfff
/* 802C23F8  C0 02 C2 1C */	lfs f0, lit_3668(r2)
/* 802C23FC  EC 00 08 2A */	fadds f0, f0, f1
/* 802C2400  EF FF 00 2A */	fadds f31, f31, f0
/* 802C2404  C0 02 C2 78 */	lfs f0, lit_4681(r2)
/* 802C2408  FC 1F 00 40 */	fcmpo cr0, f31, f0
/* 802C240C  40 81 00 08 */	ble lbl_802C2414
/* 802C2410  FF E0 00 90 */	fmr f31, f0
lbl_802C2414:
/* 802C2414  80 7F 00 00 */	lwz r3, 0(r31)
/* 802C2418  38 63 00 48 */	addi r3, r3, 0x48
/* 802C241C  FC 20 F8 90 */	fmr f1, f31
/* 802C2420  38 80 00 03 */	li r4, 3
/* 802C2424  4B FE 09 E9 */	bl movePitch__18JAISoundParamsMoveFfUl
/* 802C2428  7F E3 FB 78 */	mr r3, r31
/* 802C242C  48 00 00 68 */	b lbl_802C2494
lbl_802C2430:
/* 802C2430  38 60 00 00 */	li r3, 0
/* 802C2434  48 00 00 60 */	b lbl_802C2494
lbl_802C2438:
/* 802C2438  80 04 00 00 */	lwz r0, 0(r4)
/* 802C243C  90 01 00 0C */	stw r0, 0xc(r1)
/* 802C2440  38 63 00 E4 */	addi r3, r3, 0xe4
/* 802C2444  38 81 00 0C */	addi r4, r1, 0xc
/* 802C2448  7C C5 33 78 */	mr r5, r6
/* 802C244C  7C E6 3B 78 */	mr r6, r7
/* 802C2450  81 83 00 10 */	lwz r12, 0x10(r3)
/* 802C2454  81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 802C2458  7D 89 03 A6 */	mtctr r12
/* 802C245C  4E 80 04 21 */	bctrl 
/* 802C2460  48 00 00 34 */	b lbl_802C2494
lbl_802C2464:
/* 802C2464  80 04 00 00 */	lwz r0, 0(r4)
/* 802C2468  90 01 00 08 */	stw r0, 8(r1)
/* 802C246C  38 63 01 04 */	addi r3, r3, 0x104
/* 802C2470  38 81 00 08 */	addi r4, r1, 8
/* 802C2474  7C C5 33 78 */	mr r5, r6
/* 802C2478  7C E6 3B 78 */	mr r6, r7
/* 802C247C  81 83 00 10 */	lwz r12, 0x10(r3)
/* 802C2480  81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 802C2484  7D 89 03 A6 */	mtctr r12
/* 802C2488  4E 80 04 21 */	bctrl 
/* 802C248C  48 00 00 08 */	b lbl_802C2494
lbl_802C2490:
/* 802C2490  38 60 00 00 */	li r3, 0
lbl_802C2494:
/* 802C2494  E3 E1 00 28 */	psq_l f31, 40(r1), 0, 0 /* qr0 */
/* 802C2498  CB E1 00 20 */	lfd f31, 0x20(r1)
/* 802C249C  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 802C24A0  80 01 00 34 */	lwz r0, 0x34(r1)
/* 802C24A4  7C 08 03 A6 */	mtlr r0
/* 802C24A8  38 21 00 30 */	addi r1, r1, 0x30
/* 802C24AC  4E 80 00 20 */	blr 
