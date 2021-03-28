lbl_806041F8:
/* 806041F8  3C C0 80 60 */	lis r6, __global_destructor_chain@ha
/* 806041FC  84 06 56 00 */	lwzu r0, __global_destructor_chain@l(r6)
/* 80604200  90 05 00 00 */	stw r0, 0(r5)
/* 80604204  90 85 00 04 */	stw r4, 4(r5)
/* 80604208  90 65 00 08 */	stw r3, 8(r5)
/* 8060420C  90 A6 00 00 */	stw r5, 0(r6)
/* 80604210  4E 80 00 20 */	blr 
