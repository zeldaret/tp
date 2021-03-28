lbl_80BA5678:
/* 80BA5678  3C C0 80 BA */	lis r6, __global_destructor_chain@ha
/* 80BA567C  84 06 6E 48 */	lwzu r0, __global_destructor_chain@l(r6)
/* 80BA5680  90 05 00 00 */	stw r0, 0(r5)
/* 80BA5684  90 85 00 04 */	stw r4, 4(r5)
/* 80BA5688  90 65 00 08 */	stw r3, 8(r5)
/* 80BA568C  90 A6 00 00 */	stw r5, 0(r6)
/* 80BA5690  4E 80 00 20 */	blr 
