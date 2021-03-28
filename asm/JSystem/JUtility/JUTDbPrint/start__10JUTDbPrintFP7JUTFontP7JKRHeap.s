lbl_802E0190:
/* 802E0190  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 802E0194  7C 08 02 A6 */	mflr r0
/* 802E0198  90 01 00 14 */	stw r0, 0x14(r1)
/* 802E019C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 802E01A0  93 C1 00 08 */	stw r30, 8(r1)
/* 802E01A4  7C 7E 1B 78 */	mr r30, r3
/* 802E01A8  7C 9F 23 78 */	mr r31, r4
/* 802E01AC  80 0D 8F 48 */	lwz r0, sDebugPrint__10JUTDbPrint(r13)
/* 802E01B0  28 00 00 00 */	cmplwi r0, 0
/* 802E01B4  40 82 00 34 */	bne lbl_802E01E8
/* 802E01B8  28 1F 00 00 */	cmplwi r31, 0
/* 802E01BC  40 82 00 08 */	bne lbl_802E01C4
/* 802E01C0  83 ED 8D F4 */	lwz r31, sCurrentHeap__7JKRHeap(r13)
lbl_802E01C4:
/* 802E01C4  38 60 00 14 */	li r3, 0x14
/* 802E01C8  4B FE EA 85 */	bl __nw__FUl
/* 802E01CC  7C 60 1B 79 */	or. r0, r3, r3
/* 802E01D0  41 82 00 14 */	beq lbl_802E01E4
/* 802E01D4  7F C4 F3 78 */	mr r4, r30
/* 802E01D8  7F E5 FB 78 */	mr r5, r31
/* 802E01DC  4B FF FF 6D */	bl __ct__10JUTDbPrintFP7JUTFontP7JKRHeap
/* 802E01E0  7C 60 1B 78 */	mr r0, r3
lbl_802E01E4:
/* 802E01E4  90 0D 8F 48 */	stw r0, sDebugPrint__10JUTDbPrint(r13)
lbl_802E01E8:
/* 802E01E8  80 6D 8F 48 */	lwz r3, sDebugPrint__10JUTDbPrint(r13)
/* 802E01EC  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 802E01F0  83 C1 00 08 */	lwz r30, 8(r1)
/* 802E01F4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 802E01F8  7C 08 03 A6 */	mtlr r0
/* 802E01FC  38 21 00 10 */	addi r1, r1, 0x10
/* 802E0200  4E 80 00 20 */	blr 
