lbl_80BE75B8:
/* 80BE75B8  3C C0 80 BF */	lis r6, __global_destructor_chain@ha
/* 80BE75BC  84 06 81 30 */	lwzu r0, __global_destructor_chain@l(r6)
/* 80BE75C0  90 05 00 00 */	stw r0, 0(r5)
/* 80BE75C4  90 85 00 04 */	stw r4, 4(r5)
/* 80BE75C8  90 65 00 08 */	stw r3, 8(r5)
/* 80BE75CC  90 A6 00 00 */	stw r5, 0(r6)
/* 80BE75D0  4E 80 00 20 */	blr 
