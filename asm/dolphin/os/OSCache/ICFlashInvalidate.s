lbl_8033B6C4:
/* 8033B6C4  7C 70 FA A6 */	mfspr r3, 0x3f0
/* 8033B6C8  60 63 08 00 */	ori r3, r3, 0x800
/* 8033B6CC  7C 70 FB A6 */	mtspr 0x3f0, r3
/* 8033B6D0  4E 80 00 20 */	blr 
