lbl_802D826C:
/* 802D826C  94 21 FF 90 */	stwu r1, -0x70(r1)
/* 802D8270  7C 08 02 A6 */	mflr r0
/* 802D8274  90 01 00 74 */	stw r0, 0x74(r1)
/* 802D8278  39 61 00 70 */	addi r11, r1, 0x70
/* 802D827C  48 08 9F 55 */	bl _savegpr_26
/* 802D8280  7C 7D 1B 78 */	mr r29, r3
/* 802D8284  7C 9E 23 78 */	mr r30, r4
/* 802D8288  7C BA 2B 78 */	mr r26, r5
/* 802D828C  7C DF 33 78 */	mr r31, r6
/* 802D8290  38 1A 00 1F */	addi r0, r26, 0x1f
/* 802D8294  54 1C 00 34 */	rlwinm r28, r0, 0, 0, 0x1a
/* 802D8298  54 FB 00 34 */	rlwinm r27, r7, 0, 0, 0x1a
/* 802D829C  2C 09 00 01 */	cmpwi r9, 1
/* 802D82A0  41 82 01 80 */	beq lbl_802D8420
/* 802D82A4  40 80 00 10 */	bge lbl_802D82B4
/* 802D82A8  2C 09 00 00 */	cmpwi r9, 0
/* 802D82AC  40 80 00 14 */	bge lbl_802D82C0
/* 802D82B0  48 00 01 8C */	b lbl_802D843C
lbl_802D82B4:
/* 802D82B4  2C 09 00 03 */	cmpwi r9, 3
/* 802D82B8  40 80 01 84 */	bge lbl_802D843C
/* 802D82BC  48 00 01 18 */	b lbl_802D83D4
lbl_802D82C0:
/* 802D82C0  2C 08 00 00 */	cmpwi r8, 0
/* 802D82C4  41 82 00 14 */	beq lbl_802D82D8
/* 802D82C8  41 80 01 0C */	blt lbl_802D83D4
/* 802D82CC  2C 08 00 03 */	cmpwi r8, 3
/* 802D82D0  40 80 01 04 */	bge lbl_802D83D4
/* 802D82D4  48 00 00 50 */	b lbl_802D8324
lbl_802D82D8:
/* 802D82D8  7C 1C D8 40 */	cmplw r28, r27
/* 802D82DC  40 81 00 08 */	ble lbl_802D82E4
/* 802D82E0  7F 7C DB 78 */	mr r28, r27
lbl_802D82E4:
/* 802D82E4  38 00 00 00 */	li r0, 0
/* 802D82E8  90 01 00 08 */	stw r0, 8(r1)
/* 802D82EC  7F A3 EB 78 */	mr r3, r29
/* 802D82F0  7F E4 FB 78 */	mr r4, r31
/* 802D82F4  38 A0 00 00 */	li r5, 0
/* 802D82F8  7F 86 E3 78 */	mr r6, r28
/* 802D82FC  38 E0 00 00 */	li r7, 0
/* 802D8300  39 00 00 01 */	li r8, 1
/* 802D8304  7F C9 F3 78 */	mr r9, r30
/* 802D8308  39 40 00 00 */	li r10, 0
/* 802D830C  48 00 19 49 */	bl loadToMainRAM__12JKRDvdRipperFlPUc15JKRExpandSwitchUlP7JKRHeapQ212JKRDvdRipper15EAllocDirectionUlPiPUl
/* 802D8310  7F E3 FB 78 */	mr r3, r31
/* 802D8314  7F 84 E3 78 */	mr r4, r28
/* 802D8318  48 06 32 69 */	bl DCInvalidateRange
/* 802D831C  7F 83 E3 78 */	mr r3, r28
/* 802D8320  48 00 01 3C */	b lbl_802D845C
lbl_802D8324:
/* 802D8324  38 01 00 2F */	addi r0, r1, 0x2f
/* 802D8328  54 1C 00 34 */	rlwinm r28, r0, 0, 0, 0x1a
/* 802D832C  38 00 00 00 */	li r0, 0
/* 802D8330  90 01 00 08 */	stw r0, 8(r1)
/* 802D8334  7F 84 E3 78 */	mr r4, r28
/* 802D8338  38 A0 00 02 */	li r5, 2
/* 802D833C  38 C0 00 20 */	li r6, 0x20
/* 802D8340  38 E0 00 00 */	li r7, 0
/* 802D8344  39 00 00 01 */	li r8, 1
/* 802D8348  7F C9 F3 78 */	mr r9, r30
/* 802D834C  39 40 00 00 */	li r10, 0
/* 802D8350  48 00 19 05 */	bl loadToMainRAM__12JKRDvdRipperFlPUc15JKRExpandSwitchUlP7JKRHeapQ212JKRDvdRipper15EAllocDirectionUlPiPUl
/* 802D8354  7F 83 E3 78 */	mr r3, r28
/* 802D8358  38 80 00 20 */	li r4, 0x20
/* 802D835C  48 06 32 25 */	bl DCInvalidateRange
/* 802D8360  88 BC 00 07 */	lbz r5, 7(r28)
/* 802D8364  88 9C 00 06 */	lbz r4, 6(r28)
/* 802D8368  88 7C 00 04 */	lbz r3, 4(r28)
/* 802D836C  88 1C 00 05 */	lbz r0, 5(r28)
/* 802D8370  54 00 80 1E */	slwi r0, r0, 0x10
/* 802D8374  50 60 C0 0E */	rlwimi r0, r3, 0x18, 0, 7
/* 802D8378  50 80 44 2E */	rlwimi r0, r4, 8, 0x10, 0x17
/* 802D837C  7C BC 03 78 */	or r28, r5, r0
/* 802D8380  38 1C 00 1F */	addi r0, r28, 0x1f
/* 802D8384  54 1A 00 34 */	rlwinm r26, r0, 0, 0, 0x1a
/* 802D8388  7C 1A D8 40 */	cmplw r26, r27
/* 802D838C  40 81 00 08 */	ble lbl_802D8394
/* 802D8390  7F 7A DB 78 */	mr r26, r27
lbl_802D8394:
/* 802D8394  38 00 00 00 */	li r0, 0
/* 802D8398  90 01 00 08 */	stw r0, 8(r1)
/* 802D839C  7F A3 EB 78 */	mr r3, r29
/* 802D83A0  7F E4 FB 78 */	mr r4, r31
/* 802D83A4  38 A0 00 01 */	li r5, 1
/* 802D83A8  7F 46 D3 78 */	mr r6, r26
/* 802D83AC  38 E0 00 00 */	li r7, 0
/* 802D83B0  39 00 00 01 */	li r8, 1
/* 802D83B4  7F C9 F3 78 */	mr r9, r30
/* 802D83B8  39 40 00 00 */	li r10, 0
/* 802D83BC  48 00 18 99 */	bl loadToMainRAM__12JKRDvdRipperFlPUc15JKRExpandSwitchUlP7JKRHeapQ212JKRDvdRipper15EAllocDirectionUlPiPUl
/* 802D83C0  7F E3 FB 78 */	mr r3, r31
/* 802D83C4  7F 44 D3 78 */	mr r4, r26
/* 802D83C8  48 06 31 B9 */	bl DCInvalidateRange
/* 802D83CC  7F 83 E3 78 */	mr r3, r28
/* 802D83D0  48 00 00 8C */	b lbl_802D845C
lbl_802D83D4:
/* 802D83D4  7C 1A D8 40 */	cmplw r26, r27
/* 802D83D8  40 81 00 08 */	ble lbl_802D83E0
/* 802D83DC  7F 7A DB 78 */	mr r26, r27
lbl_802D83E0:
/* 802D83E0  38 00 00 00 */	li r0, 0
/* 802D83E4  90 01 00 08 */	stw r0, 8(r1)
/* 802D83E8  7F A3 EB 78 */	mr r3, r29
/* 802D83EC  7F E4 FB 78 */	mr r4, r31
/* 802D83F0  38 A0 00 01 */	li r5, 1
/* 802D83F4  7F 46 D3 78 */	mr r6, r26
/* 802D83F8  38 E0 00 00 */	li r7, 0
/* 802D83FC  39 00 00 01 */	li r8, 1
/* 802D8400  7F C9 F3 78 */	mr r9, r30
/* 802D8404  39 40 00 00 */	li r10, 0
/* 802D8408  48 00 18 4D */	bl loadToMainRAM__12JKRDvdRipperFlPUc15JKRExpandSwitchUlP7JKRHeapQ212JKRDvdRipper15EAllocDirectionUlPiPUl
/* 802D840C  7F E3 FB 78 */	mr r3, r31
/* 802D8410  7F 44 D3 78 */	mr r4, r26
/* 802D8414  48 06 31 6D */	bl DCInvalidateRange
/* 802D8418  7F 43 D3 78 */	mr r3, r26
/* 802D841C  48 00 00 40 */	b lbl_802D845C
lbl_802D8420:
/* 802D8420  3C 60 80 3A */	lis r3, JKRDvdArchive__stringBase0@ha
/* 802D8424  38 63 D1 B0 */	addi r3, r3, JKRDvdArchive__stringBase0@l
/* 802D8428  38 80 02 89 */	li r4, 0x289
/* 802D842C  38 A3 00 12 */	addi r5, r3, 0x12
/* 802D8430  38 C3 00 15 */	addi r6, r3, 0x15
/* 802D8434  4C C6 31 82 */	crclr 6
/* 802D8438  48 00 9D C5 */	bl panic_f__12JUTExceptionFPCciPCce
lbl_802D843C:
/* 802D843C  3C 60 80 3A */	lis r3, JKRDvdArchive__stringBase0@ha
/* 802D8440  38 63 D1 B0 */	addi r3, r3, JKRDvdArchive__stringBase0@l
/* 802D8444  38 80 02 8D */	li r4, 0x28d
/* 802D8448  38 A3 00 12 */	addi r5, r3, 0x12
/* 802D844C  38 C3 00 3A */	addi r6, r3, 0x3a
/* 802D8450  4C C6 31 82 */	crclr 6
/* 802D8454  48 00 9D A9 */	bl panic_f__12JUTExceptionFPCciPCce
/* 802D8458  38 60 00 00 */	li r3, 0
lbl_802D845C:
/* 802D845C  39 61 00 70 */	addi r11, r1, 0x70
/* 802D8460  48 08 9D BD */	bl _restgpr_26
/* 802D8464  80 01 00 74 */	lwz r0, 0x74(r1)
/* 802D8468  7C 08 03 A6 */	mtlr r0
/* 802D846C  38 21 00 70 */	addi r1, r1, 0x70
/* 802D8470  4E 80 00 20 */	blr 
