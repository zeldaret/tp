lbl_806C79D8:
/* 806C79D8  3C C0 80 6D */	lis r6, __global_destructor_chain@ha
/* 806C79DC  84 06 D3 50 */	lwzu r0, __global_destructor_chain@l(r6)
/* 806C79E0  90 05 00 00 */	stw r0, 0(r5)
/* 806C79E4  90 85 00 04 */	stw r4, 4(r5)
/* 806C79E8  90 65 00 08 */	stw r3, 8(r5)
/* 806C79EC  90 A6 00 00 */	stw r5, 0(r6)
/* 806C79F0  4E 80 00 20 */	blr 
