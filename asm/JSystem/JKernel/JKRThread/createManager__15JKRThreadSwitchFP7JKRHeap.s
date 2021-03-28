lbl_802D1A14:
/* 802D1A14  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 802D1A18  7C 08 02 A6 */	mflr r0
/* 802D1A1C  90 01 00 14 */	stw r0, 0x14(r1)
/* 802D1A20  93 E1 00 0C */	stw r31, 0xc(r1)
/* 802D1A24  7C 7F 1B 79 */	or. r31, r3, r3
/* 802D1A28  40 82 00 08 */	bne lbl_802D1A30
/* 802D1A2C  83 ED 8D F4 */	lwz r31, sCurrentHeap__7JKRHeap(r13)
lbl_802D1A30:
/* 802D1A30  38 60 00 28 */	li r3, 0x28
/* 802D1A34  7F E4 FB 78 */	mr r4, r31
/* 802D1A38  38 A0 00 00 */	li r5, 0
/* 802D1A3C  4B FF D2 5D */	bl __nw__FUlP7JKRHeapi
/* 802D1A40  7C 60 1B 79 */	or. r0, r3, r3
/* 802D1A44  41 82 00 10 */	beq lbl_802D1A54
/* 802D1A48  7F E4 FB 78 */	mr r4, r31
/* 802D1A4C  4B FF FF 51 */	bl __ct__15JKRThreadSwitchFP7JKRHeap
/* 802D1A50  7C 60 1B 78 */	mr r0, r3
lbl_802D1A54:
/* 802D1A54  90 0D 8E 30 */	stw r0, sManager__15JKRThreadSwitch(r13)
/* 802D1A58  7C 03 03 78 */	mr r3, r0
/* 802D1A5C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 802D1A60  80 01 00 14 */	lwz r0, 0x14(r1)
/* 802D1A64  7C 08 03 A6 */	mtlr r0
/* 802D1A68  38 21 00 10 */	addi r1, r1, 0x10
/* 802D1A6C  4E 80 00 20 */	blr 
