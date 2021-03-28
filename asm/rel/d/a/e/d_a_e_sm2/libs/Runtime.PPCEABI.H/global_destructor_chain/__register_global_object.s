lbl_80798AD8:
/* 80798AD8  3C C0 80 7A */	lis r6, __global_destructor_chain@ha
/* 80798ADC  84 06 DB 80 */	lwzu r0, __global_destructor_chain@l(r6)
/* 80798AE0  90 05 00 00 */	stw r0, 0(r5)
/* 80798AE4  90 85 00 04 */	stw r4, 4(r5)
/* 80798AE8  90 65 00 08 */	stw r3, 8(r5)
/* 80798AEC  90 A6 00 00 */	stw r5, 0(r6)
/* 80798AF0  4E 80 00 20 */	blr 
