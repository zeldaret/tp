lbl_802D233C:
/* 802D233C  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 802D2340  7C 08 02 A6 */	mflr r0
/* 802D2344  90 01 00 34 */	stw r0, 0x34(r1)
/* 802D2348  39 61 00 30 */	addi r11, r1, 0x30
/* 802D234C  48 08 FE 79 */	bl _savegpr_23
/* 802D2350  7C 7E 1B 78 */	mr r30, r3
/* 802D2354  7C 98 23 78 */	mr r24, r4
/* 802D2358  7C BF 2B 78 */	mr r31, r5
/* 802D235C  7C D7 33 78 */	mr r23, r6
/* 802D2360  7C F9 3B 78 */	mr r25, r7
/* 802D2364  7D 1A 43 78 */	mr r26, r8
/* 802D2368  7D 3B 4B 78 */	mr r27, r9
/* 802D236C  7D 5C 53 78 */	mr r28, r10
/* 802D2370  3B A0 00 00 */	li r29, 0
/* 802D2374  38 A0 00 00 */	li r5, 0
/* 802D2378  38 C0 00 00 */	li r6, 0
/* 802D237C  4B FF FE CD */	bl checkOkAddress__7JKRAramFPUcUlP12JKRAramBlockUl
/* 802D2380  2C 17 00 01 */	cmpwi r23, 1
/* 802D2384  40 82 00 20 */	bne lbl_802D23A4
/* 802D2388  7F C3 F3 78 */	mr r3, r30
/* 802D238C  48 00 99 6D */	bl checkCompressed__9JKRDecompFPUc
/* 802D2390  2C 03 00 03 */	cmpwi r3, 3
/* 802D2394  40 82 00 08 */	bne lbl_802D239C
/* 802D2398  38 60 00 00 */	li r3, 0
lbl_802D239C:
/* 802D239C  30 03 FF FF */	addic r0, r3, -1
/* 802D23A0  7E E0 19 10 */	subfe r23, r0, r3
lbl_802D23A4:
/* 802D23A4  2C 17 00 01 */	cmpwi r23, 1
/* 802D23A8  40 82 01 54 */	bne lbl_802D24FC
/* 802D23AC  88 BE 00 07 */	lbz r5, 7(r30)
/* 802D23B0  88 9E 00 06 */	lbz r4, 6(r30)
/* 802D23B4  88 7E 00 04 */	lbz r3, 4(r30)
/* 802D23B8  88 1E 00 05 */	lbz r0, 5(r30)
/* 802D23BC  54 00 80 1E */	slwi r0, r0, 0x10
/* 802D23C0  50 60 C0 0E */	rlwimi r0, r3, 0x18, 0, 7
/* 802D23C4  50 80 44 2E */	rlwimi r0, r4, 8, 0x10, 0x17
/* 802D23C8  7C B7 03 78 */	or r23, r5, r0
/* 802D23CC  28 19 00 00 */	cmplwi r25, 0
/* 802D23D0  41 82 00 0C */	beq lbl_802D23DC
/* 802D23D4  7C 19 B8 40 */	cmplw r25, r23
/* 802D23D8  40 81 00 0C */	ble lbl_802D23E4
lbl_802D23DC:
/* 802D23DC  38 17 00 1F */	addi r0, r23, 0x1f
/* 802D23E0  54 19 00 34 */	rlwinm r25, r0, 0, 0, 0x1a
lbl_802D23E4:
/* 802D23E4  28 18 00 00 */	cmplwi r24, 0
/* 802D23E8  40 82 00 50 */	bne lbl_802D2438
/* 802D23EC  80 6D 8E 48 */	lwz r3, sAramObject__7JKRAram(r13)
/* 802D23F0  80 63 00 94 */	lwz r3, 0x94(r3)
/* 802D23F4  7F 24 CB 78 */	mr r4, r25
/* 802D23F8  38 A0 00 00 */	li r5, 0
/* 802D23FC  48 00 0B C1 */	bl alloc__11JKRAramHeapFUlQ211JKRAramHeap10EAllocMode
/* 802D2400  7C 7D 1B 78 */	mr r29, r3
/* 802D2404  28 03 00 00 */	cmplwi r3, 0
/* 802D2408  40 82 00 0C */	bne lbl_802D2414
/* 802D240C  38 60 00 00 */	li r3, 0
/* 802D2410  48 00 01 8C */	b lbl_802D259C
lbl_802D2414:
/* 802D2414  2C 1B 00 00 */	cmpwi r27, 0
/* 802D2418  40 80 00 14 */	bge lbl_802D242C
/* 802D241C  80 8D 8E 48 */	lwz r4, sAramObject__7JKRAram(r13)
/* 802D2420  80 84 00 94 */	lwz r4, 0x94(r4)
/* 802D2424  88 04 00 40 */	lbz r0, 0x40(r4)
/* 802D2428  48 00 00 08 */	b lbl_802D2430
lbl_802D242C:
/* 802D242C  57 60 06 3E */	clrlwi r0, r27, 0x18
lbl_802D2430:
/* 802D2430  98 03 00 20 */	stb r0, 0x20(r3)
/* 802D2434  83 03 00 14 */	lwz r24, 0x14(r3)
lbl_802D2438:
/* 802D2438  28 1F 00 00 */	cmplwi r31, 0
/* 802D243C  41 82 00 0C */	beq lbl_802D2448
/* 802D2440  7C 1F B8 40 */	cmplw r31, r23
/* 802D2444  40 81 00 0C */	ble lbl_802D2450
lbl_802D2448:
/* 802D2448  38 17 00 1F */	addi r0, r23, 0x1f
/* 802D244C  54 1F 00 34 */	rlwinm r31, r0, 0, 0, 0x1a
lbl_802D2450:
/* 802D2450  7C 1F C8 40 */	cmplw r31, r25
/* 802D2454  40 81 00 08 */	ble lbl_802D245C
/* 802D2458  7F 3F CB 78 */	mr r31, r25
lbl_802D245C:
/* 802D245C  7F 23 CB 78 */	mr r3, r25
/* 802D2460  38 80 FF E0 */	li r4, -32
/* 802D2464  7F 45 D3 78 */	mr r5, r26
/* 802D2468  4B FF C0 0D */	bl alloc__7JKRHeapFUliP7JKRHeap
/* 802D246C  7C 77 1B 79 */	or. r23, r3, r3
/* 802D2470  40 82 00 30 */	bne lbl_802D24A0
/* 802D2474  28 1D 00 00 */	cmplwi r29, 0
/* 802D2478  41 82 00 20 */	beq lbl_802D2498
/* 802D247C  41 82 00 1C */	beq lbl_802D2498
/* 802D2480  7F A3 EB 78 */	mr r3, r29
/* 802D2484  38 80 00 01 */	li r4, 1
/* 802D2488  81 9D 00 00 */	lwz r12, 0(r29)
/* 802D248C  81 8C 00 08 */	lwz r12, 8(r12)
/* 802D2490  7D 89 03 A6 */	mtctr r12
/* 802D2494  4E 80 04 21 */	bctrl 
lbl_802D2498:
/* 802D2498  38 60 00 00 */	li r3, 0
/* 802D249C  48 00 01 00 */	b lbl_802D259C
lbl_802D24A0:
/* 802D24A0  7F C3 F3 78 */	mr r3, r30
/* 802D24A4  7E E4 BB 78 */	mr r4, r23
/* 802D24A8  7F 25 CB 78 */	mr r5, r25
/* 802D24AC  38 C0 00 00 */	li r6, 0
/* 802D24B0  48 00 94 D9 */	bl orderSync__9JKRDecompFPUcPUcUlUl
/* 802D24B4  38 60 00 00 */	li r3, 0
/* 802D24B8  7E E4 BB 78 */	mr r4, r23
/* 802D24BC  7F 05 C3 78 */	mr r5, r24
/* 802D24C0  7F E6 FB 78 */	mr r6, r31
/* 802D24C4  7F A7 EB 78 */	mr r7, r29
/* 802D24C8  48 00 13 71 */	bl orderSync__12JKRAramPieceFiUlUlUlP12JKRAramBlock
/* 802D24CC  7E E3 BB 78 */	mr r3, r23
/* 802D24D0  7F 44 D3 78 */	mr r4, r26
/* 802D24D4  4B FF C0 2D */	bl free__7JKRHeapFPvP7JKRHeap
/* 802D24D8  28 1D 00 00 */	cmplwi r29, 0
/* 802D24DC  40 82 00 0C */	bne lbl_802D24E8
/* 802D24E0  38 60 FF FF */	li r3, -1
/* 802D24E4  48 00 00 08 */	b lbl_802D24EC
lbl_802D24E8:
/* 802D24E8  7F A3 EB 78 */	mr r3, r29
lbl_802D24EC:
/* 802D24EC  28 1C 00 00 */	cmplwi r28, 0
/* 802D24F0  41 82 00 AC */	beq lbl_802D259C
/* 802D24F4  93 FC 00 00 */	stw r31, 0(r28)
/* 802D24F8  48 00 00 A4 */	b lbl_802D259C
lbl_802D24FC:
/* 802D24FC  28 19 00 00 */	cmplwi r25, 0
/* 802D2500  41 82 00 10 */	beq lbl_802D2510
/* 802D2504  7C 1F C8 40 */	cmplw r31, r25
/* 802D2508  40 81 00 08 */	ble lbl_802D2510
/* 802D250C  7F 3F CB 78 */	mr r31, r25
lbl_802D2510:
/* 802D2510  28 18 00 00 */	cmplwi r24, 0
/* 802D2514  40 82 00 50 */	bne lbl_802D2564
/* 802D2518  80 6D 8E 48 */	lwz r3, sAramObject__7JKRAram(r13)
/* 802D251C  80 63 00 94 */	lwz r3, 0x94(r3)
/* 802D2520  7F E4 FB 78 */	mr r4, r31
/* 802D2524  38 A0 00 00 */	li r5, 0
/* 802D2528  48 00 0A 95 */	bl alloc__11JKRAramHeapFUlQ211JKRAramHeap10EAllocMode
/* 802D252C  7C 7D 1B 78 */	mr r29, r3
/* 802D2530  2C 1B 00 00 */	cmpwi r27, 0
/* 802D2534  40 80 00 14 */	bge lbl_802D2548
/* 802D2538  80 8D 8E 48 */	lwz r4, sAramObject__7JKRAram(r13)
/* 802D253C  80 84 00 94 */	lwz r4, 0x94(r4)
/* 802D2540  88 04 00 40 */	lbz r0, 0x40(r4)
/* 802D2544  48 00 00 08 */	b lbl_802D254C
lbl_802D2548:
/* 802D2548  57 60 06 3E */	clrlwi r0, r27, 0x18
lbl_802D254C:
/* 802D254C  98 03 00 20 */	stb r0, 0x20(r3)
/* 802D2550  28 03 00 00 */	cmplwi r3, 0
/* 802D2554  40 82 00 0C */	bne lbl_802D2560
/* 802D2558  38 60 00 00 */	li r3, 0
/* 802D255C  48 00 00 40 */	b lbl_802D259C
lbl_802D2560:
/* 802D2560  83 03 00 14 */	lwz r24, 0x14(r3)
lbl_802D2564:
/* 802D2564  38 60 00 00 */	li r3, 0
/* 802D2568  7F C4 F3 78 */	mr r4, r30
/* 802D256C  7F 05 C3 78 */	mr r5, r24
/* 802D2570  7F E6 FB 78 */	mr r6, r31
/* 802D2574  7F A7 EB 78 */	mr r7, r29
/* 802D2578  48 00 12 C1 */	bl orderSync__12JKRAramPieceFiUlUlUlP12JKRAramBlock
/* 802D257C  28 1D 00 00 */	cmplwi r29, 0
/* 802D2580  40 82 00 0C */	bne lbl_802D258C
/* 802D2584  38 60 FF FF */	li r3, -1
/* 802D2588  48 00 00 08 */	b lbl_802D2590
lbl_802D258C:
/* 802D258C  7F A3 EB 78 */	mr r3, r29
lbl_802D2590:
/* 802D2590  28 1C 00 00 */	cmplwi r28, 0
/* 802D2594  41 82 00 08 */	beq lbl_802D259C
/* 802D2598  93 FC 00 00 */	stw r31, 0(r28)
lbl_802D259C:
/* 802D259C  39 61 00 30 */	addi r11, r1, 0x30
/* 802D25A0  48 08 FC 71 */	bl _restgpr_23
/* 802D25A4  80 01 00 34 */	lwz r0, 0x34(r1)
/* 802D25A8  7C 08 03 A6 */	mtlr r0
/* 802D25AC  38 21 00 30 */	addi r1, r1, 0x30
/* 802D25B0  4E 80 00 20 */	blr 
