lbl_802D72A8:
/* 802D72A8  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 802D72AC  7C 08 02 A6 */	mflr r0
/* 802D72B0  90 01 00 34 */	stw r0, 0x34(r1)
/* 802D72B4  39 61 00 30 */	addi r11, r1, 0x30
/* 802D72B8  48 08 AF 1D */	bl _savegpr_27
/* 802D72BC  7C 7F 1B 78 */	mr r31, r3
/* 802D72C0  7C 9C 23 78 */	mr r28, r4
/* 802D72C4  38 00 00 00 */	li r0, 0
/* 802D72C8  90 03 00 44 */	stw r0, 0x44(r3)
/* 802D72CC  90 03 00 48 */	stw r0, 0x48(r3)
/* 802D72D0  90 03 00 4C */	stw r0, 0x4c(r3)
/* 802D72D4  90 03 00 54 */	stw r0, 0x54(r3)
/* 802D72D8  90 03 00 64 */	stw r0, 0x64(r3)
/* 802D72DC  38 60 00 F8 */	li r3, 0xf8
/* 802D72E0  80 8D 8D F0 */	lwz r4, sSystemHeap__7JKRHeap(r13)
/* 802D72E4  80 1F 00 60 */	lwz r0, 0x60(r31)
/* 802D72E8  2C 00 00 01 */	cmpwi r0, 1
/* 802D72EC  38 A0 FF FC */	li r5, -4
/* 802D72F0  40 82 00 08 */	bne lbl_802D72F8
/* 802D72F4  38 A0 00 04 */	li r5, 4
lbl_802D72F8:
/* 802D72F8  4B FF 79 A1 */	bl __nw__FUlP7JKRHeapi
/* 802D72FC  7C 60 1B 79 */	or. r0, r3, r3
/* 802D7300  41 82 00 10 */	beq lbl_802D7310
/* 802D7304  7F 84 E3 78 */	mr r4, r28
/* 802D7308  48 00 23 99 */	bl __ct__10JKRDvdFileFl
/* 802D730C  7C 60 1B 78 */	mr r0, r3
lbl_802D7310:
/* 802D7310  90 1F 00 68 */	stw r0, 0x68(r31)
/* 802D7314  80 1F 00 68 */	lwz r0, 0x68(r31)
/* 802D7318  28 00 00 00 */	cmplwi r0, 0
/* 802D731C  40 82 00 14 */	bne lbl_802D7330
/* 802D7320  38 00 00 00 */	li r0, 0
/* 802D7324  98 1F 00 3C */	stb r0, 0x3c(r31)
/* 802D7328  38 60 00 00 */	li r3, 0
/* 802D732C  48 00 02 9C */	b lbl_802D75C8
lbl_802D7330:
/* 802D7330  80 6D 8D F0 */	lwz r3, sSystemHeap__7JKRHeap(r13)
/* 802D7334  38 80 00 20 */	li r4, 0x20
/* 802D7338  38 A0 FF E0 */	li r5, -32
/* 802D733C  4B FF 71 99 */	bl alloc__7JKRHeapFUli
/* 802D7340  7C 7D 1B 79 */	or. r29, r3, r3
/* 802D7344  40 82 00 10 */	bne lbl_802D7354
/* 802D7348  38 00 00 00 */	li r0, 0
/* 802D734C  98 1F 00 3C */	stb r0, 0x3c(r31)
/* 802D7350  48 00 02 28 */	b lbl_802D7578
lbl_802D7354:
/* 802D7354  38 00 00 00 */	li r0, 0
/* 802D7358  90 01 00 08 */	stw r0, 8(r1)
/* 802D735C  7F 83 E3 78 */	mr r3, r28
/* 802D7360  7F A4 EB 78 */	mr r4, r29
/* 802D7364  38 A0 00 01 */	li r5, 1
/* 802D7368  38 C0 00 20 */	li r6, 0x20
/* 802D736C  38 E0 00 00 */	li r7, 0
/* 802D7370  39 00 00 01 */	li r8, 1
/* 802D7374  39 20 00 00 */	li r9, 0
/* 802D7378  39 5F 00 5C */	addi r10, r31, 0x5c
/* 802D737C  48 00 28 D9 */	bl loadToMainRAM__12JKRDvdRipperFlPUc15JKRExpandSwitchUlP7JKRHeapQ212JKRDvdRipper15EAllocDirectionUlPiPUl
/* 802D7380  7F A3 EB 78 */	mr r3, r29
/* 802D7384  38 80 00 20 */	li r4, 0x20
/* 802D7388  48 06 41 F9 */	bl DCInvalidateRange
/* 802D738C  80 1F 00 60 */	lwz r0, 0x60(r31)
/* 802D7390  2C 00 00 01 */	cmpwi r0, 1
/* 802D7394  3B C0 FF E0 */	li r30, -32
/* 802D7398  40 82 00 08 */	bne lbl_802D73A0
/* 802D739C  3B C0 00 20 */	li r30, 0x20
lbl_802D73A0:
/* 802D73A0  80 7D 00 0C */	lwz r3, 0xc(r29)
/* 802D73A4  38 03 00 1F */	addi r0, r3, 0x1f
/* 802D73A8  54 1B 00 34 */	rlwinm r27, r0, 0, 0, 0x1a
/* 802D73AC  7F 63 DB 78 */	mr r3, r27
/* 802D73B0  7F C4 F3 78 */	mr r4, r30
/* 802D73B4  80 BF 00 38 */	lwz r5, 0x38(r31)
/* 802D73B8  4B FF 70 BD */	bl alloc__7JKRHeapFUliP7JKRHeap
/* 802D73BC  90 7F 00 44 */	stw r3, 0x44(r31)
/* 802D73C0  80 9F 00 44 */	lwz r4, 0x44(r31)
/* 802D73C4  28 04 00 00 */	cmplwi r4, 0
/* 802D73C8  40 82 00 10 */	bne lbl_802D73D8
/* 802D73CC  38 00 00 00 */	li r0, 0
/* 802D73D0  98 1F 00 3C */	stb r0, 0x3c(r31)
/* 802D73D4  48 00 01 A4 */	b lbl_802D7578
lbl_802D73D8:
/* 802D73D8  38 00 00 00 */	li r0, 0
/* 802D73DC  90 01 00 08 */	stw r0, 8(r1)
/* 802D73E0  7F 83 E3 78 */	mr r3, r28
/* 802D73E4  38 A0 00 01 */	li r5, 1
/* 802D73E8  7F 66 DB 78 */	mr r6, r27
/* 802D73EC  38 E0 00 00 */	li r7, 0
/* 802D73F0  39 00 00 01 */	li r8, 1
/* 802D73F4  39 20 00 20 */	li r9, 0x20
/* 802D73F8  39 40 00 00 */	li r10, 0
/* 802D73FC  48 00 28 59 */	bl loadToMainRAM__12JKRDvdRipperFlPUc15JKRExpandSwitchUlP7JKRHeapQ212JKRDvdRipper15EAllocDirectionUlPiPUl
/* 802D7400  80 7F 00 44 */	lwz r3, 0x44(r31)
/* 802D7404  7F 64 DB 78 */	mr r4, r27
/* 802D7408  48 06 41 79 */	bl DCInvalidateRange
/* 802D740C  80 7F 00 44 */	lwz r3, 0x44(r31)
/* 802D7410  80 03 00 04 */	lwz r0, 4(r3)
/* 802D7414  7C 03 02 14 */	add r0, r3, r0
/* 802D7418  90 1F 00 48 */	stw r0, 0x48(r31)
/* 802D741C  80 7F 00 44 */	lwz r3, 0x44(r31)
/* 802D7420  80 03 00 0C */	lwz r0, 0xc(r3)
/* 802D7424  7C 03 02 14 */	add r0, r3, r0
/* 802D7428  90 1F 00 4C */	stw r0, 0x4c(r31)
/* 802D742C  80 7F 00 44 */	lwz r3, 0x44(r31)
/* 802D7430  80 03 00 14 */	lwz r0, 0x14(r3)
/* 802D7434  7C 03 02 14 */	add r0, r3, r0
/* 802D7438  90 1F 00 54 */	stw r0, 0x54(r31)
/* 802D743C  38 00 00 00 */	li r0, 0
/* 802D7440  90 1F 00 50 */	stw r0, 0x50(r31)
/* 802D7444  38 80 00 00 */	li r4, 0
/* 802D7448  80 BF 00 4C */	lwz r5, 0x4c(r31)
/* 802D744C  80 7F 00 44 */	lwz r3, 0x44(r31)
/* 802D7450  80 03 00 08 */	lwz r0, 8(r3)
/* 802D7454  7C 09 03 A6 */	mtctr r0
/* 802D7458  28 00 00 00 */	cmplwi r0, 0
/* 802D745C  40 81 00 28 */	ble lbl_802D7484
lbl_802D7460:
/* 802D7460  80 05 00 04 */	lwz r0, 4(r5)
/* 802D7464  54 03 46 3E */	srwi r3, r0, 0x18
/* 802D7468  54 00 47 FF */	rlwinm. r0, r0, 8, 0x1f, 0x1f
/* 802D746C  41 82 00 10 */	beq lbl_802D747C
/* 802D7470  54 60 07 7A */	rlwinm r0, r3, 0, 0x1d, 0x1d
/* 802D7474  7C 80 03 78 */	or r0, r4, r0
/* 802D7478  54 04 06 3E */	clrlwi r4, r0, 0x18
lbl_802D747C:
/* 802D747C  38 A5 00 14 */	addi r5, r5, 0x14
/* 802D7480  42 00 FF E0 */	bdnz lbl_802D7460
lbl_802D7484:
/* 802D7484  54 80 06 3F */	clrlwi. r0, r4, 0x18
/* 802D7488  41 82 00 60 */	beq lbl_802D74E8
/* 802D748C  7F C3 F3 78 */	mr r3, r30
/* 802D7490  48 08 DC 41 */	bl abs
/* 802D7494  7C 64 1B 78 */	mr r4, r3
/* 802D7498  80 BF 00 38 */	lwz r5, 0x38(r31)
/* 802D749C  80 7F 00 44 */	lwz r3, 0x44(r31)
/* 802D74A0  80 03 00 08 */	lwz r0, 8(r3)
/* 802D74A4  54 03 10 3A */	slwi r3, r0, 2
/* 802D74A8  4B FF 6F CD */	bl alloc__7JKRHeapFUliP7JKRHeap
/* 802D74AC  90 7F 00 50 */	stw r3, 0x50(r31)
/* 802D74B0  80 7F 00 50 */	lwz r3, 0x50(r31)
/* 802D74B4  28 03 00 00 */	cmplwi r3, 0
/* 802D74B8  40 82 00 1C */	bne lbl_802D74D4
/* 802D74BC  80 7F 00 44 */	lwz r3, 0x44(r31)
/* 802D74C0  38 80 00 00 */	li r4, 0
/* 802D74C4  4B FF 70 3D */	bl free__7JKRHeapFPvP7JKRHeap
/* 802D74C8  38 00 00 00 */	li r0, 0
/* 802D74CC  98 1F 00 3C */	stb r0, 0x3c(r31)
/* 802D74D0  48 00 00 A8 */	b lbl_802D7578
lbl_802D74D4:
/* 802D74D4  38 80 00 00 */	li r4, 0
/* 802D74D8  80 BF 00 44 */	lwz r5, 0x44(r31)
/* 802D74DC  80 05 00 08 */	lwz r0, 8(r5)
/* 802D74E0  54 05 10 3A */	slwi r5, r0, 2
/* 802D74E4  4B D2 BF 75 */	bl memset
lbl_802D74E8:
/* 802D74E8  80 7D 00 10 */	lwz r3, 0x10(r29)
/* 802D74EC  38 03 00 1F */	addi r0, r3, 0x1f
/* 802D74F0  54 04 00 34 */	rlwinm r4, r0, 0, 0, 0x1a
/* 802D74F4  80 6D 8E 48 */	lwz r3, sAramObject__7JKRAram(r13)
/* 802D74F8  80 63 00 94 */	lwz r3, 0x94(r3)
/* 802D74FC  80 1F 00 60 */	lwz r0, 0x60(r31)
/* 802D7500  20 A0 00 01 */	subfic r5, r0, 1
/* 802D7504  30 05 FF FF */	addic r0, r5, -1
/* 802D7508  7C A0 29 10 */	subfe r5, r0, r5
/* 802D750C  4B FF BA B1 */	bl alloc__11JKRAramHeapFUlQ211JKRAramHeap10EAllocMode
/* 802D7510  90 7F 00 64 */	stw r3, 0x64(r31)
/* 802D7514  80 7F 00 64 */	lwz r3, 0x64(r31)
/* 802D7518  28 03 00 00 */	cmplwi r3, 0
/* 802D751C  40 82 00 38 */	bne lbl_802D7554
/* 802D7520  80 7F 00 44 */	lwz r3, 0x44(r31)
/* 802D7524  28 03 00 00 */	cmplwi r3, 0
/* 802D7528  41 82 00 0C */	beq lbl_802D7534
/* 802D752C  38 80 00 00 */	li r4, 0
/* 802D7530  4B FF 6F D1 */	bl free__7JKRHeapFPvP7JKRHeap
lbl_802D7534:
/* 802D7534  80 7F 00 50 */	lwz r3, 0x50(r31)
/* 802D7538  28 03 00 00 */	cmplwi r3, 0
/* 802D753C  41 82 00 0C */	beq lbl_802D7548
/* 802D7540  38 80 00 00 */	li r4, 0
/* 802D7544  4B FF 6F BD */	bl free__7JKRHeapFPvP7JKRHeap
lbl_802D7548:
/* 802D7548  38 00 00 00 */	li r0, 0
/* 802D754C  98 1F 00 3C */	stb r0, 0x3c(r31)
/* 802D7550  48 00 00 28 */	b lbl_802D7578
lbl_802D7554:
/* 802D7554  80 83 00 14 */	lwz r4, 0x14(r3)
/* 802D7558  7F 83 E3 78 */	mr r3, r28
/* 802D755C  38 A0 00 01 */	li r5, 1
/* 802D7560  80 DD 00 08 */	lwz r6, 8(r29)
/* 802D7564  80 1D 00 0C */	lwz r0, 0xc(r29)
/* 802D7568  7C C6 02 14 */	add r6, r6, r0
/* 802D756C  38 E0 00 00 */	li r7, 0
/* 802D7570  39 00 00 00 */	li r8, 0
/* 802D7574  48 00 33 01 */	bl loadToAram__16JKRDvdAramRipperFlUl15JKRExpandSwitchUlUlPUl
lbl_802D7578:
/* 802D7578  28 1D 00 00 */	cmplwi r29, 0
/* 802D757C  41 82 00 10 */	beq lbl_802D758C
/* 802D7580  80 6D 8D F0 */	lwz r3, sSystemHeap__7JKRHeap(r13)
/* 802D7584  7F A4 EB 78 */	mr r4, r29
/* 802D7588  4B FF 6F C1 */	bl free__7JKRHeapFPv
lbl_802D758C:
/* 802D758C  88 1F 00 3C */	lbz r0, 0x3c(r31)
/* 802D7590  28 00 00 00 */	cmplwi r0, 0
/* 802D7594  40 82 00 30 */	bne lbl_802D75C4
/* 802D7598  80 7F 00 68 */	lwz r3, 0x68(r31)
/* 802D759C  28 03 00 00 */	cmplwi r3, 0
/* 802D75A0  41 82 00 1C */	beq lbl_802D75BC
/* 802D75A4  41 82 00 18 */	beq lbl_802D75BC
/* 802D75A8  38 80 00 01 */	li r4, 1
/* 802D75AC  81 83 00 00 */	lwz r12, 0(r3)
/* 802D75B0  81 8C 00 08 */	lwz r12, 8(r12)
/* 802D75B4  7D 89 03 A6 */	mtctr r12
/* 802D75B8  4E 80 04 21 */	bctrl 
lbl_802D75BC:
/* 802D75BC  38 60 00 00 */	li r3, 0
/* 802D75C0  48 00 00 08 */	b lbl_802D75C8
lbl_802D75C4:
/* 802D75C4  38 60 00 01 */	li r3, 1
lbl_802D75C8:
/* 802D75C8  39 61 00 30 */	addi r11, r1, 0x30
/* 802D75CC  48 08 AC 55 */	bl _restgpr_27
/* 802D75D0  80 01 00 34 */	lwz r0, 0x34(r1)
/* 802D75D4  7C 08 03 A6 */	mtlr r0
/* 802D75D8  38 21 00 30 */	addi r1, r1, 0x30
/* 802D75DC  4E 80 00 20 */	blr 
