lbl_8059F024:
/* 8059F024  88 03 09 64 */	lbz r0, 0x964(r3)
/* 8059F028  1C A0 00 30 */	mulli r5, r0, 0x30
/* 8059F02C  3C 60 80 38 */	lis r3, mData__12daShopItem_c@ha /* 0x803792E8@ha */
/* 8059F030  38 03 92 E8 */	addi r0, r3, mData__12daShopItem_c@l /* 0x803792E8@l */
/* 8059F034  7C 60 2A 14 */	add r3, r0, r5
/* 8059F038  80 03 00 24 */	lwz r0, 0x24(r3)
/* 8059F03C  7C 83 00 38 */	and r3, r4, r0
/* 8059F040  4E 80 00 20 */	blr 
