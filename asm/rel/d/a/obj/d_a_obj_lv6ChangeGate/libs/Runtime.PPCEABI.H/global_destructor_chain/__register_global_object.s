lbl_80C70BD8:
/* 80C70BD8  3C C0 80 C7 */	lis r6, __global_destructor_chain@ha
/* 80C70BDC  84 06 23 78 */	lwzu r0, __global_destructor_chain@l(r6)
/* 80C70BE0  90 05 00 00 */	stw r0, 0(r5)
/* 80C70BE4  90 85 00 04 */	stw r4, 4(r5)
/* 80C70BE8  90 65 00 08 */	stw r3, 8(r5)
/* 80C70BEC  90 A6 00 00 */	stw r5, 0(r6)
/* 80C70BF0  4E 80 00 20 */	blr 
