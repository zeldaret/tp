lbl_802D3034:
/* 802D3034  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 802D3038  7C 08 02 A6 */	mflr r0
/* 802D303C  90 01 00 14 */	stw r0, 0x14(r1)
/* 802D3040  7C 66 1B 78 */	mr r6, r3
/* 802D3044  38 04 00 1F */	addi r0, r4, 0x1f
/* 802D3048  54 04 00 34 */	rlwinm r4, r0, 0, 0, 0x1a
/* 802D304C  39 00 FF FF */	li r8, -1
/* 802D3050  38 60 00 00 */	li r3, 0
/* 802D3054  3C A0 80 43 */	lis r5, sAramList__11JKRAramHeap@ha /* 0x8043430C@ha */
/* 802D3058  80 E5 43 0C */	lwz r7, sAramList__11JKRAramHeap@l(r5)  /* 0x8043430C@l */
/* 802D305C  48 00 00 30 */	b lbl_802D308C
lbl_802D3060:
/* 802D3060  80 A7 00 00 */	lwz r5, 0(r7)
/* 802D3064  80 05 00 1C */	lwz r0, 0x1c(r5)
/* 802D3068  7C 00 20 40 */	cmplw r0, r4
/* 802D306C  41 80 00 1C */	blt lbl_802D3088
/* 802D3070  7C 08 00 40 */	cmplw r8, r0
/* 802D3074  40 81 00 14 */	ble lbl_802D3088
/* 802D3078  7C 08 03 78 */	mr r8, r0
/* 802D307C  7C A3 2B 78 */	mr r3, r5
/* 802D3080  7C 00 20 40 */	cmplw r0, r4
/* 802D3084  41 82 00 10 */	beq lbl_802D3094
lbl_802D3088:
/* 802D3088  80 E7 00 0C */	lwz r7, 0xc(r7)
lbl_802D308C:
/* 802D308C  28 07 00 00 */	cmplwi r7, 0
/* 802D3090  40 82 FF D0 */	bne lbl_802D3060
lbl_802D3094:
/* 802D3094  28 03 00 00 */	cmplwi r3, 0
/* 802D3098  41 82 00 10 */	beq lbl_802D30A8
/* 802D309C  88 A6 00 40 */	lbz r5, 0x40(r6)
/* 802D30A0  48 00 03 95 */	bl allocHead__12JKRAramBlockFUlUcP11JKRAramHeap
/* 802D30A4  48 00 00 08 */	b lbl_802D30AC
lbl_802D30A8:
/* 802D30A8  38 60 00 00 */	li r3, 0
lbl_802D30AC:
/* 802D30AC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 802D30B0  7C 08 03 A6 */	mtlr r0
/* 802D30B4  38 21 00 10 */	addi r1, r1, 0x10
/* 802D30B8  4E 80 00 20 */	blr 
