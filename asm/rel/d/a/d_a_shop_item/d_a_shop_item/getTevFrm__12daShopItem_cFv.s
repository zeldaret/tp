lbl_8059F044:
/* 8059F044  88 03 09 64 */	lbz r0, 0x964(r3)
/* 8059F048  1C 80 00 30 */	mulli r4, r0, 0x30
/* 8059F04C  3C 60 80 38 */	lis r3, mData__12daShopItem_c@ha
/* 8059F050  38 03 92 E8 */	addi r0, r3, mData__12daShopItem_c@l
/* 8059F054  7C 60 22 14 */	add r3, r0, r4
/* 8059F058  88 03 00 2B */	lbz r0, 0x2b(r3)
/* 8059F05C  7C 03 07 74 */	extsb r3, r0
/* 8059F060  4E 80 00 20 */	blr 
