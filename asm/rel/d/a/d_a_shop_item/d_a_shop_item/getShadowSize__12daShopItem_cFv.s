lbl_8059F084:
/* 8059F084  88 03 09 64 */	lbz r0, 0x964(r3)
/* 8059F088  1C 80 00 30 */	mulli r4, r0, 0x30
/* 8059F08C  3C 60 80 38 */	lis r3, mData__12daShopItem_c@ha /* 0x803792E8@ha */
/* 8059F090  38 03 92 E8 */	addi r0, r3, mData__12daShopItem_c@l /* 0x803792E8@l */
/* 8059F094  7C 60 22 14 */	add r3, r0, r4
/* 8059F098  88 63 00 28 */	lbz r3, 0x28(r3)
/* 8059F09C  4E 80 00 20 */	blr 
