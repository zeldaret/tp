lbl_802D00B4:
/* 802D00B4  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 802D00B8  7C 08 02 A6 */	mflr r0
/* 802D00BC  90 01 00 24 */	stw r0, 0x24(r1)
/* 802D00C0  39 61 00 20 */	addi r11, r1, 0x20
/* 802D00C4  48 09 21 11 */	bl _savegpr_27
/* 802D00C8  7C 7E 1B 78 */	mr r30, r3
/* 802D00CC  7C 9F 23 78 */	mr r31, r4
/* 802D00D0  80 04 00 04 */	lwz r0, 4(r4)
/* 802D00D4  7F BF 02 14 */	add r29, r31, r0
/* 802D00D8  83 84 00 0C */	lwz r28, 0xc(r4)
/* 802D00DC  88 1C 00 02 */	lbz r0, 2(r28)
/* 802D00E0  54 00 06 7E */	clrlwi r0, r0, 0x19
/* 802D00E4  7F 60 E0 50 */	subf r27, r0, r28
/* 802D00E8  3B BD 00 10 */	addi r29, r29, 0x10
/* 802D00EC  7C 1D D8 40 */	cmplw r29, r27
/* 802D00F0  40 81 00 4C */	ble lbl_802D013C
/* 802D00F4  3C 60 80 3A */	lis r3, JKRExpHeap__stringBase0@ha /* 0x8039CAF0@ha */
/* 802D00F8  38 63 CA F0 */	addi r3, r3, JKRExpHeap__stringBase0@l /* 0x8039CAF0@l */
/* 802D00FC  38 63 00 4B */	addi r3, r3, 0x4b
/* 802D0100  4C C6 31 82 */	crclr 6
/* 802D0104  48 01 85 79 */	bl JUTWarningConsole_f
/* 802D0108  80 6D 8D F4 */	lwz r3, sCurrentHeap__7JKRHeap(r13)
/* 802D010C  81 83 00 00 */	lwz r12, 0(r3)
/* 802D0110  81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 802D0114  7D 89 03 A6 */	mtctr r12
/* 802D0118  4E 80 04 21 */	bctrl 
/* 802D011C  3C 60 80 3A */	lis r3, JKRExpHeap__stringBase0@ha /* 0x8039CAF0@ha */
/* 802D0120  38 C3 CA F0 */	addi r6, r3, JKRExpHeap__stringBase0@l /* 0x8039CAF0@l */
/* 802D0124  38 66 00 25 */	addi r3, r6, 0x25
/* 802D0128  38 80 07 1C */	li r4, 0x71c
/* 802D012C  38 A6 00 34 */	addi r5, r6, 0x34
/* 802D0130  38 C6 00 6F */	addi r6, r6, 0x6f
/* 802D0134  4C C6 31 82 */	crclr 6
/* 802D0138  48 01 20 C5 */	bl panic_f__12JUTExceptionFPCciPCce
lbl_802D013C:
/* 802D013C  7C 1D D8 40 */	cmplw r29, r27
/* 802D0140  40 82 00 38 */	bne lbl_802D0178
/* 802D0144  80 9F 00 04 */	lwz r4, 4(r31)
/* 802D0148  80 7C 00 04 */	lwz r3, 4(r28)
/* 802D014C  88 1C 00 02 */	lbz r0, 2(r28)
/* 802D0150  54 00 06 7E */	clrlwi r0, r0, 0x19
/* 802D0154  7C 03 02 14 */	add r0, r3, r0
/* 802D0158  7C 60 22 14 */	add r3, r0, r4
/* 802D015C  38 03 00 10 */	addi r0, r3, 0x10
/* 802D0160  90 1F 00 04 */	stw r0, 4(r31)
/* 802D0164  7F C3 F3 78 */	mr r3, r30
/* 802D0168  7F E4 FB 78 */	mr r4, r31
/* 802D016C  80 BF 00 08 */	lwz r5, 8(r31)
/* 802D0170  80 DC 00 0C */	lwz r6, 0xc(r28)
/* 802D0174  4B FF FC F5 */	bl setFreeBlock__10JKRExpHeapFPQ210JKRExpHeap9CMemBlockPQ210JKRExpHeap9CMemBlockPQ210JKRExpHeap9CMemBlock
lbl_802D0178:
/* 802D0178  39 61 00 20 */	addi r11, r1, 0x20
/* 802D017C  48 09 20 A5 */	bl _restgpr_27
/* 802D0180  80 01 00 24 */	lwz r0, 0x24(r1)
/* 802D0184  7C 08 03 A6 */	mtlr r0
/* 802D0188  38 21 00 20 */	addi r1, r1, 0x20
/* 802D018C  4E 80 00 20 */	blr 
