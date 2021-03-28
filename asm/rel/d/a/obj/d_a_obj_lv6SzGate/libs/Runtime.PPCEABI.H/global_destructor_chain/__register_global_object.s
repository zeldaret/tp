lbl_80C757F8:
/* 80C757F8  3C C0 80 C7 */	lis r6, __global_destructor_chain@ha
/* 80C757FC  84 06 67 D0 */	lwzu r0, __global_destructor_chain@l(r6)
/* 80C75800  90 05 00 00 */	stw r0, 0(r5)
/* 80C75804  90 85 00 04 */	stw r4, 4(r5)
/* 80C75808  90 65 00 08 */	stw r3, 8(r5)
/* 80C7580C  90 A6 00 00 */	stw r5, 0(r6)
/* 80C75810  4E 80 00 20 */	blr 
