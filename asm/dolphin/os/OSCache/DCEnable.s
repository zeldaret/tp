lbl_8033B56C:
/* 8033B56C  7C 00 04 AC */	sync
/* 8033B570  7C 70 FA A6 */	mfspr r3, 0x3f0
/* 8033B574  60 63 40 00 */	ori r3, r3, 0x4000
/* 8033B578  7C 70 FB A6 */	mtspr 0x3f0, r3
/* 8033B57C  4E 80 00 20 */	blr 
