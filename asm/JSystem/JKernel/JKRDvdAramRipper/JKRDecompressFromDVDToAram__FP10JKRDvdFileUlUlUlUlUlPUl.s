lbl_802DAFE8:
/* 802DAFE8  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 802DAFEC  7C 08 02 A6 */	mflr r0
/* 802DAFF0  90 01 00 34 */	stw r0, 0x34(r1)
/* 802DAFF4  39 61 00 30 */	addi r11, r1, 0x30
/* 802DAFF8  48 08 71 D1 */	bl _savegpr_24
/* 802DAFFC  7C 79 1B 78 */	mr r25, r3
/* 802DB000  7C 9A 23 78 */	mr r26, r4
/* 802DB004  7C BB 2B 78 */	mr r27, r5
/* 802DB008  7C DC 33 78 */	mr r28, r6
/* 802DB00C  7C FD 3B 78 */	mr r29, r7
/* 802DB010  7D 1E 43 78 */	mr r30, r8
/* 802DB014  7D 3F 4B 78 */	mr r31, r9
/* 802DB018  48 06 26 DD */	bl OSDisableInterrupts
/* 802DB01C  7C 78 1B 78 */	mr r24, r3
/* 802DB020  88 0D 8F 24 */	lbz r0, data_804514A4(r13)
/* 802DB024  28 00 00 00 */	cmplwi r0, 0
/* 802DB028  40 82 00 18 */	bne lbl_802DB040
/* 802DB02C  3C 60 80 43 */	lis r3, decompMutex@ha
/* 802DB030  38 63 43 C0 */	addi r3, r3, decompMutex@l
/* 802DB034  48 06 3F D5 */	bl OSInitMutex
/* 802DB038  38 00 00 01 */	li r0, 1
/* 802DB03C  98 0D 8F 24 */	stb r0, data_804514A4(r13)
lbl_802DB040:
/* 802DB040  7F 03 C3 78 */	mr r3, r24
/* 802DB044  48 06 26 D9 */	bl OSRestoreInterrupts
/* 802DB048  3C 60 80 43 */	lis r3, decompMutex@ha
/* 802DB04C  38 63 43 C0 */	addi r3, r3, decompMutex@l
/* 802DB050  48 06 3F F1 */	bl OSLockMutex
/* 802DB054  83 0D 83 54 */	lwz r24, sSZSBufferSize__16JKRDvdAramRipper(r13)
/* 802DB058  80 6D 8D F0 */	lwz r3, sSystemHeap__7JKRHeap(r13)
/* 802DB05C  7F 04 C3 78 */	mr r4, r24
/* 802DB060  38 A0 00 20 */	li r5, 0x20
/* 802DB064  4B FF 34 71 */	bl alloc__7JKRHeapFUli
/* 802DB068  90 6D 8E E8 */	stw r3, szpBuf(r13)
/* 802DB06C  7C 03 C2 14 */	add r0, r3, r24
/* 802DB070  90 0D 8E EC */	stw r0, szpEnd(r13)
/* 802DB074  80 6D 8D F0 */	lwz r3, sSystemHeap__7JKRHeap(r13)
/* 802DB078  38 80 11 20 */	li r4, 0x1120
/* 802DB07C  38 A0 00 00 */	li r5, 0
/* 802DB080  4B FF 34 55 */	bl alloc__7JKRHeapFUli
/* 802DB084  90 6D 8E F0 */	stw r3, refBuf(r13)
/* 802DB088  38 03 11 20 */	addi r0, r3, 0x1120
/* 802DB08C  90 0D 8E F4 */	stw r0, refEnd(r13)
/* 802DB090  90 6D 8E F8 */	stw r3, refCurrent(r13)
/* 802DB094  80 6D 8D F0 */	lwz r3, sSystemHeap__7JKRHeap(r13)
/* 802DB098  38 80 01 00 */	li r4, 0x100
/* 802DB09C  38 A0 00 20 */	li r5, 0x20
/* 802DB0A0  4B FF 34 35 */	bl alloc__7JKRHeapFUli
/* 802DB0A4  90 6D 8E FC */	stw r3, dmaBuf(r13)
/* 802DB0A8  38 03 01 00 */	addi r0, r3, 0x100
/* 802DB0AC  90 0D 8F 00 */	stw r0, dmaEnd(r13)
/* 802DB0B0  90 6D 8F 04 */	stw r3, dmaCurrent(r13)
/* 802DB0B4  93 2D 8F 14 */	stw r25, srcFile(r13)
/* 802DB0B8  93 CD 8F 08 */	stw r30, srcOffset(r13)
/* 802DB0BC  7C 1E D8 50 */	subf r0, r30, r27
/* 802DB0C0  90 0D 8F 0C */	stw r0, transLeft(r13)
/* 802DB0C4  93 AD 8F 18 */	stw r29, fileOffset(r13)
/* 802DB0C8  38 00 00 00 */	li r0, 0
/* 802DB0CC  90 0D 8F 1C */	stw r0, readCount(r13)
/* 802DB0D0  93 8D 8F 20 */	stw r28, maxDest(r13)
/* 802DB0D4  28 1F 00 00 */	cmplwi r31, 0
/* 802DB0D8  41 82 00 0C */	beq lbl_802DB0E4
/* 802DB0DC  7F E3 FB 78 */	mr r3, r31
/* 802DB0E0  48 00 00 08 */	b lbl_802DB0E8
lbl_802DB0E4:
/* 802DB0E4  38 6D 8F 2C */	la r3, tsArea(r13) /* 804514AC-_SDA_BASE_ */
lbl_802DB0E8:
/* 802DB0E8  90 6D 8F 28 */	stw r3, tsPtr(r13)
/* 802DB0EC  38 00 00 00 */	li r0, 0
/* 802DB0F0  90 03 00 00 */	stw r0, 0(r3)
/* 802DB0F4  48 00 02 F5 */	bl firstSrcData__Fv
/* 802DB0F8  28 03 00 00 */	cmplwi r3, 0
/* 802DB0FC  41 82 00 14 */	beq lbl_802DB110
/* 802DB100  7F 44 D3 78 */	mr r4, r26
/* 802DB104  48 00 00 5D */	bl decompSZS_subroutine__FPUcUl
/* 802DB108  7C 79 1B 78 */	mr r25, r3
/* 802DB10C  48 00 00 08 */	b lbl_802DB114
lbl_802DB110:
/* 802DB110  3B 20 FF FF */	li r25, -1
lbl_802DB114:
/* 802DB114  80 6D 8E E8 */	lwz r3, szpBuf(r13)
/* 802DB118  38 80 00 00 */	li r4, 0
/* 802DB11C  4B FF 33 E5 */	bl free__7JKRHeapFPvP7JKRHeap
/* 802DB120  80 6D 8E F0 */	lwz r3, refBuf(r13)
/* 802DB124  38 80 00 00 */	li r4, 0
/* 802DB128  4B FF 33 D9 */	bl free__7JKRHeapFPvP7JKRHeap
/* 802DB12C  80 6D 8E FC */	lwz r3, dmaBuf(r13)
/* 802DB130  38 80 00 00 */	li r4, 0
/* 802DB134  4B FF 33 CD */	bl free__7JKRHeapFPvP7JKRHeap
/* 802DB138  3C 60 80 43 */	lis r3, decompMutex@ha
/* 802DB13C  38 63 43 C0 */	addi r3, r3, decompMutex@l
/* 802DB140  48 06 3F DD */	bl OSUnlockMutex
/* 802DB144  7F 23 CB 78 */	mr r3, r25
/* 802DB148  39 61 00 30 */	addi r11, r1, 0x30
/* 802DB14C  48 08 70 C9 */	bl _restgpr_24
/* 802DB150  80 01 00 34 */	lwz r0, 0x34(r1)
/* 802DB154  7C 08 03 A6 */	mtlr r0
/* 802DB158  38 21 00 30 */	addi r1, r1, 0x30
/* 802DB15C  4E 80 00 20 */	blr 
