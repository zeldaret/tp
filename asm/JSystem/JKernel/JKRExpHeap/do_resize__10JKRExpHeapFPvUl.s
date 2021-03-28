lbl_802CF978:
/* 802CF978  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 802CF97C  7C 08 02 A6 */	mflr r0
/* 802CF980  90 01 00 24 */	stw r0, 0x24(r1)
/* 802CF984  39 61 00 20 */	addi r11, r1, 0x20
/* 802CF988  48 09 28 51 */	bl _savegpr_28
/* 802CF98C  7C 7D 1B 78 */	mr r29, r3
/* 802CF990  7C 9C 23 78 */	mr r28, r4
/* 802CF994  7C BE 2B 78 */	mr r30, r5
/* 802CF998  38 7D 00 18 */	addi r3, r29, 0x18
/* 802CF99C  48 06 F6 A5 */	bl OSLockMutex
/* 802CF9A0  7F 83 E3 78 */	mr r3, r28
/* 802CF9A4  48 00 0F 79 */	bl getHeapBlock__Q210JKRExpHeap9CMemBlockFPv
/* 802CF9A8  7C 7F 1B 79 */	or. r31, r3, r3
/* 802CF9AC  41 82 00 1C */	beq lbl_802CF9C8
/* 802CF9B0  80 1D 00 30 */	lwz r0, 0x30(r29)
/* 802CF9B4  7C 1C 00 40 */	cmplw r28, r0
/* 802CF9B8  41 80 00 10 */	blt lbl_802CF9C8
/* 802CF9BC  80 1D 00 34 */	lwz r0, 0x34(r29)
/* 802CF9C0  7C 00 E0 40 */	cmplw r0, r28
/* 802CF9C4  40 80 00 14 */	bge lbl_802CF9D8
lbl_802CF9C8:
/* 802CF9C8  38 7D 00 18 */	addi r3, r29, 0x18
/* 802CF9CC  48 06 F7 51 */	bl OSUnlockMutex
/* 802CF9D0  38 60 FF FF */	li r3, -1
/* 802CF9D4  48 00 01 38 */	b lbl_802CFB0C
lbl_802CF9D8:
/* 802CF9D8  38 1E 00 03 */	addi r0, r30, 3
/* 802CF9DC  54 1E 00 3A */	rlwinm r30, r0, 0, 0, 0x1d
/* 802CF9E0  80 9F 00 04 */	lwz r4, 4(r31)
/* 802CF9E4  7C 1E 20 40 */	cmplw r30, r4
/* 802CF9E8  40 82 00 14 */	bne lbl_802CF9FC
/* 802CF9EC  38 7D 00 18 */	addi r3, r29, 0x18
/* 802CF9F0  48 06 F7 2D */	bl OSUnlockMutex
/* 802CF9F4  7F C3 F3 78 */	mr r3, r30
/* 802CF9F8  48 00 01 14 */	b lbl_802CFB0C
lbl_802CF9FC:
/* 802CF9FC  40 81 00 D0 */	ble lbl_802CFACC
/* 802CFA00  3B 80 00 00 */	li r28, 0
/* 802CFA04  80 7D 00 78 */	lwz r3, 0x78(r29)
/* 802CFA08  38 1F 00 10 */	addi r0, r31, 0x10
/* 802CFA0C  7C 00 22 14 */	add r0, r0, r4
/* 802CFA10  48 00 00 18 */	b lbl_802CFA28
lbl_802CFA14:
/* 802CFA14  7C 03 00 40 */	cmplw r3, r0
/* 802CFA18  40 82 00 0C */	bne lbl_802CFA24
/* 802CFA1C  7C 7C 1B 78 */	mr r28, r3
/* 802CFA20  48 00 00 10 */	b lbl_802CFA30
lbl_802CFA24:
/* 802CFA24  80 63 00 0C */	lwz r3, 0xc(r3)
lbl_802CFA28:
/* 802CFA28  28 03 00 00 */	cmplwi r3, 0
/* 802CFA2C  40 82 FF E8 */	bne lbl_802CFA14
lbl_802CFA30:
/* 802CFA30  28 1C 00 00 */	cmplwi r28, 0
/* 802CFA34  40 82 00 14 */	bne lbl_802CFA48
/* 802CFA38  38 7D 00 18 */	addi r3, r29, 0x18
/* 802CFA3C  48 06 F6 E1 */	bl OSUnlockMutex
/* 802CFA40  38 60 FF FF */	li r3, -1
/* 802CFA44  48 00 00 C8 */	b lbl_802CFB0C
lbl_802CFA48:
/* 802CFA48  80 1C 00 04 */	lwz r0, 4(r28)
/* 802CFA4C  7C 64 02 14 */	add r3, r4, r0
/* 802CFA50  38 03 00 10 */	addi r0, r3, 0x10
/* 802CFA54  7C 1E 00 40 */	cmplw r30, r0
/* 802CFA58  40 81 00 14 */	ble lbl_802CFA6C
/* 802CFA5C  38 7D 00 18 */	addi r3, r29, 0x18
/* 802CFA60  48 06 F6 BD */	bl OSUnlockMutex
/* 802CFA64  38 60 FF FF */	li r3, -1
/* 802CFA68  48 00 00 A4 */	b lbl_802CFB0C
lbl_802CFA6C:
/* 802CFA6C  7F A3 EB 78 */	mr r3, r29
/* 802CFA70  7F 84 E3 78 */	mr r4, r28
/* 802CFA74  48 00 04 41 */	bl removeFreeBlock__10JKRExpHeapFPQ210JKRExpHeap9CMemBlock
/* 802CFA78  80 7F 00 04 */	lwz r3, 4(r31)
/* 802CFA7C  80 1C 00 04 */	lwz r0, 4(r28)
/* 802CFA80  7C 60 1A 14 */	add r3, r0, r3
/* 802CFA84  38 03 00 10 */	addi r0, r3, 0x10
/* 802CFA88  90 1F 00 04 */	stw r0, 4(r31)
/* 802CFA8C  80 1F 00 04 */	lwz r0, 4(r31)
/* 802CFA90  7C 1E 00 50 */	subf r0, r30, r0
/* 802CFA94  28 00 00 10 */	cmplwi r0, 0x10
/* 802CFA98  40 81 00 68 */	ble lbl_802CFB00
/* 802CFA9C  7F E3 FB 78 */	mr r3, r31
/* 802CFAA0  7F C4 F3 78 */	mr r4, r30
/* 802CFAA4  88 BF 00 03 */	lbz r5, 3(r31)
/* 802CFAA8  88 DF 00 02 */	lbz r6, 2(r31)
/* 802CFAAC  38 E0 00 00 */	li r7, 0
/* 802CFAB0  39 00 00 00 */	li r8, 0
/* 802CFAB4  48 00 0D 7D */	bl allocFore__Q210JKRExpHeap9CMemBlockFUlUcUcUcUc
/* 802CFAB8  7C 64 1B 79 */	or. r4, r3, r3
/* 802CFABC  41 82 00 44 */	beq lbl_802CFB00
/* 802CFAC0  7F A3 EB 78 */	mr r3, r29
/* 802CFAC4  48 00 04 59 */	bl recycleFreeBlock__10JKRExpHeapFPQ210JKRExpHeap9CMemBlock
/* 802CFAC8  48 00 00 38 */	b lbl_802CFB00
lbl_802CFACC:
/* 802CFACC  7C 1E 20 50 */	subf r0, r30, r4
/* 802CFAD0  28 00 00 10 */	cmplwi r0, 0x10
/* 802CFAD4  40 81 00 2C */	ble lbl_802CFB00
/* 802CFAD8  7F C4 F3 78 */	mr r4, r30
/* 802CFADC  88 BF 00 03 */	lbz r5, 3(r31)
/* 802CFAE0  88 DF 00 02 */	lbz r6, 2(r31)
/* 802CFAE4  38 E0 00 00 */	li r7, 0
/* 802CFAE8  39 00 00 00 */	li r8, 0
/* 802CFAEC  48 00 0D 45 */	bl allocFore__Q210JKRExpHeap9CMemBlockFUlUcUcUcUc
/* 802CFAF0  7C 64 1B 79 */	or. r4, r3, r3
/* 802CFAF4  41 82 00 0C */	beq lbl_802CFB00
/* 802CFAF8  7F A3 EB 78 */	mr r3, r29
/* 802CFAFC  48 00 04 21 */	bl recycleFreeBlock__10JKRExpHeapFPQ210JKRExpHeap9CMemBlock
lbl_802CFB00:
/* 802CFB00  38 7D 00 18 */	addi r3, r29, 0x18
/* 802CFB04  48 06 F6 19 */	bl OSUnlockMutex
/* 802CFB08  80 7F 00 04 */	lwz r3, 4(r31)
lbl_802CFB0C:
/* 802CFB0C  39 61 00 20 */	addi r11, r1, 0x20
/* 802CFB10  48 09 27 15 */	bl _restgpr_28
/* 802CFB14  80 01 00 24 */	lwz r0, 0x24(r1)
/* 802CFB18  7C 08 03 A6 */	mtlr r0
/* 802CFB1C  38 21 00 20 */	addi r1, r1, 0x20
/* 802CFB20  4E 80 00 20 */	blr 
