lbl_80182A8C:
/* 80182A8C  A8 A3 00 00 */	lha r5, 0(r3)
/* 80182A90  A8 04 00 00 */	lha r0, 0(r4)
/* 80182A94  7C A0 02 78 */	xor r0, r5, r0
/* 80182A98  7C 03 0E 70 */	srawi r3, r0, 1
/* 80182A9C  7C 00 28 38 */	and r0, r0, r5
/* 80182AA0  7C 00 18 50 */	subf r0, r0, r3
/* 80182AA4  54 03 0F FE */	srwi r3, r0, 0x1f
/* 80182AA8  4E 80 00 20 */	blr 
