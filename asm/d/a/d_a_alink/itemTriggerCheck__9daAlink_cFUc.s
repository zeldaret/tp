lbl_800B25CC:
/* 800B25CC  88 03 2F AE */	lbz r0, 0x2fae(r3)
/* 800B25D0  7C 00 23 78 */	or r0, r0, r4
/* 800B25D4  98 03 2F AE */	stb r0, 0x2fae(r3)
/* 800B25D8  88 63 2F 8D */	lbz r3, 0x2f8d(r3)
/* 800B25DC  54 80 06 3E */	clrlwi r0, r4, 0x18
/* 800B25E0  7C 63 00 38 */	and r3, r3, r0
/* 800B25E4  4E 80 00 20 */	blr 
