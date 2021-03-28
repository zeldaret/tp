lbl_80034AC8:
/* 80034AC8  7C 80 2E 70 */	srawi r0, r4, 5
/* 80034ACC  54 07 10 3A */	slwi r7, r0, 2
/* 80034AD0  7C C3 38 2E */	lwzx r6, r3, r7
/* 80034AD4  38 A0 00 01 */	li r5, 1
/* 80034AD8  54 80 06 FE */	clrlwi r0, r4, 0x1b
/* 80034ADC  7C A0 00 30 */	slw r0, r5, r0
/* 80034AE0  7C C0 00 78 */	andc r0, r6, r0
/* 80034AE4  7C 03 39 2E */	stwx r0, r3, r7
/* 80034AE8  4E 80 00 20 */	blr 
