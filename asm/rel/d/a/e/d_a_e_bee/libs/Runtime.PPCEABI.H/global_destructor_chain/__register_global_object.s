lbl_806827F8:
/* 806827F8  3C C0 80 68 */	lis r6, __global_destructor_chain@ha
/* 806827FC  84 06 56 30 */	lwzu r0, __global_destructor_chain@l(r6)
/* 80682800  90 05 00 00 */	stw r0, 0(r5)
/* 80682804  90 85 00 04 */	stw r4, 4(r5)
/* 80682808  90 65 00 08 */	stw r3, 8(r5)
/* 8068280C  90 A6 00 00 */	stw r5, 0(r6)
/* 80682810  4E 80 00 20 */	blr 
