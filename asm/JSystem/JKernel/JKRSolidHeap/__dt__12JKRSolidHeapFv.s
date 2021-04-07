lbl_802D0B8C:
/* 802D0B8C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 802D0B90  7C 08 02 A6 */	mflr r0
/* 802D0B94  90 01 00 14 */	stw r0, 0x14(r1)
/* 802D0B98  93 E1 00 0C */	stw r31, 0xc(r1)
/* 802D0B9C  93 C1 00 08 */	stw r30, 8(r1)
/* 802D0BA0  7C 7E 1B 79 */	or. r30, r3, r3
/* 802D0BA4  7C 9F 23 78 */	mr r31, r4
/* 802D0BA8  41 82 00 30 */	beq lbl_802D0BD8
/* 802D0BAC  3C 80 80 3D */	lis r4, __vt__12JKRSolidHeap@ha /* 0x803CC030@ha */
/* 802D0BB0  38 04 C0 30 */	addi r0, r4, __vt__12JKRSolidHeap@l /* 0x803CC030@l */
/* 802D0BB4  90 1E 00 00 */	stw r0, 0(r30)
/* 802D0BB8  4B FF DF 09 */	bl dispose__7JKRHeapFv
/* 802D0BBC  7F C3 F3 78 */	mr r3, r30
/* 802D0BC0  38 80 00 00 */	li r4, 0
/* 802D0BC4  4B FF D6 A1 */	bl __dt__7JKRHeapFv
/* 802D0BC8  7F E0 07 35 */	extsh. r0, r31
/* 802D0BCC  40 81 00 0C */	ble lbl_802D0BD8
/* 802D0BD0  7F C3 F3 78 */	mr r3, r30
/* 802D0BD4  4B FF E1 69 */	bl __dl__FPv
lbl_802D0BD8:
/* 802D0BD8  7F C3 F3 78 */	mr r3, r30
/* 802D0BDC  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 802D0BE0  83 C1 00 08 */	lwz r30, 8(r1)
/* 802D0BE4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 802D0BE8  7C 08 03 A6 */	mtlr r0
/* 802D0BEC  38 21 00 10 */	addi r1, r1, 0x10
/* 802D0BF0  4E 80 00 20 */	blr 
