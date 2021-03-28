lbl_80C44C98:
/* 80C44C98  3C C0 80 C4 */	lis r6, __global_destructor_chain@ha
/* 80C44C9C  84 06 52 40 */	lwzu r0, __global_destructor_chain@l(r6)
/* 80C44CA0  90 05 00 00 */	stw r0, 0(r5)
/* 80C44CA4  90 85 00 04 */	stw r4, 4(r5)
/* 80C44CA8  90 65 00 08 */	stw r3, 8(r5)
/* 80C44CAC  90 A6 00 00 */	stw r5, 0(r6)
/* 80C44CB0  4E 80 00 20 */	blr 
