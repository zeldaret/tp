lbl_805DFA8C:
/* 805DFA8C  88 E3 05 C8 */	lbz r7, 0x5c8(r3)
/* 805DFA90  54 80 06 3E */	clrlwi r0, r4, 0x18
/* 805DFA94  7C 07 00 40 */	cmplw r7, r0
/* 805DFA98  40 82 00 2C */	bne lbl_805DFAC4
/* 805DFA9C  88 83 05 C9 */	lbz r4, 0x5c9(r3)
/* 805DFAA0  54 A0 06 3E */	clrlwi r0, r5, 0x18
/* 805DFAA4  7C 04 00 40 */	cmplw r4, r0
/* 805DFAA8  40 82 00 1C */	bne lbl_805DFAC4
/* 805DFAAC  88 63 05 CA */	lbz r3, 0x5ca(r3)
/* 805DFAB0  54 C0 06 3E */	clrlwi r0, r6, 0x18
/* 805DFAB4  7C 03 00 40 */	cmplw r3, r0
/* 805DFAB8  40 82 00 0C */	bne lbl_805DFAC4
/* 805DFABC  38 60 00 01 */	li r3, 1
/* 805DFAC0  4E 80 00 20 */	blr 
lbl_805DFAC4:
/* 805DFAC4  38 60 00 00 */	li r3, 0
/* 805DFAC8  4E 80 00 20 */	blr 
