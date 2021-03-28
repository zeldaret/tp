lbl_80C87C38:
/* 80C87C38  3C C0 80 C9 */	lis r6, __global_destructor_chain@ha
/* 80C87C3C  84 06 86 08 */	lwzu r0, __global_destructor_chain@l(r6)
/* 80C87C40  90 05 00 00 */	stw r0, 0(r5)
/* 80C87C44  90 85 00 04 */	stw r4, 4(r5)
/* 80C87C48  90 65 00 08 */	stw r3, 8(r5)
/* 80C87C4C  90 A6 00 00 */	stw r5, 0(r6)
/* 80C87C50  4E 80 00 20 */	blr 
