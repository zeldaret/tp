lbl_802CF574:
/* 802CF574  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 802CF578  7C 08 02 A6 */	mflr r0
/* 802CF57C  90 01 00 24 */	stw r0, 0x24(r1)
/* 802CF580  39 61 00 20 */	addi r11, r1, 0x20
/* 802CF584  48 09 2C 51 */	bl _savegpr_27
/* 802CF588  7C 7B 1B 78 */	mr r27, r3
/* 802CF58C  3B E0 00 00 */	li r31, 0
/* 802CF590  3B C0 00 00 */	li r30, 0
/* 802CF594  3B A0 00 00 */	li r29, 0
/* 802CF598  81 03 00 7C */	lwz r8, 0x7c(r3)
/* 802CF59C  38 05 FF FF */	addi r0, r5, -1
/* 802CF5A0  7C 03 00 F8 */	nor r3, r0, r0
/* 802CF5A4  48 00 00 38 */	b lbl_802CF5DC
lbl_802CF5A8:
/* 802CF5A8  80 C8 00 04 */	lwz r6, 4(r8)
/* 802CF5AC  7C A8 32 14 */	add r5, r8, r6
/* 802CF5B0  38 A5 00 10 */	addi r5, r5, 0x10
/* 802CF5B4  7C 04 28 50 */	subf r0, r4, r5
/* 802CF5B8  7C 67 00 38 */	and r7, r3, r0
/* 802CF5BC  7F 87 28 50 */	subf r28, r7, r5
/* 802CF5C0  7C 06 E0 40 */	cmplw r6, r28
/* 802CF5C4  41 80 00 14 */	blt lbl_802CF5D8
/* 802CF5C8  7D 1E 43 78 */	mr r30, r8
/* 802CF5CC  7F FC 30 50 */	subf r31, r28, r6
/* 802CF5D0  3B A7 FF F0 */	addi r29, r7, -16
/* 802CF5D4  48 00 00 10 */	b lbl_802CF5E4
lbl_802CF5D8:
/* 802CF5D8  81 08 00 08 */	lwz r8, 8(r8)
lbl_802CF5DC:
/* 802CF5DC  28 08 00 00 */	cmplwi r8, 0
/* 802CF5E0  40 82 FF C8 */	bne lbl_802CF5A8
lbl_802CF5E4:
/* 802CF5E4  28 1E 00 00 */	cmplwi r30, 0
/* 802CF5E8  41 82 00 D0 */	beq lbl_802CF6B8
/* 802CF5EC  28 1F 00 10 */	cmplwi r31, 0x10
/* 802CF5F0  41 80 00 44 */	blt lbl_802CF634
/* 802CF5F4  7F A3 EB 78 */	mr r3, r29
/* 802CF5F8  38 80 00 00 */	li r4, 0
/* 802CF5FC  38 A0 00 00 */	li r5, 0
/* 802CF600  7F 86 E3 78 */	mr r6, r28
/* 802CF604  88 FB 00 6D */	lbz r7, 0x6d(r27)
/* 802CF608  39 00 00 80 */	li r8, 0x80
/* 802CF60C  48 00 12 05 */	bl initiate__Q210JKRExpHeap9CMemBlockFPQ210JKRExpHeap9CMemBlockPQ210JKRExpHeap9CMemBlockUlUcUc
/* 802CF610  80 1E 00 04 */	lwz r0, 4(r30)
/* 802CF614  7C 7C 00 50 */	subf r3, r28, r0
/* 802CF618  38 03 FF F0 */	addi r0, r3, -16
/* 802CF61C  90 1E 00 04 */	stw r0, 4(r30)
/* 802CF620  7F 63 DB 78 */	mr r3, r27
/* 802CF624  7F A4 EB 78 */	mr r4, r29
/* 802CF628  48 00 07 A5 */	bl appendUsedList__10JKRExpHeapFPQ210JKRExpHeap9CMemBlock
/* 802CF62C  38 7D 00 10 */	addi r3, r29, 0x10
/* 802CF630  48 00 00 8C */	b lbl_802CF6BC
lbl_802CF634:
/* 802CF634  28 1F 00 00 */	cmplwi r31, 0
/* 802CF638  41 82 00 44 */	beq lbl_802CF67C
/* 802CF63C  7F 63 DB 78 */	mr r3, r27
/* 802CF640  7F C4 F3 78 */	mr r4, r30
/* 802CF644  48 00 08 71 */	bl removeFreeBlock__10JKRExpHeapFPQ210JKRExpHeap9CMemBlock
/* 802CF648  7F A3 EB 78 */	mr r3, r29
/* 802CF64C  38 80 00 00 */	li r4, 0
/* 802CF650  38 A0 00 00 */	li r5, 0
/* 802CF654  7F 86 E3 78 */	mr r6, r28
/* 802CF658  88 FB 00 6D */	lbz r7, 0x6d(r27)
/* 802CF65C  63 E0 00 80 */	ori r0, r31, 0x80
/* 802CF660  54 08 06 3E */	clrlwi r8, r0, 0x18
/* 802CF664  48 00 11 AD */	bl initiate__Q210JKRExpHeap9CMemBlockFPQ210JKRExpHeap9CMemBlockPQ210JKRExpHeap9CMemBlockUlUcUc
/* 802CF668  7F 63 DB 78 */	mr r3, r27
/* 802CF66C  7F A4 EB 78 */	mr r4, r29
/* 802CF670  48 00 07 5D */	bl appendUsedList__10JKRExpHeapFPQ210JKRExpHeap9CMemBlock
/* 802CF674  38 7D 00 10 */	addi r3, r29, 0x10
/* 802CF678  48 00 00 44 */	b lbl_802CF6BC
lbl_802CF67C:
/* 802CF67C  7F 63 DB 78 */	mr r3, r27
/* 802CF680  7F C4 F3 78 */	mr r4, r30
/* 802CF684  48 00 08 31 */	bl removeFreeBlock__10JKRExpHeapFPQ210JKRExpHeap9CMemBlock
/* 802CF688  7F A3 EB 78 */	mr r3, r29
/* 802CF68C  38 80 00 00 */	li r4, 0
/* 802CF690  38 A0 00 00 */	li r5, 0
/* 802CF694  7F 86 E3 78 */	mr r6, r28
/* 802CF698  88 FB 00 6D */	lbz r7, 0x6d(r27)
/* 802CF69C  39 00 00 80 */	li r8, 0x80
/* 802CF6A0  48 00 11 71 */	bl initiate__Q210JKRExpHeap9CMemBlockFPQ210JKRExpHeap9CMemBlockPQ210JKRExpHeap9CMemBlockUlUcUc
/* 802CF6A4  7F 63 DB 78 */	mr r3, r27
/* 802CF6A8  7F A4 EB 78 */	mr r4, r29
/* 802CF6AC  48 00 07 21 */	bl appendUsedList__10JKRExpHeapFPQ210JKRExpHeap9CMemBlock
/* 802CF6B0  38 7D 00 10 */	addi r3, r29, 0x10
/* 802CF6B4  48 00 00 08 */	b lbl_802CF6BC
lbl_802CF6B8:
/* 802CF6B8  38 60 00 00 */	li r3, 0
lbl_802CF6BC:
/* 802CF6BC  39 61 00 20 */	addi r11, r1, 0x20
/* 802CF6C0  48 09 2B 61 */	bl _restgpr_27
/* 802CF6C4  80 01 00 24 */	lwz r0, 0x24(r1)
/* 802CF6C8  7C 08 03 A6 */	mtlr r0
/* 802CF6CC  38 21 00 20 */	addi r1, r1, 0x20
/* 802CF6D0  4E 80 00 20 */	blr 
