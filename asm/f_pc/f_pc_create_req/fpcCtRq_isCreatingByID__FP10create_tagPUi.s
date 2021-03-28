lbl_80020ACC:
/* 80020ACC  80 63 00 0C */	lwz r3, 0xc(r3)
/* 80020AD0  80 63 00 3C */	lwz r3, 0x3c(r3)
/* 80020AD4  80 04 00 00 */	lwz r0, 0(r4)
/* 80020AD8  7C 03 00 50 */	subf r0, r3, r0
/* 80020ADC  7C 00 00 34 */	cntlzw r0, r0
/* 80020AE0  54 03 D9 7E */	srwi r3, r0, 5
/* 80020AE4  4E 80 00 20 */	blr 
