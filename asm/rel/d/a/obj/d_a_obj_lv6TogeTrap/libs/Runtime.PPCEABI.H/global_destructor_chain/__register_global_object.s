lbl_80C79DD8:
/* 80C79DD8  3C C0 80 C8 */	lis r6, __global_destructor_chain@ha
/* 80C79DDC  84 06 CA 50 */	lwzu r0, __global_destructor_chain@l(r6)
/* 80C79DE0  90 05 00 00 */	stw r0, 0(r5)
/* 80C79DE4  90 85 00 04 */	stw r4, 4(r5)
/* 80C79DE8  90 65 00 08 */	stw r3, 8(r5)
/* 80C79DEC  90 A6 00 00 */	stw r5, 0(r6)
/* 80C79DF0  4E 80 00 20 */	blr 
