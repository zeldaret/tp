lbl_80BA2618:
/* 80BA2618  3C C0 80 BA */	lis r6, __global_destructor_chain@ha
/* 80BA261C  84 06 55 D8 */	lwzu r0, __global_destructor_chain@l(r6)
/* 80BA2620  90 05 00 00 */	stw r0, 0(r5)
/* 80BA2624  90 85 00 04 */	stw r4, 4(r5)
/* 80BA2628  90 65 00 08 */	stw r3, 8(r5)
/* 80BA262C  90 A6 00 00 */	stw r5, 0(r6)
/* 80BA2630  4E 80 00 20 */	blr 
