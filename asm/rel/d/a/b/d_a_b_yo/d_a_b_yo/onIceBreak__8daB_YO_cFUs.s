lbl_8062FBEC:
/* 8062FBEC  A0 C3 0F 6E */	lhz r6, 0xf6e(r3)
/* 8062FBF0  38 A0 00 01 */	li r5, 1
/* 8062FBF4  54 80 04 3E */	clrlwi r0, r4, 0x10
/* 8062FBF8  7C A0 00 30 */	slw r0, r5, r0
/* 8062FBFC  7C C0 03 78 */	or r0, r6, r0
/* 8062FC00  B0 03 0F 6E */	sth r0, 0xf6e(r3)
/* 8062FC04  4E 80 00 20 */	blr 
