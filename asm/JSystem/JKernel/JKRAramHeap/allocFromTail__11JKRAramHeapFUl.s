lbl_802D30BC:
/* 802D30BC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 802D30C0  7C 08 02 A6 */	mflr r0
/* 802D30C4  90 01 00 14 */	stw r0, 0x14(r1)
/* 802D30C8  7C 66 1B 78 */	mr r6, r3
/* 802D30CC  38 04 00 1F */	addi r0, r4, 0x1f
/* 802D30D0  54 04 00 34 */	rlwinm r4, r0, 0, 0, 0x1a
/* 802D30D4  38 60 00 00 */	li r3, 0
/* 802D30D8  3C A0 80 43 */	lis r5, sAramList__11JKRAramHeap@ha /* 0x8043430C@ha */
/* 802D30DC  38 A5 43 0C */	addi r5, r5, sAramList__11JKRAramHeap@l /* 0x8043430C@l */
/* 802D30E0  80 E5 00 04 */	lwz r7, 4(r5)
/* 802D30E4  48 00 00 20 */	b lbl_802D3104
lbl_802D30E8:
/* 802D30E8  80 A7 00 00 */	lwz r5, 0(r7)
/* 802D30EC  80 05 00 1C */	lwz r0, 0x1c(r5)
/* 802D30F0  7C 00 20 40 */	cmplw r0, r4
/* 802D30F4  41 80 00 0C */	blt lbl_802D3100
/* 802D30F8  7C A3 2B 78 */	mr r3, r5
/* 802D30FC  48 00 00 10 */	b lbl_802D310C
lbl_802D3100:
/* 802D3100  80 E7 00 08 */	lwz r7, 8(r7)
lbl_802D3104:
/* 802D3104  28 07 00 00 */	cmplwi r7, 0
/* 802D3108  40 82 FF E0 */	bne lbl_802D30E8
lbl_802D310C:
/* 802D310C  28 03 00 00 */	cmplwi r3, 0
/* 802D3110  41 82 00 10 */	beq lbl_802D3120
/* 802D3114  88 A6 00 40 */	lbz r5, 0x40(r6)
/* 802D3118  48 00 03 B9 */	bl allocTail__12JKRAramBlockFUlUcP11JKRAramHeap
/* 802D311C  48 00 00 08 */	b lbl_802D3124
lbl_802D3120:
/* 802D3120  38 60 00 00 */	li r3, 0
lbl_802D3124:
/* 802D3124  80 01 00 14 */	lwz r0, 0x14(r1)
/* 802D3128  7C 08 03 A6 */	mtlr r0
/* 802D312C  38 21 00 10 */	addi r1, r1, 0x10
/* 802D3130  4E 80 00 20 */	blr 
