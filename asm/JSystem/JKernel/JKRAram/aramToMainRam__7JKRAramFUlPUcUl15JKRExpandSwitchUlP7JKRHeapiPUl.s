lbl_802D25B4:
/* 802D25B4  94 21 FF 90 */	stwu r1, -0x70(r1)
/* 802D25B8  7C 08 02 A6 */	mflr r0
/* 802D25BC  90 01 00 74 */	stw r0, 0x74(r1)
/* 802D25C0  39 61 00 70 */	addi r11, r1, 0x70
/* 802D25C4  48 08 FB FD */	bl _savegpr_22
/* 802D25C8  7C 79 1B 78 */	mr r25, r3
/* 802D25CC  7C 9A 23 78 */	mr r26, r4
/* 802D25D0  7C BB 2B 78 */	mr r27, r5
/* 802D25D4  7C D6 33 78 */	mr r22, r6
/* 802D25D8  7C FC 3B 78 */	mr r28, r7
/* 802D25DC  7D 1D 43 78 */	mr r29, r8
/* 802D25E0  7D 3E 4B 78 */	mr r30, r9
/* 802D25E4  7D 5F 53 79 */	or. r31, r10, r10
/* 802D25E8  3B 00 00 00 */	li r24, 0
/* 802D25EC  41 82 00 0C */	beq lbl_802D25F8
/* 802D25F0  38 00 00 00 */	li r0, 0
/* 802D25F4  90 1F 00 00 */	stw r0, 0(r31)
lbl_802D25F8:
/* 802D25F8  7F 43 D3 78 */	mr r3, r26
/* 802D25FC  7F 24 CB 78 */	mr r4, r25
/* 802D2600  38 A0 00 00 */	li r5, 0
/* 802D2604  38 C0 00 00 */	li r6, 0
/* 802D2608  4B FF FC 41 */	bl checkOkAddress__7JKRAramFPUcUlP12JKRAramBlockUl
/* 802D260C  2C 16 00 01 */	cmpwi r22, 1
/* 802D2610  40 82 00 5C */	bne lbl_802D266C
/* 802D2614  38 01 00 27 */	addi r0, r1, 0x27
/* 802D2618  54 17 00 34 */	rlwinm r23, r0, 0, 0, 0x1a
/* 802D261C  38 60 00 01 */	li r3, 1
/* 802D2620  7F 24 CB 78 */	mr r4, r25
/* 802D2624  7E E5 BB 78 */	mr r5, r23
/* 802D2628  38 C0 00 20 */	li r6, 0x20
/* 802D262C  38 E0 00 00 */	li r7, 0
/* 802D2630  48 00 12 09 */	bl orderSync__12JKRAramPieceFiUlUlUlP12JKRAramBlock
/* 802D2634  7E E3 BB 78 */	mr r3, r23
/* 802D2638  48 00 96 C1 */	bl checkCompressed__9JKRDecompFPUc
/* 802D263C  2C 03 00 03 */	cmpwi r3, 3
/* 802D2640  40 82 00 08 */	bne lbl_802D2648
/* 802D2644  38 60 00 00 */	li r3, 0
lbl_802D2648:
/* 802D2648  7C 78 1B 78 */	mr r24, r3
/* 802D264C  88 B7 00 07 */	lbz r5, 7(r23)
/* 802D2650  88 97 00 06 */	lbz r4, 6(r23)
/* 802D2654  88 77 00 04 */	lbz r3, 4(r23)
/* 802D2658  88 17 00 05 */	lbz r0, 5(r23)
/* 802D265C  54 00 80 1E */	slwi r0, r0, 0x10
/* 802D2660  50 60 C0 0E */	rlwimi r0, r3, 0x18, 0, 7
/* 802D2664  50 80 44 2E */	rlwimi r0, r4, 8, 0x10, 0x17
/* 802D2668  7C B7 03 78 */	or r23, r5, r0
lbl_802D266C:
/* 802D266C  2C 18 00 02 */	cmpwi r24, 2
/* 802D2670  40 82 00 74 */	bne lbl_802D26E4
/* 802D2674  28 1C 00 00 */	cmplwi r28, 0
/* 802D2678  41 82 00 10 */	beq lbl_802D2688
/* 802D267C  7C 1C B8 40 */	cmplw r28, r23
/* 802D2680  40 80 00 08 */	bge lbl_802D2688
/* 802D2684  7F 97 E3 78 */	mr r23, r28
lbl_802D2688:
/* 802D2688  28 1A 00 00 */	cmplwi r26, 0
/* 802D268C  40 82 00 18 */	bne lbl_802D26A4
/* 802D2690  7E E3 BB 78 */	mr r3, r23
/* 802D2694  38 80 00 20 */	li r4, 0x20
/* 802D2698  7F A5 EB 78 */	mr r5, r29
/* 802D269C  4B FF BD D9 */	bl alloc__7JKRHeapFUliP7JKRHeap
/* 802D26A0  7C 7A 1B 78 */	mr r26, r3
lbl_802D26A4:
/* 802D26A4  28 1A 00 00 */	cmplwi r26, 0
/* 802D26A8  40 82 00 0C */	bne lbl_802D26B4
/* 802D26AC  38 60 00 00 */	li r3, 0
/* 802D26B0  48 00 01 68 */	b lbl_802D2818
lbl_802D26B4:
/* 802D26B4  7F 43 D3 78 */	mr r3, r26
/* 802D26B8  7F C4 F3 78 */	mr r4, r30
/* 802D26BC  4B FF FC 21 */	bl changeGroupIdIfNeed__7JKRAramFPUci
/* 802D26C0  7F 23 CB 78 */	mr r3, r25
/* 802D26C4  7F 44 D3 78 */	mr r4, r26
/* 802D26C8  7F 65 DB 78 */	mr r5, r27
/* 802D26CC  7E E6 BB 78 */	mr r6, r23
/* 802D26D0  38 E0 00 00 */	li r7, 0
/* 802D26D4  7F E8 FB 78 */	mr r8, r31
/* 802D26D8  48 00 01 59 */	bl JKRDecompressFromAramToMainRam__FUlPvUlUlUlPUl
/* 802D26DC  7F 43 D3 78 */	mr r3, r26
/* 802D26E0  48 00 01 38 */	b lbl_802D2818
lbl_802D26E4:
/* 802D26E4  2C 18 00 01 */	cmpwi r24, 1
/* 802D26E8  40 82 00 D0 */	bne lbl_802D27B8
/* 802D26EC  7F 63 DB 78 */	mr r3, r27
/* 802D26F0  38 80 FF E0 */	li r4, -32
/* 802D26F4  7F A5 EB 78 */	mr r5, r29
/* 802D26F8  4B FF BD 7D */	bl alloc__7JKRHeapFUliP7JKRHeap
/* 802D26FC  7C 78 1B 79 */	or. r24, r3, r3
/* 802D2700  40 82 00 0C */	bne lbl_802D270C
/* 802D2704  38 60 00 00 */	li r3, 0
/* 802D2708  48 00 01 10 */	b lbl_802D2818
lbl_802D270C:
/* 802D270C  38 60 00 01 */	li r3, 1
/* 802D2710  7F 24 CB 78 */	mr r4, r25
/* 802D2714  7F 05 C3 78 */	mr r5, r24
/* 802D2718  7F 66 DB 78 */	mr r6, r27
/* 802D271C  38 E0 00 00 */	li r7, 0
/* 802D2720  48 00 11 19 */	bl orderSync__12JKRAramPieceFiUlUlUlP12JKRAramBlock
/* 802D2724  28 1C 00 00 */	cmplwi r28, 0
/* 802D2728  41 82 00 10 */	beq lbl_802D2738
/* 802D272C  7C 1C B8 40 */	cmplw r28, r23
/* 802D2730  40 80 00 08 */	bge lbl_802D2738
/* 802D2734  7F 97 E3 78 */	mr r23, r28
lbl_802D2738:
/* 802D2738  28 1A 00 00 */	cmplwi r26, 0
/* 802D273C  40 82 00 1C */	bne lbl_802D2758
/* 802D2740  7E E3 BB 78 */	mr r3, r23
/* 802D2744  38 80 00 20 */	li r4, 0x20
/* 802D2748  7F A5 EB 78 */	mr r5, r29
/* 802D274C  4B FF BD 29 */	bl alloc__7JKRHeapFUliP7JKRHeap
/* 802D2750  7C 79 1B 78 */	mr r25, r3
/* 802D2754  48 00 00 08 */	b lbl_802D275C
lbl_802D2758:
/* 802D2758  7F 59 D3 78 */	mr r25, r26
lbl_802D275C:
/* 802D275C  28 19 00 00 */	cmplwi r25, 0
/* 802D2760  40 82 00 18 */	bne lbl_802D2778
/* 802D2764  7F 03 C3 78 */	mr r3, r24
/* 802D2768  38 80 00 00 */	li r4, 0
/* 802D276C  4B FF BD 95 */	bl free__7JKRHeapFPvP7JKRHeap
/* 802D2770  38 60 00 00 */	li r3, 0
/* 802D2774  48 00 00 A4 */	b lbl_802D2818
lbl_802D2778:
/* 802D2778  7F 23 CB 78 */	mr r3, r25
/* 802D277C  7F C4 F3 78 */	mr r4, r30
/* 802D2780  4B FF FB 5D */	bl changeGroupIdIfNeed__7JKRAramFPUci
/* 802D2784  7F 03 C3 78 */	mr r3, r24
/* 802D2788  7F 24 CB 78 */	mr r4, r25
/* 802D278C  7E E5 BB 78 */	mr r5, r23
/* 802D2790  38 C0 00 00 */	li r6, 0
/* 802D2794  48 00 91 F5 */	bl orderSync__9JKRDecompFPUcPUcUlUl
/* 802D2798  7F 03 C3 78 */	mr r3, r24
/* 802D279C  7F A4 EB 78 */	mr r4, r29
/* 802D27A0  4B FF BD 61 */	bl free__7JKRHeapFPvP7JKRHeap
/* 802D27A4  28 1F 00 00 */	cmplwi r31, 0
/* 802D27A8  41 82 00 08 */	beq lbl_802D27B0
/* 802D27AC  92 FF 00 00 */	stw r23, 0(r31)
lbl_802D27B0:
/* 802D27B0  7F 23 CB 78 */	mr r3, r25
/* 802D27B4  48 00 00 64 */	b lbl_802D2818
lbl_802D27B8:
/* 802D27B8  28 1A 00 00 */	cmplwi r26, 0
/* 802D27BC  40 82 00 18 */	bne lbl_802D27D4
/* 802D27C0  7F 63 DB 78 */	mr r3, r27
/* 802D27C4  38 80 00 20 */	li r4, 0x20
/* 802D27C8  7F A5 EB 78 */	mr r5, r29
/* 802D27CC  4B FF BC A9 */	bl alloc__7JKRHeapFUliP7JKRHeap
/* 802D27D0  7C 7A 1B 78 */	mr r26, r3
lbl_802D27D4:
/* 802D27D4  28 1A 00 00 */	cmplwi r26, 0
/* 802D27D8  40 82 00 0C */	bne lbl_802D27E4
/* 802D27DC  38 60 00 00 */	li r3, 0
/* 802D27E0  48 00 00 38 */	b lbl_802D2818
lbl_802D27E4:
/* 802D27E4  7F 43 D3 78 */	mr r3, r26
/* 802D27E8  7F C4 F3 78 */	mr r4, r30
/* 802D27EC  4B FF FA F1 */	bl changeGroupIdIfNeed__7JKRAramFPUci
/* 802D27F0  38 60 00 01 */	li r3, 1
/* 802D27F4  7F 24 CB 78 */	mr r4, r25
/* 802D27F8  7F 45 D3 78 */	mr r5, r26
/* 802D27FC  7F 66 DB 78 */	mr r6, r27
/* 802D2800  38 E0 00 00 */	li r7, 0
/* 802D2804  48 00 10 35 */	bl orderSync__12JKRAramPieceFiUlUlUlP12JKRAramBlock
/* 802D2808  28 1F 00 00 */	cmplwi r31, 0
/* 802D280C  41 82 00 08 */	beq lbl_802D2814
/* 802D2810  93 7F 00 00 */	stw r27, 0(r31)
lbl_802D2814:
/* 802D2814  7F 43 D3 78 */	mr r3, r26
lbl_802D2818:
/* 802D2818  39 61 00 70 */	addi r11, r1, 0x70
/* 802D281C  48 08 F9 F1 */	bl _restgpr_22
/* 802D2820  80 01 00 74 */	lwz r0, 0x74(r1)
/* 802D2824  7C 08 03 A6 */	mtlr r0
/* 802D2828  38 21 00 70 */	addi r1, r1, 0x70
/* 802D282C  4E 80 00 20 */	blr 
