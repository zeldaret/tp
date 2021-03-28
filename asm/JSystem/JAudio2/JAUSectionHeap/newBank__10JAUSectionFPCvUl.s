lbl_802A5A50:
/* 802A5A50  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 802A5A54  7C 08 02 A6 */	mflr r0
/* 802A5A58  90 01 00 34 */	stw r0, 0x34(r1)
/* 802A5A5C  39 61 00 30 */	addi r11, r1, 0x30
/* 802A5A60  48 0B C7 75 */	bl _savegpr_27
/* 802A5A64  7C 7E 1B 78 */	mr r30, r3
/* 802A5A68  7C 9F 23 78 */	mr r31, r4
/* 802A5A6C  80 83 00 30 */	lwz r4, 0x30(r3)
/* 802A5A70  80 04 00 F8 */	lwz r0, 0xf8(r4)
/* 802A5A74  7C 05 00 40 */	cmplw r5, r0
/* 802A5A78  41 80 00 0C */	blt lbl_802A5A84
/* 802A5A7C  3B 80 00 00 */	li r28, 0
/* 802A5A80  48 00 00 10 */	b lbl_802A5A90
lbl_802A5A84:
/* 802A5A84  80 64 00 F4 */	lwz r3, 0xf4(r4)
/* 802A5A88  54 A0 10 3A */	slwi r0, r5, 2
/* 802A5A8C  7F 83 00 2E */	lwzx r28, r3, r0
lbl_802A5A90:
/* 802A5A90  80 64 00 E0 */	lwz r3, 0xe0(r4)
/* 802A5A94  48 02 89 A5 */	bl becomeCurrentHeap__7JKRHeapFv
/* 802A5A98  90 61 00 08 */	stw r3, 8(r1)
/* 802A5A9C  83 7F 00 08 */	lwz r27, 8(r31)
/* 802A5AA0  80 7E 00 30 */	lwz r3, 0x30(r30)
/* 802A5AA4  80 63 00 E0 */	lwz r3, 0xe0(r3)
/* 802A5AA8  48 02 8C 85 */	bl getFreeSize__7JKRHeapFv
/* 802A5AAC  7C 7D 1B 78 */	mr r29, r3
/* 802A5AB0  7F E3 FB 78 */	mr r3, r31
/* 802A5AB4  80 9E 00 30 */	lwz r4, 0x30(r30)
/* 802A5AB8  80 84 00 E0 */	lwz r4, 0xe0(r4)
/* 802A5ABC  4B FF 3A 7D */	bl createBank__12JASBNKParserFPCvP7JKRHeap
/* 802A5AC0  7C 7F 1B 79 */	or. r31, r3, r3
/* 802A5AC4  41 82 00 9C */	beq lbl_802A5B60
/* 802A5AC8  80 7E 00 34 */	lwz r3, 0x34(r30)
/* 802A5ACC  28 03 00 00 */	cmplwi r3, 0
/* 802A5AD0  41 82 00 14 */	beq lbl_802A5AE4
/* 802A5AD4  80 63 00 14 */	lwz r3, 0x14(r3)
/* 802A5AD8  57 60 10 3A */	slwi r0, r27, 2
/* 802A5ADC  7F E3 01 2E */	stwx r31, r3, r0
/* 802A5AE0  48 00 00 50 */	b lbl_802A5B30
lbl_802A5AE4:
/* 802A5AE4  80 6D 86 10 */	lwz r3, data_80450B90(r13)
/* 802A5AE8  80 63 00 04 */	lwz r3, 4(r3)
/* 802A5AEC  57 60 10 3A */	slwi r0, r27, 2
/* 802A5AF0  7F E3 01 2E */	stwx r31, r3, r0
/* 802A5AF4  28 1B 00 FF */	cmplwi r27, 0xff
/* 802A5AF8  41 80 00 28 */	blt lbl_802A5B20
/* 802A5AFC  3C 60 80 3D */	lis r3, __files@ha
/* 802A5B00  38 63 29 B0 */	addi r3, r3, __files@l
/* 802A5B04  38 63 00 A0 */	addi r3, r3, 0xa0
/* 802A5B08  3C 80 80 3A */	lis r4, JAUSectionHeap__stringBase0@ha
/* 802A5B0C  38 84 B9 50 */	addi r4, r4, JAUSectionHeap__stringBase0@l
/* 802A5B10  38 84 00 47 */	addi r4, r4, 0x47
/* 802A5B14  4C C6 31 82 */	crclr 6
/* 802A5B18  48 0C 0C 85 */	bl fprintf
/* 802A5B1C  48 0B CF A1 */	bl abort
lbl_802A5B20:
/* 802A5B20  38 7E 00 8C */	addi r3, r30, 0x8c
/* 802A5B24  7F 64 DB 78 */	mr r4, r27
/* 802A5B28  38 A0 00 01 */	li r5, 1
/* 802A5B2C  48 00 0A A9 */	bl func_802A65D4
lbl_802A5B30:
/* 802A5B30  93 9F 00 04 */	stw r28, 4(r31)
/* 802A5B34  80 7E 00 30 */	lwz r3, 0x30(r30)
/* 802A5B38  80 63 00 E0 */	lwz r3, 0xe0(r3)
/* 802A5B3C  48 02 8B F1 */	bl getFreeSize__7JKRHeapFv
/* 802A5B40  7C 63 E8 50 */	subf r3, r3, r29
/* 802A5B44  80 1E 00 D4 */	lwz r0, 0xd4(r30)
/* 802A5B48  7C 00 1A 14 */	add r0, r0, r3
/* 802A5B4C  90 1E 00 D4 */	stw r0, 0xd4(r30)
/* 802A5B50  80 61 00 08 */	lwz r3, 8(r1)
/* 802A5B54  48 02 88 E5 */	bl becomeCurrentHeap__7JKRHeapFv
/* 802A5B58  7F E3 FB 78 */	mr r3, r31
/* 802A5B5C  48 00 00 10 */	b lbl_802A5B6C
lbl_802A5B60:
/* 802A5B60  80 61 00 08 */	lwz r3, 8(r1)
/* 802A5B64  48 02 88 D5 */	bl becomeCurrentHeap__7JKRHeapFv
/* 802A5B68  38 60 00 00 */	li r3, 0
lbl_802A5B6C:
/* 802A5B6C  39 61 00 30 */	addi r11, r1, 0x30
/* 802A5B70  48 0B C6 B1 */	bl _restgpr_27
/* 802A5B74  80 01 00 34 */	lwz r0, 0x34(r1)
/* 802A5B78  7C 08 03 A6 */	mtlr r0
/* 802A5B7C  38 21 00 30 */	addi r1, r1, 0x30
/* 802A5B80  4E 80 00 20 */	blr 
