lbl_802A5500:
/* 802A5500  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 802A5504  7C 08 02 A6 */	mflr r0
/* 802A5508  90 01 00 24 */	stw r0, 0x24(r1)
/* 802A550C  39 61 00 20 */	addi r11, r1, 0x20
/* 802A5510  48 0B CC CD */	bl _savegpr_29
/* 802A5514  7C 7D 1B 78 */	mr r29, r3
/* 802A5518  7C 9E 23 78 */	mr r30, r4
/* 802A551C  28 05 00 00 */	cmplwi r5, 0
/* 802A5520  41 82 00 10 */	beq lbl_802A5530
/* 802A5524  38 C0 00 04 */	li r6, 4
/* 802A5528  48 00 02 C9 */	bl newCopy__10JAUSectionFPCvUll
/* 802A552C  7C 7E 1B 78 */	mr r30, r3
lbl_802A5530:
/* 802A5530  80 7D 00 30 */	lwz r3, 0x30(r29)
/* 802A5534  80 63 00 E0 */	lwz r3, 0xe0(r3)
/* 802A5538  48 02 8F 01 */	bl becomeCurrentHeap__7JKRHeapFv
/* 802A553C  90 61 00 08 */	stw r3, 8(r1)
/* 802A5540  38 60 00 18 */	li r3, 0x18
/* 802A5544  48 02 97 09 */	bl __nw__FUl
/* 802A5548  7C 7F 1B 79 */	or. r31, r3, r3
/* 802A554C  41 82 00 0C */	beq lbl_802A5558
/* 802A5550  48 00 12 2D */	bl __ct__27JAUSeqDataMgr_SeqCollectionFv
/* 802A5554  7C 7F 1B 78 */	mr r31, r3
lbl_802A5558:
/* 802A5558  38 7F 00 04 */	addi r3, r31, 4
/* 802A555C  7F C4 F3 78 */	mr r4, r30
/* 802A5560  48 00 11 4D */	bl init__16JAUSeqCollectionFPCv
/* 802A5564  80 7D 00 30 */	lwz r3, 0x30(r29)
/* 802A5568  93 E3 05 24 */	stw r31, 0x524(r3)
/* 802A556C  93 FD 00 B8 */	stw r31, 0xb8(r29)
/* 802A5570  80 61 00 08 */	lwz r3, 8(r1)
/* 802A5574  48 02 8E C5 */	bl becomeCurrentHeap__7JKRHeapFv
/* 802A5578  80 7D 00 30 */	lwz r3, 0x30(r29)
/* 802A557C  80 63 05 24 */	lwz r3, 0x524(r3)
/* 802A5580  39 61 00 20 */	addi r11, r1, 0x20
/* 802A5584  48 0B CC A5 */	bl _restgpr_29
/* 802A5588  80 01 00 24 */	lwz r0, 0x24(r1)
/* 802A558C  7C 08 03 A6 */	mtlr r0
/* 802A5590  38 21 00 20 */	addi r1, r1, 0x20
/* 802A5594  4E 80 00 20 */	blr 
