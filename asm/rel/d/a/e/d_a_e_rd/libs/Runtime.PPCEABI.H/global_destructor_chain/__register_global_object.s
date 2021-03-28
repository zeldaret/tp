lbl_805049F8:
/* 805049F8  3C C0 80 52 */	lis r6, __global_destructor_chain@ha
/* 805049FC  84 06 91 38 */	lwzu r0, __global_destructor_chain@l(r6)
/* 80504A00  90 05 00 00 */	stw r0, 0(r5)
/* 80504A04  90 85 00 04 */	stw r4, 4(r5)
/* 80504A08  90 65 00 08 */	stw r3, 8(r5)
/* 80504A0C  90 A6 00 00 */	stw r5, 0(r6)
/* 80504A10  4E 80 00 20 */	blr 
