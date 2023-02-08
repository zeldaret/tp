lbl_80299558:
/* 80299558  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8029955C  7C 08 02 A6 */	mflr r0
/* 80299560  90 01 00 24 */	stw r0, 0x24(r1)
/* 80299564  39 61 00 20 */	addi r11, r1, 0x20
/* 80299568  48 0C 8C 71 */	bl _savegpr_28
/* 8029956C  7C 7C 1B 78 */	mr r28, r3
/* 80299570  7C 9D 23 79 */	or. r29, r4, r4
/* 80299574  40 82 00 08 */	bne lbl_8029957C
/* 80299578  83 AD 8C 90 */	lwz r29, JASDram(r13)
lbl_8029957C:
/* 8029957C  7F A3 EB 78 */	mr r3, r29
/* 80299580  48 03 51 AD */	bl getFreeSize__7JKRHeapFv
/* 80299584  7C 7F 1B 78 */	mr r31, r3
/* 80299588  3B C0 00 00 */	li r30, 0
/* 8029958C  80 1C 00 0C */	lwz r0, 0xc(r28)
/* 80299590  2C 00 00 01 */	cmpwi r0, 1
/* 80299594  41 82 00 28 */	beq lbl_802995BC
/* 80299598  40 80 00 34 */	bge lbl_802995CC
/* 8029959C  2C 00 00 00 */	cmpwi r0, 0
/* 802995A0  40 80 00 08 */	bge lbl_802995A8
/* 802995A4  48 00 00 28 */	b lbl_802995CC
lbl_802995A8:
/* 802995A8  7F 83 E3 78 */	mr r3, r28
/* 802995AC  7F A4 EB 78 */	mr r4, r29
/* 802995B0  48 00 04 8D */	bl createBasicBank__Q212JASBNKParser4Ver0FPCvP7JKRHeap
/* 802995B4  7C 7E 1B 78 */	mr r30, r3
/* 802995B8  48 00 00 14 */	b lbl_802995CC
lbl_802995BC:
/* 802995BC  7F 83 E3 78 */	mr r3, r28
/* 802995C0  7F A4 EB 78 */	mr r4, r29
/* 802995C4  48 00 00 79 */	bl createBasicBank__Q212JASBNKParser4Ver1FPCvP7JKRHeap
/* 802995C8  7C 7E 1B 78 */	mr r30, r3
lbl_802995CC:
/* 802995CC  7F A3 EB 78 */	mr r3, r29
/* 802995D0  48 03 51 5D */	bl getFreeSize__7JKRHeapFv
/* 802995D4  7C 63 F8 50 */	subf r3, r3, r31
/* 802995D8  80 0D 8D 08 */	lwz r0, sUsedHeapSize__12JASBNKParser(r13)
/* 802995DC  7C 00 1A 14 */	add r0, r0, r3
/* 802995E0  90 0D 8D 08 */	stw r0, sUsedHeapSize__12JASBNKParser(r13)
/* 802995E4  7F C3 F3 78 */	mr r3, r30
/* 802995E8  39 61 00 20 */	addi r11, r1, 0x20
/* 802995EC  48 0C 8C 39 */	bl _restgpr_28
/* 802995F0  80 01 00 24 */	lwz r0, 0x24(r1)
/* 802995F4  7C 08 03 A6 */	mtlr r0
/* 802995F8  38 21 00 20 */	addi r1, r1, 0x20
/* 802995FC  4E 80 00 20 */	blr 
