lbl_807850B8:
/* 807850B8  3C C0 80 79 */	lis r6, __global_destructor_chain@ha
/* 807850BC  84 06 A0 28 */	lwzu r0, __global_destructor_chain@l(r6)
/* 807850C0  90 05 00 00 */	stw r0, 0(r5)
/* 807850C4  90 85 00 04 */	stw r4, 4(r5)
/* 807850C8  90 65 00 08 */	stw r3, 8(r5)
/* 807850CC  90 A6 00 00 */	stw r5, 0(r6)
/* 807850D0  4E 80 00 20 */	blr 
