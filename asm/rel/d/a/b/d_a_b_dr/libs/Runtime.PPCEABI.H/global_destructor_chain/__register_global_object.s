lbl_805BADF8:
/* 805BADF8  3C C0 80 5C */	lis r6, __global_destructor_chain@ha
/* 805BADFC  84 06 78 B8 */	lwzu r0, __global_destructor_chain@l(r6)
/* 805BAE00  90 05 00 00 */	stw r0, 0(r5)
/* 805BAE04  90 85 00 04 */	stw r4, 4(r5)
/* 805BAE08  90 65 00 08 */	stw r3, 8(r5)
/* 805BAE0C  90 A6 00 00 */	stw r5, 0(r6)
/* 805BAE10  4E 80 00 20 */	blr 
