lbl_806D11F8:
/* 806D11F8  3C C0 80 6D */	lis r6, __global_destructor_chain@ha
/* 806D11FC  84 06 7E 70 */	lwzu r0, __global_destructor_chain@l(r6)
/* 806D1200  90 05 00 00 */	stw r0, 0(r5)
/* 806D1204  90 85 00 04 */	stw r4, 4(r5)
/* 806D1208  90 65 00 08 */	stw r3, 8(r5)
/* 806D120C  90 A6 00 00 */	stw r5, 0(r6)
/* 806D1210  4E 80 00 20 */	blr 
