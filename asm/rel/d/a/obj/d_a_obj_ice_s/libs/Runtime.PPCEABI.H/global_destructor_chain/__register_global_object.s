lbl_80C20938:
/* 80C20938  3C C0 80 C2 */	lis r6, __global_destructor_chain@ha
/* 80C2093C  84 06 1C 30 */	lwzu r0, __global_destructor_chain@l(r6)
/* 80C20940  90 05 00 00 */	stw r0, 0(r5)
/* 80C20944  90 85 00 04 */	stw r4, 4(r5)
/* 80C20948  90 65 00 08 */	stw r3, 8(r5)
/* 80C2094C  90 A6 00 00 */	stw r5, 0(r6)
/* 80C20950  4E 80 00 20 */	blr 
