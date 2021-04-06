lbl_802D2830:
/* 802D2830  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 802D2834  7C 08 02 A6 */	mflr r0
/* 802D2838  90 01 00 34 */	stw r0, 0x34(r1)
/* 802D283C  39 61 00 30 */	addi r11, r1, 0x30
/* 802D2840  48 08 F9 8D */	bl _savegpr_25
/* 802D2844  7C 7A 1B 78 */	mr r26, r3
/* 802D2848  7C 9B 23 78 */	mr r27, r4
/* 802D284C  7C BC 2B 78 */	mr r28, r5
/* 802D2850  7C DD 33 78 */	mr r29, r6
/* 802D2854  7C FE 3B 78 */	mr r30, r7
/* 802D2858  7D 1F 43 78 */	mr r31, r8
/* 802D285C  48 06 AE 99 */	bl OSDisableInterrupts
/* 802D2860  7C 79 1B 78 */	mr r25, r3
/* 802D2864  88 0D 8E 7C */	lbz r0, data_804513FC(r13)
/* 802D2868  28 00 00 00 */	cmplwi r0, 0
/* 802D286C  40 82 00 18 */	bne lbl_802D2884
/* 802D2870  3C 60 80 43 */	lis r3, decompMutex@ha /* 0x804342E8@ha */
/* 802D2874  38 63 42 E8 */	addi r3, r3, decompMutex@l /* 0x804342E8@l */
/* 802D2878  48 06 C7 91 */	bl OSInitMutex
/* 802D287C  38 00 00 01 */	li r0, 1
/* 802D2880  98 0D 8E 7C */	stb r0, data_804513FC(r13)
lbl_802D2884:
/* 802D2884  7F 23 CB 78 */	mr r3, r25
/* 802D2888  48 06 AE 95 */	bl OSRestoreInterrupts
/* 802D288C  3C 60 80 43 */	lis r3, decompMutex@ha /* 0x804342E8@ha */
/* 802D2890  38 63 42 E8 */	addi r3, r3, decompMutex@l /* 0x804342E8@l */
/* 802D2894  48 06 C7 AD */	bl OSLockMutex
/* 802D2898  83 2D 83 38 */	lwz r25, sSZSBufferSize__7JKRAram(r13)
/* 802D289C  80 6D 8D F0 */	lwz r3, sSystemHeap__7JKRHeap(r13)
/* 802D28A0  7F 24 CB 78 */	mr r4, r25
/* 802D28A4  38 A0 00 20 */	li r5, 0x20
/* 802D28A8  4B FF BC 2D */	bl alloc__7JKRHeapFUli
/* 802D28AC  90 6D 8E 4C */	stw r3, szpBuf(r13)
/* 802D28B0  7C 03 CA 14 */	add r0, r3, r25
/* 802D28B4  90 0D 8E 50 */	stw r0, szpEnd(r13)
/* 802D28B8  28 1E 00 00 */	cmplwi r30, 0
/* 802D28BC  41 82 00 28 */	beq lbl_802D28E4
/* 802D28C0  80 6D 8D F0 */	lwz r3, sSystemHeap__7JKRHeap(r13)
/* 802D28C4  38 80 11 20 */	li r4, 0x1120
/* 802D28C8  38 A0 00 00 */	li r5, 0
/* 802D28CC  4B FF BC 09 */	bl alloc__7JKRHeapFUli
/* 802D28D0  90 6D 8E 54 */	stw r3, refBuf(r13)
/* 802D28D4  38 03 11 20 */	addi r0, r3, 0x1120
/* 802D28D8  90 0D 8E 58 */	stw r0, refEnd(r13)
/* 802D28DC  90 6D 8E 5C */	stw r3, refCurrent(r13)
/* 802D28E0  48 00 00 0C */	b lbl_802D28EC
lbl_802D28E4:
/* 802D28E4  38 00 00 00 */	li r0, 0
/* 802D28E8  90 0D 8E 54 */	stw r0, refBuf(r13)
lbl_802D28EC:
/* 802D28EC  93 4D 8E 6C */	stw r26, srcAddress(r13)
/* 802D28F0  38 00 00 00 */	li r0, 0
/* 802D28F4  90 0D 8E 60 */	stw r0, srcOffset(r13)
/* 802D28F8  28 1C 00 00 */	cmplwi r28, 0
/* 802D28FC  38 00 FF FF */	li r0, -1
/* 802D2900  41 82 00 08 */	beq lbl_802D2908
/* 802D2904  7F 80 E3 78 */	mr r0, r28
lbl_802D2908:
/* 802D2908  90 0D 8E 64 */	stw r0, transLeft(r13)
/* 802D290C  93 CD 8E 70 */	stw r30, fileOffset(r13)
/* 802D2910  38 00 00 00 */	li r0, 0
/* 802D2914  90 0D 8E 74 */	stw r0, readCount(r13)
/* 802D2918  93 AD 8E 78 */	stw r29, maxDest(r13)
/* 802D291C  28 1F 00 00 */	cmplwi r31, 0
/* 802D2920  41 82 00 0C */	beq lbl_802D292C
/* 802D2924  7F E3 FB 78 */	mr r3, r31
/* 802D2928  48 00 00 08 */	b lbl_802D2930
lbl_802D292C:
/* 802D292C  38 6D 8E 84 */	la r3, tsArea(r13) /* 80451404-_SDA_BASE_ */
lbl_802D2930:
/* 802D2930  90 6D 8E 80 */	stw r3, tsPtr(r13)
/* 802D2934  38 00 00 00 */	li r0, 0
/* 802D2938  90 03 00 00 */	stw r0, 0(r3)
/* 802D293C  48 00 03 05 */	bl firstSrcData__Fv
/* 802D2940  7F 64 DB 78 */	mr r4, r27
/* 802D2944  48 00 00 5D */	bl decompSZS_subroutine__FPUcPUc
/* 802D2948  80 6D 8E 4C */	lwz r3, szpBuf(r13)
/* 802D294C  38 80 00 00 */	li r4, 0
/* 802D2950  4B FF BB B1 */	bl free__7JKRHeapFPvP7JKRHeap
/* 802D2954  80 6D 8E 54 */	lwz r3, refBuf(r13)
/* 802D2958  28 03 00 00 */	cmplwi r3, 0
/* 802D295C  41 82 00 0C */	beq lbl_802D2968
/* 802D2960  38 80 00 00 */	li r4, 0
/* 802D2964  4B FF BB 9D */	bl free__7JKRHeapFPvP7JKRHeap
lbl_802D2968:
/* 802D2968  7F 63 DB 78 */	mr r3, r27
/* 802D296C  80 8D 8E 80 */	lwz r4, tsPtr(r13)
/* 802D2970  80 84 00 00 */	lwz r4, 0(r4)
/* 802D2974  48 06 8C C5 */	bl DCStoreRangeNoSync
/* 802D2978  3C 60 80 43 */	lis r3, decompMutex@ha /* 0x804342E8@ha */
/* 802D297C  38 63 42 E8 */	addi r3, r3, decompMutex@l /* 0x804342E8@l */
/* 802D2980  48 06 C7 9D */	bl OSUnlockMutex
/* 802D2984  38 60 00 00 */	li r3, 0
/* 802D2988  39 61 00 30 */	addi r11, r1, 0x30
/* 802D298C  48 08 F8 8D */	bl _restgpr_25
/* 802D2990  80 01 00 34 */	lwz r0, 0x34(r1)
/* 802D2994  7C 08 03 A6 */	mtlr r0
/* 802D2998  38 21 00 30 */	addi r1, r1, 0x30
/* 802D299C  4E 80 00 20 */	blr 
