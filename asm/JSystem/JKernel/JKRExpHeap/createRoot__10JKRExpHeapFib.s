lbl_802CEDB4:
/* 802CEDB4  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 802CEDB8  7C 08 02 A6 */	mflr r0
/* 802CEDBC  90 01 00 24 */	stw r0, 0x24(r1)
/* 802CEDC0  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 802CEDC4  7C 65 1B 78 */	mr r5, r3
/* 802CEDC8  7C 9F 23 78 */	mr r31, r4
/* 802CEDCC  38 60 00 00 */	li r3, 0
/* 802CEDD0  80 0D 8D F8 */	lwz r0, sRootHeap__7JKRHeap(r13)
/* 802CEDD4  28 00 00 00 */	cmplwi r0, 0
/* 802CEDD8  40 82 00 38 */	bne lbl_802CEE10
/* 802CEDDC  38 61 00 0C */	addi r3, r1, 0xc
/* 802CEDE0  38 81 00 08 */	addi r4, r1, 8
/* 802CEDE4  4B FF F5 95 */	bl initArena__7JKRHeapFPPcPUli
/* 802CEDE8  80 61 00 0C */	lwz r3, 0xc(r1)
/* 802CEDEC  38 83 00 90 */	addi r4, r3, 0x90
/* 802CEDF0  80 A1 00 08 */	lwz r5, 8(r1)
/* 802CEDF4  38 A5 FF 70 */	addi r5, r5, -144
/* 802CEDF8  28 03 00 00 */	cmplwi r3, 0
/* 802CEDFC  41 82 00 10 */	beq lbl_802CEE0C
/* 802CEE00  38 C0 00 00 */	li r6, 0
/* 802CEE04  7F E7 FB 78 */	mr r7, r31
/* 802CEE08  48 00 02 29 */	bl __ct__10JKRExpHeapFPvUlP7JKRHeapb
lbl_802CEE0C:
/* 802CEE0C  90 6D 8D F8 */	stw r3, sRootHeap__7JKRHeap(r13)
lbl_802CEE10:
/* 802CEE10  38 00 00 01 */	li r0, 1
/* 802CEE14  98 03 00 6E */	stb r0, 0x6e(r3)
/* 802CEE18  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 802CEE1C  80 01 00 24 */	lwz r0, 0x24(r1)
/* 802CEE20  7C 08 03 A6 */	mtlr r0
/* 802CEE24  38 21 00 20 */	addi r1, r1, 0x20
/* 802CEE28  4E 80 00 20 */	blr 
