lbl_8059F0BC:
/* 8059F0BC  88 03 09 64 */	lbz r0, 0x964(r3)
/* 8059F0C0  1C 80 00 30 */	mulli r4, r0, 0x30
/* 8059F0C4  3C 60 80 38 */	lis r3, mData__12daShopItem_c@ha
/* 8059F0C8  38 03 92 E8 */	addi r0, r3, mData__12daShopItem_c@l
/* 8059F0CC  7C 60 22 14 */	add r3, r0, r4
/* 8059F0D0  88 63 00 2A */	lbz r3, 0x2a(r3)
/* 8059F0D4  4E 80 00 20 */	blr 
