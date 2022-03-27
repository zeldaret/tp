lbl_80368ABC:
/* 80368ABC  38 84 FF FF */	addi r4, r4, -1
/* 80368AC0  38 A3 FF FF */	addi r5, r3, -1
lbl_80368AC4:
/* 80368AC4  8C 05 00 01 */	lbzu r0, 1(r5)
/* 80368AC8  28 00 00 00 */	cmplwi r0, 0
/* 80368ACC  40 82 FF F8 */	bne lbl_80368AC4
/* 80368AD0  38 A5 FF FF */	addi r5, r5, -1
lbl_80368AD4:
/* 80368AD4  8C 04 00 01 */	lbzu r0, 1(r4)
/* 80368AD8  28 00 00 00 */	cmplwi r0, 0
/* 80368ADC  9C 05 00 01 */	stbu r0, 1(r5)
/* 80368AE0  40 82 FF F4 */	bne lbl_80368AD4
/* 80368AE4  4E 80 00 20 */	blr 
