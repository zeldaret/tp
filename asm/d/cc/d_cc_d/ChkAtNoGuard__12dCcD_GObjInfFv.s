lbl_800843DC:
/* 800843DC  88 A3 00 77 */	lbz r5, 0x77(r3)
/* 800843E0  38 00 00 0C */	li r0, 0xc
/* 800843E4  7C A4 FE 70 */	srawi r4, r5, 0x1f
/* 800843E8  54 03 0F FE */	srwi r3, r0, 0x1f
/* 800843EC  7C 00 28 10 */	subfc r0, r0, r5
/* 800843F0  7C 04 19 14 */	adde r0, r4, r3
/* 800843F4  54 03 06 3E */	clrlwi r3, r0, 0x18
/* 800843F8  4E 80 00 20 */	blr 
