lbl_802DCCD0:
/* 802DCCD0  88 04 00 00 */	lbz r0, 0(r4)
/* 802DCCD4  98 03 00 00 */	stb r0, 0(r3)
/* 802DCCD8  38 80 00 00 */	li r4, 0
/* 802DCCDC  90 83 00 04 */	stw r4, 4(r3)
/* 802DCCE0  80 03 00 04 */	lwz r0, 4(r3)
/* 802DCCE4  90 03 00 08 */	stw r0, 8(r3)
/* 802DCCE8  90 83 00 0C */	stw r4, 0xc(r3)
/* 802DCCEC  3C 80 80 2E */	lis r4, extend_default__Q27JGadget6vectorFUlUlUl@ha /* 0x802DCCC8@ha */
/* 802DCCF0  38 04 CC C8 */	addi r0, r4, extend_default__Q27JGadget6vectorFUlUlUl@l /* 0x802DCCC8@l */
/* 802DCCF4  90 03 00 10 */	stw r0, 0x10(r3)
/* 802DCCF8  4E 80 00 20 */	blr 
