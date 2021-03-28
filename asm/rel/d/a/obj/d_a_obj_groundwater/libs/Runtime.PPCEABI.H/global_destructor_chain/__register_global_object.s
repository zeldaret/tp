lbl_80C13438:
/* 80C13438  3C C0 80 C1 */	lis r6, __global_destructor_chain@ha
/* 80C1343C  84 06 4B 30 */	lwzu r0, __global_destructor_chain@l(r6)
/* 80C13440  90 05 00 00 */	stw r0, 0(r5)
/* 80C13444  90 85 00 04 */	stw r4, 4(r5)
/* 80C13448  90 65 00 08 */	stw r3, 8(r5)
/* 80C1344C  90 A6 00 00 */	stw r5, 0(r6)
/* 80C13450  4E 80 00 20 */	blr 
