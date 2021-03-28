lbl_802D4DD8:
/* 802D4DD8  94 21 FE F0 */	stwu r1, -0x110(r1)
/* 802D4DDC  7C 08 02 A6 */	mflr r0
/* 802D4DE0  90 01 01 14 */	stw r0, 0x114(r1)
/* 802D4DE4  39 61 01 10 */	addi r11, r1, 0x110
/* 802D4DE8  48 08 D3 F1 */	bl _savegpr_28
/* 802D4DEC  7C 7C 1B 78 */	mr r28, r3
/* 802D4DF0  3B E0 00 00 */	li r31, 0
/* 802D4DF4  48 00 07 29 */	bl getDvdPathName__12JKRFileCacheCFPCc
/* 802D4DF8  7C 7E 1B 78 */	mr r30, r3
/* 802D4DFC  38 61 00 08 */	addi r3, r1, 8
/* 802D4E00  7F C4 F3 78 */	mr r4, r30
/* 802D4E04  48 00 47 F5 */	bl __ct__10JKRDvdFileFPCc
/* 802D4E08  88 01 00 20 */	lbz r0, 0x20(r1)
/* 802D4E0C  28 00 00 00 */	cmplwi r0, 0
/* 802D4E10  41 82 00 98 */	beq lbl_802D4EA8
/* 802D4E14  7F 83 E3 78 */	mr r3, r28
/* 802D4E18  80 81 00 94 */	lwz r4, 0x94(r1)
/* 802D4E1C  48 00 05 C9 */	bl findCacheBlock__12JKRFileCacheCFUl
/* 802D4E20  28 03 00 00 */	cmplwi r3, 0
/* 802D4E24  40 82 00 74 */	bne lbl_802D4E98
/* 802D4E28  80 61 00 98 */	lwz r3, 0x98(r1)
/* 802D4E2C  38 03 00 1F */	addi r0, r3, 0x1f
/* 802D4E30  54 1D 00 34 */	rlwinm r29, r0, 0, 0, 0x1a
/* 802D4E34  7F A3 EB 78 */	mr r3, r29
/* 802D4E38  38 80 00 20 */	li r4, 0x20
/* 802D4E3C  80 BC 00 38 */	lwz r5, 0x38(r28)
/* 802D4E40  4B FF 96 35 */	bl alloc__7JKRHeapFUliP7JKRHeap
/* 802D4E44  7C 7F 1B 79 */	or. r31, r3, r3
/* 802D4E48  41 82 00 60 */	beq lbl_802D4EA8
/* 802D4E4C  38 61 00 08 */	addi r3, r1, 8
/* 802D4E50  7F E4 FB 78 */	mr r4, r31
/* 802D4E54  7F A5 EB 78 */	mr r5, r29
/* 802D4E58  38 C0 00 00 */	li r6, 0
/* 802D4E5C  48 00 46 BD */	bl read__7JKRFileFPvll
/* 802D4E60  38 60 00 20 */	li r3, 0x20
/* 802D4E64  80 8D 8D F0 */	lwz r4, sSystemHeap__7JKRHeap(r13)
/* 802D4E68  38 A0 00 00 */	li r5, 0
/* 802D4E6C  4B FF 9E 2D */	bl __nw__FUlP7JKRHeapi
/* 802D4E70  7C 64 1B 79 */	or. r4, r3, r3
/* 802D4E74  41 82 00 18 */	beq lbl_802D4E8C
/* 802D4E78  80 81 00 94 */	lwz r4, 0x94(r1)
/* 802D4E7C  80 A1 00 98 */	lwz r5, 0x98(r1)
/* 802D4E80  7F E6 FB 78 */	mr r6, r31
/* 802D4E84  48 00 07 E9 */	bl __ct__Q212JKRFileCache11CCacheBlockFUlUlPCv
/* 802D4E88  7C 64 1B 78 */	mr r4, r3
lbl_802D4E8C:
/* 802D4E8C  38 7C 00 3C */	addi r3, r28, 0x3c
/* 802D4E90  48 00 70 BD */	bl append__10JSUPtrListFP10JSUPtrLink
/* 802D4E94  48 00 00 14 */	b lbl_802D4EA8
lbl_802D4E98:
/* 802D4E98  80 83 00 10 */	lwz r4, 0x10(r3)
/* 802D4E9C  38 04 00 01 */	addi r0, r4, 1
/* 802D4EA0  90 03 00 10 */	stw r0, 0x10(r3)
/* 802D4EA4  83 E3 00 1C */	lwz r31, 0x1c(r3)
lbl_802D4EA8:
/* 802D4EA8  80 6D 8D F0 */	lwz r3, sSystemHeap__7JKRHeap(r13)
/* 802D4EAC  7F C4 F3 78 */	mr r4, r30
/* 802D4EB0  4B FF 96 99 */	bl free__7JKRHeapFPv
/* 802D4EB4  38 61 00 08 */	addi r3, r1, 8
/* 802D4EB8  38 80 FF FF */	li r4, -1
/* 802D4EBC  48 00 48 8D */	bl __dt__10JKRDvdFileFv
/* 802D4EC0  7F E3 FB 78 */	mr r3, r31
/* 802D4EC4  39 61 01 10 */	addi r11, r1, 0x110
/* 802D4EC8  48 08 D3 5D */	bl _restgpr_28
/* 802D4ECC  80 01 01 14 */	lwz r0, 0x114(r1)
/* 802D4ED0  7C 08 03 A6 */	mtlr r0
/* 802D4ED4  38 21 01 10 */	addi r1, r1, 0x110
/* 802D4ED8  4E 80 00 20 */	blr 
