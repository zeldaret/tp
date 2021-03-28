lbl_8051BCD8:
/* 8051BCD8  3C C0 80 52 */	lis r6, __global_destructor_chain@ha
/* 8051BCDC  84 06 78 C8 */	lwzu r0, __global_destructor_chain@l(r6)
/* 8051BCE0  90 05 00 00 */	stw r0, 0(r5)
/* 8051BCE4  90 85 00 04 */	stw r4, 4(r5)
/* 8051BCE8  90 65 00 08 */	stw r3, 8(r5)
/* 8051BCEC  90 A6 00 00 */	stw r5, 0(r6)
/* 8051BCF0  4E 80 00 20 */	blr 
