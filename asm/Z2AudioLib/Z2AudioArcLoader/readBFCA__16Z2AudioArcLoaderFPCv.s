lbl_802A9AC8:
/* 802A9AC8  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 802A9ACC  7C 08 02 A6 */	mflr r0
/* 802A9AD0  90 01 00 24 */	stw r0, 0x24(r1)
/* 802A9AD4  39 61 00 20 */	addi r11, r1, 0x20
/* 802A9AD8  48 0B 87 05 */	bl _savegpr_29
/* 802A9ADC  7C 9D 23 78 */	mr r29, r4
/* 802A9AE0  83 CD 87 40 */	lwz r30, data_80450CC0(r13)
/* 802A9AE4  7F C3 F3 78 */	mr r3, r30
/* 802A9AE8  4B FF C5 AD */	bl getOpenSection__14JAUSectionHeapFv
/* 802A9AEC  88 03 00 2C */	lbz r0, 0x2c(r3)
/* 802A9AF0  28 00 00 00 */	cmplwi r0, 0
/* 802A9AF4  41 82 00 0C */	beq lbl_802A9B00
/* 802A9AF8  83 FE 00 E0 */	lwz r31, 0xe0(r30)
/* 802A9AFC  48 00 00 08 */	b lbl_802A9B04
lbl_802A9B00:
/* 802A9B00  3B E0 00 00 */	li r31, 0
lbl_802A9B04:
/* 802A9B04  7F A3 EB 78 */	mr r3, r29
/* 802A9B08  80 8D 8D F4 */	lwz r4, sCurrentHeap__7JKRHeap(r13)
/* 802A9B0C  38 A0 00 02 */	li r5, 2
/* 802A9B10  48 02 BD 31 */	bl mount__10JKRArchiveFPvP7JKRHeapQ210JKRArchive15EMountDirection
/* 802A9B14  7C 7E 1B 78 */	mr r30, r3
/* 802A9B18  80 6D 85 C0 */	lwz r3, __OSReport_disable-0x58(r13)
/* 802A9B1C  7F C4 F3 78 */	mr r4, r30
/* 802A9B20  7F E5 FB 78 */	mr r5, r31
/* 802A9B24  48 01 0C D9 */	bl initDataArc__11Z2FxLineMgrFP10JKRArchiveP7JKRHeap
/* 802A9B28  7F C3 F3 78 */	mr r3, r30
/* 802A9B2C  81 9E 00 00 */	lwz r12, 0(r30)
/* 802A9B30  81 8C 00 0C */	lwz r12, 0xc(r12)
/* 802A9B34  7D 89 03 A6 */	mtctr r12
/* 802A9B38  4E 80 04 21 */	bctrl 
/* 802A9B3C  39 61 00 20 */	addi r11, r1, 0x20
/* 802A9B40  48 0B 86 E9 */	bl _restgpr_29
/* 802A9B44  80 01 00 24 */	lwz r0, 0x24(r1)
/* 802A9B48  7C 08 03 A6 */	mtlr r0
/* 802A9B4C  38 21 00 20 */	addi r1, r1, 0x20
/* 802A9B50  4E 80 00 20 */	blr 
