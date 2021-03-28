lbl_802D1FA4:
/* 802D1FA4  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 802D1FA8  7C 08 02 A6 */	mflr r0
/* 802D1FAC  90 01 00 24 */	stw r0, 0x24(r1)
/* 802D1FB0  39 61 00 20 */	addi r11, r1, 0x20
/* 802D1FB4  48 09 02 21 */	bl _savegpr_27
/* 802D1FB8  7C 7B 1B 78 */	mr r27, r3
/* 802D1FBC  7C 9C 23 78 */	mr r28, r4
/* 802D1FC0  7C BD 2B 78 */	mr r29, r5
/* 802D1FC4  7C DE 33 78 */	mr r30, r6
/* 802D1FC8  7C FF 3B 78 */	mr r31, r7
/* 802D1FCC  80 0D 8E 48 */	lwz r0, sAramObject__7JKRAram(r13)
/* 802D1FD0  28 00 00 00 */	cmplwi r0, 0
/* 802D1FD4  40 82 00 34 */	bne lbl_802D2008
/* 802D1FD8  38 60 00 A4 */	li r3, 0xa4
/* 802D1FDC  80 8D 8D F0 */	lwz r4, sSystemHeap__7JKRHeap(r13)
/* 802D1FE0  38 A0 00 00 */	li r5, 0
/* 802D1FE4  4B FF CC B5 */	bl __nw__FUlP7JKRHeapi
/* 802D1FE8  7C 60 1B 79 */	or. r0, r3, r3
/* 802D1FEC  41 82 00 18 */	beq lbl_802D2004
/* 802D1FF0  7F 64 DB 78 */	mr r4, r27
/* 802D1FF4  7F 85 E3 78 */	mr r5, r28
/* 802D1FF8  7F E6 FB 78 */	mr r6, r31
/* 802D1FFC  48 00 00 45 */	bl __ct__7JKRAramFUlUll
/* 802D2000  7C 60 1B 78 */	mr r0, r3
lbl_802D2004:
/* 802D2004  90 0D 8E 48 */	stw r0, sAramObject__7JKRAram(r13)
lbl_802D2008:
/* 802D2008  7F A3 EB 78 */	mr r3, r29
/* 802D200C  48 00 1B 3D */	bl create__13JKRAramStreamFl
/* 802D2010  7F C3 F3 78 */	mr r3, r30
/* 802D2014  48 00 96 6D */	bl create__9JKRDecompFl
/* 802D2018  80 6D 8E 48 */	lwz r3, sAramObject__7JKRAram(r13)
/* 802D201C  80 63 00 2C */	lwz r3, 0x2c(r3)
/* 802D2020  48 06 F7 95 */	bl OSResumeThread
/* 802D2024  80 6D 8E 48 */	lwz r3, sAramObject__7JKRAram(r13)
/* 802D2028  39 61 00 20 */	addi r11, r1, 0x20
/* 802D202C  48 09 01 F5 */	bl _restgpr_27
/* 802D2030  80 01 00 24 */	lwz r0, 0x24(r1)
/* 802D2034  7C 08 03 A6 */	mtlr r0
/* 802D2038  38 21 00 20 */	addi r1, r1, 0x20
/* 802D203C  4E 80 00 20 */	blr 
