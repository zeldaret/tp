lbl_805D226C:
/* 805D226C  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 805D2270  7C 08 02 A6 */	mflr r0
/* 805D2274  90 01 00 24 */	stw r0, 0x24(r1)
/* 805D2278  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 805D227C  93 C1 00 18 */	stw r30, 0x18(r1)
/* 805D2280  7C 7E 1B 78 */	mr r30, r3
/* 805D2284  3C 80 80 5E */	lis r4, lit_3932@ha
/* 805D2288  3B E4 CA 54 */	addi r31, r4, lit_3932@l
/* 805D228C  80 03 06 84 */	lwz r0, 0x684(r3)
/* 805D2290  2C 00 00 02 */	cmpwi r0, 2
/* 805D2294  41 82 01 70 */	beq lbl_805D2404
/* 805D2298  40 80 00 14 */	bge lbl_805D22AC
/* 805D229C  2C 00 00 00 */	cmpwi r0, 0
/* 805D22A0  41 82 00 18 */	beq lbl_805D22B8
/* 805D22A4  40 80 00 5C */	bge lbl_805D2300
/* 805D22A8  48 00 02 60 */	b lbl_805D2508
lbl_805D22AC:
/* 805D22AC  2C 00 00 04 */	cmpwi r0, 4
/* 805D22B0  40 80 02 58 */	bge lbl_805D2508
/* 805D22B4  48 00 02 14 */	b lbl_805D24C8
lbl_805D22B8:
/* 805D22B8  C0 1F 00 04 */	lfs f0, 4(r31)
/* 805D22BC  D0 1E 07 FC */	stfs f0, 0x7fc(r30)
/* 805D22C0  38 00 00 01 */	li r0, 1
/* 805D22C4  90 1E 08 40 */	stw r0, 0x840(r30)
/* 805D22C8  38 00 00 00 */	li r0, 0
/* 805D22CC  B0 1E 07 CC */	sth r0, 0x7cc(r30)
/* 805D22D0  88 1E 08 4F */	lbz r0, 0x84f(r30)
/* 805D22D4  1C 00 00 0C */	mulli r0, r0, 0xc
/* 805D22D8  3C 80 80 5E */	lis r4, Ds_breath_id@ha
/* 805D22DC  38 84 D5 F0 */	addi r4, r4, Ds_breath_id@l
/* 805D22E0  7C 84 00 2E */	lwzx r4, r4, r0
/* 805D22E4  38 A0 00 00 */	li r5, 0
/* 805D22E8  C0 3F 01 90 */	lfs f1, 0x190(r31)
/* 805D22EC  C0 5F 00 08 */	lfs f2, 8(r31)
/* 805D22F0  4B FF 97 D9 */	bl setBck__8daB_DS_cFiUcff
/* 805D22F4  38 00 00 01 */	li r0, 1
/* 805D22F8  90 1E 06 84 */	stw r0, 0x684(r30)
/* 805D22FC  48 00 02 0C */	b lbl_805D2508
lbl_805D2300:
/* 805D2300  80 7E 05 B4 */	lwz r3, 0x5b4(r30)
/* 805D2304  38 63 00 0C */	addi r3, r3, 0xc
/* 805D2308  C0 3F 04 08 */	lfs f1, 0x408(r31)
/* 805D230C  4B D5 61 20 */	b checkPass__12J3DFrameCtrlFf
/* 805D2310  2C 03 00 00 */	cmpwi r3, 0
/* 805D2314  41 82 00 3C */	beq lbl_805D2350
/* 805D2318  7F C3 F3 78 */	mr r3, r30
/* 805D231C  38 80 00 00 */	li r4, 0
/* 805D2320  4B FF 9E 39 */	bl hand_smokeSet__8daB_DS_cFUc
/* 805D2324  3C 60 00 07 */	lis r3, 0x0007 /* 0x000704BC@ha */
/* 805D2328  38 03 04 BC */	addi r0, r3, 0x04BC /* 0x000704BC@l */
/* 805D232C  90 01 00 08 */	stw r0, 8(r1)
/* 805D2330  38 7E 05 DC */	addi r3, r30, 0x5dc
/* 805D2334  38 81 00 08 */	addi r4, r1, 8
/* 805D2338  38 A0 00 00 */	li r5, 0
/* 805D233C  38 C0 FF FF */	li r6, -1
/* 805D2340  81 9E 05 DC */	lwz r12, 0x5dc(r30)
/* 805D2344  81 8C 00 14 */	lwz r12, 0x14(r12)
/* 805D2348  7D 89 03 A6 */	mtctr r12
/* 805D234C  4E 80 04 21 */	bctrl 
lbl_805D2350:
/* 805D2350  80 7E 05 B4 */	lwz r3, 0x5b4(r30)
/* 805D2354  C0 03 00 1C */	lfs f0, 0x1c(r3)
/* 805D2358  FC 00 00 1E */	fctiwz f0, f0
/* 805D235C  D8 01 00 10 */	stfd f0, 0x10(r1)
/* 805D2360  80 01 00 14 */	lwz r0, 0x14(r1)
/* 805D2364  2C 00 00 52 */	cmpwi r0, 0x52
/* 805D2368  40 81 00 18 */	ble lbl_805D2380
/* 805D236C  38 7E 07 CC */	addi r3, r30, 0x7cc
/* 805D2370  38 80 27 10 */	li r4, 0x2710
/* 805D2374  38 A0 00 0A */	li r5, 0xa
/* 805D2378  38 C0 01 00 */	li r6, 0x100
/* 805D237C  4B C9 E2 8C */	b cLib_addCalcAngleS2__FPssss
lbl_805D2380:
/* 805D2380  80 7E 05 B4 */	lwz r3, 0x5b4(r30)
/* 805D2384  38 80 00 01 */	li r4, 1
/* 805D2388  88 03 00 11 */	lbz r0, 0x11(r3)
/* 805D238C  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 805D2390  40 82 00 18 */	bne lbl_805D23A8
/* 805D2394  C0 3F 00 04 */	lfs f1, 4(r31)
/* 805D2398  C0 03 00 18 */	lfs f0, 0x18(r3)
/* 805D239C  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 805D23A0  41 82 00 08 */	beq lbl_805D23A8
/* 805D23A4  38 80 00 00 */	li r4, 0
lbl_805D23A8:
/* 805D23A8  54 80 06 3F */	clrlwi. r0, r4, 0x18
/* 805D23AC  41 82 01 5C */	beq lbl_805D2508
/* 805D23B0  7F C3 F3 78 */	mr r3, r30
/* 805D23B4  3C 80 80 5E */	lis r4, Ds_breath_id@ha
/* 805D23B8  38 84 D5 F0 */	addi r4, r4, Ds_breath_id@l
/* 805D23BC  88 1E 08 4F */	lbz r0, 0x84f(r30)
/* 805D23C0  1C 00 00 0C */	mulli r0, r0, 0xc
/* 805D23C4  7C 84 02 14 */	add r4, r4, r0
/* 805D23C8  80 84 00 04 */	lwz r4, 4(r4)
/* 805D23CC  38 A0 00 02 */	li r5, 2
/* 805D23D0  C0 3F 03 B8 */	lfs f1, 0x3b8(r31)
/* 805D23D4  C0 5F 00 08 */	lfs f2, 8(r31)
/* 805D23D8  4B FF 96 F1 */	bl setBck__8daB_DS_cFiUcff
/* 805D23DC  38 00 00 B9 */	li r0, 0xb9
/* 805D23E0  90 1E 08 1C */	stw r0, 0x81c(r30)
/* 805D23E4  C0 1F 00 04 */	lfs f0, 4(r31)
/* 805D23E8  D0 1E 07 D4 */	stfs f0, 0x7d4(r30)
/* 805D23EC  38 00 00 00 */	li r0, 0
/* 805D23F0  3C 60 80 5E */	lis r3, struct_805DDB10+0x2@ha
/* 805D23F4  98 03 DB 12 */	stb r0, struct_805DDB10+0x2@l(r3)
/* 805D23F8  38 00 00 02 */	li r0, 2
/* 805D23FC  90 1E 06 84 */	stw r0, 0x684(r30)
/* 805D2400  48 00 01 08 */	b lbl_805D2508
lbl_805D2404:
/* 805D2404  80 1E 08 1C */	lwz r0, 0x81c(r30)
/* 805D2408  2C 00 00 00 */	cmpwi r0, 0
/* 805D240C  41 82 00 1C */	beq lbl_805D2428
/* 805D2410  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 805D2414  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 805D2418  80 63 5D AC */	lwz r3, 0x5dac(r3)
/* 805D241C  A8 03 05 6C */	lha r0, 0x56c(r3)
/* 805D2420  2C 00 00 0A */	cmpwi r0, 0xa
/* 805D2424  40 81 00 44 */	ble lbl_805D2468
lbl_805D2428:
/* 805D2428  7F C3 F3 78 */	mr r3, r30
/* 805D242C  3C 80 80 5E */	lis r4, Ds_breath_id@ha
/* 805D2430  38 84 D5 F0 */	addi r4, r4, Ds_breath_id@l
/* 805D2434  88 1E 08 4F */	lbz r0, 0x84f(r30)
/* 805D2438  1C 00 00 0C */	mulli r0, r0, 0xc
/* 805D243C  7C 84 02 14 */	add r4, r4, r0
/* 805D2440  80 84 00 08 */	lwz r4, 8(r4)
/* 805D2444  38 A0 00 00 */	li r5, 0
/* 805D2448  C0 3F 03 B8 */	lfs f1, 0x3b8(r31)
/* 805D244C  C0 5F 00 08 */	lfs f2, 8(r31)
/* 805D2450  4B FF 96 79 */	bl setBck__8daB_DS_cFiUcff
/* 805D2454  C0 1F 00 04 */	lfs f0, 4(r31)
/* 805D2458  D0 1E 07 FC */	stfs f0, 0x7fc(r30)
/* 805D245C  38 00 00 03 */	li r0, 3
/* 805D2460  90 1E 06 84 */	stw r0, 0x684(r30)
/* 805D2464  48 00 00 A4 */	b lbl_805D2508
lbl_805D2468:
/* 805D2468  38 7E 08 1C */	addi r3, r30, 0x81c
/* 805D246C  48 00 A4 79 */	bl func_805DC8E4
/* 805D2470  2C 03 00 00 */	cmpwi r3, 0
/* 805D2474  41 82 00 94 */	beq lbl_805D2508
/* 805D2478  38 7E 07 CC */	addi r3, r30, 0x7cc
/* 805D247C  38 80 13 88 */	li r4, 0x1388
/* 805D2480  38 A0 00 0A */	li r5, 0xa
/* 805D2484  38 C0 01 00 */	li r6, 0x100
/* 805D2488  4B C9 E1 80 */	b cLib_addCalcAngleS2__FPssss
/* 805D248C  38 7E 07 FC */	addi r3, r30, 0x7fc
/* 805D2490  C0 3F 00 08 */	lfs f1, 8(r31)
/* 805D2494  C0 5F 04 04 */	lfs f2, 0x404(r31)
/* 805D2498  FC 60 10 90 */	fmr f3, f2
/* 805D249C  C0 9F 04 0C */	lfs f4, 0x40c(r31)
/* 805D24A0  4B C9 D4 DC */	b cLib_addCalc__FPfffff
/* 805D24A4  38 60 00 01 */	li r3, 1
/* 805D24A8  38 80 00 05 */	li r4, 5
/* 805D24AC  C0 3E 07 FC */	lfs f1, 0x7fc(r30)
/* 805D24B0  4B BD 63 5C */	b dKy_custom_colset__FUcUcf
/* 805D24B4  38 00 00 05 */	li r0, 5
/* 805D24B8  90 1E 08 40 */	stw r0, 0x840(r30)
/* 805D24BC  7F C3 F3 78 */	mr r3, r30
/* 805D24C0  4B FF FB 7D */	bl breath_smokeSet__8daB_DS_cFv
/* 805D24C4  48 00 00 44 */	b lbl_805D2508
lbl_805D24C8:
/* 805D24C8  80 7E 05 B4 */	lwz r3, 0x5b4(r30)
/* 805D24CC  38 80 00 01 */	li r4, 1
/* 805D24D0  88 03 00 11 */	lbz r0, 0x11(r3)
/* 805D24D4  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 805D24D8  40 82 00 18 */	bne lbl_805D24F0
/* 805D24DC  C0 3F 00 04 */	lfs f1, 4(r31)
/* 805D24E0  C0 03 00 18 */	lfs f0, 0x18(r3)
/* 805D24E4  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 805D24E8  41 82 00 08 */	beq lbl_805D24F0
/* 805D24EC  38 80 00 00 */	li r4, 0
lbl_805D24F0:
/* 805D24F0  54 80 06 3F */	clrlwi. r0, r4, 0x18
/* 805D24F4  41 82 00 14 */	beq lbl_805D2508
/* 805D24F8  7F C3 F3 78 */	mr r3, r30
/* 805D24FC  38 80 00 00 */	li r4, 0
/* 805D2500  38 A0 00 00 */	li r5, 0
/* 805D2504  4B FF 96 71 */	bl setActionMode__8daB_DS_cFii
lbl_805D2508:
/* 805D2508  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 805D250C  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 805D2510  80 01 00 24 */	lwz r0, 0x24(r1)
/* 805D2514  7C 08 03 A6 */	mtlr r0
/* 805D2518  38 21 00 20 */	addi r1, r1, 0x20
/* 805D251C  4E 80 00 20 */	blr 
