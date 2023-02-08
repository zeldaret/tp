lbl_8048ADB0:
/* 8048ADB0  A8 03 04 B8 */	lha r0, 0x4b8(r3)
/* 8048ADB4  54 03 04 3E */	clrlwi r3, r0, 0x10
/* 8048ADB8  4E 80 00 20 */	blr 
