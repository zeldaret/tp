lbl_802A5F24:
/* 802A5F24  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 802A5F28  7C 08 02 A6 */	mflr r0
/* 802A5F2C  90 01 00 24 */	stw r0, 0x24(r1)
/* 802A5F30  39 61 00 20 */	addi r11, r1, 0x20
/* 802A5F34  48 0B C2 A5 */	bl _savegpr_28
/* 802A5F38  7C 7C 1B 78 */	mr r28, r3
/* 802A5F3C  7C 9D 23 78 */	mr r29, r4
/* 802A5F40  48 02 84 F9 */	bl becomeCurrentHeap__7JKRHeapFv
/* 802A5F44  90 61 00 08 */	stw r3, 8(r1)
/* 802A5F48  7F 83 E3 78 */	mr r3, r28
/* 802A5F4C  48 02 87 E1 */	bl getFreeSize__7JKRHeapFv
/* 802A5F50  7C 7E 1B 78 */	mr r30, r3
/* 802A5F54  38 60 05 34 */	li r3, 0x534
/* 802A5F58  48 02 8C F5 */	bl __nw__FUl
/* 802A5F5C  7C 7F 1B 79 */	or. r31, r3, r3
/* 802A5F60  41 82 00 18 */	beq lbl_802A5F78
/* 802A5F64  7F 84 E3 78 */	mr r4, r28
/* 802A5F68  7F A5 EB 78 */	mr r5, r29
/* 802A5F6C  7F C6 F3 78 */	mr r6, r30
/* 802A5F70  48 00 00 71 */	bl __ct__14JAUSectionHeapFP12JKRSolidHeapbl
/* 802A5F74  7C 7F 1B 78 */	mr r31, r3
lbl_802A5F78:
/* 802A5F78  80 61 00 08 */	lwz r3, 8(r1)
/* 802A5F7C  48 02 84 BD */	bl becomeCurrentHeap__7JKRHeapFv
/* 802A5F80  7F E3 FB 78 */	mr r3, r31
/* 802A5F84  39 61 00 20 */	addi r11, r1, 0x20
/* 802A5F88  48 0B C2 9D */	bl _restgpr_28
/* 802A5F8C  80 01 00 24 */	lwz r0, 0x24(r1)
/* 802A5F90  7C 08 03 A6 */	mtlr r0
/* 802A5F94  38 21 00 20 */	addi r1, r1, 0x20
/* 802A5F98  4E 80 00 20 */	blr 
