lbl_802CEF00:
/* 802CEF00  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 802CEF04  7C 08 02 A6 */	mflr r0
/* 802CEF08  90 01 00 24 */	stw r0, 0x24(r1)
/* 802CEF0C  39 61 00 20 */	addi r11, r1, 0x20
/* 802CEF10  48 09 32 CD */	bl _savegpr_29
/* 802CEF14  7C 7D 1B 78 */	mr r29, r3
/* 802CEF18  7C 9E 23 78 */	mr r30, r4
/* 802CEF1C  7C DF 33 78 */	mr r31, r6
/* 802CEF20  28 05 00 00 */	cmplwi r5, 0
/* 802CEF24  40 82 00 20 */	bne lbl_802CEF44
/* 802CEF28  80 6D 8D F8 */	lwz r3, sRootHeap__7JKRHeap(r13)
/* 802CEF2C  7F A4 EB 78 */	mr r4, r29
/* 802CEF30  4B FF F9 65 */	bl find__7JKRHeapCFPv
/* 802CEF34  7C 66 1B 79 */	or. r6, r3, r3
/* 802CEF38  40 82 00 10 */	bne lbl_802CEF48
/* 802CEF3C  38 60 00 00 */	li r3, 0
/* 802CEF40  48 00 00 54 */	b lbl_802CEF94
lbl_802CEF44:
/* 802CEF44  7C A6 2B 78 */	mr r6, r5
lbl_802CEF48:
/* 802CEF48  38 60 00 00 */	li r3, 0
/* 802CEF4C  28 1E 00 90 */	cmplwi r30, 0x90
/* 802CEF50  40 80 00 0C */	bge lbl_802CEF5C
/* 802CEF54  38 60 00 00 */	li r3, 0
/* 802CEF58  48 00 00 3C */	b lbl_802CEF94
lbl_802CEF5C:
/* 802CEF5C  38 9D 00 90 */	addi r4, r29, 0x90
/* 802CEF60  7C 1D F2 14 */	add r0, r29, r30
/* 802CEF64  7C 04 00 50 */	subf r0, r4, r0
/* 802CEF68  54 05 00 36 */	rlwinm r5, r0, 0, 0, 0x1b
/* 802CEF6C  28 1D 00 00 */	cmplwi r29, 0
/* 802CEF70  41 82 00 14 */	beq lbl_802CEF84
/* 802CEF74  7F A3 EB 78 */	mr r3, r29
/* 802CEF78  41 82 00 0C */	beq lbl_802CEF84
/* 802CEF7C  7F E7 FB 78 */	mr r7, r31
/* 802CEF80  48 00 00 B1 */	bl __ct__10JKRExpHeapFPvUlP7JKRHeapb
lbl_802CEF84:
/* 802CEF84  38 00 00 01 */	li r0, 1
/* 802CEF88  98 03 00 6E */	stb r0, 0x6e(r3)
/* 802CEF8C  93 A3 00 70 */	stw r29, 0x70(r3)
/* 802CEF90  93 C3 00 74 */	stw r30, 0x74(r3)
lbl_802CEF94:
/* 802CEF94  39 61 00 20 */	addi r11, r1, 0x20
/* 802CEF98  48 09 32 91 */	bl _restgpr_29
/* 802CEF9C  80 01 00 24 */	lwz r0, 0x24(r1)
/* 802CEFA0  7C 08 03 A6 */	mtlr r0
/* 802CEFA4  38 21 00 20 */	addi r1, r1, 0x20
/* 802CEFA8  4E 80 00 20 */	blr 
