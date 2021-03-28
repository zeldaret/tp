lbl_806056B8:
/* 806056B8  3C C0 80 61 */	lis r6, __global_destructor_chain@ha
/* 806056BC  84 06 04 38 */	lwzu r0, __global_destructor_chain@l(r6)
/* 806056C0  90 05 00 00 */	stw r0, 0(r5)
/* 806056C4  90 85 00 04 */	stw r4, 4(r5)
/* 806056C8  90 65 00 08 */	stw r3, 8(r5)
/* 806056CC  90 A6 00 00 */	stw r5, 0(r6)
/* 806056D0  4E 80 00 20 */	blr 
