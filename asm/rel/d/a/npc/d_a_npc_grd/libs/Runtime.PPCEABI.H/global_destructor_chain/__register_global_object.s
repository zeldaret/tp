lbl_809CFCB8:
/* 809CFCB8  3C C0 80 9D */	lis r6, __global_destructor_chain@ha
/* 809CFCBC  84 06 3E A8 */	lwzu r0, __global_destructor_chain@l(r6)
/* 809CFCC0  90 05 00 00 */	stw r0, 0(r5)
/* 809CFCC4  90 85 00 04 */	stw r4, 4(r5)
/* 809CFCC8  90 65 00 08 */	stw r3, 8(r5)
/* 809CFCCC  90 A6 00 00 */	stw r5, 0(r6)
/* 809CFCD0  4E 80 00 20 */	blr 
