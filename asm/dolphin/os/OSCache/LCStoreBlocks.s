lbl_8033B814:
/* 8033B814  54 A6 F6 FE */	rlwinm r6, r5, 0x1e, 0x1b, 0x1f
/* 8033B818  54 63 01 3E */	clrlwi r3, r3, 4
/* 8033B81C  7C C6 1B 78 */	or r6, r6, r3
/* 8033B820  7C DA E3 A6 */	mtspr 0x39a, r6
/* 8033B824  54 A6 17 3A */	rlwinm r6, r5, 2, 0x1c, 0x1d
/* 8033B828  7C C6 23 78 */	or r6, r6, r4
/* 8033B82C  60 C6 00 02 */	ori r6, r6, 2
/* 8033B830  7C DB E3 A6 */	mtspr 0x39b, r6
/* 8033B834  4E 80 00 20 */	blr 
