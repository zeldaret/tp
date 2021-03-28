lbl_802D1368:
/* 802D1368  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 802D136C  7C 08 02 A6 */	mflr r0
/* 802D1370  90 01 00 14 */	stw r0, 0x14(r1)
/* 802D1374  93 E1 00 0C */	stw r31, 0xc(r1)
/* 802D1378  7C 7F 1B 79 */	or. r31, r3, r3
/* 802D137C  40 82 00 08 */	bne lbl_802D1384
/* 802D1380  83 ED 8D F8 */	lwz r31, sRootHeap__7JKRHeap(r13)
lbl_802D1384:
/* 802D1384  38 60 00 70 */	li r3, 0x70
/* 802D1388  38 80 00 10 */	li r4, 0x10
/* 802D138C  7F E5 FB 78 */	mr r5, r31
/* 802D1390  4B FF D0 E5 */	bl alloc__7JKRHeapFUliP7JKRHeap
/* 802D1394  7C 60 1B 79 */	or. r0, r3, r3
/* 802D1398  40 82 00 0C */	bne lbl_802D13A4
/* 802D139C  38 60 00 00 */	li r3, 0
/* 802D13A0  48 00 00 24 */	b lbl_802D13C4
lbl_802D13A4:
/* 802D13A4  41 82 00 1C */	beq lbl_802D13C0
/* 802D13A8  38 80 00 00 */	li r4, 0
/* 802D13AC  38 A0 00 00 */	li r5, 0
/* 802D13B0  7F E6 FB 78 */	mr r6, r31
/* 802D13B4  38 E0 00 00 */	li r7, 0
/* 802D13B8  4B FF FF 0D */	bl __ct__13JKRAssertHeapFPvUlP7JKRHeapb
/* 802D13BC  7C 60 1B 78 */	mr r0, r3
lbl_802D13C0:
/* 802D13C0  7C 03 03 78 */	mr r3, r0
lbl_802D13C4:
/* 802D13C4  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 802D13C8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 802D13CC  7C 08 03 A6 */	mtlr r0
/* 802D13D0  38 21 00 10 */	addi r1, r1, 0x10
/* 802D13D4  4E 80 00 20 */	blr 
