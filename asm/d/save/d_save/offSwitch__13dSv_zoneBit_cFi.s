lbl_80034D2C:
/* 80034D2C  7C 80 26 70 */	srawi r0, r4, 4
/* 80034D30  54 07 08 3C */	slwi r7, r0, 1
/* 80034D34  7C C3 3A 2E */	lhzx r6, r3, r7
/* 80034D38  38 A0 00 01 */	li r5, 1
/* 80034D3C  54 80 07 3E */	clrlwi r0, r4, 0x1c
/* 80034D40  7C A0 00 30 */	slw r0, r5, r0
/* 80034D44  7C C0 00 78 */	andc r0, r6, r0
/* 80034D48  7C 03 3B 2E */	sthx r0, r3, r7
/* 80034D4C  4E 80 00 20 */	blr 
