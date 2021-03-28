lbl_8059F064:
/* 8059F064  88 03 09 64 */	lbz r0, 0x964(r3)
/* 8059F068  1C 80 00 30 */	mulli r4, r0, 0x30
/* 8059F06C  3C 60 80 38 */	lis r3, mData__12daShopItem_c@ha
/* 8059F070  38 03 92 E8 */	addi r0, r3, mData__12daShopItem_c@l
/* 8059F074  7C 60 22 14 */	add r3, r0, r4
/* 8059F078  88 03 00 2C */	lbz r0, 0x2c(r3)
/* 8059F07C  7C 03 07 74 */	extsb r3, r0
/* 8059F080  4E 80 00 20 */	blr 
