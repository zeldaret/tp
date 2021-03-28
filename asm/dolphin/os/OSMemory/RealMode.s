lbl_8033EED8:
/* 8033EED8  54 63 00 BE */	clrlwi r3, r3, 2
/* 8033EEDC  7C 7A 03 A6 */	mtspr 0x1a, r3
/* 8033EEE0  7C 60 00 A6 */	mfmsr r3
/* 8033EEE4  54 63 07 32 */	rlwinm r3, r3, 0, 0x1c, 0x19
/* 8033EEE8  7C 7B 03 A6 */	mtspr 0x1b, r3
/* 8033EEEC  4C 00 00 64 */	rfi 
